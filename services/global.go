package services

import (
	"github.com/Masterminds/squirrel"
	"github.com/jmoiron/sqlx"
	"github.com/rdoneux/nmna-api/models"
)

func InsertPoolModifiers(db sqlx.DB, foreignKey string, poolModifiers []models.CharacterPoolModifier) error {

	// Remove existing pool modifiers to avoid duplicates
	_, err := db.Exec("DELETE FROM pool_modifiers WHERE foreign_key = ?", foreignKey)
	if err != nil {
		return err
	}

	for _, modifier := range poolModifiers {
		query, args, err := squirrel.
			Insert("pool_modifiers").
			Columns("pool_type", "modifier_value", "edge_value", "foreign_key").
			Values(modifier.PoolType, modifier.ModifierValue, modifier.EdgeValue, foreignKey).
			ToSql()
		if err != nil {
			return err
		}
		_, err = db.Exec(query, args...)
		if err != nil {
			return err
		}
	}

	return nil

}