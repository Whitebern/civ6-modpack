/* 
	Civilizations Expanded: Mongolia
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: ORTOO (ENHANCEMENT)
--=============================================================================================================
-- Trading Posts in Mongolian cities grant +1 Culture and +1 Production.
-- +100% Production towards Traders.
-- Roads in Mongol territory are one level more advanced than usual.
--=============================================================================================================
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,										ModifierType)
VALUES	('P0K_TRAIT_CULTURE_FROM_DOMESTIC_TRADING_POST',	'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_POST_IN_OWN_CITY'),
		('P0K_TRAIT_PRODUCTION_FROM_DOMESTIC_TRADING_POST',	'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_POST_IN_OWN_CITY'),
		('P0K_TRAIT_DOUBLE_TRADER_PRODUCTION',				'MODIFIER_PLAYER_UNITS_ADJUST_UNIT_PRODUCTION');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,			Value)
VALUES	('P0K_TRAIT_CULTURE_FROM_DOMESTIC_TRADING_POST',	'YieldType',	'YIELD_CULTURE'),
		('P0K_TRAIT_CULTURE_FROM_DOMESTIC_TRADING_POST',	'Amount',		1),
		('P0K_TRAIT_PRODUCTION_FROM_DOMESTIC_TRADING_POST',	'YieldType',	'YIELD_PRODUCTION'),
		('P0K_TRAIT_PRODUCTION_FROM_DOMESTIC_TRADING_POST',	'Amount',		1),
		('P0K_TRAIT_DOUBLE_TRADER_PRODUCTION',				'UnitType',		'UNIT_TRADER'),
		('P0K_TRAIT_DOUBLE_TRADER_PRODUCTION',				'Amount',		100);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	('TRAIT_CIVILIZATION_MONGOLIAN_ORTOO',	'P0K_TRAIT_CULTURE_FROM_DOMESTIC_TRADING_POST'),
		('TRAIT_CIVILIZATION_MONGOLIAN_ORTOO',	'P0K_TRAIT_PRODUCTION_FROM_DOMESTIC_TRADING_POST'),
		('TRAIT_CIVILIZATION_MONGOLIAN_ORTOO',	'P0K_TRAIT_DOUBLE_TRADER_PRODUCTION'),
		('TRAIT_CIVILIZATION_MONGOLIAN_ORTOO',	'TRAIT_SATRAPIES_IMPROVED_ROUTE_LEVEL');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: MONGOL TERROR (ENHANCEMENT)
--=============================================================================================================
-- Begin the game with Horses and Iron visible.
-- Strategic resources provide +2 Production and +1 Science.
-- Siege and support units gain +2 Movement when beginning a turn adjacent to a light cavalry unit or a Keshik.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,											Kind)
VALUES	('P0K_MONGOLIA_ABILITY_TO_MONGOL_TERROR',	'KIND_ABILITY');
---------------------------------------------------------------------------------------------------------------
-- TypeTags
---------------------------------------------------------------------------------------------------------------
INSERT INTO TypeTags
		(Type,										Tag)
VALUES	('P0K_MONGOLIA_ABILITY_TO_MONGOL_TERROR',	'CLASS_SIEGE'),
		('P0K_MONGOLIA_ABILITY_TO_MONGOL_TERROR',	'CLASS_SUPPORT');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilities
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilities
		(UnitAbilityType,							Name,												Description,												Inactive)
VALUES	('P0K_MONGOLIA_ABILITY_TO_MONGOL_TERROR',	'LOC_P0K_MONGOLIA_ABILITY_TO_MONGOL_TERROR_NAME',	'LOC_P0K_MONGOLIA_ABILITY_TO_MONGOL_TERROR_DESCRIPTION',	1);
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,										RequirementType)
VALUES	('P0K_MONGOLIA_REQUIRES_UNIT_NEXT_TO_LIGHT_CAV',	'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TAG_MATCHES'),
		('P0K_MONGOLIA_REQUIRES_UNIT_NEXT_TO_KESHIK',		'REQUIREMENT_PLOT_ADJACENT_FRIENDLY_UNIT_TYPE_MATCHES');
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,										Name,		Value)
VALUES	('P0K_MONGOLIA_REQUIRES_UNIT_NEXT_TO_LIGHT_CAV',	'Tag',		'CLASS_LIGHT_CAVALRY'),
		('P0K_MONGOLIA_REQUIRES_UNIT_NEXT_TO_KESHIK',		'UnitType',	'UNIT_MONGOLIAN_KESHIG');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,											RequirementSetType)
VALUES	('P0K_MONGOLIA_UNIT_IS_SIEGE',								'REQUIREMENTSET_TEST_ALL'),
		('P0K_MONGOLIA_UNIT_IS_ADJACENT_TO_LIGHT_CAV_OR_KESHIK',	'REQUIREMENTSET_TEST_ANY');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,											RequirementId)
VALUES	('P0K_MONGOLIA_UNIT_IS_SIEGE',								'REQUIREMENT_UNIT_IS_SIEGE'),
		('P0K_MONGOLIA_UNIT_IS_ADJACENT_TO_LIGHT_CAV_OR_KESHIK',	'P0K_MONGOLIA_REQUIRES_UNIT_NEXT_TO_LIGHT_CAV'),
		('P0K_MONGOLIA_UNIT_IS_ADJACENT_TO_LIGHT_CAV_OR_KESHIK',	'P0K_MONGOLIA_REQUIRES_UNIT_NEXT_TO_KESHIK');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,								ModifierType,										SubjectRequirementSetId)
VALUES	('P0K_TRAIT_HORSE_VISIBILITY',				'MODIFIER_PLAYER_GRANT_FREE_RESOURCE_VISIBILITY',	NULL),
		('P0K_TRAIT_IRON_VISIBILITY',				'MODIFIER_PLAYER_GRANT_FREE_RESOURCE_VISIBILITY',	NULL),
		('P0K_TRAIT_STRATEGIC_RESOURCE_SCIENCE',	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',				'PLOT_HAS_STRATEGIC_RESOURCE'),
		('P0K_TRAIT_STRATEGIC_RESOURCE_PRODUCTION',	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',				'PLOT_HAS_STRATEGIC_RESOURCE'),
		('P0K_MONGOL_TERROR_SIEGE_MOVEMENT',		'MODIFIER_PLAYER_UNIT_ADJUST_MOVEMENT',				'P0K_MONGOLIA_UNIT_IS_ADJACENT_TO_LIGHT_CAV_OR_KESHIK'),
		('P0K_TRAIT_SIEGE_MOVEMENT_ABILITY',		'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,								Name,			Value)
VALUES	('P0K_TRAIT_HORSE_VISIBILITY',				'ResourceType',	'RESOURCE_HORSES'),
		('P0K_TRAIT_IRON_VISIBILITY',				'ResourceType',	'RESOURCE_IRON'),
		('P0K_TRAIT_STRATEGIC_RESOURCE_SCIENCE',	'YieldType',	'YIELD_SCIENCE'),
		('P0K_TRAIT_STRATEGIC_RESOURCE_SCIENCE',	'Amount',		1),
		('P0K_TRAIT_STRATEGIC_RESOURCE_PRODUCTION',	'YieldType',	'YIELD_PRODUCTION'),
		('P0K_TRAIT_STRATEGIC_RESOURCE_PRODUCTION',	'Amount',		2),
		('P0K_MONGOL_TERROR_SIEGE_MOVEMENT',		'Amount',		2),
		('P0K_TRAIT_SIEGE_MOVEMENT_ABILITY',		'AbilityType',	'P0K_MONGOLIA_ABILITY_TO_MONGOL_TERROR');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilityModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,							ModifierId)
VALUES	('P0K_MONGOLIA_ABILITY_TO_MONGOL_TERROR',	'P0K_MONGOL_TERROR_SIEGE_MOVEMENT');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	('TRAIT_LEADER_GENGHIS_KHAN_ABILITY',	'P0K_TRAIT_HORSE_VISIBILITY'),
		('TRAIT_LEADER_GENGHIS_KHAN_ABILITY',	'P0K_TRAIT_IRON_VISIBILITY'),
		('TRAIT_LEADER_GENGHIS_KHAN_ABILITY',	'P0K_TRAIT_STRATEGIC_RESOURCE_SCIENCE'),
		('TRAIT_LEADER_GENGHIS_KHAN_ABILITY',	'P0K_TRAIT_STRATEGIC_RESOURCE_PRODUCTION'),
		('TRAIT_LEADER_GENGHIS_KHAN_ABILITY',	'P0K_TRAIT_SIEGE_MOVEMENT_ABILITY');
--=============================================================================================================
-- UNIQUE BUILDING: ORDU (ENHANCEMENT)
--=============================================================================================================
-- +1 Culture.
-- +1 Amenity.
-- Costs no maintenance.
--=============================================================================================================
-- Buildings
---------------------------------------------------------------------------------------------------------------
UPDATE Buildings SET Entertainment = 1, Maintenance = 0 WHERE BuildingType = 'BUILDING_ORDU';
---------------------------------------------------------------------------------------------------------------
-- Building_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Building_YieldChanges
		(BuildingType,		YieldType,			YieldChange)
VALUES	('BUILDING_ORDU',	'YIELD_CULTURE',	1);
--=============================================================================================================
-- UNIQUE UNIT: KESHIK (ENHANCEMENT)
--=============================================================================================================
-- Replaces the Crossbowman.
--=============================================================================================================
-- UnitReplaces
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitReplaces
		(CivUniqueUnitType,			ReplacesUnitType)
SELECT	'UNIT_MONGOLIAN_KESHIG',	'UNIT_CROSSBOWMAN'
WHERE NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_DLV_LONGSWORDSMAN')
AND NOT EXISTS (SELECT 1 FROM Units WHERE UnitType = 'UNIT_CULVERIN');
