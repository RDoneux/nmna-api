package authorisation

import (
	"encoding/base64"
	"strings"

	"github.com/Masterminds/squirrel"
	"github.com/gofiber/fiber/v2"
	"github.com/golang-jwt/jwt/v4"
	"github.com/jmoiron/sqlx"
	"github.com/rdoneux/nmna-api/cmd/models"
)

func GetBasicAuth(ctx *fiber.Ctx) (username, password string, ok bool) {

	auth := ctx.Get("Authorization")
	if auth == "" || !strings.HasPrefix(auth, "Basic ") {
		return
	}

	payload, err := base64.StdEncoding.DecodeString(auth[len("Basic "):])
	if err != nil {
		return
	}

	payloadParts := strings.SplitN(string(payload), ":", 2)
	if len(payloadParts) != 2 {
		return
	}

	return payloadParts[0], payloadParts[1], true

}

func GetUserFromToken(token *jwt.Token, db *sqlx.DB) (models.PublicUser, error) {

	claims, ok := token.Claims.(jwt.MapClaims)
	if !ok {
		return models.PublicUser{}, fiber.ErrForbidden
	}

	userId := claims["userId"].(string)

	// get the user & valid refresh token from the database
	query, args, err := squirrel.
		Select("id", "username", "display_name").
		From("users").Where("id = ?", userId).
		ToSql()
	if err != nil {
		return models.PublicUser{}, err
	}

	var user models.PublicUser
	err = db.Get(&user, query, args...)
	if err != nil {
		return models.PublicUser{}, err
	}

	return user, nil
}
