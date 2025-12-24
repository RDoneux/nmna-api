INSERT INTO
    characters (
        id,
        name,
        descriptor_id,
        type_id,
        focus_id
    )
VALUES (
        'ec5b72b2-4013-4676-88c7-bcf7f7d51a92',
        'Test Character',
        (SELECT id FROM character_descriptors WHERE name = 'Swift'),
        (SELECT id FROM character_types WHERE name = 'Jack'),
        (SELECT id FROM character_focus WHERE name = 'Masters Defense')
    )