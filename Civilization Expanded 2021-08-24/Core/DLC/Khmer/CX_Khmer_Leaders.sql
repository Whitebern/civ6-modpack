/* 
	Civilizations Expanded: Khmer
	Author: Sukritact, p0kiehl
*/
--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- LeaderTraits
-------------------------------------
INSERT INTO LeaderTraits	
		(LeaderType,			TraitType)
VALUES	('LEADER_JAYAVARMAN',	'TRAIT_CIVILIZATION_BUILDING_PRASAT');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: CITY OF DHAMMA (ENHANCEMENT)
--=============================================================================================================
-- Cities with a Wonder exert +100% Religious pressure and receive +15% Production towards buildings and districts.
-- Holy Sites receive a major Faith adjacency bonus from Rivers.
-- Worship Buildings provide +2 Culture, +2 Food, and +2 Gold.
-- Completing a Holy Site triggers a Culture Bomb.
-- May construct the Prasat unique building in the Holy Site.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,												Kind)
VALUES	('P0K_MODIFIER_PLAYER_CITIES_RELIGION_PRESSURE',	'KIND_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- DynamicModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,										CollectionType,				EffectType)
VALUES	('P0K_MODIFIER_PLAYER_CITIES_RELIGION_PRESSURE',	'COLLECTION_PLAYER_CITIES',	'EFFECT_ADJUST_CITY_RELIGION_PRESSURE');
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,									RequirementType)
SELECT	'P0K_KHMER_REQUIRES_CITY_HAS_' ||BuildingType,	'REQUIREMENT_CITY_HAS_BUILDING'
FROM Buildings
WHERE EnabledByReligion = 1;
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,									Name,			Value)
SELECT	'P0K_KHMER_REQUIRES_CITY_HAS_' ||BuildingType,	'BuildingType',	BuildingType
FROM Buildings
WHERE EnabledByReligion = 1;
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
VALUES	('P0K_KHMER_CITY_HAS_WORSHIP_BUILDING',	'REQUIREMENTSET_TEST_ANY');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
SELECT	'P0K_KHMER_CITY_HAS_WORSHIP_BUILDING',		'P0K_KHMER_REQUIRES_CITY_HAS_' ||BuildingType
FROM Buildings
WHERE EnabledByReligion = 1;
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,											ModifierType,													SubjectRequirementSetId)
VALUES	('P0K_CITY_DHAMMA_WONDER_DOUBLE_RELIGIOUS_PRESSURE',	'P0K_MODIFIER_PLAYER_CITIES_RELIGION_PRESSURE',					'CITY_HAS_WONDER_REQUIREMENTS'),
		('P0K_CITY_DHAMMA_WONDER_BUILDING_PRODUCTION',			'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION_MODIFIER',	'CITY_HAS_WONDER_REQUIREMENTS'),
		('P0K_CITY_DHAMMA_WONDER_DISTRICT_PRODUCTION',			'MODIFIER_PLAYER_CITIES_ADJUST_DISTRICT_PRODUCTION_MODIFIER',	'CITY_HAS_WONDER_REQUIREMENTS'),
		('P0K_CITY_DHAMMA_WORSHIP_BUILDING_CULTURE',			'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',				'P0K_KHMER_CITY_HAS_WORSHIP_BUILDING'),
		('P0K_CITY_DHAMMA_WORSHIP_BUILDING_FOOD',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',				'P0K_KHMER_CITY_HAS_WORSHIP_BUILDING'),
		('P0K_CITY_DHAMMA_WORSHIP_BUILDING_GOLD',				'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',				'P0K_KHMER_CITY_HAS_WORSHIP_BUILDING');

/*INSERT INTO Modifiers
		(ModifierId,												ModifierType)
SELECT	'P0K_CITY_DHAMMA_' ||BuildingType|| '_CULTURE',				'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER'
FROM	Buildings
WHERE	EnabledByReligion = 1;

INSERT INTO Modifiers
		(ModifierId,												ModifierType)
SELECT	'P0K_CITY_DHAMMA_' ||BuildingType|| '_CULTURE_MODIFIER',	'MODIFIER_BUILDING_YIELD_CHANGE'
FROM	Buildings
WHERE	EnabledByReligion = 1;

INSERT INTO Modifiers
		(ModifierId,												ModifierType)
SELECT	'P0K_CITY_DHAMMA_' ||BuildingType|| '_FOOD',				'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER'
FROM	Buildings
WHERE	EnabledByReligion = 1;

INSERT INTO Modifiers
		(ModifierId,												ModifierType)
SELECT	'P0K_CITY_DHAMMA_' ||BuildingType|| '_FOOD_MODIFIER',		'MODIFIER_BUILDING_YIELD_CHANGE'
FROM	Buildings
WHERE	EnabledByReligion = 1;

INSERT INTO Modifiers
		(ModifierId,												ModifierType)
SELECT	'P0K_CITY_DHAMMA_' ||BuildingType|| '_GOLD',				'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER'
FROM	Buildings
WHERE	EnabledByReligion = 1;

INSERT INTO Modifiers
		(ModifierId,												ModifierType)
SELECT	'P0K_CITY_DHAMMA_' ||BuildingType|| '_GOLD_MODIFIER',		'MODIFIER_BUILDING_YIELD_CHANGE'
FROM	Buildings
WHERE	EnabledByReligion = 1;*/
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,											Name,			Value)
VALUES	('P0K_CITY_DHAMMA_WONDER_DOUBLE_RELIGIOUS_PRESSURE',	'Amount',		100),
		('P0K_CITY_DHAMMA_WONDER_BUILDING_PRODUCTION',			'Amount',		15),
		('P0K_CITY_DHAMMA_WONDER_BUILDING_PRODUCTION',			'IsWonder',		0),
		('P0K_CITY_DHAMMA_WONDER_DISTRICT_PRODUCTION',			'Amount',		15),
		('P0K_CITY_DHAMMA_WORSHIP_BUILDING_CULTURE',			'YieldType',	'YIELD_CULTURE'),
		('P0K_CITY_DHAMMA_WORSHIP_BUILDING_CULTURE',			'Amount',		2),
		('P0K_CITY_DHAMMA_WORSHIP_BUILDING_FOOD',				'YieldType',	'YIELD_FOOD'),
		('P0K_CITY_DHAMMA_WORSHIP_BUILDING_FOOD',				'Amount',		2),
		('P0K_CITY_DHAMMA_WORSHIP_BUILDING_GOLD',				'YieldType',	'YIELD_GOLD'),
		('P0K_CITY_DHAMMA_WORSHIP_BUILDING_GOLD',				'Amount',		2);

