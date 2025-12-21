INSERT INTO
    character_types (
        id,
        name,
        description,
        source_book,
        special_effect
    )
VALUES (
        '8c606521-ce04-4725-ade4-e342768b266f',
        'Glaive',
        'Warrior, combat specialist. Focused on physical feats and fighting prowess.',
        'Numenera Core Rulebook (2013)',
        'Abilities that enhance melee combat and defense.'
    ),
    (
        'b1f5d6e2-3c4a-4f7a-9f4b-2d5e8c9a1b2c',
        'Nano',
        'Scientist or magic user. Focused on powers, esoteries, and Numenera.',
        'Numenera Core Rulebook (2013)',
        'Abilities that manipulate environment, Numenera, or esoteric powers.'
    ),
    (
        'd3f9e8b7-5a6c-4d2e-9f1b-3c4d5e6f7a8b',
        'Jack',
        'Flexible generalist. Adaptable and resourceful, capable in a variety of tasks.',
        'Numenera Core Rulebook (2013)',
        'Versatile abilities emphasizing flexibility and creative problem solving.'
    );

INSERT INTO
    character_types_pool_modifiers (
        id,
        type_id,
        pool_type,
        modifier_value
    )
VALUES
    -- Glaive
    (
        '5f34820c-8226-4206-8bad-95f1e6be22ba',
        '8c606521-ce04-4725-ade4-e342768b266f',
        'Might',
        11
    ),
    (
        'c49b5483-8173-470c-96e6-4f742dcea1b6',
        '8c606521-ce04-4725-ade4-e342768b266f',
        'Speed',
        10
    ),
    (
        '6cc43ce8-bbc8-4817-97f5-a86d33800b22',
        '8c606521-ce04-4725-ade4-e342768b266f',
        'Intellect',
        7
    ),

-- Nano
(
    'a1163b1b-dd5b-4a99-b528-290a4c534ff8',
    'b1f5d6e2-3c4a-4f7a-9f4b-2d5e8c9a1b2c',
    'Might',
    7
),
(
    'f65b0be9-beb9-4a01-ab76-28537d2ac2d8',
    'b1f5d6e2-3c4a-4f7a-9f4b-2d5e8c9a1b2c',
    'Speed',
    9
),
(
    '41c48a27-c355-4ad8-bc50-cfff7edbb3c6',
    'b1f5d6e2-3c4a-4f7a-9f4b-2d5e8c9a1b2c',
    'Intellect',
    12
),

-- Jack
(
    '5d9b4c04-05a4-4420-bebc-8a4b57655b74',
    'd3f9e8b7-5a6c-4d2e-9f1b-3c4d5e6f7a8b',
    'Might',
    10
),
(
    '63cd2f43-3015-4330-a297-5ec27d62ea0f',
    'd3f9e8b7-5a6c-4d2e-9f1b-3c4d5e6f7a8b',
    'Speed',
    10
),
(
    'f2a072d7-aaed-41bc-af44-6e0f04a556db',
    'd3f9e8b7-5a6c-4d2e-9f1b-3c4d5e6f7a8b',
    'Intellect',
    10
);

INSERT INTO
    character_types_trainings (
        id,
        type_id,
        skill_id,
        training_level
    )
VALUES
    -- Glaive
    (
        '33b8e039-3e78-4586-8b7f-088261d2ee40',
        '8c606521-ce04-4725-ade4-e342768b266f',
        '7368d90c-52d7-4117-b899-fd4124992825',
        'Trained'
    ), -- Dodging (Speed Defense analogue)
    (
        '871d595c-f267-4006-89f0-80f5461d9820',
        '8c606521-ce04-4725-ade4-e342768b266f',
        '28bf7d87-d5d4-4484-a359-bc1f31eadc94',
        'Trained'
    ), -- Breaking Things (Might Defense analogue)

-- Nano
(
    '6547221d-9978-4bb3-a8ff-203c8f6717da',
    'b1f5d6e2-3c4a-4f7a-9f4b-2d5e8c9a1b2c',
    '9676df7f-7c53-4615-9fbd-8ba0b843822d',
    'Trained'
), -- Understanding Numenera
(
    'cefc52bf-6dbc-4e56-b20d-a59f1c106175',
    'b1f5d6e2-3c4a-4f7a-9f4b-2d5e8c9a1b2c',
    'a1fadd3a-fda6-4fe0-bfd9-2b7955f1fe18',
    'Trained'
), -- Esoteries

