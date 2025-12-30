INSERT INTO items (
    name,
    description,
    item_type,
    equip_location
) VALUES 
    (
        'Adhesion Clamps',
        'Handles with powerful suction cups.',
        'CYPHER',
        'HANDS'
    ),
    (
        'Antivenom',
        'Injector',
        'CYPHER',
        'NONE'
    ),
    (
        'Attractor',
        'Small handheld device',
        'CYPHER',
        'HANDS'
    ),
    (
        'Banishing Nodule',
        'Crystal module affixed to a melee weapon',
        'CYPHER',
        'NONE'
    ),
    (
        'Blinking Nodule',
        'Crsytal module affixed to armour',
        'CYPHER',
        'NONE'
    ),
    (
        'CHEMICAL FACTORY',
        'Injector',
        'CYPHER',
        'NONE'
    ),
    (
        'Comprehension Graft',
        'Small metalic disk',
        'CYPHER',
        'NONE'
    ),
    (
        'Controlled Blinking Nodule',
        'Crystal nodule affixed to armour',
        'CYPHER',
        'NONE'
    ),
    (
        'Datasphere Siphon',
        'Small handheld device, crystal. Also ingestible',
        'CYPHER',
        'HANDS'
    ),
    (
        'Density Nodule',
        'Crystal module affixed to a melee weapon',
        'CYPHER',
        'NONE'
    ),
    (
        'Detonation',
        'Wristband projector (long range). Explosive device (thrown, short range) or handheld projector (long range)',
        'CYPHER',
        'FOREARM'
    ),
    (
        'Detonation (Disiccating)',
        'Wristband projector (long range). Explosive device (thrown, short range) or handheld projector (long range)',
        'CYPHER',
        'FOREARM'
    ),
    (
        'Detonation (Flash)',
        'Wristband projector (long range). Explosive device (thrown, short range) or handheld projector (long range)',
        'CYPHER',
        'FOREARM'
    ),
    (
        'Detonation (Gravity)',
        'Wristband projector (long range). Explosive device (thrown, short range) or handheld projector (long range)',
        'CYPHER',
        'FOREARM'
    ),
    (
        'Detonation (Massive)',
        'Wristband projector (long range). Explosive device (thrown, short range) or handheld projector (long range)',
        'CYPHER',
        'FOREARM'
    ),
    (
        'Detonation (Matter Disruption)',
        'Wristband projector (long range). Explosive device (thrown, short range) or handheld projector (long range)',
        'CYPHER',
        'FOREARM'
    ),
    (
        'Detonation (Pressure)',
        'Wristband projector (long range). Explosive device (thrown, short range) or handheld projector (long range)',
        'CYPHER',
        'FOREARM'
    );

