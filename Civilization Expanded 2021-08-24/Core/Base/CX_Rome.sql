/* 
	Civilizations Expanded: Rome
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: ALL ROADS LEAD TO ROME (ENHANCEMENT)
--=============================================================================================================
-- +20% Production towards districts and buildings that already exist in the Capital.
-- +1 Era Score from completed Trade Routes.
--=============================================================================================================
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,									RequirementType)
SELECT	'P0K_ROME_REQUIRES_CITY_HAS_' ||BuildingType,	'REQUIREMENT_CITY_HAS_BUILDING'
FROM	Buildings WHERE IsWonder = 0 AND TraitType IS NULL AND (PrereqDistrict <> 'DISTRICT_GOVERNMENT') AND (PrereqDistrict <> 'DISTRICT_DIPLOMATIC_QUARTER');

INSERT INTO Requirements
		(RequirementId,									RequirementType)
SELECT	'P0K_ROME_REQUIRES_CITY_HAS_' ||DistrictType,	'REQUIREMENT_CITY_HAS_DISTRICT'
FROM	Districts WHERE (TraitType IS NULL OR TraitType = 'TRAIT_CIVILIZATION_DISTRICT_BATH') AND MaxPerPlayer <> 1 AND CityCenter <> 1 AND DistrictType <> 'DISTRICT_AQUEDUCT';
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,									Name,			Value)
SELECT	'P0K_ROME_REQUIRES_CITY_HAS_' ||BuildingType,	'BuildingType',	BuildingType
FROM	Buildings WHERE IsWonder = 0 AND TraitType IS NULL AND (PrereqDistrict <> 'DISTRICT_GOVERNMENT') AND (PrereqDistrict <> 'DISTRICT_DIPLOMATIC_QUARTER');

INSERT INTO RequirementArguments
		(RequirementId,									Name,			Value)
SELECT	'P0K_ROME_REQUIRES_CITY_HAS_' ||DistrictType,	'DistrictType',	DistrictType
FROM	Districts WHERE (TraitType IS NULL OR TraitType = 'TRAIT_CIVILIZATION_DISTRICT_BATH') AND MaxPerPlayer <> 1 AND CityCenter <> 1 AND DistrictType <> 'DISTRICT_AQUEDUCT';
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,				RequirementSetType)
VALUES	('P0K_ROME_CITY_IS_CAPITAL',	'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
SELECT	'P0K_ROME_CITY_HAS_' ||BuildingType,	'REQUIREMENTSET_TEST_ALL'
FROM	Buildings WHERE IsWonder = 0 AND TraitType IS NULL AND (PrereqDistrict <> 'DISTRICT_GOVERNMENT') AND (PrereqDistrict <> 'DISTRICT_DIPLOMATIC_QUARTER');

INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
SELECT	'P0K_ROME_CITY_HAS_' ||DistrictType,	'REQUIREMENTSET_TEST_ALL'
FROM	Districts WHERE (TraitType IS NULL OR TraitType = 'TRAIT_CIVILIZATION_DISTRICT_BATH') AND MaxPerPlayer <> 1 AND CityCenter <> 1 AND DistrictType <> 'DISTRICT_AQUEDUCT';
---------------------------------------------------------------------------------------------------------------					
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,				RequirementId)
VALUES	('P0K_ROME_CITY_IS_CAPITAL',	'REQUIRES_CITY_HAS_PALACE');

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
SELECT	'P0K_ROME_CITY_HAS_' ||BuildingType,	'P0K_ROME_REQUIRES_CITY_HAS_' ||BuildingType
FROM	Buildings WHERE IsWonder = 0 AND TraitType IS NULL AND (PrereqDistrict <> 'DISTRICT_GOVERNMENT') AND (PrereqDistrict <> 'DISTRICT_DIPLOMATIC_QUARTER');

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
SELECT	'P0K_ROME_CITY_HAS_' ||DistrictType,	'P0K_ROME_REQUIRES_CITY_HAS_' ||DistrictType
FROM	Districts WHERE (TraitType IS NULL OR TraitType = 'TRAIT_CIVILIZATION_DISTRICT_BATH') AND MaxPerPlayer <> 1 AND CityCenter <> 1 AND DistrictType <> 'DISTRICT_AQUEDUCT';
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,											ModifierType)
VALUES	('P0K_TRAIT_ERA_SCORE_COMPLETED_TRADE_ROUTE',			'MODIFIER_PLAYER_ADJUST_PLAYER_ERA_SCORE_PER_TRADE_ROUTE_COMPLETED');

INSERT INTO Modifiers
		(ModifierId,											ModifierType,												SubjectRequirementSetId)
SELECT	'P0K_TRAIT_ROME_CAPITAL_' ||BuildingType,				'P0K_ROME_MODIFIER_PLAYER_CAPITAL_CITY_ATTACH_MODIFIER',	'P0K_ROME_CITY_HAS_' ||BuildingType
FROM	Buildings WHERE IsWonder = 0 AND TraitType IS NULL AND (PrereqDistrict <> 'DISTRICT_GOVERNMENT') AND (PrereqDistrict <> 'DISTRICT_DIPLOMATIC_QUARTER');

INSERT INTO Modifiers
		(ModifierId,											ModifierType,												SubjectRequirementSetId)
SELECT	'P0K_TRAIT_ROME_CAPITAL_' ||BuildingType|| '_MODIFIER',	'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION',		NULL
FROM	Buildings WHERE IsWonder = 0 AND TraitType IS NULL AND (PrereqDistrict <> 'DISTRICT_GOVERNMENT') AND (PrereqDistrict <> 'DISTRICT_DIPLOMATIC_QUARTER');

INSERT INTO Modifiers
		(ModifierId,											ModifierType,												SubjectRequirementSetId)
SELECT	'P0K_TRAIT_ROME_CAPITAL_' ||DistrictType,				'P0K_ROME_MODIFIER_PLAYER_CAPITAL_CITY_ATTACH_MODIFIER',	'P0K_ROME_CITY_HAS_' ||DistrictType
FROM	Districts WHERE (TraitType IS NULL OR TraitType = 'TRAIT_CIVILIZATION_DISTRICT_BATH') AND MaxPerPlayer <> 1 AND CityCenter <> 1 AND DistrictType <> 'DISTRICT_AQUEDUCT';

INSERT INTO Modifiers
		(ModifierId,											ModifierType,												SubjectRequirementSetId)
SELECT	'P0K_TRAIT_ROME_CAPITAL_' ||DistrictType|| '_MODIFIER',	'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION',		NULL
FROM	Districts WHERE (TraitType IS NULL OR TraitType = 'TRAIT_CIVILIZATION_DISTRICT_BATH') AND MaxPerPlayer <> 1 AND CityCenter <> 1 AND DistrictType <> 'DISTRICT_AQUEDUCT';
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value)
VALUES	('P0K_TRAIT_ERA_SCORE_COMPLETED_TRADE_ROUTE',			'Amount',		1);

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value)
SELECT	'P0K_TRAIT_ROME_CAPITAL_' ||BuildingType,				'ModifierId',	'P0K_TRAIT_ROME_CAPITAL_' ||BuildingType|| '_MODIFIER'
FROM	Buildings WHERE IsWonder = 0 AND TraitType IS NULL AND (PrereqDistrict <> 'DISTRICT_GOVERNMENT') AND (PrereqDistrict <> 'DISTRICT_DIPLOMATIC_QUARTER');

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value)
SELECT	'P0K_TRAIT_ROME_CAPITAL_' ||BuildingType|| '_MODIFIER',	'BuildingType',	BuildingType
FROM	Buildings WHERE IsWonder = 0 AND TraitType IS NULL AND (PrereqDistrict <> 'DISTRICT_GOVERNMENT') AND (PrereqDistrict <> 'DISTRICT_DIPLOMATIC_QUARTER');

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value)
SELECT	'P0K_TRAIT_ROME_CAPITAL_' ||BuildingType|| '_MODIFIER',	'Amount',		20
FROM	Buildings WHERE IsWonder = 0 AND TraitType IS NULL AND (PrereqDistrict <> 'DISTRICT_GOVERNMENT') AND (PrereqDistrict <> 'DISTRICT_DIPLOMATIC_QUARTER');

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value)
SELECT	'P0K_TRAIT_ROME_CAPITAL_' ||DistrictType,				'ModifierId',	'P0K_TRAIT_ROME_CAPITAL_' ||DistrictType|| '_MODIFIER'
FROM	Districts WHERE (TraitType IS NULL OR TraitType = 'TRAIT_CIVILIZATION_DISTRICT_BATH') AND MaxPerPlayer <> 1 AND CityCenter <> 1 AND DistrictType <> 'DISTRICT_AQUEDUCT';

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value)
SELECT	'P0K_TRAIT_ROME_CAPITAL_' ||DistrictType|| '_MODIFIER',	'DistrictType',	DistrictType
FROM	Districts WHERE (TraitType IS NULL OR TraitType = 'TRAIT_CIVILIZATION_DISTRICT_BATH') AND MaxPerPlayer <> 1 AND CityCenter <> 1 AND DistrictType <> 'DISTRICT_AQUEDUCT';

INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value)
SELECT	'P0K_TRAIT_ROME_CAPITAL_' ||DistrictType|| '_MODIFIER',	'Amount',		20
FROM	Districts WHERE (TraitType IS NULL OR TraitType = 'TRAIT_CIVILIZATION_DISTRICT_BATH') AND MaxPerPlayer <> 1 AND CityCenter <> 1 AND DistrictType <> 'DISTRICT_AQUEDUCT';
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,									ModifierId)
VALUES	('TRAIT_CIVILIZATION_ALL_ROADS_TO_ROME',	'P0K_TRAIT_ERA_SCORE_COMPLETED_TRADE_ROUTE');

INSERT INTO TraitModifiers
		(TraitType,									ModifierId)
SELECT	'TRAIT_CIVILIZATION_ALL_ROADS_TO_ROME',		'P0K_TRAIT_ROME_CAPITAL_' ||BuildingType
FROM	Buildings WHERE IsWonder = 0 AND TraitType IS NULL AND (PrereqDistrict <> 'DISTRICT_GOVERNMENT') AND (PrereqDistrict <> 'DISTRICT_DIPLOMATIC_QUARTER');

INSERT INTO TraitModifiers
		(TraitType,									ModifierId)
SELECT	'TRAIT_CIVILIZATION_ALL_ROADS_TO_ROME',		'P0K_TRAIT_ROME_CAPITAL_' ||DistrictType
FROM	Districts WHERE (TraitType IS NULL OR TraitType = 'TRAIT_CIVILIZATION_DISTRICT_BATH') AND MaxPerPlayer <> 1 AND CityCenter <> 1 AND DistrictType <> 'DISTRICT_AQUEDUCT';
--=============================================================================================================
-- LEADER UNIQUE ABILITY: TRAJAN'S COLUMN (ENHANCEMENT)
--=============================================================================================================
-- Settlers and Builders receive +2 Movement.
-- Settlers trained in the Capital do not consume Population.
-- Military units heal every turn when in a Golden Age, even after moving or attacking.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,																		Kind)
VALUES	('P0K_ROME_MODIFIER_PLAYER_CAPITAL_CITY_ATTACH_MODIFIER',					'KIND_MODIFIER'),
		('P0K_ROME_MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_SETTLER_CONSUME_POPULATION',	'KIND_MODIFIER'),
		('P0K_ROME_ABILITY_TRAJANS_COLUMN',											'KIND_ABILITY'),
		('P0K_ROME_ABILITY_DACIAN_WARS',											'KIND_ABILITY');
---------------------------------------------------------------------------------------------------------------
-- DynamicModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,																CollectionType,						EffectType)
VALUES	('P0K_ROME_MODIFIER_PLAYER_CAPITAL_CITY_ATTACH_MODIFIER',					'COLLECTION_PLAYER_CAPITAL_CITY',	'EFFECT_ATTACH_MODIFIER'),
		('P0K_ROME_MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_SETTLER_CONSUME_POPULATION',	'COLLECTION_PLAYER_CAPITAL_CITY',	'EFFECT_ADJUST_CITY_SETTLER_CONSUME_POP');
---------------------------------------------------------------------------------------------------------------
-- TypeTags
---------------------------------------------------------------------------------------------------------------
INSERT INTO TypeTags
		(Type,								Tag)
VALUES	('P0K_ROME_ABILITY_TRAJANS_COLUMN',	'CLASS_SETTLER'),
		('P0K_ROME_ABILITY_TRAJANS_COLUMN',	'CLASS_BUILDER'),
		('P0K_ROME_ABILITY_DACIAN_WARS',	'CLASS_ALL_COMBAT_UNITS');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilities
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilities
		(UnitAbilityType,					Name,										Description,										Inactive)
VALUES	('P0K_ROME_ABILITY_TRAJANS_COLUMN',	'LOC_P0K_ROME_ABILITY_TRAJANS_COLUMN_NAME',	'LOC_P0K_ROME_ABILITY_TRAJANS_COLUMN_DESCRIPTION',	1),
		('P0K_ROME_ABILITY_DACIAN_WARS',	'LOC_P0K_ROME_ABILITY_DACIAN_WARS_NAME',	'LOC_P0K_ROME_ABILITY_DACIAN_WARS_DESCRIPTION',		1);
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,											ModifierType,																SubjectRequirementSetId)
VALUES	('P0K_TRAIT_CAPITAL_SETTLERS_NOT_CONSUME_POPULATION',	'P0K_ROME_MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_SETTLER_CONSUME_POPULATION',	NULL),
		('P0K_TRAJANS_COLUMN_EXTRA_MOVEMENT',					'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT',										NULL),
		('P0K_DACIAN_WARS_HEAL',								'MODIFIER_PLAYER_UNIT_GRANT_HEAL_AFTER_ACTION',								'PLAYER_HAS_GOLDEN_AGE'), -- no argument
		('P0K_TRAIT_GRANT_TRAJANS_COLUMN_ABILITY',				'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',										NULL),
		('P0K_TRAIT_GRANT_DACIAN_WARS_ABILITY',					'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',										NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value)
VALUES	('P0K_TRAIT_CAPITAL_SETTLERS_NOT_CONSUME_POPULATION',	'Enabled',		0),
		('P0K_TRAJANS_COLUMN_EXTRA_MOVEMENT',					'Amount',		2),
		('P0K_TRAIT_GRANT_TRAJANS_COLUMN_ABILITY',				'AbilityType',	'P0K_ROME_ABILITY_TRAJANS_COLUMN'),
		('P0K_TRAIT_GRANT_DACIAN_WARS_ABILITY',					'AbilityType',	'P0K_ROME_ABILITY_DACIAN_WARS');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilityModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,					ModifierId)
VALUES	('P0K_ROME_ABILITY_TRAJANS_COLUMN',	'P0K_TRAJANS_COLUMN_EXTRA_MOVEMENT'),
		('P0K_ROME_ABILITY_DACIAN_WARS',	'P0K_DACIAN_WARS_HEAL');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,					ModifierId)
VALUES	('TRAJANS_COLUMN_TRAIT',	'P0K_TRAIT_CAPITAL_SETTLERS_NOT_CONSUME_POPULATION'),
		('TRAJANS_COLUMN_TRAIT',	'P0K_TRAIT_GRANT_TRAJANS_COLUMN_ABILITY'),
		('TRAJANS_COLUMN_TRAIT',	'P0K_TRAIT_GRANT_DACIAN_WARS_ABILITY');
--=============================================================================================================
-- UNIQUE DISTRICT: BATH (ENHANCEMENT)
--=============================================================================================================
-- Provides a major adjacency bonus to all specialty districts.
--=============================================================================================================			
-- Adjacency_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Adjacency_YieldChanges
		(ID,							Description,						YieldType,			YieldChange,	TilesRequired,	AdjacentDistrict)
VALUES	('p0k_Campus_Bath_Science',		'P0K_LOC_DISTRICT_BATH_SCIENCE',	'YIELD_SCIENCE',	2,				1,				'DISTRICT_BATH'),
		('p0k_Campus_Bath_Culture',		'P0K_LOC_DISTRICT_BATH_CULTURE',	'YIELD_CULTURE',	2,				1,				'DISTRICT_BATH'),
		('p0k_Campus_Bath_Faith',		'P0K_LOC_DISTRICT_BATH_FAITH',		'YIELD_FAITH',		2,				1,				'DISTRICT_BATH'),
		('p0k_Campus_Bath_Production',	'P0K_LOC_DISTRICT_BATH_PRODUCTION',	'YIELD_PRODUCTION',	2,				1,				'DISTRICT_BATH'),
		('p0k_Campus_Bath_Gold',		'P0K_LOC_DISTRICT_BATH_GOLD',		'YIELD_GOLD',		2,				1,				'DISTRICT_BATH');
---------------------------------------------------------------------------------------------------------------
-- District_Adjacencies
---------------------------------------------------------------------------------------------------------------
INSERT INTO District_Adjacencies
		(DistrictType,					YieldChangeId)
VALUES	('DISTRICT_CAMPUS',				'p0k_Campus_Bath_Science'),
		('DISTRICT_THEATER',			'p0k_Campus_Bath_Culture'),
		('DISTRICT_HOLY_SITE',			'p0k_Campus_Bath_Faith'),
		('DISTRICT_INDUSTRIAL_ZONE',	'p0k_Campus_Bath_Production'),
		('DISTRICT_COMMERCIAL_HUB',		'p0k_Campus_Bath_Gold'),
		('DISTRICT_HARBOR',				'p0k_Campus_Bath_Gold');