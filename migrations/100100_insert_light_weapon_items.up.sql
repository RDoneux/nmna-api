INSERT INTO
    items (
        name,
        description,
        weight,
        price,
        item_type
    )
VALUES (
        'Blowgun',
        'Short range',
        1.0,
        1,
        'WEAPON'
    ),
    (
        'Buzzer',
        'This handheld weapon fires thumbnail sizedbladed disks up to short range. It holds 5 disks in a magazine and requires an action to reload. It can be used as a rapid-fire weapon',
        1.0,
        25,
        'WEAPON'
    ),
    ('Club', '', 1.0, 3, 'WEAPON'),
    (
        'Dagger',
        'Can be thrown up to short range',
        1.0,
        5,
        'WEAPON'
    ),
    (
        'Dart Thrower',
        'Long range',
        1.0,
        8,
        'WEAPON'
    ),
    (
        'Forearm Blade',
        'This metal weapon is basically a bracer with a mounted blade on it. A favorite of beserkeers as well as the Jaekels of Aras Island',
        1.0,
        4,
        'WEAPON'
    ),
    (
        'Knife',
        'Can be thrown up to short range',
        1.0,
        1,
        'WEAPON'
    ),
    (
        'Punching Dagger',
        '',
        1.0,
        1,
        'WEAPON'
    ),
    (
        'Rapier',
        '',
        1.0,
        2,
        'WEAPON'
    ),
    (
        'Razor ring',
        'This short range weapon is just what it sounds like: a ring with a razor-shart outer edge. The inner edge is often padded for holding',
        1.0,
        1,
        'WEAPON'
    ),
    (
        'Sisk',
        'The bladed throwing disk is about the diameter of a human head. This short-range weapon is used frequently by the warriors of Milave',
        1.0,
        1,
        'WEAPON'
    ),
    ('Whip', '', 1.0, 2, 'WEAPON');

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
                name = 'Blowgun'
        ),
        1,
        'DART',
        'LIGHT'
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Buzzer'
        ),
        5,
        'BUZZER_MAGAZINE',
        'LIGHT'
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Club'
        ),
        NULL,
        NULL,
        'LIGHT'
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Dagger'
        ),
        NULL,
        NULL,
        'LIGHT'
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Dart Thrower'
        ),
        1,
        'DART',
        'LIGHT'
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Forearm Blade'
        ),
        NULL,
        NULL,
        'LIGHT'
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Knife'
        ),
        NULL,
        NULL,
        'LIGHT'
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Punching Dagger'
        ),
        NULL,
        NULL,
        'LIGHT'
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Rapier'
        ),
        NULL,
        NULL,
        'LIGHT'
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Razor ring'
        ),
        NULL,
        NULL,
        'LIGHT'
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Sisk'
        ),
        NULL,
        NULL,
        'LIGHT'
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Whip'
        ),
        NULL,
        NULL,
        'LIGHT'
    );

INSERT INTO
    item_equip_locations (item_id, equip_location_id)
VALUES (
        (
            SELECT id
            FROM items
            WHERE
                name = "Blowgun"
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = "LEFT_HAND"
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = "Blowgun"
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = "RIGHT_HAND"
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = "Buzzer"
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
                name = "Buzzer"
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
                name = "Club"
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
                name = "Club"
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
                name = "Dagger"
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
                name = "Dagger"
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
                name = "Dart Thrower"
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
                name = "Dart Thrower"
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
                name = "Forearm Blade"
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
                name = "Forearm Blade"
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
                name = "Knife"
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
                name = "Knife"
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
                name = "Punching Dagger"
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
                name = "Punching Dagger"
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
                name = "Rapier"
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
                name = "Rapier"
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
                name = "Razor ring"
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
                name = "Razor ring"
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
                name = "Sisk"
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
                name = "Sisk"
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
                name = "Whip"
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
                name = "Whip"
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE name = "RIGHT_HAND"
        )
    );