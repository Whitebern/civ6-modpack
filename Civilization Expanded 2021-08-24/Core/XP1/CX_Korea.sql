/* 
	Civilizations Expanded: Korea
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: THREE KINGDOMS (REWORK)
--=============================================================================================================
-- Trade Routes to foreign cities gain +1 Culture and +1 Food for each specialty district in the destination city. 
-- Cities with at least 3 specialty districts gain +2 Amenities and +4 Housing.
-- Receive a random Eureka and a random Inspiration upon founding the Capital and entering a new Era.
--=============================================================================================================
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,												ModifierType,																			RunOnce,	Permanent,	SubjectRequirementSetId)
VALUES	('P0K_THREE_KINGDOMS_FOREIGN_TRADE_CULTURE_PER_DISTRICT',	'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_SPECIALTY_DISTRICT_FOR_INTERNATIONAL',	0,			0,			NULL),
		('P0K_THREE_KINGDOMS_FOREIGN_TRADE_FOOD_PER_DISTRICT',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_SPECIALTY_DISTRICT_FOR_INTERNATIONAL',	0,			0,			NULL),
		('P0K_THREE_KINGDOMS_THREE_DISTRICTS_AMENITIES',			'MODIFIER_PLAYER_CITIES_ADJUST_POLICY_AMENITY',											0,			0,			'CITY_HAS_3_SPECIALTY_DISTRICTS_REQUIREMENTS'),
		('P0K_THREE_KINGDOMS_THREE_DISTRICTS_HOUSING',				'MODIFIER_PLAYER_CITIES_ADJUST_POLICY_HOUSING',											0,			0,			'CITY_HAS_3_SPECIALTY_DISTRICTS_REQUIREMENTS'),
		('P0K_THREE_KINGDOMS_RANDOM_TECH_BOOST_CAPITAL',			'MODIFIER_PLAYER_GRANT_RANDOM_TECHNOLOGY_BOOST_GOODY_HUT',								1,			1,			NULL),
		('P0K_THREE_KINGDOMS_RANDOM_CIVIC_BOOST_CAPITAL',			'MODIFIER_PLAYER_GRANT_RANDOM_CIVIC_BOOST_GOODY_HUT',									1,			1,			NULL),
		('P0K_THREE_KINGDOMS_RANDOM_TECH_BOOST_EACH_ERA',			'MODIFIER_PLAYER_GRANT_RANDOM_TECHNOLOGY_BOOST_ON_NEW_ERA',								0,			0,			NULL),
		('P0K_THREE_KINGDOMS_RANDOM_CIVIC_BOOST_EACH_ERA',			'MODIFIER_PLAYER_GRANT_RANDOM_CIVIC_BOOST_ON_NEW_ERA',									0,			0,			NULL);
---------------------------------------------------------------------------------------------------------------	
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,												Name,			Value)
VALUES	('P0K_THREE_KINGDOMS_FOREIGN_TRADE_CULTURE_PER_DISTRICT',	'YieldType',	'YIELD_CULTURE'),
		('P0K_THREE_KINGDOMS_FOREIGN_TRADE_CULTURE_PER_DISTRICT',	'Amount',		1),
		('P0K_THREE_KINGDOMS_FOREIGN_TRADE_FOOD_PER_DISTRICT',		'YieldType',	'YIELD_FOOD'),
		('P0K_THREE_KINGDOMS_FOREIGN_TRADE_FOOD_PER_DISTRICT',		'Amount',		1),
		('P0K_THREE_KINGDOMS_THREE_DISTRICTS_AMENITIES',			'Amount',		2),
		('P0K_THREE_KINGDOMS_THREE_DISTRICTS_HOUSING',				'Amount',		4),
		('P0K_THREE_KINGDOMS_RANDOM_TECH_BOOST_CAPITAL',			'Amount',		1),
		('P0K_THREE_KINGDOMS_RANDOM_CIVIC_BOOST_CAPITAL',			'Amount',		1),
		('P0K_THREE_KINGDOMS_RANDOM_TECH_BOOST_EACH_ERA',			'Amount',		1),
		('P0K_THREE_KINGDOMS_RANDOM_CIVIC_BOOST_EACH_ERA',			'Amount',		1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	('TRAIT_CIVILIZATION_THREE_KINGDOMS',	'P0K_THREE_KINGDOMS_FOREIGN_TRADE_CULTURE_PER_DISTRICT'),
		('TRAIT_CIVILIZATION_THREE_KINGDOMS',	'P0K_THREE_KINGDOMS_FOREIGN_TRADE_FOOD_PER_DISTRICT'),
		('TRAIT_CIVILIZATION_THREE_KINGDOMS',	'P0K_THREE_KINGDOMS_THREE_DISTRICTS_AMENITIES'),
		('TRAIT_CIVILIZATION_THREE_KINGDOMS',	'P0K_THREE_KINGDOMS_THREE_DISTRICTS_HOUSING'),
		('TRAIT_CIVILIZATION_THREE_KINGDOMS',	'P0K_THREE_KINGDOMS_RANDOM_TECH_BOOST_CAPITAL'),
		('TRAIT_CIVILIZATION_THREE_KINGDOMS',	'P0K_THREE_KINGDOMS_RANDOM_CIVIC_BOOST_CAPITAL'),
		('TRAIT_CIVILIZATION_THREE_KINGDOMS',	'P0K_THREE_KINGDOMS_RANDOM_TECH_BOOST_EACH_ERA'),
		('TRAIT_CIVILIZATION_THREE_KINGDOMS',	'P0K_THREE_KINGDOMS_RANDOM_CIVIC_BOOST_EACH_ERA');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: TOWER OF THE MOON AND STARS (ENHANCEMENT)
--=============================================================================================================
-- +100% Great Person points in the Capital.
-- +1 Government Title and +1 Trade Route capacity upon unlocking the Political Philosophy civic.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,															Kind)
VALUES	('P0K_MODIFIER_PLAYER_CAPITAL_ADJUST_GREAT_PERSON_POINT_BONUS',	'KIND_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- DynamicModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,													CollectionType,						EffectType)
VALUES	('P0K_MODIFIER_PLAYER_CAPITAL_ADJUST_GREAT_PERSON_POINT_BONUS',	'COLLECTION_PLAYER_CAPITAL_CITY',	'EFFECT_ADJUST_CITY_GREAT_PERSON_POINTS_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,										ModifierType,													RunOnce,	Permanent,	SubjectRequirementSetId)
VALUES	('P0K_TRAIT_CAPITAL_EXTRA_GREAT_PEOPLE_POINTS',		'P0K_MODIFIER_PLAYER_CAPITAL_ADJUST_GREAT_PERSON_POINT_BONUS',	0,			0,			NULL),
		('P0K_TRAIT_GOVERNOR_TITLE_POLITICAL_PHILOSOPHY',	'MODIFIER_PLAYER_ADJUST_GOVERNOR_POINTS',						1,			1,			'PLAYER_HAS_POLITICAL_PHILOSOPHY');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,			Value)
VALUES	('P0K_TRAIT_CAPITAL_EXTRA_GREAT_PEOPLE_POINTS',		'Amount',		100),
		('P0K_TRAIT_GOVERNOR_TITLE_POLITICAL_PHILOSOPHY',	'Delta',		1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,					ModifierId)
VALUES	('TRAIT_LEADER_HWARANG',	'P0K_TRAIT_CAPITAL_EXTRA_GREAT_PEOPLE_POINTS'),
		('TRAIT_LEADER_HWARANG',	'P0K_TRAIT_GOVERNOR_TITLE_POLITICAL_PHILOSOPHY'),
		('TRAIT_LEADER_HWARANG',	'TRAIT_SATRAPIES_POLITICAL_PHILOSOPHY_TRADE_ROUTE'); -- from Persia
--=============================================================================================================
-- UNIQUE DISTRICT: SEOWON 
--=============================================================================================================
-- Make the Food and Science bonuses proper adjacencies rather than binary.
-- DEPRECATED: IMPLEMENTED IN APRIL 2021 PATCH.
--=============================================================================================================