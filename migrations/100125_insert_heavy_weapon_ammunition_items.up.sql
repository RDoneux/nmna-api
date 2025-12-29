INSERT INTO
    items (
        name,
        description,
        weight,
        price,
        item_type,
        can_be_equipped
    )
VALUES (
        'Heavy Bolt',
        'A large, powerful projectile used with heavy crossbows.',
        1.0,
        0.40,
        'AMMUNITION',
        FALSE
    );

INSERT INTO
    ammunition (
        item_id,
        type
    )
VALUES (
        (SELECT id FROM items WHERE name = 'Heavy Bolt'),
        'HEAVY_BOLT'
    );