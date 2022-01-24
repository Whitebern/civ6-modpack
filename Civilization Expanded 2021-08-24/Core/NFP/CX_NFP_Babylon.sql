--============================================================================================================= 
-- CIVILIZATIONS EXPANDED: BABYLON
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: ASTRAL CARTOGRAPHY (REWORK)
--=============================================================================================================
-- Begin the game with three random Eurekas unlocked.
-- +25% Production towards Campus districts and their buildings.
-- Campus districts receive a standard Science adjacency bonus from other districts.
-- Trade Routes to City-States gain +2 Science, +2 Gold, +2 Food, and +2 Production.
--=============================================================================================================
-- ExcludedAdjacencies
---------------------------------------------------------------------------------------------------------------
INSERT INTO ExcludedAdjacencies
		(TraitType,						YieldChangeId)
VALUES	('TRAIT_CIVILIZATION_BABYLON',	'District_Science');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,											ModifierType,											RunOnce,	Permanent,	OwnerRequirementSetId)											
VALUES	('P0K_TRAIT_BABYLON_FREE_EUREKAS',						'MODIFIER_PLAYER_GRANT_RANDOM_TECHNOLOGY_BOOST_BY_ERA',	0,			0,			NULL),
		('P0K_TRAIT_BABYLON_CAMPUS_BOOST',						'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION',	0,			0,			NULL),		
		('P0K_TRAIT_BABYLON_CAMPUS_BUILDING_BOOST',				'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION',	0,			0,			NULL),		
		('P0K_TRAIT_BABYLON_CITY_STATE_TRADE_ROUTE_SCIENCE',	'MODIFIER_PLAYER_ADJUST_TRADE_ROUTES_CITY_STATE_YIELD',	0,			0,			NULL),
		('P0K_TRAIT_BABYLON_CITY_STATE_TRADE_ROUTE_GOLD',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTES_CITY_STATE_YIELD',	0,			0,			NULL),
		('P0K_TRAIT_BABYLON_CITY_STATE_TRADE_ROUTE_FOOD',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTES_CITY_STATE_YIELD',	0,			0,			NULL),
		('P0K_TRAIT_BABYLON_CITY_STATE_TRADE_ROUTE_PRODUCTION',	'MODIFIER_PLAYER_ADJUST_TRADE_ROUTES_CITY_STATE_YIELD',	0,			0,			NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value)
VALUES	('P0K_TRAIT_BABYLON_FREE_EUREKAS',						'StartEraType',	'ERA_ANCIENT'),
		('P0K_TRAIT_BABYLON_FREE_EUREKAS',						'EndEraType',	'ERA_CLASSICAL'),
		('P0K_TRAIT_BABYLON_FREE_EUREKAS',						'Amount',		3),
		('P0K_TRAIT_BABYLON_CAMPUS_BOOST',						'DistrictType',	'DISTRICT_CAMPUS'),
		('P0K_TRAIT_BABYLON_CAMPUS_BOOST',						'Amount',		25),
		('P0K_TRAIT_BABYLON_CAMPUS_BUILDING_BOOST',				'DistrictType',	'DISTRICT_CAMPUS'),
		('P0K_TRAIT_BABYLON_CAMPUS_BUILDING_BOOST',				'Amount',		25),
		('P0K_TRAIT_BABYLON_CITY_STATE_TRADE_ROUTE_SCIENCE',	'YieldType',	'YIELD_SCIENCE'),
		('P0K_TRAIT_BABYLON_CITY_STATE_TRADE_ROUTE_SCIENCE',	'Amount',		2),
		('P0K_TRAIT_BABYLON_CITY_STATE_TRADE_ROUTE_GOLD',		'YieldType',	'YIELD_GOLD'),
		('P0K_TRAIT_BABYLON_CITY_STATE_TRADE_ROUTE_GOLD',		'Amount',		2),
		('P0K_TRAIT_BABYLON_CITY_STATE_TRADE_ROUTE_FOOD',		'YieldType',	'YIELD_FOOD'),
		('P0K_TRAIT_BABYLON_CITY_STATE_TRADE_ROUTE_FOOD',		'Amount',		2),
		('P0K_TRAIT_BABYLON_CITY_STATE_TRADE_ROUTE_PRODUCTION',	'YieldType',	'YIELD_PRODUCTION'),
		('P0K_TRAIT_BABYLON_CITY_STATE_TRADE_ROUTE_PRODUCTION',	'Amount',		2);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_CIVILIZATION_BABYLON';

INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('TRAIT_CIVILIZATION_BABYLON',	'P0K_TRAIT_BABYLON_FREE_EUREKAS'),
		('TRAIT_CIVILIZATION_BABYLON',	'P0K_TRAIT_BABYLON_CAMPUS_BOOST'),
		('TRAIT_CIVILIZATION_BABYLON',	'P0K_TRAIT_BABYLON_CAMPUS_BUILDING_BOOST'),
		('TRAIT_CIVILIZATION_BABYLON',	'TRAIT_ADJACENT_DISTRICTS_CAMPUS_ADJACENCYSCIENCE'), -- from Japan
		('TRAIT_CIVILIZATION_BABYLON',	'P0K_TRAIT_BABYLON_CITY_STATE_TRADE_ROUTE_SCIENCE'),
		('TRAIT_CIVILIZATION_BABYLON',	'P0K_TRAIT_BABYLON_CITY_STATE_TRADE_ROUTE_GOLD'),
		('TRAIT_CIVILIZATION_BABYLON',	'P0K_TRAIT_BABYLON_CITY_STATE_TRADE_ROUTE_FOOD'),
		('TRAIT_CIVILIZATION_BABYLON',	'P0K_TRAIT_BABYLON_CITY_STATE_TRADE_ROUTE_PRODUCTION');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: CODE OF HAMMURABI (ENHANCEMENT)
--=============================================================================================================
-- Begin the game with the Code of Laws civic unlocked.
-- Training a melee unit in the Capital grants a duplicate of that unit for free.
-- (Increase the free Envoy to +2.)
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,															Kind)
VALUES	('P0K_MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_EXTRA_UNIT_COPY_TAG',	'KIND_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- DynamicModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,													CollectionType,						EffectType)
VALUES	('P0K_MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_EXTRA_UNIT_COPY_TAG',	'COLLECTION_PLAYER_CAPITAL_CITY',	'EFFECT_ADJUST_EXTRA_UNIT_COPY_TAG');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,								ModifierType)											
VALUES	('P0K_TRAIT_GRANT_CODE_OF_LAWS',			'MODIFIER_PLAYER_GRANT_RANDOM_CIVIC'),					
		('P0K_TRAIT_CAPITAL_EXTRA_MELEE_COPY',		'P0K_MODIFIER_PLAYER_CAPITAL_CITY_ADJUST_EXTRA_UNIT_COPY_TAG');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
UPDATE ModifierArguments
SET		Value = 2
WHERE	Name = 'Amount'
AND		ModifierId = 'TRAIT_FREE_ENVOY_WHEN_DISTRICT_MADE';

UPDATE ModifierArguments
SET		Value = 2
WHERE	Name = 'Amount'
AND		ModifierId = 'TRAIT_FREE_ENVOY_WHEN_DISTRICT_MADE_SPECIFIC';

INSERT INTO ModifierArguments
		(ModifierId,								Name,		Value)
VALUES	('P0K_TRAIT_GRANT_CODE_OF_LAWS',			'Amount',	1),		
		('P0K_TRAIT_CAPITAL_EXTRA_MELEE_COPY',		'Tag',		'CLASS_MELEE'),
		('P0K_TRAIT_CAPITAL_EXTRA_MELEE_COPY',		'Amount',	1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,					ModifierId)
VALUES	('TRAIT_LEADER_HAMMURABI',	'P0K_TRAIT_GRANT_CODE_OF_LAWS'),
		('TRAIT_LEADER_HAMMURABI',	'P0K_TRAIT_CAPITAL_EXTRA_MELEE_COPY');
--=============================================================================================================
-- UNIQUE BUILDING: PALGUM (ENHANCEMENT)
--=============================================================================================================
-- Add +1 Gold to Freshwater Tiles.
-- Add +1 Amenity.
--=============================================================================================================
-- Buildings
---------------------------------------------------------------------------------------------------------------
UPDATE Buildings SET Entertainment = 1 WHERE BuildingType = 'BUILDING_PALGUM';
---------------------------------------------------------------------------------------------------------------
-- BuildingModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO BuildingModifiers
		(BuildingType,		ModifierId)
VALUES	('BUILDING_PALGUM',	'P0K_PALGUM_ADDGOLD');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,			ModifierType,									SubjectRequirementSetId)
VALUES	('P0K_PALGUM_ADDGOLD',	'MODIFIER_CITY_PLOT_YIELDS_ADJUST_PLOT_YIELD',	'PLOT_IS_FRESH');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,			Name,			Value)
VALUES	('P0K_PALGUM_ADDGOLD',	'YieldType',	'YIELD_GOLD'),
		('P0K_PALGUM_ADDGOLD',	'Amount',		1);
--=============================================================================================================
-- UNIQUE UNIT: SABUM KIBITTUM (ENHANCEMENT)
--=============================================================================================================
-- +1 Combat Strength.
-- Replaces the Warrior.
--=============================================================================================================
-- Units
---------------------------------------------------------------------------------------------------------------
UPDATE Units SET Combat = 18 WHERE UnitType = 'UNIT_BABYLONIAN_SABUM_KIBITTUM';
---------------------------------------------------------------------------------------------------------------
-- UnitReplaces
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitReplaces
		(CivUniqueUnitType,					ReplacesUnitType)
VALUES	('UNIT_BABYLONIAN_SABUM_KIBITTUM',	'UNIT_WARRIOR');