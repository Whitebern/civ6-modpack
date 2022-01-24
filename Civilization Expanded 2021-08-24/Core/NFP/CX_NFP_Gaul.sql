/* 
	Civilizations Expanded: Gaul
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: MASTERS OF METALLURGY (REWORK)
--=============================================================================================================
-- (Remove maluses).
-- Builders trained on the home continent of the Capital receive +1 Charge and +1 Movement.
-- Building a Mine triggers a Culture Bomb, claiming adjacent unowned tiles.
-- Mined resources provide +1 Culture and +1 Production.
-- Specialty districts receive a standard adjacency bonus from Mines.
--=============================================================================================================
-- ExcludedAdjacencies
---------------------------------------------------------------------------------------------------------------
DELETE FROM ExcludedAdjacencies WHERE TraitType = 'TRAIT_CIVILIZATION_GAUL';
---------------------------------------------------------------------------------------------------------------
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,									Kind)
VALUES	('P0K_ABILITY_MASTERS_OF_METALLURGY',	'KIND_ABILITY');
---------------------------------------------------------------------------------------------------------------
-- TypeTags
---------------------------------------------------------------------------------------------------------------
INSERT INTO TypeTags
		(Type,									Tag)
VALUES	('P0K_ABILITY_MASTERS_OF_METALLURGY',	'CLASS_BUILDER');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilities
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilities
		(UnitAbilityType,						Name,											Description,											Inactive)
VALUES	('P0K_ABILITY_MASTERS_OF_METALLURGY',	'LOC_P0K_ABILITY_MASTERS_OF_METALLURGY_NAME',	'LOC_P0K_ABILITY_MASTERS_OF_METALLURGY_DESCRIPTION',	1);
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,											RequirementType)
VALUES	('P0K_GAUL_REQUIRES_CITY_IS_OWNER_CAPITAL_CONTINENT',	'REQUIREMENT_CITY_IS_OWNER_CAPITAL_CONTINENT'), -- no argument
		('P0K_GAUL_PLOT_HAS_MINED_RESOURCE_REQUIREMENTS',		'REQUIREMENT_REQUIREMENTSET_IS_MET');

INSERT INTO Requirements
		(RequirementId, 									RequirementType)
SELECT	'P0K_GAUL_REQUIRES_' ||ResourceType,				'REQUIREMENT_PLOT_RESOURCE_TYPE_MATCHES'
FROM Improvement_ValidResources WHERE ImprovementType = 'IMPROVEMENT_MINE';
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,										Name,				Value)
VALUES	('P0K_GAUL_PLOT_HAS_MINED_RESOURCE_REQUIREMENTS',	'RequirementSetId',	'P0K_GAUL_PLOT_HAS_MINED_RESOURCE');

INSERT INTO RequirementArguments
		(RequirementId, 								Name,					Value)
SELECT	'P0K_GAUL_REQUIRES_' ||ResourceType, 			'ResourceType',			ResourceType
FROM Improvement_ValidResources WHERE ImprovementType = 'IMPROVEMENT_MINE';
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId, 						RequirementSetType)
VALUES	('P0K_GAUL_CITY_IS_CAPITAL_CONTINENT',	'REQUIREMENTSET_TEST_ALL'),
		('P0K_GAUL_PLOT_HAS_MINED_RESOURCE',	'REQUIREMENTSET_TEST_ANY'),
		('P0K_GAUL_RESOURCE_REQUIREMENTS',		'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES	('P0K_GAUL_CITY_IS_CAPITAL_CONTINENT',	'P0K_GAUL_REQUIRES_CITY_IS_OWNER_CAPITAL_CONTINENT'),
		('P0K_GAUL_RESOURCE_REQUIREMENTS',		'REQUIRES_PLOT_HAS_VISIBLE_RESOURCE'),
		('P0K_GAUL_RESOURCE_REQUIREMENTS',		'REQUIRES_PLOT_HAS_MINE'),
		('P0K_GAUL_RESOURCE_REQUIREMENTS',		'P0K_GAUL_PLOT_HAS_MINED_RESOURCE_REQUIREMENTS');

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
SELECT	'P0K_GAUL_PLOT_HAS_MINED_RESOURCE',		'P0K_GAUL_REQUIRES_' ||ResourceType
FROM Improvement_ValidResources WHERE ImprovementType = 'IMPROVEMENT_MINE';
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType,											Permanent,	SubjectRequirementSetId)
VALUES	('P0K_MASTERS_OF_METALLURGY_MOVEMENT',			'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT',					0,			NULL),
		('P0K_TRAIT_BUILDER_MOVEMENT_CAPITAL',			'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',				0,			'P0K_GAUL_CITY_IS_CAPITAL_CONTINENT'),
		('P0K_TRAIT_BUILDER_MOVEMENT_CAPITAL_MODIFIER',	'MODIFIER_SINGLE_CITY_GRANT_ABILITY_FOR_TRAINED_UNITS',	0,			'UNIT_IS_BUILDER'),
		('P0K_TRAIT_BUILDER_CHARGES_CAPITAL',			'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',				0,			'P0K_GAUL_CITY_IS_CAPITAL_CONTINENT'),
		('P0K_TRAIT_BUILDER_CHARGES_CAPITAL_MODIFIER',	'MODIFIER_SINGLE_CITY_BUILDER_CHARGES',					1,			'UNIT_IS_BUILDER'),
		('P0K_TRAIT_MINE_RESOURCE_CULTURE',				'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',					0,			'P0K_GAUL_RESOURCE_REQUIREMENTS'),
		('P0K_TRAIT_MINE_RESOURCE_PRODUCTION',			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',					0,			'P0K_GAUL_RESOURCE_REQUIREMENTS');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
UPDATE	ModifierArguments
SET		Value = 1
WHERE	Name = 'TilesRequired'
AND		ModifierId IN
('TRAIT_CIVILIZATION_GAUL_CAMPUS_ADJACENCYSCIENCE',
'TRAIT_CIVILIZATION_GAUL_COMMERCIALHUB_ADJACENCYGOLD',
'TRAIT_CIVILIZATION_GAUL_HARBOR_ADJACENCYGOLD',
'TRAIT_CIVILIZATION_GAUL_HOLYSITE_ADJACENCYFAITH',
'TRAIT_CIVILIZATION_GAUL_OPPIDUM_ADJACENCYPRODUCTION',
'TRAIT_CIVILIZATION_GAUL_THEATER_ADJACENCYCULTURE');

INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value)
VALUES	('P0K_MASTERS_OF_METALLURGY_MOVEMENT',			'Amount',		1),
		('P0K_TRAIT_BUILDER_MOVEMENT_CAPITAL',			'ModifierId',	'P0K_TRAIT_BUILDER_MOVEMENT_CAPITAL_MODIFIER'),
		('P0K_TRAIT_BUILDER_MOVEMENT_CAPITAL_MODIFIER',	'AbilityType',	'P0K_ABILITY_MASTERS_OF_METALLURGY'),
		('P0K_TRAIT_BUILDER_CHARGES_CAPITAL',			'ModifierId',	'P0K_TRAIT_BUILDER_CHARGES_CAPITAL_MODIFIER'),
		('P0K_TRAIT_BUILDER_CHARGES_CAPITAL_MODIFIER',	'Amount',		1),
		('P0K_TRAIT_MINE_RESOURCE_CULTURE',				'YieldType',	'YIELD_CULTURE'),
		('P0K_TRAIT_MINE_RESOURCE_CULTURE',				'Amount',		1),
		('P0K_TRAIT_MINE_RESOURCE_PRODUCTION',			'YieldType',	'YIELD_PRODUCTION'),
		('P0K_TRAIT_MINE_RESOURCE_PRODUCTION',			'Amount',		1);
---------------------------------------------------------------------------------------------------------------
-- UnitAbilityModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,						ModifierId)
VALUES	('P0K_ABILITY_MASTERS_OF_METALLURGY',	'P0K_MASTERS_OF_METALLURGY_MOVEMENT');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers 
WHERE TraitType = 'TRAIT_CIVILIZATION_GAUL'
AND ModifierId IN 
('TRAIT_CIVILIZATION_GAUL_CITY_NO_ADJACENT_DISTRICT',
'GAUL_MINE_CULTURE');

INSERT INTO TraitModifiers
		(TraitType,					ModifierId)
VALUES	('TRAIT_CIVILIZATION_GAUL',	'P0K_TRAIT_BUILDER_MOVEMENT_CAPITAL'),
		('TRAIT_CIVILIZATION_GAUL',	'P0K_TRAIT_BUILDER_CHARGES_CAPITAL'),
		('TRAIT_CIVILIZATION_GAUL',	'P0K_TRAIT_MINE_RESOURCE_CULTURE'),
		('TRAIT_CIVILIZATION_GAUL',	'P0K_TRAIT_MINE_RESOURCE_PRODUCTION');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: GALLIC WARS (ENHANCEMENT)
--=============================================================================================================
-- All units receive +1 Movement in Gallic territory.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,										Kind)
VALUES	('P0K_ABILITY_GALLIC_WARS_EXTRA_MOVEMENT',	'KIND_ABILITY');
---------------------------------------------------------------------------------------------------------------
-- TypeTags
---------------------------------------------------------------------------------------------------------------
INSERT INTO TypeTags
		(Type,										Tag)
VALUES	('P0K_ABILITY_GALLIC_WARS_EXTRA_MOVEMENT',	'CLASS_ALL_UNITS');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilities
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilities
		(UnitAbilityType,							Name,												Description,												Inactive)
VALUES	('P0K_ABILITY_GALLIC_WARS_EXTRA_MOVEMENT',	'LOC_P0K_ABILITY_GALLIC_WARS_EXTRA_MOVEMENT_NAME',	'LOC_P0K_ABILITY_GALLIC_WARS_EXTRA_MOVEMENT_DESCRIPTION',	1);
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType)
VALUES	('P0K_GALLIC_WARS_REQUIREMENTS',	'REQUIREMENTSET_TEST_ANY');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId)
VALUES	('P0K_GALLIC_WARS_REQUIREMENTS',	'REQUIRES_PLAYER_HAS_AT_LEAST_NO_CITY'),
		('P0K_GALLIC_WARS_REQUIREMENTS',	'UNIT_IN_OWNER_TERRITORY_REQUIREMENT');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,								ModifierType,							SubjectRequirementSetId)
VALUES	('P0K_GALLIC_WARS_EXTRA_MOVEMENT',			'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT',	'P0K_GALLIC_WARS_REQUIREMENTS'),
		('P0K_TRAIT_GALLIC_WARS_EXTRA_MOVEMENT',	'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',	NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,								Name,			Value)
VALUES	('P0K_GALLIC_WARS_EXTRA_MOVEMENT',			'Amount',		1),
		('P0K_TRAIT_GALLIC_WARS_EXTRA_MOVEMENT',	'AbilityType',	'P0K_ABILITY_GALLIC_WARS_EXTRA_MOVEMENT');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilityModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,							ModifierId)
VALUES	('P0K_ABILITY_GALLIC_WARS_EXTRA_MOVEMENT',	'P0K_GALLIC_WARS_EXTRA_MOVEMENT');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,					ModifierId)
VALUES	('TRAIT_LEADER_AMBIORIX',	'P0K_TRAIT_GALLIC_WARS_EXTRA_MOVEMENT');
--=============================================================================================================
-- UNIQUE DISTRICT: OPIDDUM (REWORK)
--=============================================================================================================
-- +2 Housing.
-- May not be built adjacent to the City Center.
-- +1 Production for each adjacent resource
-- +1 Food for each adjacent Farm, Pasture, or Camp.
-- Restore other IZ adjacencies.
--=============================================================================================================
-- Districts
---------------------------------------------------------------------------------------------------------------
UPDATE Districts SET NoAdjacentCity = 1, Housing = 2 WHERE DistrictType = 'DISTRICT_OPPIDUM';
---------------------------------------------------------------------------------------------------------------
-- Adjacency_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Adjacency_YieldChanges
		(ID,							Description,					YieldType,		YieldChange,	TilesRequired,	AdjacentImprovement)
VALUES	('p0k_Oppidum_Farm_Food',		'P0K_LOC_OPPIDUM_FARM_FOOD',	'YIELD_FOOD',	1,				1,				'IMPROVEMENT_FARM'),		
		('p0k_Oppidum_Pasture_Food',	'P0K_LOC_OPPIDUM_PASTURE_FOOD',	'YIELD_FOOD',	1,				1,				'IMPROVEMENT_PASTURE'),
		('p0k_Oppidum_Camp_Food',		'P0K_LOC_OPPIDUM_CAMP_FOOD',	'YIELD_FOOD',	1,				1,				'IMPROVEMENT_CAMP');	
---------------------------------------------------------------------------------------------------------------
-- District_Adjacencies
---------------------------------------------------------------------------------------------------------------
DELETE FROM District_Adjacencies 
WHERE DistrictType = 'DISTRICT_OPPIDUM'
AND YieldChangeId IN ('Quarry_Production2', 'Strategic_Production2');

INSERT INTO District_Adjacencies
		(DistrictType,			YieldChangeId)
VALUES	('DISTRICT_OPPIDUM',	'Resource_Production'),
		('DISTRICT_OPPIDUM',	'p0k_Oppidum_Farm_Food'),
		('DISTRICT_OPPIDUM',	'p0k_Oppidum_Pasture_Food'),
		('DISTRICT_OPPIDUM',	'p0k_Oppidum_Camp_Food'),
		('DISTRICT_OPPIDUM',	'Aqueduct_Production'),
		('DISTRICT_OPPIDUM',	'Bath_Production'),
		('DISTRICT_OPPIDUM',	'Canal_Production'),
		('DISTRICT_OPPIDUM',	'Dam_Production'),
		('DISTRICT_OPPIDUM',	'District_Production');
--=============================================================================================================
-- UNIQUE UNIT: GAESATAE (ENHANCEMENT)
--=============================================================================================================
-- Upgrades into the Swordsman.
---------------------------------------------------------------------------------------------------------------
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_SWORDSMAN' WHERE Unit = 'UNIT_GAUL_GAESATAE';
--=============================================================================================================
-- START BIASES
--=============================================================================================================
-- Update to include all mining Luxury resources from mods as well.
--=============================================================================================================
-- StartBiasResources
---------------------------------------------------------------------------------------------------------------
DELETE FROM StartBiasResources
WHERE		CivilizationType = 'CIVILIZATION_GAUL';

INSERT INTO StartBiasResources
		(CivilizationType,		ResourceType,	Tier)
SELECT	'CIVILIZATION_GAUL',	ResourceType,	2
FROM	Improvement_ValidResources
WHERE	ImprovementType = 'IMPROVEMENT_MINE'
AND		ResourceType <> 'RESOURCE_AMBER' -- to avoid inadvertently setting a coastal bias
AND		ResourceType NOT IN (
SELECT	ResourceType 
FROM	Resources
WHERE	ResourceClassType = 'RESOURCECLASS_STRATEGIC');

-- Manually re-add Iron
INSERT INTO StartBiasResources
		(CivilizationType,		ResourceType,		Tier)
VALUES	('CIVILIZATION_GAUL',	'RESOURCE_IRON',	2);