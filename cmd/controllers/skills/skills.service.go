package skills

import (
	"github.com/Masterminds/squirrel"
	"github.com/jmoiron/sqlx"

	"github.com/rdoneux/nmna-api/cmd/models"
	"github.com/rdoneux/nmna-api/cmd/services"
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

func InsertSkill(db sqlx.DB, skill *models.CreateSkillDTO) error {

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

	// Insert/update pool modifiers if present
	if skill.PoolModifiers != nil {
		err = services.InsertPoolModifiers(db, skill.ID, *skill.PoolModifiers)
		if err != nil {
			return err
		}
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
		err = services.InsertPoolModifiers(db, skillId, *skill.PoolModifiers)
		if err != nil {
			return err
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
