--============================================================================================================= 
-- CIVILIZATIONS EXPANDED: PORTUGAL
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: CASA DA ÍNDIA (ENHANCEMENT)
-- Ultramar Português?
--=============================================================================================================
-- Receive a random Eureka upon earning a Great Admiral.
-- Traders can immediately enter Ocean tiles too.
--=============================================================================================================
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType,										SubjectRequirementSetId)
VALUES	('P0K_TRAIT_TECH_BOOST_FROM_GREAT_ADMIRALS',	'MODIFIER_PLAYER_GRANT_BOOST_WITH_GREAT_PERSON',	NULL),
		('P0K_TRAIT_TRADER_IMMEDIATE_OCEAN',			'MODIFIER_PLAYER_UNITS_ADJUST_VALID_TERRAIN',		'UNIT_IS_TRADER');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value)
VALUES	('P0K_TRAIT_TECH_BOOST_FROM_GREAT_ADMIRALS',	'GreatPersonClass',		'GREAT_PERSON_CLASS_ADMIRAL'),
		('P0K_TRAIT_TECH_BOOST_FROM_GREAT_ADMIRALS',	'TechBoost',			1),
		('P0K_TRAIT_TECH_BOOST_FROM_GREAT_ADMIRALS',	'OtherPlayers',			0),
		('P0K_TRAIT_TRADER_IMMEDIATE_OCEAN',			'TerrainType',			'TERRAIN_OCEAN'),
		('P0K_TRAIT_TRADER_IMMEDIATE_OCEAN',			'Valid',				1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('TRAIT_CIVILIZATION_PORTUGAL',	'P0K_TRAIT_TECH_BOOST_FROM_GREAT_ADMIRALS'),
		('TRAIT_CIVILIZATION_PORTUGAL',	'P0K_TRAIT_TRADER_IMMEDIATE_OCEAN');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: PORTA DO CERCO (ENHANCEMENT)
--=============================================================================================================
-- Harbors provide a standard adjacency bonus to all other specialty districts.
-- Naval units and embarked units receive +1 Movement and +1 Sight (instead of +1 Sight for all units)
-- Unlocking a new naval unit grants +1 City-State envoy
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,									Kind)
VALUES	('P0K_ABILITY_PORTA_DO_CERCO_EMBARKED',	'KIND_ABILITY'),
		('P0K_ABILITY_PORTA_DO_CERCO_NAVAL',	'KIND_ABILITY');
---------------------------------------------------------------------------------------------------------------
-- TypeTags
---------------------------------------------------------------------------------------------------------------
INSERT INTO TypeTags
		(Type,									Tag)
VALUES	('P0K_ABILITY_PORTA_DO_CERCO_EMBARKED', 'CLASS_LANDCIVILIAN'),
		('P0K_ABILITY_PORTA_DO_CERCO_EMBARKED', 'CLASS_RECON'),
		('P0K_ABILITY_PORTA_DO_CERCO_EMBARKED', 'CLASS_MELEE'),
		('P0K_ABILITY_PORTA_DO_CERCO_EMBARKED', 'CLASS_RANGED'),
		('P0K_ABILITY_PORTA_DO_CERCO_EMBARKED', 'CLASS_SIEGE'),
		('P0K_ABILITY_PORTA_DO_CERCO_EMBARKED', 'CLASS_HEAVY_CAVALRY'),
		('P0K_ABILITY_PORTA_DO_CERCO_EMBARKED', 'CLASS_LIGHT_CAVALRY'),
		('P0K_ABILITY_PORTA_DO_CERCO_EMBARKED', 'CLASS_RANGED_CAVALRY'),
		('P0K_ABILITY_PORTA_DO_CERCO_EMBARKED', 'CLASS_ANTI_CAVALRY'),
		('P0K_ABILITY_PORTA_DO_CERCO_EMBARKED', 'CLASS_HEAVY_CHARIOT'),
		('P0K_ABILITY_PORTA_DO_CERCO_EMBARKED', 'CLASS_LIGHT_CHARIOT'),
		('P0K_ABILITY_PORTA_DO_CERCO_EMBARKED', 'CLASS_SUPPORT'),
		('P0K_ABILITY_PORTA_DO_CERCO_NAVAL',	'CLASS_NAVAL_CARRIER'),
		('P0K_ABILITY_PORTA_DO_CERCO_NAVAL',	'CLASS_NAVAL_MELEE'),
		('P0K_ABILITY_PORTA_DO_CERCO_NAVAL',	'CLASS_NAVAL_RAIDER'),
		('P0K_ABILITY_PORTA_DO_CERCO_NAVAL',	'CLASS_NAVAL_RANGED');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilities
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilities
		(UnitAbilityType,						Name,											Description,											Inactive)
