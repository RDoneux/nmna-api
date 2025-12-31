CREATE TABLE cyphers (
    item_id VARCHAR(36) PRIMARY KEY,
    level_descriptor VARCHAR(100),
    cypher_type ENUM('ANOETIC', 'OCCULTIC') DEFAULT 'ANOETIC',
    effect TEXT,

    FOREIGN KEY (item_id) REFERENCES items(id) ON DELETE CASCADE
)