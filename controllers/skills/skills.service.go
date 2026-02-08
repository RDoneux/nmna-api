package skills

import (
	"github.com/Masterminds/squirrel"
	"github.com/jmoiron/sqlx"

	"github.com/rdoneux/nmna-api/models"
)

func GetSkillById(db sqlx.DB, skillId string) (models.Skill, error) {

	query, args, err := squirrel.
		Select("*").
		From("skills").
		Where("id = ?", skillId).
		ToSql()
	if err != nil {
		return models.Skill{}, err
	}

	var skill models.Skill
	err = db.Get(&skill, query, args...)
	if err != nil {
		return models.Skill{}, err
	}

	return skill, nil

}

func InsertSKill(db sqlx.DB, skill *models.Skill) error {

	query, args, err := squirrel.
		Insert("skills").
		Columns("id", "name", "category", "description", "cost", "type").
		Values(skill.ID, skill.Name, skill.Category, skill.Description, skill.Cost, skill.Type).
		ToSql()
	if err != nil {
		return err
	}

	_, err = db.Exec(query, args...)
	if err != nil {
		return err
	}

	return nil

}

func UpdateSkillById(db sqlx.DB, skill *models.UpdateSkillDTO, skillId string) error {

	query, args, err := squirrel.
		Update("skills").
		Set("name", skill.Name).
		Set("category", skill.Category).
		Set("description", skill.Description).
		Set("cost", skill.Cost).
		Set("type", skill.Type).
		Where("id = ?", skillId).
		ToSql()
	if err != nil {
		return err
	}

	_, err = db.Exec(query, args...)
	if err != nil {
		return err
	}

	// Insert/update pool modifiers if present
	if skill.PoolModifiers != nil {

		// Remove existing pool modifiers to avoid duplicates
		_, err = db.Exec("DELETE FROM pool_modifiers WHERE foreign_key = ?", skillId)
		if err != nil {
			return err
		}

		for _, modifier := range *skill.PoolModifiers {
			query, args, err = squirrel.
				Insert("pool_modifiers").
				Columns("pool_type", "modifier_value", "edge_value", "foreign_key").
				Values(modifier.PoolType, modifier.ModifierValue, modifier.EdgeValue, skillId).
				ToSql()
			if err != nil {
				return err
			}
			_, err = db.Exec(query, args...)
			if err != nil {
				return err
			}
		}
	}

	return nil

}

func DeleteSkillById(db sqlx.DB, skillId string) error {

	query, args, err := squirrel.
		Delete("skills").
		Where("id = ?", skillId).
		ToSql()
	if err != nil {
		return err
	}

	_, err = db.Exec(query, args...)
	if err != nil {
		return err
	}

	return nil

}