VALUES	('P0K_ABILITY_PORTA_DO_CERCO_EMBARKED',	'LOC_P0K_ABILITY_PORTA_DO_CERCO_EMBARKED_NAME',	'LOC_P0K_ABILITY_PORTA_DO_CERCO_EMBARKED_DESCRIPTION',	1),
		('P0K_ABILITY_PORTA_DO_CERCO_NAVAL',	'LOC_P0K_ABILITY_PORTA_DO_CERCO_NAVAL_NAME',	'LOC_P0K_ABILITY_PORTA_DO_CERCO_NAVAL_DESCRIPTION',		1);
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,										ModifierType,							OwnerRequirementSetId)
VALUES	('P0K_PORTA_DO_CERCO_EMBARKED_MOVEMENT',			'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT',	'REQUIREMENTS_UNIT_IS_EMBARKED'),
		('P0K_PORTA_DO_CERCO_EMBARKED_SIGHT',				'MODIFIER_PLAYER_UNIT_ADJUST_SIGHT',	'REQUIREMENTS_UNIT_IS_EMBARKED'),
		('P0K_PORTA_DO_CERCO_NAVAL_MOVEMENT',				'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT',	NULL),
		('P0K_PORTA_DO_CERCO_NAVAL_SIGHT',					'MODIFIER_PLAYER_UNIT_ADJUST_SIGHT',	NULL),
		('P0K_TRAIT_GRANT_PORTA_DO_CERCO_EMBARKED_ABILITY',	'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',	NULL),
		('P0K_TRAIT_GRANT_PORTA_DO_CERCO_NAVAL_ABILITY',	'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',	NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,			Value)
VALUES	('P0K_PORTA_DO_CERCO_EMBARKED_MOVEMENT',			'Amount',		1),
		('P0K_PORTA_DO_CERCO_EMBARKED_SIGHT',				'Amount',		1),
		('P0K_PORTA_DO_CERCO_NAVAL_MOVEMENT',				'Amount',		1),
		('P0K_PORTA_DO_CERCO_NAVAL_SIGHT',					'Amount',		1),
		('P0K_TRAIT_GRANT_PORTA_DO_CERCO_EMBARKED_ABILITY',	'AbilityType',	'P0K_ABILITY_PORTA_DO_CERCO_EMBARKED'),
		('P0K_TRAIT_GRANT_PORTA_DO_CERCO_NAVAL_ABILITY',	'AbilityType',	'P0K_ABILITY_PORTA_DO_CERCO_NAVAL');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilityModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,						ModifierId)
VALUES	('P0K_ABILITY_PORTA_DO_CERCO_EMBARKED',	'P0K_PORTA_DO_CERCO_EMBARKED_MOVEMENT'),
		('P0K_ABILITY_PORTA_DO_CERCO_EMBARKED',	'P0K_PORTA_DO_CERCO_EMBARKED_SIGHT'),
		('P0K_ABILITY_PORTA_DO_CERCO_NAVAL',	'P0K_PORTA_DO_CERCO_NAVAL_MOVEMENT'),
		('P0K_ABILITY_PORTA_DO_CERCO_NAVAL',	'P0K_PORTA_DO_CERCO_NAVAL_SIGHT');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,					ModifierId)
VALUES	('TRAIT_LEADER_JOAO_III',	'P0K_TRAIT_GRANT_PORTA_DO_CERCO_EMBARKED_ABILITY'),
		('TRAIT_LEADER_JOAO_III',	'P0K_TRAIT_GRANT_PORTA_DO_CERCO_NAVAL_ABILITY');
--=============================================================================================================
-- Separate section for "Unlocking a new naval unit grants +1 City-State envoy"
--=============================================================================================================
-- Create temporary tables
---------------------------------------------------------------------------------------------------------------
CREATE TEMPORARY TABLE "p0kPortugalTechData"(
	"UnitType" TEXT NOT NULL,
	"TechnologyType" TEXT NOT NULL
);