INSERT INTO cyphers (
    item_id,
    level_descriptor,
    effect
) 
VALUES 
    (
        (SELECT id FROM items WHERE name = 'Adhesion Clamps'),
        '1d6',
        'Allows for automatic climbing of any surface, even horizontal ones. Lasts for twenty minutes.'
    ),
    (
        (SELECT id FROM items WHERE name = 'Antivenom'),
        '1d6 + 2',
        'Renders user immmune to poisons of the same level or lower (and ends any such ongoing effects if any already in the user''s system).'
    ),
    (
        (SELECT id FROM items WHERE name = 'Attractor'),
        '1d6 + 4',
        'One unanchored item your size or smaller within long range is drawn immediately to the device. This takes one round. The item has no momentum when it arrives.'
    ),
    (
        (SELECT id FROM items WHERE name = 'Banishing Nodule'),
        '1d6',
        'For the next 28 hours, each time the weapon the nodule is attached to strikes a solid creature or object, it generates a burst of engery that teleports the creature or object struck an immediate distance in a random direction (not up or down). The difficulty of the dteleported creature''s actions (including defence) is modified by one step to its detriment on its next turn.'
    ),
    (
        (SELECT id FROM items WHERE name = 'Blinking Nodule'),
        '1d6',
        'For the next 28 hours, each time (but not more than once per round) the wearer of the armour the nodule is attached to is struck hard enough to inflict damage, he teleports an immediate distance in a random direction (not up or down). The difficulty of the teleported creature''s actions (including defence) is modified by one step to its detriment on its next turn.'
    ),
    (
        (SELECT id FROM items WHERE name = 'CHEMICAL FACTORY'),
        '1d6',
        'After one hour, the sweat of the user produces 1d6 doses of a valuable liquid (these doses are not considered cyphers). They must be used within one week. Effects vary: (see Numera Core Rules 2013 ed. p283).'
    ),
    (
        (SELECT id FROM items WHERE name = 'Comprehension Graft'),
        '1d6 + 1',
        'When applied to a creature''s head, the disk immediately unleashes microfilaments that enter the brain. Within 5 minutes, the creature can understand the wrods of a specific language keyed into the graft. This is true even of creatures that do not normally have a langugae. If the creature could already understand the langugae, the cypher has no effect. Once the graft attaches, the effect is permanent, and this device no longer counts against the number of cyphers that a PC can bear.'
    ),
    (
        (SELECT id FROM items WHERE name = 'Controlled Blinking Nodule'),
        '1d6 + 2',
        'For the next 28 hours, each time the wearer of the armour the nodule is attached to is struck hard enough to inflict damage (but no more than once per round), he teleports to a spot he desires within immediate range. Since the wearer is prepared for this effect and his foe is not, the difficulty of the werer''s defence is modified by one step to his benefit for one round after he telports.'
    ),
    (
        (SELECT id FROM items WHERE name = 'Datasphere Siphon'),
        '1d6',
        'Tapping into the datasphere''s knowledge, the user can learn the answer to one question.'
    ),
    (
        (SELECT id FROM items WHERE name = 'Density Nodule'),
        '1d6',
        'For the next 28 hours, each time the weapon the nodule is attached to strikes a solid creature or object, the weapon suddenly increases dramatically in weight, causing the blow to inflict an additional 2 points of damage.'
    ),
    (
        (SELECT id FROM items WHERE name = 'Detonation'),
        '1d6 + 2',
        'Exlodes in an immediate radius, inflicting damage equal to the cypher level. Roll for the type of damage ((see Numera Core Rules 2013 ed. p284)).'
    ),
    (
        (SELECT id FROM items WHERE name = 'Detonation (Disiccating)'),
        '1d6 + 2',
        'Bursts in an immediate radius, draining moisture from everything within it. Living creatures take damage equal to the cypher level. Water in the area is vaporised.'
    ),
    (
        (SELECT id FROM items WHERE name = 'Detonation (Flash)'),
        '1d6 + 2',
        'Bursts in daan immediate radius, blinding all within it for one minute.'
    ),
    (
        (SELECT id FROM items WHERE name = 'Detonation (Gravity)'),
        '1d6 + 2',
        'Bursts in an immediate radius, inflicting damage equal to the cypher level by increasing gravity tremendously for one second. All in the area are crushed to the ground for one round and cannot take physical actions.'
    ),
    (
        (SELECT id FROM items WHERE name = 'Detonation (Massive)'),
        '1d6 + 2',
        'Explodes in short range radius, inflicting damage equal to the cypher level. Roll for the type of damaage (see Numera Core Rules 2013 ed. p284).'
    ),
    (
        (SELECT id FROM items WHERE name = 'Detonation (Matter Disruption)'),
        '1d6 + 2',
        'Explodes in an immediate radius, releasing nanites that rearrange matter in random ways, inflicts damage equal to the cypher level.'
    ),
    (
        (SELECT id FROM items WHERE name = 'Detonation (Pressure)'),
        '1d6 + 2',
        'Explodes in an immediate radius, inflicting impact damage equal to cypher level. Also moves unattended objects out of the area if they weigh less than 9kg per cypher level.'
    );