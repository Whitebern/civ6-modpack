/* 
	Civilizations Expanded: Georgia
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: STRENGTH IN UNITY (ENHANCEMENT)
-- Note: Carrying over modified version of changes from Dramatic Ages to the base game.
--=============================================================================================================
-- Receive one extra Wildcard policy slot in any Government during a Golden Age.
-- May utilize Dark Age policies at any time.
-- +50% Production towards Walls and Encampments.
-- May purchase Encampment buildings with Faith.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,											Kind)
VALUES	('P0K_TRAIT_CIVILIZATION_STRENGTH_IN_UNITY',	'KIND_TRAIT');
---------------------------------------------------------------------------------------------------------------
-- Traits
---------------------------------------------------------------------------------------------------------------
-- Need to delete the existing ones and add my own. This is the easiest way to make it compatible with
-- Dramatic Ages and normal play at the same time.
---------------------------------------------------------------------------------------------------------------
DELETE FROM Traits
WHERE TraitType = 'TRAIT_CIVILIZATION_GOLDEN_AGE_QUESTS'
OR TraitType = 'TRAIT_CIVILIZATION_GOLDEN_AGE_QUESTS_NEW';

INSERT INTO Traits
		(TraitType,										Name,												Description)
VALUES	('P0K_TRAIT_CIVILIZATION_STRENGTH_IN_UNITY',	'LOC_TRAIT_CIVILIZATION_GOLDEN_AGE_QUESTS_NAME',	'LOC_TRAIT_CIVILIZATION_GOLDEN_AGE_QUESTS_DESCRIPTION');
---------------------------------------------------------------------------------------------------------------
-- CivilizationTraits
---------------------------------------------------------------------------------------------------------------
INSERT INTO CivilizationTraits
		(CivilizationType,			TraitType)
VALUES	('CIVILIZATION_GEORGIA',	'P0K_TRAIT_CIVILIZATION_STRENGTH_IN_UNITY');
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,							RequirementType,					Inverse)
VALUES	('P0K_GEORGIA_REQUIRES_NOT_DARK_AGE',	'REQUIREMENT_PLAYER_HAS_DARK_AGE',	1); -- no argument
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
VALUES	('P0K_GEORGIA_PLAYER_DOES_NOT_HAVE_DARK_AGE',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
VALUES	('P0K_GEORGIA_PLAYER_DOES_NOT_HAVE_DARK_AGE',	'P0K_GEORGIA_REQUIRES_NOT_DARK_AGE');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,										ModifierType,												SubjectRequirementSetId)
VALUES	('P0K_TRAIT_GOLDEN_AGE_WILDCARD_SLOT',				'MODIFIER_PLAYER_CULTURE_ADJUST_GOVERNMENT_SLOTS_MODIFIER',	'PLAYER_HAS_GOLDEN_AGE'),
		('P0K_TRAIT_UNLOCK_DARK_POLICIES',					'MODIFIER_PLAYER_ADJUST_PROPERTY',							'P0K_GEORGIA_PLAYER_DOES_NOT_HAVE_DARK_AGE'),
		('P0K_TRAIT_BOOST_ENCAMPMENT_DISTRICT_PRODUCTION',	'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION',		NULL),
		('P0K_TRAIT_PURCHASE_ENCAMPMENT_BUILDINGS_FAITH',	'MODIFIER_PLAYER_CITIES_ENABLE_BUILDING_FAITH_PURCHASE',	NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,					Value)
VALUES	('P0K_TRAIT_GOLDEN_AGE_WILDCARD_SLOT',				'GovernmentSlotType',	'SLOT_WILDCARD'),
		('P0K_TRAIT_UNLOCK_DARK_POLICIES',					'Key',					'CanSlotDarkPolicies'),
		('P0K_TRAIT_UNLOCK_DARK_POLICIES',					'Amount',				1),
		('P0K_TRAIT_BOOST_ENCAMPMENT_DISTRICT_PRODUCTION',	'DistrictType',			'DISTRICT_ENCAMPMENT'),
		('P0K_TRAIT_BOOST_ENCAMPMENT_DISTRICT_PRODUCTION',	'Amount',				50),
		('P0K_TRAIT_PURCHASE_ENCAMPMENT_BUILDINGS_FAITH',	'DistrictType',			'DISTRICT_ENCAMPMENT');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,										ModifierId)
VALUES	('P0K_TRAIT_CIVILIZATION_STRENGTH_IN_UNITY',	'TRAIT_WALLS_PRODUCTION'),
		('P0K_TRAIT_CIVILIZATION_STRENGTH_IN_UNITY',	'TRAIT_CASTLE_PRODUCTION'),
		('P0K_TRAIT_CIVILIZATION_STRENGTH_IN_UNITY',	'TRAIT_TSIKHE_PRODUCTION'),
		('P0K_TRAIT_CIVILIZATION_STRENGTH_IN_UNITY',	'TRAIT_STAR_FORT_PRODUCTION'),
		('P0K_TRAIT_CIVILIZATION_STRENGTH_IN_UNITY',	'P0K_TRAIT_GOLDEN_AGE_WILDCARD_SLOT'),
		('P0K_TRAIT_CIVILIZATION_STRENGTH_IN_UNITY',	'P0K_TRAIT_UNLOCK_DARK_POLICIES'),
		('P0K_TRAIT_CIVILIZATION_STRENGTH_IN_UNITY',	'P0K_TRAIT_BOOST_ENCAMPMENT_DISTRICT_PRODUCTION'),
		('P0K_TRAIT_CIVILIZATION_STRENGTH_IN_UNITY',	'P0K_TRAIT_PURCHASE_ENCAMPMENT_BUILDINGS_FAITH');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: EPOCH OF GLORY (REWORK)
--=============================================================================================================
-- Each Envoy sent to a City-State following the majority Religion of Georgia counts as two Envoys. 
-- Receive the Great Person points generated by specialty districts and buildings owned by City-State tributaries.
-- Training military units grants a burst of Faith based on the Production cost.
-- Can declare a Protectorate War after unlocking the Defensive Tactics civic.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,																Kind)
VALUES	('P0K_GEORGIA_MODIFIER_PLAYER_CITIES_GRANT_YIELD_PER_UNIT_COST',	'KIND_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- DynamicModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,														CollectionType,				EffectType)
VALUES	('P0K_GEORGIA_MODIFIER_PLAYER_CITIES_GRANT_YIELD_PER_UNIT_COST',	'COLLECTION_PLAYER_CITIES',	'EFFECT_GRANT_CITY_YIELD_PERCENT_UNIT_CREATED_COST');
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,							RequirementType)
VALUES	('P0K_GEORGIA_REQUIRES_TAMAR_LEADER',	'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES');

INSERT INTO Requirements
				(RequirementId,										RequirementType)
SELECT DISTINCT	'P0K_GEORGIA_REQUIRES_PLAYER_HAS_' ||DistrictType,	'REQUIREMENT_PLAYER_HAS_DISTRICT'
FROM District_GreatPersonPoints WHERE DistrictType IN (SELECT DistrictType FROM Districts WHERE TraitType IS NULL);

INSERT INTO Requirements
				(RequirementId,										RequirementType)
SELECT DISTINCT	'P0K_GEORGIA_REQUIRES_PLAYER_HAS_' ||BuildingType,	'REQUIREMENT_PLAYER_HAS_BUILDING'
FROM Building_GreatPersonPoints WHERE BuildingType IN (SELECT BuildingType FROM Buildings WHERE TraitType IS NULL AND IsWonder = 0);
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,							Name,			Value)
VALUES	('P0K_GEORGIA_REQUIRES_TAMAR_LEADER',	'LeaderType',	'LEADER_TAMAR');

INSERT INTO RequirementArguments
				(RequirementId,										Name,			Value)
SELECT DISTINCT	'P0K_GEORGIA_REQUIRES_PLAYER_HAS_' ||DistrictType,	'DistrictType',	DistrictType
FROM District_GreatPersonPoints WHERE DistrictType IN (SELECT DistrictType FROM Districts WHERE TraitType IS NULL);

INSERT INTO RequirementArguments
				(RequirementId,										Name,			Value)
SELECT DISTINCT	'P0K_GEORGIA_REQUIRES_PLAYER_HAS_' ||BuildingType,	'BuildingType',	BuildingType
FROM Building_GreatPersonPoints WHERE BuildingType IN (SELECT BuildingType FROM Buildings WHERE TraitType IS NULL AND IsWonder = 0);
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType)
VALUES	('P0K_GEORGIA_TAMAR_IS_SUZERAIN',	'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSets
				(RequirementSetId,							RequirementSetType)
SELECT DISTINCT	'P0K_GEORGIA_PLAYER_HAS_' ||DistrictType,	'REQUIREMENTSET_TEST_ALL'
FROM District_GreatPersonPoints WHERE DistrictType IN (SELECT DistrictType FROM Districts WHERE TraitType IS NULL);

INSERT INTO RequirementSets
				(RequirementSetId,							RequirementSetType)
SELECT DISTINCT	'P0K_GEORGIA_PLAYER_HAS_' ||BuildingType,	'REQUIREMENTSET_TEST_ALL'
FROM Building_GreatPersonPoints WHERE BuildingType IN (SELECT BuildingType FROM Buildings WHERE TraitType IS NULL AND IsWonder = 0);
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId)
VALUES	('P0K_GEORGIA_TAMAR_IS_SUZERAIN',	'REQUIRES_PLAYER_IS_SUZERAIN'),
		('P0K_GEORGIA_TAMAR_IS_SUZERAIN',	'REQUIRES_PLAYER_IS_SUZERAIN_BONUS_ENABLED'),
		('P0K_GEORGIA_TAMAR_IS_SUZERAIN',	'REQUIRES_PLAYER_AT_PEACE'),
		('P0K_GEORGIA_TAMAR_IS_SUZERAIN',	'P0K_GEORGIA_REQUIRES_TAMAR_LEADER');

INSERT INTO RequirementSetRequirements
				(RequirementSetId,							RequirementId)
SELECT DISTINCT	'P0K_GEORGIA_PLAYER_HAS_' ||DistrictType,	'P0K_GEORGIA_REQUIRES_PLAYER_HAS_' ||DistrictType
FROM District_GreatPersonPoints WHERE DistrictType IN (SELECT DistrictType FROM Districts WHERE TraitType IS NULL);

INSERT INTO RequirementSetRequirements
				(RequirementSetId,							RequirementId)
SELECT DISTINCT	'P0K_GEORGIA_PLAYER_HAS_' ||BuildingType,	'P0K_GEORGIA_REQUIRES_PLAYER_HAS_' ||BuildingType
FROM Building_GreatPersonPoints WHERE BuildingType IN (SELECT BuildingType FROM Buildings WHERE TraitType IS NULL AND IsWonder = 0);
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType,														SubjectRequirementSetId)
VALUES	('P0K_TRAIT_TRAINED_UNITS_FAITH',				'P0K_GEORGIA_MODIFIER_PLAYER_CITIES_GRANT_YIELD_PER_UNIT_COST',		NULL),
		('P0K_TRAIT_PROTECTORATE_WAR_PREREQ_OVERRIDE',	'MODIFIER_PLAYER_ADD_DIPLOMATIC_ACTION_OVERRIDE',					NULL);

INSERT INTO Modifiers
				(ModifierId,															ModifierType,							OwnerRequirementSetId,						SubjectRequirementSetId)
SELECT DISTINCT	'P0K_TRAIT_' ||DistrictType|| '_' ||GreatPersonClassType,				'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',	'P0K_GEORGIA_PLAYER_HAS_' ||DistrictType,	'P0K_GEORGIA_TAMAR_IS_SUZERAIN'
FROM District_GreatPersonPoints WHERE DistrictType IN (SELECT DistrictType FROM Districts WHERE TraitType IS NULL);

INSERT INTO Modifiers
				(ModifierId,															ModifierType)
SELECT DISTINCT	'P0K_TRAIT_' ||DistrictType|| '_' ||GreatPersonClassType|| '_MODIFIER',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS'
FROM District_GreatPersonPoints WHERE DistrictType IN (SELECT DistrictType FROM Districts WHERE TraitType IS NULL);

INSERT INTO Modifiers
				(ModifierId,															ModifierType,							OwnerRequirementSetId,						SubjectRequirementSetId)
SELECT DISTINCT	'P0K_TRAIT_' ||BuildingType|| '_' ||GreatPersonClassType,				'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',	'P0K_GEORGIA_PLAYER_HAS_' ||BuildingType,	'P0K_GEORGIA_TAMAR_IS_SUZERAIN'
FROM Building_GreatPersonPoints WHERE BuildingType IN (SELECT BuildingType FROM Buildings WHERE TraitType IS NULL AND IsWonder = 0);

INSERT INTO Modifiers
				(ModifierId,															ModifierType)
SELECT DISTINCT	'P0K_TRAIT_' ||BuildingType|| '_' ||GreatPersonClassType|| '_MODIFIER',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS'
FROM Building_GreatPersonPoints WHERE BuildingType IN (SELECT BuildingType FROM Buildings WHERE TraitType IS NULL AND IsWonder = 0);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,						Value)
VALUES	('P0K_TRAIT_TRAINED_UNITS_FAITH',				'YieldType',				'YIELD_FAITH'),
		('P0K_TRAIT_TRAINED_UNITS_FAITH',				'UnitProductionPercent',	20),
		('P0K_TRAIT_PROTECTORATE_WAR_PREREQ_OVERRIDE',	'DiplomaticAction',			'DIPLOACTION_DECLARE_PROTECTORATE_WAR'),
		('P0K_TRAIT_PROTECTORATE_WAR_PREREQ_OVERRIDE',	'CivicType',				'CIVIC_DEFENSIVE_TACTICS');

INSERT INTO ModifierArguments
				(ModifierId,															Name,			Value)
SELECT DISTINCT	'P0K_TRAIT_' ||DistrictType|| '_' ||GreatPersonClassType,				'ModifierId',	'P0K_TRAIT_' ||DistrictType|| '_' ||GreatPersonClassType|| '_MODIFIER'
FROM District_GreatPersonPoints WHERE DistrictType IN (SELECT DistrictType FROM Districts WHERE TraitType IS NULL);

INSERT INTO ModifierArguments
				(ModifierId,															Name,					Value)
SELECT DISTINCT	'P0K_TRAIT_' ||DistrictType|| '_' ||GreatPersonClassType|| '_MODIFIER',	'GreatPersonClassType',	GreatPersonClassType
FROM District_GreatPersonPoints WHERE DistrictType IN (SELECT DistrictType FROM Districts WHERE TraitType IS NULL);

INSERT INTO ModifierArguments
				(ModifierId,															Name,					Value)
SELECT DISTINCT	'P0K_TRAIT_' ||DistrictType|| '_' ||GreatPersonClassType|| '_MODIFIER',	'Amount',				PointsPerTurn
FROM District_GreatPersonPoints WHERE DistrictType IN (SELECT DistrictType FROM Districts WHERE TraitType IS NULL);

INSERT INTO ModifierArguments
				(ModifierId,															Name,			Value)
SELECT DISTINCT	'P0K_TRAIT_' ||BuildingType|| '_' ||GreatPersonClassType,				'ModifierId',	'P0K_TRAIT_' ||BuildingType|| '_' ||GreatPersonClassType|| '_MODIFIER'
FROM Building_GreatPersonPoints WHERE BuildingType IN (SELECT BuildingType FROM Buildings WHERE TraitType IS NULL AND IsWonder = 0);

INSERT INTO ModifierArguments
				(ModifierId,															Name,					Value)
SELECT DISTINCT	'P0K_TRAIT_' ||BuildingType|| '_' ||GreatPersonClassType|| '_MODIFIER',	'GreatPersonClassType',	GreatPersonClassType
FROM Building_GreatPersonPoints WHERE BuildingType IN (SELECT BuildingType FROM Buildings WHERE TraitType IS NULL AND IsWonder = 0);

INSERT INTO ModifierArguments
				(ModifierId,															Name,					Value)
SELECT DISTINCT	'P0K_TRAIT_' ||BuildingType|| '_' ||GreatPersonClassType|| '_MODIFIER',	'Amount',				PointsPerTurn
FROM Building_GreatPersonPoints WHERE BuildingType IN (SELECT BuildingType FROM Buildings WHERE TraitType IS NULL AND IsWonder = 0);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_LEADER_RELIGION_CITY_STATES' AND ModifierId = 'TRAIT_LEADER_FAITH_KILLS'; -- revert April 2021 changes

INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	('TRAIT_LEADER_RELIGION_CITY_STATES',	'P0K_TRAIT_TRAINED_UNITS_FAITH'),
		('TRAIT_LEADER_RELIGION_CITY_STATES',	'P0K_TRAIT_PROTECTORATE_WAR_PREREQ_OVERRIDE');

INSERT INTO TraitModifiers
				(TraitType,					ModifierId)
SELECT DISTINCT	'MINOR_CIV_DEFAULT_TRAIT',	'P0K_TRAIT_' ||DistrictType|| '_' ||GreatPersonClassType
FROM District_GreatPersonPoints WHERE DistrictType IN (SELECT DistrictType FROM Districts WHERE TraitType IS NULL);

INSERT INTO TraitModifiers
				(TraitType,					ModifierId)
SELECT DISTINCT	'MINOR_CIV_DEFAULT_TRAIT',	'P0K_TRAIT_' ||BuildingType|| '_' ||GreatPersonClassType
FROM Building_GreatPersonPoints WHERE BuildingType IN (SELECT BuildingType FROM Buildings WHERE TraitType IS NULL AND IsWonder = 0);
--=============================================================================================================
-- UNIQUE BUILDING: TSIKHE (ENHANCEMENT)
--=============================================================================================================
-- Unlocked earlier, at Monarchy.
-- Purchased with Faith.
-- Has a Great Work slot for any type of Great Work.
-- +1 Faith to Mountains in this city.
--=============================================================================================================
-- Buildings
---------------------------------------------------------------------------------------------------------------
UPDATE Buildings SET PrereqTech = NULL, PrereqCivic = 'CIVIC_DIVINE_RIGHT', PurchaseYield = 'YIELD_FAITH' WHERE BuildingType = 'BUILDING_TSIKHE';
---------------------------------------------------------------------------------------------------------------
-- Building_GreatWorks
---------------------------------------------------------------------------------------------------------------
INSERT INTO Building_GreatWorks
		(BuildingType,		GreatWorkSlotType,		NumSlots)
VALUES	('BUILDING_TSIKHE',	'GREATWORKSLOT_PALACE',	1);
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,					ModifierType,								SubjectRequirementSetId)
VALUES	('P0K_TSIKHE_MOUNTAIN_FAITH',	'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',	'REQUIREMENTS_PLOT_IS_MOUNTAIN');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,					Name,			Value)
VALUES	('P0K_TSIKHE_MOUNTAIN_FAITH',	'YieldType',	'YIELD_FAITH'),
		('P0K_TSIKHE_MOUNTAIN_FAITH',	'Amount',		1);
---------------------------------------------------------------------------------------------------------------
-- BuildingModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO BuildingModifiers
		(BuildingType,		ModifierId)
VALUES	('BUILDING_TSIKHE',	'P0K_TSIKHE_MOUNTAIN_FAITH');
--=============================================================================================================
-- UNIQUE UNIT: KHEVSUR (ENHANCEMENT)
--=============================================================================================================
-- Purchased with Faith.
--=============================================================================================================
-- Units
---------------------------------------------------------------------------------------------------------------
UPDATE	Units
SET		PurchaseYield = 'YIELD_FAITH'
WHERE	UnitType = 'UNIT_GEORGIAN_KHEVSURETI';