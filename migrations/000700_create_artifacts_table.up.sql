CREATE TABLE artifacts (
    item_id VARCHAR(36) PRIMARY KEY,
    level_descriptor VARCHAR(100),
    depletion VARCHAR(100),
    effect TEXT,

    FOREIGN KEY (item_id) REFERENCES items(id) ON DELETE CASCADE
)