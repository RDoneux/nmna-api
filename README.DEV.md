### SQL
```sql
SELECT
    ch.id as character_id,
    ch.character_name,
    ch.player_name,
    ch.experience,
    ch.level,
    cl.name AS class,
    JSON_ARRAYAGG(
        JSON_OBJECT(
            'skillName', cs.skill_name,
            'modifyingAttribute', cs.modifying_attribute,
            'attributeScore', CASE cs.modifying_attribute
                WHEN 'Strength' THEN ch.strength
                WHEN 'Dexterity' THEN ch.dexterity
                WHEN 'Constitution' THEN ch.constitution
                WHEN 'Intelligence' THEN ch.intelligence
                WHEN 'Wisdom' THEN ch.wisdom
                WHEN 'Charisma' THEN ch.charisma
                ELSE NULL
            END,
            'proficiencyLevel', sp.level,
            'proficiencyModifier', sp.modifier
        )
    ) AS skills
FROM
    `characters` ch
    LEFT JOIN classes cl ON ch.class_id = cl.id
    LEFT JOIN character_skills cs ON ch.id = cs.character_id
    LEFT JOIN skill_proficiencies sp ON cs.proficiency_level_id = sp.id
GROUP BY ch.id, ch.character_name, ch.player_name, ch.experience, ch.level, cl.name;
```