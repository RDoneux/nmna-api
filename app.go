package main

import (
	"os"

	"github.com/gofiber/fiber/v2"
	"github.com/gofiber/jwt/v3"
	"github.com/jmoiron/sqlx"
	"github.com/joho/godotenv"

	"github.com/rdoneux/nmna-api/cmd/services"
	"github.com/rdoneux/nmna-api/cmd/controllers/authorisation"
	"github.com/rdoneux/nmna-api/cmd/controllers/character"
	"github.com/rdoneux/nmna-api/cmd/controllers/inabilities"
	"github.com/rdoneux/nmna-api/cmd/controllers/items"
	"github.com/rdoneux/nmna-api/cmd/controllers/skills"
	"github.com/rdoneux/nmna-api/cmd/controllers/user"
	"github.com/rdoneux/nmna-api/cmd/controllers/utils"
)

func main() {

	godotenv.Load()

	db, err := services.ConnectDatabase()
	if err != nil {
		panic(err)
	}
	database := sqlx.NewDb(db, "mysql")

	if os.Getenv("APP_ENV") == "development" {
		err = services.RunMigrations()
		if err != nil {
			panic(err)
		}
	}

	app := fiber.New()

	var jwtSecret = []byte(os.Getenv("JWT_SECRET"))
	app.Use("/protected", jwtware.New(jwtware.Config{
		SigningKey:  jwtSecret,
		ContextKey:  "user",
		TokenLookup: "header:Authorization",
		AuthScheme:  "Bearer",
	}))

	utilsController := &controllers.UtilsController{
		DB: database,
	}
	utilsController.RegisterRoutes(app)

	authController := &authorisation.AuthorisationController{
		DB: database,
	}
	authController.RegisterRoutes(app)

	usersController := &user.UsersController{
		DB: database,
	}
	usersController.RegisterRoutes(app)

	characterController := &character.CharacterController{
		DB: database,
	}
	characterController.RegisterRoutes(app)

	itemController := &items.ItemsController{
		DB: database,
	}
	itemController.RegisterRoutes(app)

	skillController := &skills.SkillsController{
		DB: database,
	}
	skillController.RegisterRoutes(app)

	inabilityController := &inabilities.InabilitiesController{
		DB: database,
	}
	inabilityController.RegisterRoutes(app)

	app.Listen(":3000")

}