/*INSERT INTO ModifierArguments
		(ModifierId,												Name,			Value)
SELECT	'P0K_CITY_DHAMMA_' ||BuildingType|| '_CULTURE',				'ModifierId',	'P0K_CITY_DHAMMA_' ||BuildingType|| '_CULTURE_MODIFIER'
FROM	Buildings
WHERE	EnabledByReligion = 1;

INSERT INTO ModifierArguments
		(ModifierId,												Name,			Value)
SELECT	'P0K_CITY_DHAMMA_' ||BuildingType|| '_CULTURE_MODIFIER',	'BuildingType',	BuildingType
FROM	Buildings
WHERE	EnabledByReligion = 1;

INSERT INTO ModifierArguments
		(ModifierId,												Name,			Value)
SELECT	'P0K_CITY_DHAMMA_' ||BuildingType|| '_CULTURE_MODIFIER',	'YieldType',	'YIELD_CULTURE'
FROM	Buildings
WHERE	EnabledByReligion = 1;

INSERT INTO ModifierArguments
		(ModifierId,												Name,			Value)
SELECT	'P0K_CITY_DHAMMA_' ||BuildingType|| '_CULTURE_MODIFIER',	'Amount',		2
FROM	Buildings
WHERE	EnabledByReligion = 1;

INSERT INTO ModifierArguments
		(ModifierId,												Name,			Value)
SELECT	'P0K_CITY_DHAMMA_' ||BuildingType|| '_FOOD',				'ModifierId',	'P0K_CITY_DHAMMA_' ||BuildingType|| '_FOOD_MODIFIER'
FROM	Buildings
WHERE	EnabledByReligion = 1;

INSERT INTO ModifierArguments
		(ModifierId,												Name,			Value)
SELECT	'P0K_CITY_DHAMMA_' ||BuildingType|| '_FOOD_MODIFIER',		'BuildingType',	BuildingType
FROM	Buildings
WHERE	EnabledByReligion = 1;

INSERT INTO ModifierArguments
		(ModifierId,												Name,			Value)
SELECT	'P0K_CITY_DHAMMA_' ||BuildingType|| '_FOOD_MODIFIER',		'YieldType',	'YIELD_FOOD'
FROM	Buildings
WHERE	EnabledByReligion = 1;

INSERT INTO ModifierArguments
		(ModifierId,												Name,			Value)
SELECT	'P0K_CITY_DHAMMA_' ||BuildingType|| '_FOOD_MODIFIER',		'Amount',		2
FROM	Buildings
WHERE	EnabledByReligion = 1;

INSERT INTO ModifierArguments
		(ModifierId,												Name,			Value)
SELECT	'P0K_CITY_DHAMMA_' ||BuildingType|| '_GOLD',				'ModifierId',	'P0K_CITY_DHAMMA_' ||BuildingType|| '_GOLD_MODIFIER'
FROM	Buildings
WHERE	EnabledByReligion = 1;

INSERT INTO ModifierArguments
		(ModifierId,												Name,			Value)
SELECT	'P0K_CITY_DHAMMA_' ||BuildingType|| '_GOLD_MODIFIER',		'BuildingType',	BuildingType
FROM	Buildings
WHERE	EnabledByReligion = 1;

INSERT INTO ModifierArguments
		(ModifierId,												Name,			Value)
SELECT	'P0K_CITY_DHAMMA_' ||BuildingType|| '_GOLD_MODIFIER',		'YieldType',	'YIELD_GOLD'
FROM	Buildings
WHERE	EnabledByReligion = 1;

INSERT INTO ModifierArguments
		(ModifierId,												Name,			Value)
SELECT	'P0K_CITY_DHAMMA_' ||BuildingType|| '_GOLD_MODIFIER',		'Amount',		2
FROM	Buildings
WHERE	EnabledByReligion = 1;*/
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers 
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers 
WHERE		TraitType = 'TRAIT_LEADER_MONASTERIES_KING' 
AND			ModifierId IN -- keep "holy site culture bomb" and "river adjacency bonus" modifiers
			('TRAIT_HOLY_SITE_RIVER_2HOUSING', 
			'TRAIT_MONASTERIES_KING_ADJACENCY_FOOD');

INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
VALUES	('TRAIT_LEADER_MONASTERIES_KING',	'P0K_CITY_DHAMMA_WONDER_DOUBLE_RELIGIOUS_PRESSURE'),
		('TRAIT_LEADER_MONASTERIES_KING',	'P0K_CITY_DHAMMA_WONDER_BUILDING_PRODUCTION'),
		('TRAIT_LEADER_MONASTERIES_KING',	'P0K_CITY_DHAMMA_WONDER_DISTRICT_PRODUCTION'),
		('TRAIT_LEADER_MONASTERIES_KING',	'P0K_CITY_DHAMMA_WORSHIP_BUILDING_CULTURE'),
		('TRAIT_LEADER_MONASTERIES_KING',	'P0K_CITY_DHAMMA_WORSHIP_BUILDING_FOOD'),
		('TRAIT_LEADER_MONASTERIES_KING',	'P0K_CITY_DHAMMA_WORSHIP_BUILDING_GOLD');

/*INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
SELECT	'TRAIT_LEADER_MONASTERIES_KING',	'P0K_CITY_DHAMMA_' ||BuildingType|| '_CULTURE'
FROM	Buildings
WHERE	EnabledByReligion = 1;

INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
SELECT	'TRAIT_LEADER_MONASTERIES_KING',	'P0K_CITY_DHAMMA_' ||BuildingType|| '_FOOD'
FROM	Buildings
WHERE	EnabledByReligion = 1;

INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
SELECT	'TRAIT_LEADER_MONASTERIES_KING',	'P0K_CITY_DHAMMA_' ||BuildingType|| '_GOLD'
FROM	Buildings
WHERE	EnabledByReligion = 1;*/