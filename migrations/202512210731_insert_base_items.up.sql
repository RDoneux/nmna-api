INSERT INTO
    items (
        id,
        name,
        item_type,
        source_book
    )
VALUES
    -- Equipment
    (
        '8a9e2c35-5f19-4a90-81d7-4a78e06b5b1a',
        'Light Weapon',
        'Equipment',
        'Numenera Core Rulebook (2013)'
    ),
    (
        '4cf2c8e4-7b18-4ad5-87dc-f2cddf6a36b7',
        'Medium Weapon',
        'Equipment',
        'Numenera Core Rulebook (2013)'
    ),
    (
        'b1d4836d-7fd8-4f37-9f09-51a4ac769f11',
        'Heavy Weapon',
        'Equipment',
        'Numenera Core Rulebook (2013)'
    ),
    (
        'c9f8c0b1-3e3f-4a92-86da-6e2077f2e83b',
        'Light Armor',
        'Equipment',
        'Numenera Core Rulebook (2013)'
    ),
    (
        'b0f1f29d-312a-41e0-8450-60e6f8df1e1b',
        'Medium Armor',
        'Equipment',
        'Numenera Core Rulebook (2013)'
    ),
    (
        'fd123b5a-8ac3-4ff0-b9c2-1a56108f0de7',
        'Explorer’s Pack',
        'Equipment',
        'Numenera Core Rulebook (2013)'
    ),
    (
        '9e42fdc4-fc8b-46f7-bc3f-8377d5d27d3b',
        'Rope (50 ft)',
        'Equipment',
        'Numenera Core Rulebook (2013)'
    ),
    (
        '0b9a8f3d-26e0-4f9e-a785-7028a5fd1e04',
        'Bow',
        'Equipment',
        'Numenera Core Rulebook (2013)'
    ),
    (
        'c3c8e81a-5285-4e1e-90a5-c8b8c0b14c72',
        'Quiver of Arrows',
        'Equipment',
        'Numenera Core Rulebook (2013)'
    ),
    (
        '2c4e8bd6-d3a9-43a5-bdd7-f7c3d3b78f85',
        'Traveler’s Clothes',
        'Equipment',
        'Numenera Core Rulebook (2013)'
    ),

-- Cyphers
(
    'a4c2e619-9b2b-47b3-89ef-4de0fd5ad4ab',
    'Detonation (Fire)',
    'Cypher',
    'Numenera Core Rulebook (2013)'
),
(
    'dfde3b7e-8d61-4f7b-b911-bfd60e0a1d3a',
    'Detonation (Gravity)',
    'Cypher',
    'Numenera Core Rulebook (2013)'
),
(
    '6b1d4144-b816-4b32-9c56-4a6db29048d1',
    'Healing Injector',
    'Cypher',
    'Numenera Core Rulebook (2013)'
),
(
    'a6c7f9f9-3c1c-4e2f-9a46-8b1e8e3e0ac9',
    'Mental Enhancement',
    'Cypher',
    'Numenera Core Rulebook (2013)'
),
(
    'f57b86cb-0f12-48a8-91bb-58f2f75ef04f',
    'Force Field Projector',
    'Cypher',
    'Numenera Core Rulebook (2013)'
),

-- Artifacts
(
    'db83cf5e-b8f9-4602-8a8c-7995b8cbbe1b',
    'Plasma Blade',
    'Artifact',
    'Numenera Core Rulebook (2013)'
),
(
    'e81d1f49-4362-437b-9e24-f9944f8d5c66',
    'Hover Belt',
    'Artifact',
    'Numenera Core Rulebook (2013)'
),
(
    'efb50e31-22d9-4926-8d5a-c6482b592a5b',
    'Power Glove',
    'Artifact',
    'Numenera Core Rulebook (2013)'
),

-- Oddities
(
    'c7e6f3a1-f1f0-4ff0-b046-3f592e6463a2',
    'Glowing Marble',
    'Oddity',
    'Numenera Core Rulebook (2013)'
),
(
    'bfeab733-2e58-47ab-a0b2-7d0adfe6a751',
    'Singing Coin',
    'Oddity',
    'Numenera Core Rulebook (2013)'
),
(
    'a9f2c14b-5946-4f59-9ed2-6d32cf8dcb91',
    'Color-Shifting Cube',
    'Oddity',
    'Numenera Core Rulebook (2013)'
);

