package models

// type CharacterType string
type PoolType string

// const (
// 	DESCRIPTOR CharacterType = "Descriptor"
// 	FOCUS      CharacterType = "Focus"
// 	TYPE       CharacterType = "Type"
// 	CUSTOM     CharacterType = "Custom"
// )

const (
	MIGHT_POOL_TYPE     PoolType = "MIGHT"
	SPEED_POOL_TYPE     PoolType = "SPEED"
	INTELLECT_POOL_TYPE PoolType = "INTELLECT"
	ARMOUR_POOL_TYPE    PoolType = "ARMOUR"
	ATTACK_POOL_TYPE    PoolType = "ATTACK"
)

type Character struct {
	CharacterInformation
	ID                     string                  `json:"id"`
	UserId                 *string                 `json:"userId" db:"user_id"`
	CharacterSkills        []Skill                 `json:"skills"`
	CharacterInabilities   []Inability             `json:"inabilities"`
	CharacterItems         []Item                  `json:"items"`
	CharacterWornItems     []Item                  `json:"wornItems"`
	CharacterPoolModifiers []CharacterPoolModifier `json:"characterPoolModifiers"`
	CharacterDescriptor    CharacterDescriptor     `json:"characterDescriptor"`
	CharacterType          CharacterType           `json:"characterType"`
	CharacterFocus         CharacterFocus          `json:"characterFocus"`
	CharacterPool
	CharacterBackground
}

type CharacterDescriptor struct {
	Name        string `json:"name" db:"name"`
	Description string `json:"description" db:"description"`
}

type CharacterType struct {
	Name        string `json:"name" db:"name"`
	Description string `json:"description" db:"description"`
}

type CharacterFocus struct {
	Name        string `json:"name" db:"name"`
	Description string `json:"description" db:"description"`
	Connection  string `json:"connection" db:"connection"`
}

type CharacterInformation struct {
	Name             string `json:"name"`
	Shins            int32  `json:"shins"`
	ExperiencePoints uint32 `json:"experiencePoints" db:"experience_points"`
	Tier             uint8  `json:"tier"`
}

type CharacterPool struct {
	CharacterId                 string `json:"poolCharacterId" db:"character_id"`
	MightCurrent                uint32 `json:"mightCurrent" db:"might_current"`
	MightMax                    uint32 `json:"mightMax" db:"might_max"`
	MightEdge                   uint32 `json:"mightEdge" db:"might_edge"`
	MightManualModifer          uint32 `json:"mightManualModifier" db:"might_manual_modifier"`
	MightEdgeManualModifier     uint32 `json:"mightEdgeManualModifier" db:"might_edge_manual_modifier"`
	SpeedCurrent                uint32 `json:"speedCurrent" db:"speed_current"`
	SpeedMax                    uint32 `json:"speedMax" db:"speed_max"`
	SpeedEdge                   uint32 `json:"speedEdge" db:"speed_edge"`
	SpeedManualModifer          uint32 `json:"speedManualModifier" db:"speed_manual_modifier"`
	SpeedEdgeManualModifier     uint32 `json:"speedEdgeManualModifier" db:"speed_edge_manual_modifier"`
	IntellectCurrent            uint32 `json:"intellectCurrent" db:"intellect_current"`
	IntellectMax                uint32 `json:"intellectMax" db:"intellect_max"`
	IntellectEdge               uint32 `json:"intellectEdge" db:"intellect_edge"`
	IntellectManualModifer      uint32 `json:"intellectManualModifier" db:"intellect_manual_modifier"`
	IntellectEdgeManualModifier uint32 `json:"intellectEdgeManualModifier" db:"intellect_edge_manual_modifier"`
	Armour                      uint32 `json:"armour"`
	ArmourManualModifier        uint32 `json:"armourManualModifier" db:"armour_manual_modifier"`
	Effort                      uint32 `json:"effort"`
}

type CharacterPoolModifier struct {
	Source        string   `json:"source" db:"source"`
	SourceType    string   `json:"sourceType" db:"source_type"`
	PoolType      PoolType `json:"poolType" db:"pool_type"`
	ModifierValue int      `json:"modifierValue" db:"modifier_value"`
	EdgeValue     int      `json:"edgeValue" db:"edge_value"`
}

type CharacterBackground struct {
	CharacterId string `json:"backgroundCharacterId" db:"character_id"`
	Description string `json:"description" db:"description"`
}

type CharacterInabilities struct {
	CharacterId string `json:"inabilitiesCharacterId" db:"character_id"`
	SkillID     string `json:"skillId" db:"skill_id"`
	// Source      CharacterType `json:"source"`
}

type CharacterWornItem struct {
	CharacterId     string `json:"wornItemCharacterId" db:"character_id"`
	CharacterItemId string `json:"characterItemId" db:"character_item_id"`
	EquipLocation   string `json:"equipLocation" db:"location"`
}

type ListCharacter struct {
	CharacterId      string `json:"id" db:"id"`
	Name             string `json:"name"`
	Shins            int32  `json:"shins"`
	ExperiencePoints uint32 `json:"experiencePoints" db:"experience_points"`
	Tier             uint8  `json:"tier"`
	Descriptor       string `json:"descriptor" db:"descriptor"`
	Type             string `json:"type" db:"type"`
	Focus            string `json:"focus" db:"focus"`
}

func (character *Character) ToNested() map[string]any {
	return map[string]any{
		"id":                     character.ID,
		"name":                   character.Name,
		"shins":                  character.Shins,
		"experiencePoints":       character.ExperiencePoints,
		"tier":                   character.Tier,
		"userId":                 character.UserId,
		"characterPool":          character.CharacterPool,
		"characterPoolModifiers": character.CharacterPoolModifiers,
		"characterBackground":    character.CharacterBackground,
		"characterSkills":        character.CharacterSkills,
		"characterInabilities":   character.CharacterInabilities,
		"characterItems":         character.CharacterItems,
		"characterWornItems":     character.CharacterWornItems,
		"characterDescriptor":    character.CharacterDescriptor,
		"characterType":          character.CharacterType,
		"characterFocus":         character.CharacterFocus,
	}
}

func (character *Character) ToList() map[string]any {
	return map[string]any{
		"id":               character.ID,
		"name":             character.Name,
		"shins":            character.Shins,
		"experiencePoints": character.ExperiencePoints,
		"tier":             character.Tier,
	}
}
