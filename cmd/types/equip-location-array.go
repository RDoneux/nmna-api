package types

import (
	"encoding/json"
	"fmt"
)

type EquipLocation string

const (
	HEAD     EquipLocation = "Head"
	EYES     EquipLocation = "Eyes"
	EARS     EquipLocation = "Ears"
	NECK     EquipLocation = "Neck"
	TORSO    EquipLocation = "Torso"
	LEGS     EquipLocation = "Legs"
	HANDS    EquipLocation = "Hands"
	FINGERS  EquipLocation = "Fingers"
	FOREARMS EquipLocation = "Forearms"
	FEET     EquipLocation = "Feet"
	NONE     EquipLocation = "None"
)

type EquipLocationArray []EquipLocation

func (array *EquipLocationArray) Scan(src interface{}) error {
	if src == nil {
		*array = nil
		return nil
	}

	var data []byte
	switch v := src.(type) {
	case string:
		data = []byte(v)
	case []byte:
		data = v
	default:
		return fmt.Errorf("unsupported type for EquipLocationArray: %T", src)
	}

	return json.Unmarshal(data, array)
}
