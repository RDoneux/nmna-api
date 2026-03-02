INSERT INTO
    items (
        name,
        description,
        weight,
        price,
        item_type
    )
VALUES (
        'Light Weapon Slot',
        'A slot for a light weapon such as a dagger, short sword, or light mace for the player to equip.',
        0,
        0,
        'WEAPON_SLOT'
    ),
    (
        'Backpack',
        'A sturdy pack for carrying gear. Can hold up to 30 lbs of items.',
        1.0,
        2,
        'EQUIPMENT'
    ),
    (
        'Back of light tools',
        'Contains small tongs, pliers, screwdriver, small hammer, small pry bar, lockpicks, 3m string, .09m of wire and miscellaneous screws and nails.',
        1.0,
        10,
        'EQUIPMENT'
    ),
    (
        'Back of heavy tools',
        'Contains hammer, six spikes, crowbar, large tongs, chisel and 3m of light (but strong)metal cable.',
        1.0,
        12,
        'EQUIPMENT'
    ),
    (
        'Bedroll',
        'A compact sleeping mat and blanket for one person.',
        1.0,
        2,
        'EQUIPMENT'
    ),
    (
        'Book',
        'Provides an asset to any roll made concerning the subject of the book as long as the character has the book in their possession, can read it, and can devot half an hour to the task (or twice as long as normal, whichever is greater).',
        1.0,
        20,
        'EQUIPMENT'
    ),
    (
        'Burlap sack',
        'A simple sack made of rough fabric.',
        1.0,
        1,
        'EQUIPMENT'
    ),
    (
        'Compass',
        'A small device that shows direction relative to magnetic north.',
        1.0,
        10,
        'EQUIPMENT'
    ),
    (
        'Crowbar',
        'A sturdy metal bar with a flattened, curved end for prying things open.',
        1.0,
        2,
        'EQUIPMENT'
    ),
    (
        'Disguise kit',
        'Includes cosmetics, facial prostheses, and a few other tricks. Provides an asset to disguise tasks, lowering the difficulty by one step when you attempt to disguise yourself as another person',
        1.0,
        12,
        'EQUIPMENT'
    ),
    (
        'Explorer''s pack',
        'Contains 15m of rope, rations for three days, three spikes, hammer, warm clothes, sturdy boots, three torches, and two minor glowglobes',
        1.0,
        20,
        'EQUIPMENT'
    ),
    (
        'First aid kit',
        'Contains bandages, a few tools, salves, and so on. Provides an asset to healing tasks, lowering the difficulty by one step when you attempt to heal yourself or another person',
        1.0,
        10,
        'EQUIPMENT'
    ),
    (
        'Grappling hook',
        'A metal hook attached to a length of rope, used for climbing or securing the rope to a surface.',
        1.0,
        3,
        'EQUIPMENT'
    ),
    (
        'Lockpicks',
        'A set of small tools used to pick locks.',
        1.0,
        5,
        'EQUIPMENT'
    ),
    (
        'Matchsticks',
        'A small bundle of wooden sticks used to start fires.',
        1.0,
        1,
        'EQUIPMENT'
    ),
    (
        'Musical Instrument',
        'A simple musical instrument, such as a flute or drum.',
        1.0,
        10,
        'EQUIPMENT'
    ),
    (
        'Pouch',
        'A small bag for carrying coins or other small items.',
        1.0,
        1,
        'EQUIPMENT'
    ),
    (
        'Rope (15 meters)',
        'A length of sturdy rope, useful for climbing or tying things together.',
        1.0,
        2,
        'EQUIPMENT'
    ),
    (
        'Shield',
        'Asset for Speed defence tasks (decreases the diffuculty by one step).',
        1.0,
        3,
        'EQUIPMENT'
    ),
    (
        'Tent',
        'Large enough to accommodate two people',
        1.0,
        3,
        'EQUIPMENT'
    ),
    (
        'Torch',
        'A wooden stick with a flammable material at one end, used to provide light.',
        1.0,
        1,
        'EQUIPMENT'
    ),
    (
        'Ale',
        'A pint of alcoholic beverage.',
        1.0,
        3,
        'EQUIPMENT'
    ),
    (
        'Wine',
        'A bottle of fermented grape juice.',
        1.0,
        3,
        'EQUIPMENT'
    ),
    (
        'Boots',
        'Sturdy footwear for adventuring.',
        1.0,
        1,
        'EQUIPMENT'
    ),
    (
        'Cigarettes',
        'A pack of tobacco cigarettes.',
        1.0,
        2,
        'EQUIPMENT'
    ),
    (
        'Clothing',
        'A set of everyday clothes suitable for various environments.',
        1.0,
        1,
        'EQUIPMENT'
    ),
    (
        'Meal',
        'A standard meal for one person.',
        1.0,
        1,
        'EQUIPMENT'
    ),
    (
        'Rations (1 day)',
        'Packaged food sufficient to sustain one person for a day.',
        1.0,
        2,
        'EQUIPMENT'
    );