INSERT INTO p0kPortugalTechData			
		(UnitType,				TechnologyType)
SELECT	UnitType,				PrereqTech
FROM	Units
WHERE	(FormationClass = 'FORMATION_CLASS_NAVAL' AND TraitType IS NULL AND PrereqTech IS NOT NULL)
OR      UnitType = 'UNIT_PORTUGUESE_NAU'
;

CREATE TEMPORARY TABLE "p0kPortugalCivicData"(
	"UnitType" TEXT NOT NULL,
	"CivicType" TEXT NOT NULL
);

INSERT INTO p0kPortugalCivicData			
		(UnitType,				CivicType)
SELECT	UnitType,				PrereqCivic
FROM	Units
WHERE	(FormationClass = 'FORMATION_CLASS_NAVAL' AND TraitType IS NULL AND PrereqCivic IS NOT NULL
);
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
				(RequirementId,																RequirementType)
SELECT DISTINCT 'P0K_PORTUGAL_REQUIRES_PLAYER_HAS_' ||UnitType|| '_AND_' ||TechnologyType,	'REQUIREMENT_PLAYER_HAS_TECHNOLOGY'
FROM	p0kPortugalTechData;

INSERT INTO Requirements
				(RequirementId,																RequirementType)
SELECT DISTINCT 'P0K_PORTUGAL_REQUIRES_PLAYER_HAS_' ||UnitType|| '_AND_' ||CivicType,		'REQUIREMENT_PLAYER_HAS_CIVIC'
FROM	p0kPortugalCivicData;
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
				(RequirementId,																Name,				Value)
SELECT DISTINCT	'P0K_PORTUGAL_REQUIRES_PLAYER_HAS_' ||UnitType|| '_AND_' ||TechnologyType,	'TechnologyType',	TechnologyType
FROM	p0kPortugalTechData;

INSERT INTO RequirementArguments
				(RequirementId,																Name,				Value)
SELECT DISTINCT	'P0K_PORTUGAL_REQUIRES_PLAYER_HAS_' ||UnitType|| '_AND_' ||CivicType,		'CivicType',	CivicType
FROM	p0kPortugalCivicData;
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
				(RequirementSetId,													RequirementSetType)
SELECT DISTINCT	'P0K_PORTUGAL_PLAYER_HAS_' ||UnitType|| '_AND_' ||TechnologyType,	'REQUIREMENTSET_TEST_ALL'
FROM	p0kPortugalTechData;

INSERT INTO RequirementSets
				(RequirementSetId,													RequirementSetType)
SELECT DISTINCT	'P0K_PORTUGAL_PLAYER_HAS_' ||UnitType|| '_AND_' ||CivicType,		'REQUIREMENTSET_TEST_ALL'
FROM	p0kPortugalCivicData;
---------------------------------------------------------------------------------------------------------------					
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
				(RequirementSetId,													RequirementId)
SELECT DISTINCT	'P0K_PORTUGAL_PLAYER_HAS_' ||UnitType|| '_AND_' ||TechnologyType,	'P0K_PORTUGAL_REQUIRES_PLAYER_HAS_' ||UnitType|| '_AND_' ||TechnologyType
FROM	p0kPortugalTechData;

INSERT INTO RequirementSetRequirements
				(RequirementSetId,													RequirementId)
SELECT DISTINCT	'P0K_PORTUGAL_PLAYER_HAS_' ||UnitType|| '_AND_' ||CivicType,		'P0K_PORTUGAL_REQUIRES_PLAYER_HAS_' ||UnitType|| '_AND_' ||CivicType
FROM	p0kPortugalCivicData;
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
				(ModifierId,											ModifierType,								RunOnce,	Permanent,	SubjectRequirementSetId)
SELECT DISTINCT 'P0K_TRAIT_UNLOCK_' ||UnitType|| '_TECH_FREE_ENVOY',	'MODIFIER_PLAYER_GRANT_INFLUENCE_TOKEN',	1,			1,			'P0K_PORTUGAL_PLAYER_HAS_' ||UnitType|| '_AND_' ||TechnologyType
FROM	p0kPortugalTechData;

INSERT INTO Modifiers
				(ModifierId,											ModifierType,								RunOnce,	Permanent,	SubjectRequirementSetId)