-- Jack
(
    '19a57bae-557b-450a-b704-88071967bd3d',
    'd3f9e8b7-5a6c-4d2e-9f1b-3c4d5e6f7a8b',
    '83488d7f-12f3-42d4-8306-9b10060cefc9',
    'Trained'
), -- Trickery
(
    '8c41aa36-6191-4ccd-ba7b-7dac84cb5d32',
    'd3f9e8b7-5a6c-4d2e-9f1b-3c4d5e6f7a8b',
    '41b3b54a-10e5-42e8-9e41-a866a7de8d1a',
    'Trained'
);
-- Movement Tasks

INSERT INTO
    character_types_inabilities (id, type_id, skill_id)
VALUES
    -- Glaive: Hindered on Intellect-related tasks
    (
        '4e792804-a2f3-4ed9-afa5-42420fde76fd',
        '8c606521-ce04-4725-ade4-e342768b266f',
        'c2c41c35-08c1-405e-a815-4ade46b5d814'
    ), -- Knowledge Tasks
    (
        'ccf2583a-c4f5-45c5-9d96-b0cd8d2bcbcc',
        '8c606521-ce04-4725-ade4-e342768b266f',
        'bc35bef9-cc78-402a-8fc2-0b414f24ad38'
    ), -- Persuasion
    (
        '542c1354-f906-4427-9e16-f418b00f6056',
        '8c606521-ce04-4725-ade4-e342768b266f',
        'c137b5da-694c-4a13-bf82-1cc53643b813'
    ), -- Pleasant Social Interactions

-- Nano: Hindered on Might and Speed-based physical tasks
(
    '1d10fc08-c1a1-4f20-831e-068aa9870122',
    'b1f5d6e2-3c4a-4f7a-9f4b-2d5e8c9a1b2c',
    'b4c62b59-617b-4df9-b1ce-697150888451'
), -- Climbing
(
    'f304f390-51dd-4e3c-8c08-c42046d374d1',
    'b1f5d6e2-3c4a-4f7a-9f4b-2d5e8c9a1b2c',
    'da252ed8-61e4-4d7a-9e17-8cb7dc02ce99'
), -- Balancing
(
    '65c5c5a3-1b2f-4091-9d7d-4f6ff33bc978',
    'b1f5d6e2-3c4a-4f7a-9f4b-2d5e8c9a1b2c',
    'eacf63f8-c5c0-4dd3-b636-a6369273087b'
), -- Jumping
(
    '6061218e-cd1b-4348-8140-74f1cbec73df',
    'b1f5d6e2-3c4a-4f7a-9f4b-2d5e8c9a1b2c',
    '7368d90c-52d7-4117-b899-fd4124992825'
), -- Dodging
(
    '15c7f989-3c39-4016-92f2-99e420ca1df6',
    'b1f5d6e2-3c4a-4f7a-9f4b-2d5e8c9a1b2c',
    '28bf7d87-d5d4-4484-a359-bc1f31eadc94'
);
-- Breaking Things

INSERT INTO
    character_types_equipment (
        id,
        type_id,
        item_id,
        description
    )
VALUES
    -- GLAIVE
    (
        '97c3f28a-a8f0-4c6e-9cdb-f8df3f81acd2',
        '8c606521-ce04-4725-ade4-e342768b266f',
        '4cf2c8e4-7b18-4ad5-87dc-f2cddf6a36b7',
        'Medium Weapon'
    ),
    (
        '3476b5d5-dfdd-4ed2-931c-b7d5ced52c9b',
        '8c606521-ce04-4725-ade4-e342768b266f',
        'b1d4836d-7fd8-4f37-9f09-51a4ac769f11',
        'Heavy Weapon'
    ),
    (
        '3abec2b1-347e-41c9-9aa7-b70463b62e46',
        '8c606521-ce04-4725-ade4-e342768b266f',
        'b0f1f29d-312a-41e0-8450-60e6f8df1e1b',
        'Medium Armor'
    ),
    (
        'c56dfe2f-52fe-4af0-9b16-3f41b2533cff',
        '8c606521-ce04-4725-ade4-e342768b266f',
        'fd123b5a-8ac3-4ff0-b9c2-1a56108f0de7',
        'Explorer’s Pack'
    ),
    (
        'f1aad607-536f-4e3c-bddb-b9b893abac68',
        '8c606521-ce04-4725-ade4-e342768b266f',
        'a4c2e619-9b2b-47b3-89ef-4de0fd5ad4ab',
        'Cypher: Detonation (Fire)'
    ),
    (
        'ad0ef7fd-e8bf-40cf-b0be-3dd8e43c6735',
        '8c606521-ce04-4725-ade4-e342768b266f',
        'dfde3b7e-8d61-4f7b-b911-bfd60e0a1d3a',
        'Cypher: Detonation (Gravity)'
    ),
    (
        '769caf85-af05-455f-a90b-d76614bdd768',
        '8c606521-ce04-4725-ade4-e342768b266f',
        'c7e6f3a1-f1f0-4ff0-b046-3f592e6463a2',
        'Oddity: Glowing Marble'
    ),

