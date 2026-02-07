CREATE TABLE pool_modifiers (
    pool_type ENUM ("MIGHT", "SPEED", "INTELLECT", "ARMOUR", "ATTACK", "EFFORT"),
    modifier_value INT DEFAULT 0,
    edge_value INT DEFAULT 0,
    foreign_key VARCHAR(36)
)