/* 
	Civilizations Expanded: Kongo
	Author: p0kiehl 
	Special Thanks: Leugi
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: WISDOM OF THE NKISI (REWORK)
--=============================================================================================================
-- +100% Great Artist points.
-- Receive a random Inspiration upon recruiting a Great Artist.
-- +4 Gold, +2 Food, and +2 Production from Relics, Artifacts, Sculptures, and Religious Art.
-- Shrines receive 2 slots for any type of Great Work.
--=============================================================================================================
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType)											
VALUES	('P0K_TRAIT_GREAT_WORK_GOLD_RELIGIOUS',			'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD'),		
		('P0K_TRAIT_GREAT_WORK_FOOD_RELIGIOUS',			'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD'),		
		('P0K_TRAIT_GREAT_WORK_PRODUCTION_RELIGIOUS',	'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD'),		
		('P0K_TRAIT_GREAT_WORK_FAITH_RELIGIOUS',			'MODIFIER_PLAYER_CITIES_ADJUST_GREATWORK_YIELD'),		
		('P0K_TRAIT_SHRINE_GREAT_WORK_SLOTS',			'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER'),				
		('P0K_TRAIT_SHRINE_GREAT_WORK_SLOTS_MODIFIER',	'MODIFIER_SINGLE_CITY_ADJUST_EXTRA_GREAT_WORK_SLOTS'),	
		('P0K_TRAIT_DOUBLE_ARTIST_POINTS',				'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS_PERCENT'),	
		('P0K_TRAIT_CIVIC_BOOST_FROM_GREAT_ARTISTS',	'MODIFIER_PLAYER_GRANT_BOOST_WITH_GREAT_PERSON');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------	
INSERT INTO ModifierArguments
		(ModifierId,									Name,					Value)
VALUES	('P0K_TRAIT_GREAT_WORK_GOLD_RELIGIOUS',			'GreatWorkObjectType',	'GREATWORKOBJECT_RELIGIOUS'),
		('P0K_TRAIT_GREAT_WORK_GOLD_RELIGIOUS',			'YieldType',			'YIELD_GOLD'),
		('P0K_TRAIT_GREAT_WORK_GOLD_RELIGIOUS',			'YieldChange',			4),
		('P0K_TRAIT_GREAT_WORK_FOOD_RELIGIOUS',			'GreatWorkObjectType',	'GREATWORKOBJECT_RELIGIOUS'),
		('P0K_TRAIT_GREAT_WORK_FOOD_RELIGIOUS',			'YieldType',			'YIELD_FOOD'),
		('P0K_TRAIT_GREAT_WORK_FOOD_RELIGIOUS',			'YieldChange',			2),
		('P0K_TRAIT_GREAT_WORK_PRODUCTION_RELIGIOUS',	'GreatWorkObjectType',	'GREATWORKOBJECT_RELIGIOUS'),
		('P0K_TRAIT_GREAT_WORK_PRODUCTION_RELIGIOUS',	'YieldType',			'YIELD_PRODUCTION'),
		('P0K_TRAIT_GREAT_WORK_PRODUCTION_RELIGIOUS',	'YieldChange',			2),
		('P0K_TRAIT_GREAT_WORK_FAITH_RELIGIOUS',		'GreatWorkObjectType',	'GREATWORKOBJECT_RELIGIOUS'),
		('P0K_TRAIT_GREAT_WORK_FAITH_RELIGIOUS',		'YieldType',			'YIELD_FAITH'),
		('P0K_TRAIT_GREAT_WORK_FAITH_RELIGIOUS',		'YieldChange',			1),
		('P0K_TRAIT_SHRINE_GREAT_WORK_SLOTS',			'ModifierId',			'P0K_TRAIT_SHRINE_GREAT_WORK_SLOTS_MODIFIER'),
		('P0K_TRAIT_SHRINE_GREAT_WORK_SLOTS_MODIFIER',	'BuildingType',			'BUILDING_SHRINE'),
		('P0K_TRAIT_SHRINE_GREAT_WORK_SLOTS_MODIFIER',	'GreatWorkSlotType',	'GREATWORKSLOT_PALACE'),
		('P0K_TRAIT_SHRINE_GREAT_WORK_SLOTS_MODIFIER',	'Amount',				2),
		('P0K_TRAIT_DOUBLE_ARTIST_POINTS',				'GreatPersonClassType',	'GREAT_PERSON_CLASS_ARTIST'),
		('P0K_TRAIT_DOUBLE_ARTIST_POINTS',				'Amount',				100),
		('P0K_TRAIT_CIVIC_BOOST_FROM_GREAT_ARTISTS',	'GreatPersonClass',		'GREAT_PERSON_CLASS_ARTIST'),
		('P0K_TRAIT_CIVIC_BOOST_FROM_GREAT_ARTISTS',	'TechBoost',			0),
		('P0K_TRAIT_CIVIC_BOOST_FROM_GREAT_ARTISTS',	'OtherPlayers',			0);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers 
WHERE		TraitType = 'TRAIT_CIVILIZATION_NKISI' 
AND			ModifierId IN ('TRAIT_DOUBLE_ARTIST_POINTS', 
			'TRAIT_DOUBLE_MERCHANT_POINTS', 
			'TRAIT_DOUBLE_MUSICIAN_POINTS', 
			'TRAIT_EXTRA_PALACE_SLOTS');

INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('TRAIT_CIVILIZATION_NKISI',	'P0K_TRAIT_GREAT_WORK_GOLD_RELIGIOUS'),
		('TRAIT_CIVILIZATION_NKISI',	'P0K_TRAIT_GREAT_WORK_FOOD_RELIGIOUS'),
		('TRAIT_CIVILIZATION_NKISI',	'P0K_TRAIT_GREAT_WORK_PRODUCTION_RELIGIOUS'),
		('TRAIT_CIVILIZATION_NKISI',	'P0K_TRAIT_GREAT_WORK_FAITH_RELIGIOUS'),
		('TRAIT_CIVILIZATION_NKISI',	'P0K_TRAIT_SHRINE_GREAT_WORK_SLOTS'),
		('TRAIT_CIVILIZATION_NKISI',	'P0K_TRAIT_DOUBLE_ARTIST_POINTS'),
		('TRAIT_CIVILIZATION_NKISI',	'P0K_TRAIT_CIVIC_BOOST_FROM_GREAT_ARTISTS');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: BAPTIZED KING (REWORK)
--=============================================================================================================
-- +25% Production towards Holy Sites and their buildings.
-- Receive a free Relic upon constructing a Temple for the first time.
-- Trade Routes to foreign cities gain +1 Culture and +1 Faith for each specialty district in the destination city.
-- +3 Loyalty and +1 Amenity in all cities while in an active Alliance.
--=============================================================================================================
-- ExcludedDistricts
---------------------------------------------------------------------------------------------------------------	
DELETE FROM ExcludedDistricts
WHERE TraitType = 'TRAIT_LEADER_RELIGIOUS_CONVERT';
---------------------------------------------------------------------------------------------------------------
-- ExcludedGreatPersonClasses
---------------------------------------------------------------------------------------------------------------	
DELETE FROM ExcludedGreatPersonClasses
WHERE TraitType = 'TRAIT_LEADER_RELIGIOUS_CONVERT';
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,								RequirementType)
VALUES	('P0K_KONGO_REQUIRES_PLAYER_HAS_TEMPLE',	'REQUIREMENT_PLAYER_HAS_BUILDING');
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,								Name,			Value)
VALUES	('P0K_KONGO_REQUIRES_PLAYER_HAS_TEMPLE',	'BuildingType',	'BUILDING_TEMPLE');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,					RequirementSetType)
VALUES	('P0K_KONGO_PLAYER_HAS_TEMPLE',		'REQUIREMENTSET_TEST_ALL'),
		('P0K_KONGO_PLAYER_HAS_ALLIANCE',	'REQUIREMENTSET_TEST_ANY');
---------------------------------------------------------------------------------------------------------------					
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,					RequirementId)
VALUES	('P0K_KONGO_PLAYER_HAS_TEMPLE',		'P0K_KONGO_REQUIRES_PLAYER_HAS_TEMPLE'),
		('P0K_KONGO_PLAYER_HAS_ALLIANCE',	'REQUIRES_PLAYER_IS_ALLY_LEVEL_1'),
		('P0K_KONGO_PLAYER_HAS_ALLIANCE',	'REQUIRES_PLAYER_IS_ALLY_LEVEL_2'),
		('P0K_KONGO_PLAYER_HAS_ALLIANCE',	'REQUIRES_PLAYER_IS_ALLY_LEVEL_3');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,											ModifierType,																			RunOnce,	Permanent,	SubjectRequirementSetId)
VALUES	('P0K_TRAIT_AFONSO_HOLY_SITE_BOOST',					'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION',									0,			0,			NULL),
		('P0K_TRAIT_AFONSO_HOLY_SITE_BUILDING_BOOST',			'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION',									0,			0,			NULL),	
		('P0K_TRAIT_TEMPLE_FREE_RELIC',							'MODIFIER_PLAYER_GRANT_RELIC',															1,			1,			'P0K_KONGO_PLAYER_HAS_TEMPLE'),
		('P0K_TRAIT_FOREIGN_TRADE_FAITH_PER_DISTRICT',			'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_SPECIALTY_DISTRICT_FOR_INTERNATIONAL',	0,			0,			NULL),
		('P0K_TRAIT_FOREIGN_TRADE_CULTURE_PER_DISTRICT',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_SPECIALTY_DISTRICT_FOR_INTERNATIONAL',	0,			0,			NULL),
		('P0K_TRAIT_AMENITY_ACTIVE_ALLIANCE',					'MODIFIER_PLAYER_CITIES_ADJUST_TRAIT_AMENITY',											0,			0,			'P0K_KONGO_PLAYER_HAS_ALLIANCE'),
		('P0K_TRAIT_LOYALTY_ACTIVE_ALLIANCE',					'MODIFIER_PLAYER_CITIES_ADJUST_IDENTITY_PER_TURN',										0,			0,			'P0K_KONGO_PLAYER_HAS_ALLIANCE');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------	
INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value)
VALUES	('P0K_TRAIT_AFONSO_HOLY_SITE_BOOST',					'DistrictType',	'DISTRICT_HOLY_SITE'),
		('P0K_TRAIT_AFONSO_HOLY_SITE_BOOST',					'Amount',		25),	
		('P0K_TRAIT_AFONSO_HOLY_SITE_BUILDING_BOOST',			'DistrictType',	'DISTRICT_HOLY_SITE'),
		('P0K_TRAIT_AFONSO_HOLY_SITE_BUILDING_BOOST',			'Amount',		25),
		('P0K_TRAIT_TEMPLE_FREE_RELIC',							'Amount',		1),
		('P0K_TRAIT_FOREIGN_TRADE_FAITH_PER_DISTRICT',			'YieldType',	'YIELD_FAITH'),
		('P0K_TRAIT_FOREIGN_TRADE_FAITH_PER_DISTRICT',			'Amount',		1),
		('P0K_TRAIT_FOREIGN_TRADE_CULTURE_PER_DISTRICT',		'YieldType',	'YIELD_CULTURE'),
		('P0K_TRAIT_FOREIGN_TRADE_CULTURE_PER_DISTRICT',		'Amount',		1),
		('P0K_TRAIT_AMENITY_ACTIVE_ALLIANCE',					'Amount',		1),
		('P0K_TRAIT_LOYALTY_ACTIVE_ALLIANCE',					'Amount',		3);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_LEADER_RELIGIOUS_CONVERT' AND ModifierId IN
('TRAIT_FREE_APOSTLE_FINISH_MBANZA', 'TRAIT_FREE_APOSTLE_FINISH_THEATER_DISTRICT', 'TRAIT_GAINS_FOUNDER_BELIEF_MAJORITY_RELIGION');

INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
VALUES	('TRAIT_LEADER_RELIGIOUS_CONVERT',	'P0K_TRAIT_AFONSO_HOLY_SITE_BOOST'),
		('TRAIT_LEADER_RELIGIOUS_CONVERT',	'P0K_TRAIT_AFONSO_HOLY_SITE_BUILDING_BOOST'),
		('TRAIT_LEADER_RELIGIOUS_CONVERT',	'P0K_TRAIT_TEMPLE_FREE_RELIC'),
		('TRAIT_LEADER_RELIGIOUS_CONVERT',	'P0K_TRAIT_FOREIGN_TRADE_FAITH_PER_DISTRICT'),
		('TRAIT_LEADER_RELIGIOUS_CONVERT',	'P0K_TRAIT_FOREIGN_TRADE_CULTURE_PER_DISTRICT'),
		('TRAIT_LEADER_RELIGIOUS_CONVERT',	'P0K_TRAIT_AMENITY_ACTIVE_ALLIANCE'),
		('TRAIT_LEADER_RELIGIOUS_CONVERT',	'P0K_TRAIT_LOYALTY_ACTIVE_ALLIANCE');
--=============================================================================================================
-- LEADER AGENDA: LETTERS TO THE KING (REWORK)
--=============================================================================================================	
-- (Due to Mvemba's rework, he will need new AI behavior, including a new agenda.)
-- Tries to build up Faith, and likes civilizations that also focus on Faith. 
-- Dislikes civilizations with weak Faith output.
---------------------------------------------------------------------------------------------------------------	
-- LeaderTraits
---------------------------------------------------------------------------------------------------------------
INSERT INTO LeaderTraits
		(LeaderType,		TraitType)
VALUES	('LEADER_MVEMBA',	'TRAIT_LEADER_RELIGIOUS_MAJOR_CIV');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_AGENDA_ENTHUSIASTIC_DISCIPLE' AND ModifierId IN
('AGENDA_MODIFIER_RELIGION_NOT_RECEIVED', 'AGENDA_MODIFIER_RELIGION_RECEIVED');

INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	('TRAIT_AGENDA_ENTHUSIASTIC_DISCIPLE',	'AGENDA_HIGH_FAITH'),
		('TRAIT_AGENDA_ENTHUSIASTIC_DISCIPLE',	'AGENDA_LOW_FAITH');
---------------------------------------------------------------------------------------------------------------
-- ExclusiveAgendas
---------------------------------------------------------------------------------------------------------------
DELETE FROM ExclusiveAgendas
WHERE AgendaOne = 'AGENDA_ENTHUSIASTIC_DISCIPLE'
AND AgendaTwo = 'AGENDA_INTOLERANT';
--=============================================================================================================
-- UNIQUE DISTRICT: MBANZA
--=============================================================================================================
-- Culture Bombs adjacent tiles.
-- Add +1 Culture.
--=============================================================================================================
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,				ModifierType)
VALUES	('P0K_MBANZA_CULTURE_BOMB',	'MODIFIER_PLAYER_ADD_CULTURE_BOMB_TRIGGER'),
		('P0K_MBANZA_CULTURE',		'MODIFIER_PLAYER_DISTRICT_ADJUST_BASE_YIELD_CHANGE');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------	
INSERT INTO ModifierArguments
		(ModifierId,				Name,			Value)
VALUES	('P0K_MBANZA_CULTURE_BOMB',	'DistrictType',	'DISTRICT_MBANZA'),
		('P0K_MBANZA_CULTURE',		'YieldType',	'YIELD_CULTURE'),
		('P0K_MBANZA_CULTURE',		'Amount',		1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('TRAIT_CIVILIZATION_NKISI',	'P0K_MBANZA_CULTURE_BOMB');
---------------------------------------------------------------------------------------------------------------
-- DistrictModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DistrictModifiers
		(DistrictType,		ModifierId)
VALUES	('DISTRICT_MBANZA',	'P0K_MBANZA_CULTURE');