SELECT DISTINCT 'P0K_TRAIT_UNLOCK_' ||UnitType|| '_CIVIC_FREE_ENVOY',	'MODIFIER_PLAYER_GRANT_INFLUENCE_TOKEN',	1,			1,			'P0K_PORTUGAL_PLAYER_HAS_' ||UnitType|| '_AND_' ||CivicType
FROM	p0kPortugalCivicData;
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
				(ModifierId,											Name,		Value)
SELECT DISTINCT	'P0K_TRAIT_UNLOCK_' ||UnitType|| '_TECH_FREE_ENVOY',	'Amount',	1
FROM	p0kPortugalTechData;

INSERT INTO ModifierArguments
				(ModifierId,											Name,		Value)
SELECT DISTINCT	'P0K_TRAIT_UNLOCK_' ||UnitType|| '_CIVIC_FREE_ENVOY',	'Amount',	1
FROM	p0kPortugalCivicData;
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers
WHERE		TraitType = 'TRAIT_LEADER_JOAO_III'
AND			ModifierId = 'TRAIT_JOAO_EXTRA_SIGHT';

INSERT INTO TraitModifiers
				(TraitType,					ModifierId)
SELECT DISTINCT	'TRAIT_LEADER_JOAO_III',	'P0K_TRAIT_UNLOCK_' ||UnitType|| '_TECH_FREE_ENVOY'
FROM	p0kPortugalTechData;

INSERT INTO TraitModifiers
				(TraitType,					ModifierId)
SELECT DISTINCT	'TRAIT_LEADER_JOAO_III',	'P0K_TRAIT_UNLOCK_' ||UnitType|| '_CIVIC_FREE_ENVOY'
FROM	p0kPortugalCivicData;
---------------------------------------------------------------------------------------------------------------
-- Drop temporary tables
---------------------------------------------------------------------------------------------------------------
DROP TABLE p0kPortugalTechData;
DROP TABLE p0kPortugalCivicData;
--=============================================================================================================
-- UNIQUE BUILDING: NAVIGATION SCHOOL
--=============================================================================================================
-- Get Science from Ocean tiles as well.
--=============================================================================================================
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType)
VALUES	('P0K_NAVIGATION_SCHOOL_NAVAL_OCEAN_SCIENCE',	'MODIFIER_CITY_ADJUST_CITY_YIELD_PER_TERRAIN_TYPE');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value)
VALUES	('P0K_NAVIGATION_SCHOOL_NAVAL_OCEAN_SCIENCE',	'TerrainType',	'TERRAIN_OCEAN'),
		('P0K_NAVIGATION_SCHOOL_NAVAL_OCEAN_SCIENCE',	'YieldType',	'YIELD_SCIENCE'),
		('P0K_NAVIGATION_SCHOOL_NAVAL_OCEAN_SCIENCE',	'Amount',		0.5);
---------------------------------------------------------------------------------------------------------------
-- BuildingModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO BuildingModifiers
		(BuildingType,					ModifierId)
VALUES	('BUILDING_NAVIGATION_SCHOOL',	'P0K_NAVIGATION_SCHOOL_NAVAL_OCEAN_SCIENCE');
--=============================================================================================================
-- UNIQUE IMPROVEMENT: FEITORIA
--=============================================================================================================
-- Increase benefits to make it better for the opposing Civs: +0.5 Housing and +1 Food.
-- Allow it to be constructed by Builders as well.
--=============================================================================================================
-- Improvements
---------------------------------------------------------------------------------------------------------------
UPDATE	Improvements
SET		PrereqTech = 'TECH_CARTOGRAPHY', Housing = 1, TilesRequired = 2
WHERE	ImprovementType = 'IMPROVEMENT_FEITORIA';
---------------------------------------------------------------------------------------------------------------
-- Improvement_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_YieldChanges
		(ImprovementType,			YieldType,		YieldChange)
VALUES	('IMPROVEMENT_FEITORIA',	'YIELD_FOOD',	1);
---------------------------------------------------------------------------------------------------------------
-- Improvement_ValidBuildUnits
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_ValidBuildUnits
		(ImprovementType,			UnitType)
VALUES	('IMPROVEMENT_FEITORIA',	'UNIT_BUILDER');