-- NANO
(
    '6bff7399-9bf3-44b2-833b-d4d4f187b029',
    'b1f5d6e2-3c4a-4f7a-9f4b-2d5e8c9a1b2c',
    '2c4e8bd6-d3a9-43a5-bdd7-f7c3d3b78f85',
    'Traveler’s Clothes'
),
(
    'c8f5d457-e65b-4fce-8ae8-39a94ae35195',
    'b1f5d6e2-3c4a-4f7a-9f4b-2d5e8c9a1b2c',
    '8a9e2c35-5f19-4a90-81d7-4a78e06b5b1a',
    'Light Weapon'
),
(
    'a1555fc4-fefa-44d4-8300-2e98f61d756e',
    'b1f5d6e2-3c4a-4f7a-9f4b-2d5e8c9a1b2c',
    'a6c7f9f9-3c1c-4e2f-9a46-8b1e8e3e0ac9',
    'Cypher: Mental Enhancement'
),
(
    '1b6e35f1-eca2-416a-8291-7f8744a74465',
    'b1f5d6e2-3c4a-4f7a-9f4b-2d5e8c9a1b2c',
    '6b1d4144-b816-4b32-9c56-4a6db29048d1',
    'Cypher: Healing Injector'
),
(
    'ae265294-178f-47c3-bd88-8389a1bb874c',
    'b1f5d6e2-3c4a-4f7a-9f4b-2d5e8c9a1b2c',
    'bfeab733-2e58-47ab-a0b2-7d0adfe6a751',
    'Oddity: Singing Coin'
),

-- JACK
(
    '46d94cb1-279d-4f8d-a8d6-091d967525e5',
    'd3f9e8b7-5a6c-4d2e-9f1b-3c4d5e6f7a8b',
    '8a9e2c35-5f19-4a90-81d7-4a78e06b5b1a',
    'Light Weapon'
),
(
    '598bf64a-c971-4e5b-95f0-2bc29ad2b89d',
    'd3f9e8b7-5a6c-4d2e-9f1b-3c4d5e6f7a8b',
    'c9f8c0b1-3e3f-4a92-86da-6e2077f2e83b',
    'Light Armor'
),
(
    'b1cbf1cd-dce0-4e90-82e5-85353ea0373b',
    'd3f9e8b7-5a6c-4d2e-9f1b-3c4d5e6f7a8b',
    'fd123b5a-8ac3-4ff0-b9c2-1a56108f0de7',
    'Explorer’s Pack'
),
(
    '37d4b93e-fd8a-476b-99a5-fbb6d678bd18',
    'd3f9e8b7-5a6c-4d2e-9f1b-3c4d5e6f7a8b',
    'f57b86cb-0f12-48a8-91bb-58f2f75ef04f',
    'Cypher: Force Field Projector'
),
(
    'eeee8a95-14c1-4921-8a24-174f3f9e81b2',
    'd3f9e8b7-5a6c-4d2e-9f1b-3c4d5e6f7a8b',
    'a4c2e619-9b2b-47b3-89ef-4de0fd5ad4ab',
    'Cypher: Detonation (Fire)'
),
(
    'ac7ea5d3-243c-47ae-aed7-9070473ec90d',
    'd3f9e8b7-5a6c-4d2e-9f1b-3c4d5e6f7a8b',
    'a9f2c14b-5946-4f59-9ed2-6d32cf8dcb91',
    'Oddity: Color-Shifting Cube'
);