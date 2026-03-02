INSERT INTO
    items (
        name,
        description,
        weight,
        price,
        item_type
    )
VALUES (
        'Greataxe',
        '',
        1.0,
        5.0,
        'WEAPON'
    ),
    (
        'Greatsword',
        '',
        1.0,
        5.0,
        'WEAPON'
    ),
    (
        'Heavy Crossbow',
        'Long range, more powerful than a standard crossbow but heavier and slower to reload. Action to reload.',
        1.0,
        7.0,
        'WEAPON'
    ),
    (
        'Maul',
        '',
        1.0,
        4.0,
        'WEAPON'
    ),
    (
        'Sword staff',
        '',
        1.0,
        5.0,
        'WEAPON'
    );

INSERT INTO
    weapons (
        item_id,
        capacity,
        capacity_type,
        weight_type
    )
VALUES (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Greataxe'
        ),
        NULL,
        NULL,
        'HEAVY'
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Greatsword'
        ),
        NULL,
        NULL,
        'HEAVY'
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Heavy Crossbow'
        ),
        1,
        'HEAVY_BOLT',
        'HEAVY'
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Maul'
        ),
        NULL,
        NULL,
        'HEAVY'
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Sword staff'
        ),
        NULL,
        NULL,
        'HEAVY'
    );

INSERT INTO
    item_equip_locations (item_id, equip_location_id)
VALUES (
        (
            SELECT id
            FROM items
            WHERE
                name = "Greataxe"
        ),
        (
            SELECT id
            from equip_locations
            where
                name = "LEFT_HAND"
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = "Greataxe"
        ),
        (
            SELECT id
            from equip_locations
            where
                name = "RIGHT_HAND"
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = "Greatsword"
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE name = "LEFT_HAND"
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = "Greatsword"
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE name = "RIGHT_HAND"
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = "Heavy Crossbow"
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE name = "LEFT_HAND"
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = "Heavy Crossbow"
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE name = "RIGHT_HAND"
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = "Maul"
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE name = "LEFT_HAND"
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = "Maul"
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE name = "RIGHT_HAND"
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = "Sword staff"
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE name = "LEFT_HAND"
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = "Sword staff"
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE name = "RIGHT_HAND"
        )
    );