INSERT INTO
    equipment (item_id)
VALUES (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Light Weapon Slot'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Backpack'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Back of light tools'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Back of heavy tools'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Bedroll'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Book'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Burlap sack'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Compass'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Crowbar'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Disguise kit'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Explorer''s pack'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'First aid kit'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Grappling hook'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Lockpicks'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Matchsticks'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Musical Instrument'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Pouch'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Rope (15 meters)'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Shield'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Tent'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Torch'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Ale'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Wine'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Boots'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Cigarettes'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Clothing'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Meal'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Rations (1 day)'
        )
    );

INSERT INTO
    item_equip_locations (item_id, equip_location_id)
VALUES (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Light Weapon Slot'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'LEFT_HAND'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Light Weapon Slot'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'RIGHT_HAND'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Backpack'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'TORSO'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Back of light tools'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'LEFT_HAND'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Back of light tools'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'RIGHT_HAND'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Back of heavy tools'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'LEFT_HAND'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Back of heavy tools'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'RIGHT_HAND'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Bedroll'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'NONE'
        )
    ),
    -- Book
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Book'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'LEFT_HAND'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Book'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'RIGHT_HAND'
        )
    ),
    -- Burlap sack
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Burlap sack'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'LEFT_HAND'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Burlap sack'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'RIGHT_HAND'
        )
    ),
    -- Compass
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Compass'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'LEFT_HAND'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Compass'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'RIGHT_HAND'
        )
    ),
    -- Crowbar
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Crowbar'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'LEFT_HAND'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Crowbar'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'RIGHT_HAND'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Disguise kit'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'NONE'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Explorer''s pack'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'TORSO'
        )
    ),
    -- First aid kit
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'First aid kit'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'LEFT_HAND'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'First aid kit'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'RIGHT_HAND'
        )
    ),
    -- Grappling hook
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Grappling hook'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'LEFT_HAND'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Grappling hook'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'RIGHT_HAND'
        )
    ),
    -- Lockpicks
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Lockpicks'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'LEFT_HAND'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Lockpicks'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'RIGHT_HAND'
        )
    ),
    -- Matchsticks
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Matchsticks'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'LEFT_HAND'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Matchsticks'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'RIGHT_HAND'
        )
    ),
    -- Musical Instrument
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Musical Instrument'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'LEFT_HAND'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Musical Instrument'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'RIGHT_HAND'
        )
    ),
    -- Pouch
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Pouch'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'LEFT_HAND'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Pouch'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'RIGHT_HAND'
        )
    ),
    -- Rope
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Rope (15 meters)'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'LEFT_HAND'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Rope (15 meters)'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'RIGHT_HAND'
        )
    ),
    -- Shield
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Shield'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'LEFT_HAND'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Shield'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'RIGHT_HAND'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Tent'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'NONE'
        )
    ),
    -- Torch
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Torch'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'LEFT_HAND'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Torch'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'RIGHT_HAND'
        )
    ),
    -- Ale
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Ale'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'LEFT_HAND'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Ale'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'RIGHT_HAND'
        )
    ),
    -- Wine
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Wine'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'LEFT_HAND'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Wine'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'RIGHT_HAND'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Boots'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'FEET'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Cigarettes'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'NONE'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Clothing'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'TORSO'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Meal'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'NONE'
        )
    ),
    (
        (
            SELECT id
            FROM items
            WHERE
                name = 'Rations (1 day)'
        ),
        (
            SELECT id
            FROM equip_locations
            WHERE
                name = 'NONE'
        )
    );