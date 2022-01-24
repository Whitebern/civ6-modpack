/* 
	Civilizations Expanded: Ethiopia
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: SOLOMONIC DYNASTY (REWORK)
--=============================================================================================================
-- Trade Routes gain +1 Faith for passing through Trading Posts in Ethiopian cities and +1 Production for passing through Trading Posts in foreign cities.
-- Resources provide +1 Faith and additional yields based on their type: +1 Food from Bonus resources, +1 Production from Strategic resources, and +1 Gold from Luxury resources.
-- May purchase Government Plaza, Diplomatic Quarter, and Theater Square buildings with Faith.
--=============================================================================================================
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType)
VALUES	('P0K_ETHIOPIA_PLOT_HAS_ANY_RESOURCE',		'REQUIREMENTSET_TEST_ALL'),
		('P0K_ETHIOPIA_PLOT_HAS_BONUS_RESOURCE',	'REQUIREMENTSET_TEST_ALL'),
		('P0K_ETHIOPIA_PLOT_HAS_LUXURY_RESOURCE',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
VALUES	('P0K_ETHIOPIA_PLOT_HAS_ANY_RESOURCE',		'REQUIRES_PLOT_HAS_VISIBLE_RESOURCE'),
		('P0K_ETHIOPIA_PLOT_HAS_BONUS_RESOURCE',	'REQUIRES_PLOT_HAS_BONUS'),
		('P0K_ETHIOPIA_PLOT_HAS_LUXURY_RESOURCE',	'REQUIRES_PLOT_HAS_LUXURY');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,												ModifierType,															SubjectRequirementSetId)
VALUES	('P0K_TRAIT_DOMESTIC_TRADING_POST_FAITH',					'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_POST_IN_OWN_CITY',		NULL),
		('P0K_TRAIT_FOREIGN_TRADING_POST_GOLD',						'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_POST_IN_FOREIGN_CITY',	NULL),
		('P0K_TRAIT_RESOURCE_FAITH',								'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',									'P0K_ETHIOPIA_PLOT_HAS_ANY_RESOURCE'),
		('P0K_TRAIT_BONUS_RESOURCE_FOOD',							'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',									'P0K_ETHIOPIA_PLOT_HAS_BONUS_RESOURCE'),
		('P0K_TRAIT_STRATEGIC_RESOURCE_PRODUCTION_ETHIOPIA',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',									'PLOT_HAS_STRATEGIC_RESOURCE'),
		('P0K_TRAIT_LUXURY_RESOURCE_GOLD',							'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',									'P0K_ETHIOPIA_PLOT_HAS_LUXURY_RESOURCE'),
		('P0K_TRAIT_PURCHASE_GOVERNMENT_PLAZA_BUILDINGS_FAITH',		'MODIFIER_PLAYER_CITIES_ENABLE_BUILDING_FAITH_PURCHASE',				NULL),
		('P0K_TRAIT_PURCHASE_DIPLOMATIC_QUARTER_BUILDINGS_FAITH',	'MODIFIER_PLAYER_CITIES_ENABLE_BUILDING_FAITH_PURCHASE',				NULL),
		('P0K_TRAIT_PURCHASE_THEATER_SQUARE_BUILDINGS_FAITH',		'MODIFIER_PLAYER_CITIES_ENABLE_BUILDING_FAITH_PURCHASE',				NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,												Name,			Value)
VALUES	('P0K_TRAIT_DOMESTIC_TRADING_POST_FAITH',					'YieldType',	'YIELD_FAITH'),
		('P0K_TRAIT_DOMESTIC_TRADING_POST_FAITH',					'Amount',		1),
		('P0K_TRAIT_FOREIGN_TRADING_POST_GOLD',						'YieldType',	'YIELD_GOLD'),
		('P0K_TRAIT_FOREIGN_TRADING_POST_GOLD',						'Amount',		1),
		('P0K_TRAIT_RESOURCE_FAITH',								'YieldType',	'YIELD_FAITH'),
		('P0K_TRAIT_RESOURCE_FAITH',								'Amount',		1),
		('P0K_TRAIT_BONUS_RESOURCE_FOOD',							'YieldType',	'YIELD_FOOD'),
		('P0K_TRAIT_BONUS_RESOURCE_FOOD',							'Amount',		1),
		('P0K_TRAIT_STRATEGIC_RESOURCE_PRODUCTION_ETHIOPIA',		'YieldType',	'YIELD_PRODUCTION'),
		('P0K_TRAIT_STRATEGIC_RESOURCE_PRODUCTION_ETHIOPIA',		'Amount',		1),
		('P0K_TRAIT_LUXURY_RESOURCE_GOLD',							'YieldType',	'YIELD_GOLD'),
		('P0K_TRAIT_LUXURY_RESOURCE_GOLD',							'Amount',		1),
		('P0K_TRAIT_PURCHASE_GOVERNMENT_PLAZA_BUILDINGS_FAITH',		'DistrictType',	'DISTRICT_GOVERNMENT'),
		('P0K_TRAIT_PURCHASE_DIPLOMATIC_QUARTER_BUILDINGS_FAITH',	'DistrictType',	'DISTRICT_DIPLOMATIC_QUARTER'),
		('P0K_TRAIT_PURCHASE_THEATER_SQUARE_BUILDINGS_FAITH',		'DistrictType',	'DISTRICT_THEATER');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_CIVILIZATION_ETHIOPIA' AND ModifierId IN 
('TRAIT_FAITH_ARCHAEOLOGIST', 'TRAIT_FAITH_BONUS_RESOURCES_TRADE_INTERNATIONAL', 'TRAIT_FAITH_LUXURY_RESOURCES_TRADE_INTERNATIONAL',
'TRAIT_FAITH_MUSEUM_ARTIFACT', 'TRAIT_FAITH_RESOURCES', 'TRAIT_FAITH_STRATEGIC_RESOURCES_TRADE_INTERNATIONAL');

INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('TRAIT_CIVILIZATION_ETHIOPIA',	'P0K_TRAIT_DOMESTIC_TRADING_POST_FAITH'),
		('TRAIT_CIVILIZATION_ETHIOPIA',	'P0K_TRAIT_FOREIGN_TRADING_POST_GOLD'),
		('TRAIT_CIVILIZATION_ETHIOPIA',	'P0K_TRAIT_RESOURCE_FAITH'),
		('TRAIT_CIVILIZATION_ETHIOPIA',	'P0K_TRAIT_BONUS_RESOURCE_FOOD'),
		('TRAIT_CIVILIZATION_ETHIOPIA',	'P0K_TRAIT_STRATEGIC_RESOURCE_PRODUCTION_ETHIOPIA'),
		('TRAIT_CIVILIZATION_ETHIOPIA',	'P0K_TRAIT_LUXURY_RESOURCE_GOLD'),
		('TRAIT_CIVILIZATION_ETHIOPIA',	'P0K_TRAIT_PURCHASE_GOVERNMENT_PLAZA_BUILDINGS_FAITH'),
		('TRAIT_CIVILIZATION_ETHIOPIA',	'P0K_TRAIT_PURCHASE_DIPLOMATIC_QUARTER_BUILDINGS_FAITH'),
		('TRAIT_CIVILIZATION_ETHIOPIA',	'P0K_TRAIT_PURCHASE_THEATER_SQUARE_BUILDINGS_FAITH');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: COUNCIL OF MINISTERS (ENHANCEMENT)
--=============================================================================================================
-- Faith and Gold purchases are 15% cheaper.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,																KIND)
VALUES	('P0K_MODIFIER_PLAYER_CITIES_ADJUST_ALL_DISTRICTS_PURCHASE_COST',	'KIND_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- DynamicModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,														CollectionType,				EffectType)
VALUES	('P0K_MODIFIER_PLAYER_CITIES_ADJUST_ALL_DISTRICTS_PURCHASE_COST',	'COLLECTION_PLAYER_CITIES',	'EFFECT_ADJUST_ALL_DISTRICTS_PURCHASE_COST');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType)				
VALUES	('P0K_TRAIT_GOVERNOR_CHEAPER_DISTRICTS',		'P0K_MODIFIER_PLAYER_CITIES_ADJUST_ALL_DISTRICTS_PURCHASE_COST'),
		('P0K_TRAIT_GOVERNOR_CHEAPER_BUILDINGS',		'MODIFIER_PLAYER_CITIES_ADJUST_ALL_BUILDINGS_PURCHASE_COST'),
		('P0K_TRAIT_GOVERNOR_CHEAPER_UNITS',			'MODIFIER_PLAYER_CITIES_ADJUST_UNITS_PURCHASE_COST');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,				Value)
VALUES	('P0K_TRAIT_GOVERNOR_CHEAPER_DISTRICTS',			'Amount',			15),		
		('P0K_TRAIT_GOVERNOR_CHEAPER_BUILDINGS',			'Amount',			15),
		('P0K_TRAIT_GOVERNOR_CHEAPER_UNITS',				'Amount',			15),
		('P0K_TRAIT_GOVERNOR_CHEAPER_UNITS',				'IncludeCivilian',	1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,					ModifierId)
VALUES	('TRAIT_LEADER_MENELIK',	'P0K_TRAIT_GOVERNOR_CHEAPER_DISTRICTS'),
		('TRAIT_LEADER_MENELIK',	'P0K_TRAIT_GOVERNOR_CHEAPER_BUILDINGS'),
		('TRAIT_LEADER_MENELIK',	'P0K_TRAIT_GOVERNOR_CHEAPER_UNITS');
--=============================================================================================================
-- UNIQUE IMPROVEMENT: ROCK-HEWN CHURCH (ENHANCEMENT)
--=============================================================================================================
-- Unlock earlier, at Mysticism.
-- +1 Production.
-- +1 Food for each adjacent Bonus resource.
-- +1 Production for each adjacent Strategic resource.
-- +1 Gold for each adjacent Luxury resource.
--=============================================================================================================
-- Improvements
---------------------------------------------------------------------------------------------------------------
UPDATE Improvements SET PrereqCivic = 'CIVIC_MYSTICISM' WHERE ImprovementType = 'IMPROVEMENT_ROCK_HEWN_CHURCH';
---------------------------------------------------------------------------------------------------------------
-- Improvement_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_YieldChanges
		(ImprovementType,					YieldType,			YieldChange)
VALUES	('IMPROVEMENT_ROCK_HEWN_CHURCH',	'YIELD_PRODUCTION',	1),
		('IMPROVEMENT_ROCK_HEWN_CHURCH',	'YIELD_FOOD',		0),
		('IMPROVEMENT_ROCK_HEWN_CHURCH',	'YIELD_GOLD',		0);
---------------------------------------------------------------------------------------------------------------
-- Adjacency_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Adjacency_YieldChanges
		(ID,										Description,	YieldType,			YieldChange,	TilesRequired,	AdjacentResourceClass)
VALUES	('p0k_RockHewnChurch_Bonus_Food',			'Placeholder',	'YIELD_FOOD',		1,				1,				'RESOURCECLASS_BONUS'),
		('p0k_RockHewnChurch_Strategic_Production',	'Placeholder',	'YIELD_PRODUCTION',	1,				1,				'RESOURCECLASS_STRATEGIC'),
		('p0k_RockHewnChurch_Luxury_Gold',			'Placeholder',	'YIELD_GOLD',		1,				1,				'RESOURCECLASS_LUXURY');
---------------------------------------------------------------------------------------------------------------
-- Improvement_Adjacencies
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_Adjacencies
		(ImprovementType,					YieldChangeId)
VALUES	('IMPROVEMENT_ROCK_HEWN_CHURCH',	'p0k_RockHewnChurch_Bonus_Food'),
		('IMPROVEMENT_ROCK_HEWN_CHURCH',	'p0k_RockHewnChurch_Strategic_Production'),
		('IMPROVEMENT_ROCK_HEWN_CHURCH',	'p0k_RockHewnChurch_Luxury_Gold');