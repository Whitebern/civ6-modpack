/* 
	Civilizations Expanded: Netherlands
	By p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: DUTCH EAST INDIA COMPANY (REWORK) 
--=============================================================================================================
-- Receive one extra Economic policy slot in any Government.
-- +1 Trade Route capacity for each Trade City-State vassal.
-- Traders generate +1 Great Admiral point when traveling within three tiles of any Harbor.
-- +25% Production towards Harbor districts and their buildings.
-- Completing an Harbor triggers a Culture Bomb.
--=============================================================================================================
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,									RequirementType)
VALUES	('P0K_DUTCH_REQUIRES_LEADER_IS_WILHELMINA',		'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'),
		('P0K_DUTCH_REQUIRES_PLOT_WITHIN_THREE_HARBOR',	'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES');
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,									Name,			Value)
VALUES	('P0K_DUTCH_REQUIRES_LEADER_IS_WILHELMINA',		'LeaderType',	'LEADER_WILHELMINA'),
		('P0K_DUTCH_REQUIRES_PLOT_WITHIN_THREE_HARBOR',	'DistrictType',	'DISTRICT_HARBOR'),
		('P0K_DUTCH_REQUIRES_PLOT_WITHIN_THREE_HARBOR',	'MaxRange',		3),
		('P0K_DUTCH_REQUIRES_PLOT_WITHIN_THREE_HARBOR',	'MinRange',		0);
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
VALUES	('P0K_DUTCH_WILHELMINA_IS_SUZERAIN',	'REQUIREMENTSET_TEST_ALL'),
		('P0K_DUTCH_PLOT_THREE_INCLUDE_HARBOR',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES	('P0K_DUTCH_WILHELMINA_IS_SUZERAIN',	'REQUIRES_PLAYER_IS_SUZERAIN'),
		('P0K_DUTCH_WILHELMINA_IS_SUZERAIN',	'P0K_DUTCH_REQUIRES_LEADER_IS_WILHELMINA'),
		('P0K_DUTCH_WILHELMINA_IS_SUZERAIN',	'REQUIRES_PLAYER_AT_PEACE'),
		('P0K_DUTCH_PLOT_THREE_INCLUDE_HARBOR',	'P0K_DUTCH_REQUIRES_PLOT_WITHIN_THREE_HARBOR');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,													ModifierType,													SubjectRequirementSetId)
VALUES	('P0K_TRAIT_DUTCH_ECONOMIC_POLICY_SLOT',						'MODIFIER_PLAYER_CULTURE_ADJUST_GOVERNMENT_SLOTS_MODIFIER',		NULL),
		('P0K_TRAIT_TRADE_CITY_STATE_TRADE_ROUTE_CAPACITY',				'MODIFIER_ALL_PLAYERS_ATTACH_MODIFIER',							'P0K_DUTCH_WILHELMINA_IS_SUZERAIN'),
		('P0K_TRAIT_TRADE_CITY_STATE_TRADE_ROUTE_CAPACITY_MODIFIER',	'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_CAPACITY',					NULL),	
		('P0K_TRAIT_DUTCH_HARBOR_BOOST',								'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION',			NULL),
		('P0K_TRAIT_DUTCH_HARBOR_BUILDING_BOOST',						'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION',			NULL),
		('P0K_TRAIT_TRADER_GREAT_ADMIRAL_POINT',						'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER',						'UNIT_IS_TRADER'),
		('P0K_TRAIT_TRADER_GREAT_ADMIRAL_POINT_MODIFIER',				'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS',					'P0K_DUTCH_PLOT_THREE_INCLUDE_HARBOR');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,													Name,					Value)
VALUES	('P0K_TRAIT_DUTCH_ECONOMIC_POLICY_SLOT',						'GovernmentSlotType',	'SLOT_ECONOMIC'),
		('P0K_TRAIT_TRADE_CITY_STATE_TRADE_ROUTE_CAPACITY',				'ModifierId',			'P0K_TRAIT_TRADE_CITY_STATE_TRADE_ROUTE_CAPACITY_MODIFIER'),
		('P0K_TRAIT_TRADE_CITY_STATE_TRADE_ROUTE_CAPACITY_MODIFIER',	'Amount',				1),
		('P0K_TRAIT_DUTCH_HARBOR_BOOST',								'DistrictType',			'DISTRICT_HARBOR'),
		('P0K_TRAIT_DUTCH_HARBOR_BOOST',								'Amount',				25),
		('P0K_TRAIT_DUTCH_HARBOR_BUILDING_BOOST',						'DistrictType',			'DISTRICT_HARBOR'),
		('P0K_TRAIT_DUTCH_HARBOR_BUILDING_BOOST',						'Amount',				25),
		('P0K_TRAIT_TRADER_GREAT_ADMIRAL_POINT',						'ModifierId',			'P0K_TRAIT_TRADER_GREAT_ADMIRAL_POINT_MODIFIER'),
		('P0K_TRAIT_TRADER_GREAT_ADMIRAL_POINT_MODIFIER',				'GreatPersonClassType',	'GREAT_PERSON_CLASS_ADMIRAL'),
		('P0K_TRAIT_TRADER_GREAT_ADMIRAL_POINT_MODIFIER',				'Amount',				1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers 
WHERE		TraitType = 'TRAIT_CIVILIZATION_GROTE_RIVIEREN' 
AND			ModifierId IN -- keep "harbor culture bomb" modifier
			('TRAIT_CAMPUS_RIVER_ADJACENCY', 
			'TRAIT_DAM_PRODUCTION_PRODUCTION', 
			'TRAIT_FLOOD_BARRIER_PRODUCTION', 
			'TRAIT_INDUSTRIAL_ZONE_RIVER_ADJACENCY', 
			'TRAIT_THEATER_DISTRICT_RIVER_ADJACENCY');

INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	('MINOR_CIV_TRADE_TRAIT',				'P0K_TRAIT_TRADE_CITY_STATE_TRADE_ROUTE_CAPACITY'),
		('TRAIT_CIVILIZATION_GROTE_RIVIEREN',	'P0K_TRAIT_DUTCH_ECONOMIC_POLICY_SLOT'),
		('TRAIT_CIVILIZATION_GROTE_RIVIEREN',	'P0K_TRAIT_DUTCH_HARBOR_BOOST'),
		('TRAIT_CIVILIZATION_GROTE_RIVIEREN',	'P0K_TRAIT_DUTCH_HARBOR_BUILDING_BOOST'),
		('TRAIT_CIVILIZATION_GROTE_RIVIEREN',	'P0K_TRAIT_TRADER_GREAT_ADMIRAL_POINT');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: RADIO ORANJE (REWORK)
--=============================================================================================================
-- If constructed outside of the Capital, the Government Plaza provides the same bonuses as the Palace.
-- Trade Routes to Dutch cities gain +2 Food and +2 Production.
-- Trade Routes to foreign cities gain +4 Gold and +2 Culture.
-- The first Envoy sent to a City-State counts as THREE Envoys.
--=============================================================================================================
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,									RequirementType,						Inverse)
VALUES	('P0K_DUTCH_REQUIRES_DISTRICT_IS_GOV_PLAZA',	'REQUIREMENT_DISTRICT_TYPE_MATCHES',	0),
		('P0K_DUTCH_REQUIRES_NOT_CAPITAL_CITY',			'REQUIREMENT_CITY_HAS_BUILDING',		1);
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,									Name,					Value)
VALUES	('P0K_DUTCH_REQUIRES_DISTRICT_IS_GOV_PLAZA',	'DistrictType',			'DISTRICT_GOVERNMENT'),
		('P0K_DUTCH_REQUIRES_NOT_CAPITAL_CITY',			'BuildingType',			'BUILDING_PALACE'),
		('P0K_DUTCH_REQUIRES_NOT_CAPITAL_CITY',			'MustBeFunctioning',	0);
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
VALUES	('P0K_DUTCH_CITY_HAS_GOV_PLAZA_NOT_CAPITAL',	'REQUIREMENTSET_TEST_ALL'),
		('P0K_DUTCH_DISTRICT_IS_GOV_PLAZA_NOT_CAPITAL',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
VALUES	('P0K_DUTCH_CITY_HAS_GOV_PLAZA_NOT_CAPITAL',	'REQUIRES_CITY_HAS_GOV_DISTRICT'),
		('P0K_DUTCH_CITY_HAS_GOV_PLAZA_NOT_CAPITAL',	'P0K_DUTCH_REQUIRES_NOT_CAPITAL_CITY'),
		('P0K_DUTCH_DISTRICT_IS_GOV_PLAZA_NOT_CAPITAL',	'P0K_DUTCH_REQUIRES_DISTRICT_IS_GOV_PLAZA'),
		('P0K_DUTCH_DISTRICT_IS_GOV_PLAZA_NOT_CAPITAL',	'P0K_DUTCH_REQUIRES_NOT_CAPITAL_CITY');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers	
		(ModifierId,											ModifierType,													SubjectRequirementSetId)
VALUES	('P0K_RADIO_ORANJE_GOVERNMENT_PLAZA_AMENITY',			'MODIFIER_PLAYER_CITIES_ADJUST_TRAIT_AMENITY',					'P0K_DUTCH_CITY_HAS_GOV_PLAZA_NOT_CAPITAL'),
		('P0K_RADIO_ORANJE_GOVERNMENT_PLAZA_HOUSING',			'MODIFIER_PLAYER_CITIES_ADJUST_POLICY_HOUSING',					'P0K_DUTCH_CITY_HAS_GOV_PLAZA_NOT_CAPITAL'),
		('P0K_RADIO_ORANJE_GOVERNMENT_PLAZA_SCIENCE',			'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE',				'P0K_DUTCH_DISTRICT_IS_GOV_PLAZA_NOT_CAPITAL'),
		('P0K_RADIO_ORANJE_GOVERNMENT_PLAZA_CULTURE',			'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE',				'P0K_DUTCH_DISTRICT_IS_GOV_PLAZA_NOT_CAPITAL'),
		('P0K_RADIO_ORANJE_GOVERNMENT_PLAZA_PRODUCTION',		'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE',				'P0K_DUTCH_DISTRICT_IS_GOV_PLAZA_NOT_CAPITAL'),
		('P0K_RADIO_ORANJE_GOVERNMENT_PLAZA_GOLD',				'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE',				'P0K_DUTCH_DISTRICT_IS_GOV_PLAZA_NOT_CAPITAL'),
		('P0K_RADIO_ORANJE_DOMESTIC_TRADE_FOOD',				'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_DOMESTIC',		NULL),
		('P0K_RADIO_ORANJE_DOMESTIC_TRADE_PRODUCTION',			'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_DOMESTIC',		NULL),
		('P0K_RADIO_ORANJE_INTERNATIONAL_TRADE_GOLD',			'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',	NULL),
		('P0K_RADIO_ORANJE_INTERNATIONAL_TRADE_CULTURE',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_FOR_INTERNATIONAL',	NULL),
		('P0K_RADIO_ORANJE_DUPLICATE_FIRST_ENVOY',				'MODIFIER_PLAYER_ADJUST_DUPLICATE_FIRST_INFLUENCE_TOKEN',		NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value)
VALUES	('P0K_RADIO_ORANJE_GOVERNMENT_PLAZA_AMENITY',			'Amount',		2),
		('P0K_RADIO_ORANJE_GOVERNMENT_PLAZA_HOUSING',			'Amount',		1),
		('P0K_RADIO_ORANJE_GOVERNMENT_PLAZA_SCIENCE',			'YieldType',	'YIELD_SCIENCE'),
		('P0K_RADIO_ORANJE_GOVERNMENT_PLAZA_SCIENCE',			'Amount',		2),
		('P0K_RADIO_ORANJE_GOVERNMENT_PLAZA_CULTURE',			'YieldType',	'YIELD_CULTURE'),
		('P0K_RADIO_ORANJE_GOVERNMENT_PLAZA_CULTURE',			'Amount',		1),
		('P0K_RADIO_ORANJE_GOVERNMENT_PLAZA_PRODUCTION',		'YieldType',	'YIELD_PRODUCTION'),
		('P0K_RADIO_ORANJE_GOVERNMENT_PLAZA_PRODUCTION',		'Amount',		2),
		('P0K_RADIO_ORANJE_GOVERNMENT_PLAZA_GOLD',				'YieldType',	'YIELD_GOLD'),
		('P0K_RADIO_ORANJE_GOVERNMENT_PLAZA_GOLD',				'Amount',		5),
		('P0K_RADIO_ORANJE_DOMESTIC_TRADE_FOOD',				'YieldType',	'YIELD_FOOD'),
		('P0K_RADIO_ORANJE_DOMESTIC_TRADE_FOOD',				'Amount',		2),
		('P0K_RADIO_ORANJE_DOMESTIC_TRADE_PRODUCTION',			'YieldType',	'YIELD_PRODUCTION'),
		('P0K_RADIO_ORANJE_DOMESTIC_TRADE_PRODUCTION',			'Amount',		2),
		('P0K_RADIO_ORANJE_INTERNATIONAL_TRADE_GOLD',			'YieldType',	'YIELD_GOLD'),
		('P0K_RADIO_ORANJE_INTERNATIONAL_TRADE_GOLD',			'Amount',		4),
		('P0K_RADIO_ORANJE_INTERNATIONAL_TRADE_CULTURE',		'YieldType',	'YIELD_CULTURE'),
		('P0K_RADIO_ORANJE_INTERNATIONAL_TRADE_CULTURE',		'Amount',		2),
		('P0K_RADIO_ORANJE_DUPLICATE_FIRST_ENVOY',				'Amount',		1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers 
WHERE		TraitType = 'TRAIT_RADIO_ORANJE' 
			AND ModifierId IN
			('TRAIT_CULTURE_FROM_INCOMING_TRADE_ROUTES', 
			'TRAIT_CULTURE_FROM_INTERNATIONAL_TRADE_ROUTES', 
			'TRAIT_IDENTITY_FROM_DOMESTIC_TRADE_ROUTES');

INSERT INTO TraitModifiers
		(TraitType,				ModifierId)
VALUES	('TRAIT_RADIO_ORANJE',	'P0K_RADIO_ORANJE_GOVERNMENT_PLAZA_AMENITY'),
		('TRAIT_RADIO_ORANJE',	'P0K_RADIO_ORANJE_GOVERNMENT_PLAZA_HOUSING'),
		('TRAIT_RADIO_ORANJE',	'P0K_RADIO_ORANJE_GOVERNMENT_PLAZA_SCIENCE'),
		('TRAIT_RADIO_ORANJE',	'P0K_RADIO_ORANJE_GOVERNMENT_PLAZA_CULTURE'),
		('TRAIT_RADIO_ORANJE',	'P0K_RADIO_ORANJE_GOVERNMENT_PLAZA_PRODUCTION'),
		('TRAIT_RADIO_ORANJE',	'P0K_RADIO_ORANJE_GOVERNMENT_PLAZA_GOLD'),
		('TRAIT_RADIO_ORANJE',	'P0K_RADIO_ORANJE_DOMESTIC_TRADE_FOOD'),
		('TRAIT_RADIO_ORANJE',	'P0K_RADIO_ORANJE_DOMESTIC_TRADE_PRODUCTION'),
		('TRAIT_RADIO_ORANJE',	'P0K_RADIO_ORANJE_INTERNATIONAL_TRADE_GOLD'),
		('TRAIT_RADIO_ORANJE',	'P0K_RADIO_ORANJE_INTERNATIONAL_TRADE_CULTURE'),
		('TRAIT_RADIO_ORANJE',	'P0K_RADIO_ORANJE_DUPLICATE_FIRST_ENVOY');
--=============================================================================================================
--	UNIQUE IMPROVEMENT: POLDER (ENHANCEMENT) 
--=============================================================================================================
-- +1 Gold for each adjacent Luxury resource with Banking.
-- Only require 2 adjacent land tiles.
-- Make the Replaceable Parts adjacency bonuses come earlier (Mass Production).
--=============================================================================================================
-- Adjacency_YieldChanges
---------------------------------------------------------------------------------------------------------------
UPDATE Adjacency_YieldChanges SET PrereqTech = 'TECH_MASS_PRODUCTION' WHERE ID = 'Polder_Polder_Food_Late' OR ID = 'Polder_Polder_Production';
UPDATE Adjacency_YieldChanges SET ObsoleteTech = 'TECH_MASS_PRODUCTION' WHERE ID = 'Polder_Polder_Food_Early';


INSERT INTO Adjacency_YieldChanges
		(ID,						Description,	YieldType,		YieldChange,	TilesRequired,	AdjacentResourceClass)
VALUES	('p0k_Polder_Luxury_Gold',	'Placeholder',	'YIELD_GOLD',	1,				1,				'RESOURCECLASS_LUXURY');	
---------------------------------------------------------------------------------------------------------------
-- Improvement_Adjacencies
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_Adjacencies
		(ImprovementType,		YieldChangeId)
VALUES	('IMPROVEMENT_POLDER',	'p0k_Polder_Luxury_Gold');
---------------------------------------------------------------------------------------------------------------
-- Improvements
---------------------------------------------------------------------------------------------------------------
UPDATE Improvements SET ValidAdjacentTerrainAmount = 2 WHERE ImprovementType = 'IMPROVEMENT_POLDER'; 
--=============================================================================================================
-- START BIASES
--=============================================================================================================
-- Delete River bias. No longer relevant.
--=============================================================================================================
-- StartBiasRivers
---------------------------------------------------------------------------------------------------------------
DELETE FROM StartBiasRivers
WHERE		CivilizationType = 'CIVILIZATION_NETHERLANDS';

