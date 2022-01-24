/* 
	Civilizations Expanded: Phoenicia
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: PHOENICIAN ALPHABET (REWORK)
--=============================================================================================================
-- Begin the game with the Writing technology unlocked.
-- Coastal cities begin with a free Trading Post and receive +25% Production towards their first district.
-- Trade Routes gain +1 Science and +1 Gold for every 5 tiles traveled.
-- Traders generate +1 Great Scientist point when traveling within 3 tiles of a Campus.
--=============================================================================================================
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,										RequirementType)
VALUES	('P0K_PHOENICIA_REQUIRES_PLOT_WITHIN_THREE_CAMPUS',	'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES');
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,										Name,			Value)
VALUES	('P0K_PHOENICIA_REQUIRES_PLOT_WITHIN_THREE_CAMPUS',	'DistrictType',	'DISTRICT_CAMPUS'),
		('P0K_PHOENICIA_REQUIRES_PLOT_WITHIN_THREE_CAMPUS',	'MaxRange',		3),
		('P0K_PHOENICIA_REQUIRES_PLOT_WITHIN_THREE_CAMPUS',	'MinRange',		0);
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType)
VALUES	('P0K_PHOENICIA_COASTAL_CITY_NO_DISTRICTS',	'REQUIREMENTSET_TEST_ALL'),
		('P0K_PHOENICIA_PLOT_THREE_INCLUDE_CAMPUS',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
VALUES	('P0K_PHOENICIA_COASTAL_CITY_NO_DISTRICTS',	'PLOT_IS_COASTAL_LAND'),
		('P0K_PHOENICIA_COASTAL_CITY_NO_DISTRICTS',	'REQUIRES_CITY_HAS_0_SPECIALTY_DISTRICTS'),
		('P0K_PHOENICIA_PLOT_THREE_INCLUDE_CAMPUS',	'P0K_PHOENICIA_REQUIRES_PLOT_WITHIN_THREE_CAMPUS');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,										ModifierType,													RunOnce,	Permanent,	SubjectRequirementSetId)
VALUES	('P0K_TRAIT_GRANT_WRITING',							'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',					1,			1,			NULL),
		('P0K_TRAIT_COASTAL_CITY_TRADING_POST',				'MODIFIER_PLAYER_CITIES_GRANT_TRADING_POST',					0,			0,			'PLOT_IS_COASTAL_LAND_REQUIREMENTS'),		-- no argument		
		('P0K_TRAIT_COASTAL_CITY_FIRST_DISTRICT_BOOST',		'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION_MODIFIER',	0,			0,			'P0K_PHOENICIA_COASTAL_CITY_NO_DISTRICTS'),			
		('P0K_TRAIT_SCIENCE_FROM_TRADE_ROUTE_LENGTH',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_PATH_TILE',		0,			0,			NULL),
		('P0K_TRAIT_GOLD_FROM_TRADE_ROUTE_LENGTH',			'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_PATH_TILE',		0,			0,			NULL),
		('P0K_TRAIT_TRADER_GREAT_SCIENTIST_POINT',			'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER',						0,			0,			'UNIT_IS_TRADER'),
		('P0K_TRAIT_TRADER_GREAT_SCIENTIST_POINT_MODIFIER',	'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS',					0,			0,			'P0K_PHOENICIA_PLOT_THREE_INCLUDE_CAMPUS');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,					Value)
VALUES	('P0K_TRAIT_GRANT_WRITING',							'TechType',				'TECH_WRITING'),
		('P0K_TRAIT_COASTAL_CITY_FIRST_DISTRICT_BOOST',		'Amount',				25),
		('P0K_TRAIT_SCIENCE_FROM_TRADE_ROUTE_LENGTH',		'YieldType',			'YIELD_SCIENCE'),
		('P0K_TRAIT_SCIENCE_FROM_TRADE_ROUTE_LENGTH',		'Amount',				0.2),
		('P0K_TRAIT_GOLD_FROM_TRADE_ROUTE_LENGTH',			'YieldType',			'YIELD_GOLD'),
		('P0K_TRAIT_GOLD_FROM_TRADE_ROUTE_LENGTH',			'Amount',				0.2),
		('P0K_TRAIT_TRADER_GREAT_SCIENTIST_POINT',			'ModifierId',			'P0K_TRAIT_TRADER_GREAT_SCIENTIST_POINT_MODIFIER'),
		('P0K_TRAIT_TRADER_GREAT_SCIENTIST_POINT_MODIFIER',	'GreatPersonClassType',	'GREAT_PERSON_CLASS_SCIENTIST'),
		('P0K_TRAIT_TRADER_GREAT_SCIENTIST_POINT_MODIFIER',	'Amount',				1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_CIVILIZATION_MEDITERRANEAN_COLONIES' AND ModifierId IN
('TRAIT_COASTAL_CITIES_FULL_LOYALTY', 'TRAIT_FREE_TECH_BOOST_WRITING', 'TRAIT_MEDITERRANEAN_COLONIES_GRANT_SETTLERS_ABILITY');

INSERT INTO TraitModifiers
		(TraitType,										ModifierId)
VALUES	('TRAIT_CIVILIZATION_MEDITERRANEAN_COLONIES',	'P0K_TRAIT_GRANT_WRITING'),
		('TRAIT_CIVILIZATION_MEDITERRANEAN_COLONIES',	'P0K_TRAIT_COASTAL_CITY_TRADING_POST'),
		('TRAIT_CIVILIZATION_MEDITERRANEAN_COLONIES',	'P0K_TRAIT_COASTAL_CITY_FIRST_DISTRICT_BOOST'),
		('TRAIT_CIVILIZATION_MEDITERRANEAN_COLONIES',	'P0K_TRAIT_SCIENCE_FROM_TRADE_ROUTE_LENGTH'),
		('TRAIT_CIVILIZATION_MEDITERRANEAN_COLONIES',	'P0K_TRAIT_GOLD_FROM_TRADE_ROUTE_LENGTH'),
		('TRAIT_CIVILIZATION_MEDITERRANEAN_COLONIES',	'P0K_TRAIT_TRADER_GREAT_SCIENTIST_POINT');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: FOUNDER OF CARTHAGE (REWORK)
--=============================================================================================================
-- Can move the Capital to a city with a Cothon by completing a unique project in that city.
-- +50% Production towards buildings in the Capital.
-- Coastal cities on the same continent as the Capital are 100% Loyal.
-- Settlers ignore Movement penalties from embarking and disembarking. 
-- Settlers receive +2 Movement and +2 Sight while embarked.
-- Founding Phoenicia's first city on a foreign continent grants +2 Trade Route capacity.
--=============================================================================================================
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,				RequirementSetType)
VALUES	('P0K_PHOENICIA_CAPITAL_CITY',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,				RequirementId)
VALUES	('P0K_PHOENICIA_CAPITAL_CITY',	'REQUIRES_CITY_HAS_PALACE');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,										ModifierType,													SubjectRequirementSetId)
VALUES	('P0K_FOUNDER_CARTHAGE_CAPITAL_BOOST_BUILDINGS',	'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION_MODIFIER',	'P0K_PHOENICIA_CAPITAL_CITY');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
UPDATE ModifierArguments
SET Value = 2
WHERE ModifierId = 'TRAIT_FOREIGN_CONTINENT_TRADE_ROUTE';

INSERT INTO ModifierArguments
		(ModifierId,										Name,		Value)
VALUES	('P0K_FOUNDER_CARTHAGE_CAPITAL_BOOST_BUILDINGS',	'Amount',	50),
		('P0K_FOUNDER_CARTHAGE_CAPITAL_BOOST_BUILDINGS',	'IsWonder',	0);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType='TRAIT_LEADER_FOUNDER_CARTHAGE' AND ModifierId IN -- keep "district move capital" modifier
('PRODUCTION_GOVERNMENT_DISTRICT', 'TRADE_ROUTE_GOVERNMENT_DISTRICT', 'TRADE_ROUTE_GOVERNMENT_TIER_1_BUILDING',
'TRADE_ROUTE_GOVERNMENT_TIER_2_BUILDING', 'TRADE_ROUTE_GOVERNMENT_TIER_3_BUILDING');

INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
VALUES	('TRAIT_LEADER_FOUNDER_CARTHAGE',	'P0K_FOUNDER_CARTHAGE_CAPITAL_BOOST_BUILDINGS'),
		('TRAIT_LEADER_FOUNDER_CARTHAGE',	'TRAIT_COASTAL_CITIES_FULL_LOYALTY'),
		('TRAIT_LEADER_FOUNDER_CARTHAGE',	'TRAIT_MEDITERRANEAN_COLONIES_GRANT_SETTLERS_ABILITY'),
		('TRAIT_LEADER_FOUNDER_CARTHAGE',	'TRAIT_FOREIGN_CONTINENT_TRADE_ROUTE');
--==========================================================================================================================
-- UNIQUE DISTRICT: COTHON (REWORK)
--==========================================================================================================================
-- Remove the healing bonus.
-- Grants a free naval unit (applied at the Civilization level).
-- +1 Great Merchant point.
-- Add +50% Production to Traders.
--==========================================================================================================================
-- Modifiers
---------------------------------------------------------------------------------------------------------------	
INSERT INTO Modifiers
		(ModifierId,						ModifierType)
VALUES	('P0K_COTHON_NAVAL_UNIT',			'MODIFIER_PLAYER_ADJUST_DISTRICT_ADD_NAVAL_UNIT'),	
		('P0K_COTHON_TRADER_PRODUCTION',	'MODIFIER_PLAYER_UNITS_ADJUST_UNIT_PRODUCTION');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,						Name,			Value)
VALUES	('P0K_COTHON_NAVAL_UNIT',			'DistrictType',	'DISTRICT_COTHON'),
		('P0K_COTHON_TRADER_PRODUCTION',	'UnitType',		'UNIT_TRADER'),
		('P0K_COTHON_TRADER_PRODUCTION',	'Amount',		50);
---------------------------------------------------------------------------------------------------------------
-- DistrictModifiers
---------------------------------------------------------------------------------------------------------------	
DELETE FROM DistrictModifiers WHERE DistrictType='DISTRICT_COTHON' AND ModifierId='COTHON_HEALFRIENDLY';

INSERT INTO DistrictModifiers
		(DistrictType,		ModifierId)
VALUES	('DISTRICT_COTHON',	'P0K_COTHON_TRADER_PRODUCTION');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,										ModifierId)
VALUES	('TRAIT_CIVILIZATION_MEDITERRANEAN_COLONIES',	'P0K_COTHON_NAVAL_UNIT'); 
---------------------------------------------------------------------------------------------------------------
-- District_GreatPersonPoints
---------------------------------------------------------------------------------------------------------------
INSERT INTO District_GreatPersonPoints
		(DistrictType,		GreatPersonClassType,			PointsPerTurn)
VALUES	('DISTRICT_COTHON',	'GREAT_PERSON_CLASS_MERCHANT',	1);