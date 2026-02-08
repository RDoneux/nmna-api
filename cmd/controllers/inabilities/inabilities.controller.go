package inabilities

import (
	"github.com/Masterminds/squirrel"
	"github.com/gofiber/fiber/v2"
	"github.com/google/uuid"
	"github.com/jmoiron/sqlx"
	"github.com/rdoneux/nmna-api/cmd/models"
)

type InabilitiesController struct {
	DB *sqlx.DB
}

func (inabilityController *InabilitiesController) RegisterRoutes(app *fiber.App) {

	app.Get("/protected/inability/:inabilityId", inabilityController.getInabilityById)
	app.Get("/protected/inabilities", inabilityController.findInabilitiesByQuery)
	app.Post("/protected/inabilities", inabilityController.createInability)
	app.Put("/protected/inabilities/:inabilityId", inabilityController.updateInability)
	app.Delete("/protected/inabilities/:inabilityId", inabilityController.deleteInability)

}

func (inabilitiesController *InabilitiesController) getInabilityById(ctx *fiber.Ctx) error {

	db := inabilitiesController.DB
	inabilityId := ctx.Params("inabilityId")

	inability, err := GetInabilityById(*db, inabilityId)
	if err != nil {
		return err
	}

	return ctx.Status(fiber.StatusOK).JSON(inability)

}

func (inabilitiesController *InabilitiesController) findInabilitiesByQuery(ctx *fiber.Ctx) error {

	db := inabilitiesController.DB
	queryName := ctx.Query("name")

	search := squirrel.
		Select("*").
		From("inabilities")

	if queryName != "" {
		search = search.Where("name LIKE ?", "%"+queryName+"%")
	}

	query, args, err := search.ToSql()
	if err != nil {
		return err
	}

	var inabilities []models.Inability = make([]models.Inability, 0)
	err = db.Select(&inabilities, query, args...)
	if err != nil {
		return err
	}

	return ctx.Status(fiber.StatusOK).JSON(inabilities)

}

func (inabilitiesController *InabilitiesController) createInability(ctx *fiber.Ctx) error {

	db := inabilitiesController.DB
	id := uuid.New().String()

	var inability models.CreateInabilityDTO
	err := ctx.BodyParser(&inability)
	inability.ID = id
	if err != nil {
		return err
	}

	err = InsertInability(*db, inability)
	if err != nil {
		return err
	}

	createdInability, err := GetInabilityById(*db, id)
	if err != nil {
		return err
	}

	return ctx.Status(fiber.StatusCreated).JSON(createdInability)

}

func (inabilitiesController *InabilitiesController) updateInability(ctx *fiber.Ctx) error {

	db := inabilitiesController.DB
	inabilityId := ctx.Params("inabilityId")

	var inability models.UpdateInabilityDTO

	err := ctx.BodyParser(&inability)
	if err != nil {
		return err
	}

	err = UpdateInability(*db, inability, inabilityId)
	if err != nil {
		return err
	}

	updatedInability, err := GetInabilityById(*db, inabilityId)
	if err != nil {
		return err
	}

	return ctx.Status(fiber.StatusOK).JSON(updatedInability)

}

func (inabilitiesController *InabilitiesController) deleteInability(ctx *fiber.Ctx) error {

	db := inabilitiesController.DB
	inabilitiesId := ctx.Params("inabilityId")

	err := DeleteInabilityById(*db, inabilitiesId)
	if err != nil {
		return err
	}

	return ctx.SendStatus(fiber.StatusNoContent)

}