INSERT INTO
    equipment (
        item_id,
        cost,
        weight,
        description
    )
VALUES (
        '8a9e2c35-5f19-4a90-81d7-4a78e06b5b1a',
        3,
        2.0,
        'Light melee weapon such as a dagger or short sword.'
    ),
    (
        '4cf2c8e4-7b18-4ad5-87dc-f2cddf6a36b7',
        5,
        4.0,
        'Medium weapon such as a longsword, spear, or mace.'
    ),
    (
        'b1d4836d-7fd8-4f37-9f09-51a4ac769f11',
        7,
        8.0,
        'Heavy weapon requiring two hands, such as a greatsword or maul.'
    ),
    (
        'c9f8c0b1-3e3f-4a92-86da-6e2077f2e83b',
        5,
        8.0,
        'Provides +1 Armor, reduces Speed Effort by 1.'
    ),
    (
        'b0f1f29d-312a-41e0-8450-60e6f8df1e1b',
        8,
        12.0,
        'Provides +2 Armor, reduces Speed Effort by 2.'
    ),
    (
        'fd123b5a-8ac3-4ff0-b9c2-1a56108f0de7',
        3,
        10.0,
        'Contains rations, water, torches, bedroll, and basic adventuring tools.'
    ),
    (
        '9e42fdc4-fc8b-46f7-bc3f-8377d5d27d3b',
        1,
        3.0,
        '50 feet of sturdy rope, can support a person’s weight.'
    ),
    (
        '0b9a8f3d-26e0-4f9e-a785-7028a5fd1e04',
        5,
        3.0,
        'Medium-ranged bow, requires ammunition.'
    ),
    (
        'c3c8e81a-5285-4e1e-90a5-c8b8c0b14c72',
        1,
        2.0,
        'Holds 20 arrows for a bow or crossbow.'
    ),
    (
        '2c4e8bd6-d3a9-43a5-bdd7-f7c3d3b78f85',
        2,
        2.0,
        'Practical, comfortable clothing suitable for travel.'
    );

INSERT INTO
    cyphers (
        item_id,
        level,
        effect,
        cypher_type
    )
VALUES (
        'a4c2e619-9b2b-47b3-89ef-4de0fd5ad4ab',
        5,
        'Creates an explosion of fire in a small area.',
        'Anoetic'
    ),
    (
        'dfde3b7e-8d61-4f7b-b911-bfd60e0a1d3a',
        5,
        'Generates a localized gravitational distortion.',
        'Anoetic'
    ),
    (
        '6b1d4144-b816-4b32-9c56-4a6db29048d1',
        3,
        'Restores health equal to the cypher’s level when injected.',
        'Anoetic'
    ),
    (
        'a6c7f9f9-3c1c-4e2f-9a46-8b1e8e3e0ac9',
        4,
        'Temporarily boosts mental acuity or intellect tasks.',
        'Occultic'
    ),
    (
        'f57b86cb-0f12-48a8-91bb-58f2f75ef04f',
        6,
        'Projects a temporary protective energy field.',
        'Occultic'
    );

INSERT INTO
    artifacts (
        item_id,
        level,
        effect,
        depletion
    )
VALUES (
        'db83cf5e-b8f9-4602-8a8c-7995b8cbbe1b',
        7,
        'A melee weapon of coherent plasma energy that deals intense heat damage.',
        '1 in 1d20'
    ),
    (
        'e81d1f49-4362-437b-9e24-f9944f8d5c66',
        5,
        'Allows the wearer to hover a short distance above the ground.',
        '1 in 1d100'
    ),
    (
        'efb50e31-22d9-4926-8d5a-c6482b592a5b',
        6,
        'Enhances physical strength when striking or lifting objects.',
        '1 in 1d20'
    );

INSERT INTO
    oddities (item_id, description)
VALUES (
        'c7e6f3a1-f1f0-4ff0-b046-3f592e6463a2',
        'A marble that glows faintly when submerged in water.'
    ),
    (
        'bfeab733-2e58-47ab-a0b2-7d0adfe6a751',
        'A coin that hums softly when flipped.'
    ),
    (
        'a9f2c14b-5946-4f59-9ed2-6d32cf8dcb91',
        'A small cube that constantly changes color in slow pulses.'
    );