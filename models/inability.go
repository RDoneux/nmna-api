package models

type Inability struct {
	ID          string `json:"characterInabilityId" db:"id"`
	Name        string `json:"name"`
	Description string `json:"description"`
}

type UpdateInabilityDTO struct {
	Inability
	PoolModifiers *[]CharacterPoolModifier `json:"poolModifiers,omitempty"`
}

type CreateInabilityDTO struct {
	Inability
	PoolModifiers *[]CharacterPoolModifier `json:"poolModifiers,omitempty"`
}
