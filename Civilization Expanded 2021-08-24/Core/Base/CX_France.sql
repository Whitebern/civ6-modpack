/* 
	Civilizations Expanded: France
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: GRAND TOUR (REWORK)
--=============================================================================================================
-- +20% Production towards Wonders in cities with an established Governor.
-- Wonders generate +100% Tourism and grant +2 City-State Envoys when completed.
-- Receive +1 Diplomatic Favor per turn for every 100 Tourism per turn.
-- +50% Great Writer, Great Artist, Great Musician, and Great Merchant points from all sources.
-- The Palace receives 4 extra slots for any type of Great Work.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,															Kind)
VALUES	('P0K_MODIFIER_PLAYER_GRANT_INFLUENCE_TOKEN_FROM_CITY_WONDER',	'KIND_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- DynamicModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,													CollectionType,				EffectType)
VALUES	('P0K_MODIFIER_PLAYER_GRANT_INFLUENCE_TOKEN_FROM_CITY_WONDER',	'COLLECTION_PLAYER_CITIES',	'EFFECT_GRANT_CITY_OWNER_INFLUENCE_TOKEN_WONDER');
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,									RequirementType)
VALUES	('P0K_FRANCE_REQUIRES_CITY_ON_HOME_CONTINENT',	'REQUIREMENT_CITY_IS_OWNER_CAPITAL_CONTINENT'); -- No argument
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
VALUES	('P0K_FRANCE_CITY_ON_HOME_CONTINENT',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES	('P0K_FRANCE_CITY_ON_HOME_CONTINENT',	'P0K_FRANCE_REQUIRES_CITY_ON_HOME_CONTINENT');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
UPDATE Modifiers SET SubjectRequirementSetId = 'P0K_FRANCE_CITY_ON_HOME_CONTINENT' WHERE ModifierId = 'TRAIT_WONDER_MEDIAVALINDUSTRIAL_PRODUCTION';

INSERT INTO Modifiers
		(ModifierId,				ModifierType)											
VALUES	('P0K_TRAIT_WONDER_ENVOY',	'P0K_MODIFIER_PLAYER_GRANT_INFLUENCE_TOKEN_FROM_CITY_WONDER');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
UPDATE ModifierArguments
SET Value = 'ERA_ANCIENT'
WHERE ModifierId = 'TRAIT_WONDER_MEDIAVALINDUSTRIAL_PRODUCTION'
AND Name = 'StartEra';

UPDATE ModifierArguments
SET Value = 'ERA_FUTURE'
WHERE ModifierId = 'TRAIT_WONDER_MEDIAVALINDUSTRIAL_PRODUCTION'
AND Name = 'EndEra';

INSERT INTO ModifierArguments	
		(ModifierId,				Name,		Value)
VALUES	('P0K_TRAIT_WONDER_ENVOY',	'Amount',	2);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	('TRAIT_CIVILIZATION_WONDER_TOURISM',	'P0K_TRAIT_WONDER_ENVOY'),
		('TRAIT_CIVILIZATION_WONDER_TOURISM',	'TRAIT_TOURISM_INTO_FAVOR'),		-- from Canada 
		('TRAIT_CIVILIZATION_WONDER_TOURISM',	'TRAIT_DOUBLE_WRITER_POINTS'),		-- from Kongo 
		('TRAIT_CIVILIZATION_WONDER_TOURISM',	'TRAIT_DOUBLE_ARTIST_POINTS'),		-- from Kongo 
		('TRAIT_CIVILIZATION_WONDER_TOURISM',	'TRAIT_DOUBLE_MUSICIAN_POINTS'),	-- from Kongo 
		('TRAIT_CIVILIZATION_WONDER_TOURISM',	'TRAIT_DOUBLE_MERCHANT_POINTS'),	-- from Kongo 
		('TRAIT_CIVILIZATION_WONDER_TOURISM',	'TRAIT_EXTRA_PALACE_SLOTS');		-- from Kongo 
--=============================================================================================================
-- LEADER UNIQUE ABILITY: Defined in CatherineDeMedici folder.
--=============================================================================================================
--=============================================================================================================
-- UNIQUE IMPROVEMENT: CHATEAU (ENHANCEMENT)
--=============================================================================================================
-- Unlocked earlier at Feudalism instead of Humanism.
-- +0.5 Housing.
-- Allow to be built next to another Chateau.
-- Can be built on Volcanic Soil and Marsh.
-- Base yield is now +2 Gold, +1 Culture, +1 Food.
-- Reduce Gold adjacency bonus from Rivers to +1.
-- Provide a Culture adjacency bonus for Natural Wonders too (equivalent to the one for World Wonders).
--=============================================================================================================
-- Improvements
---------------------------------------------------------------------------------------------------------------
UPDATE	Improvements
SET		PrereqCivic = 'CIVIC_FEUDALISM',
		Housing = 1,
		TilesRequired = 2,
		SameAdjacentValid = 1
WHERE	ImprovementType = 'IMPROVEMENT_CHATEAU';
---------------------------------------------------------------------------------------------------------------
-- Improvement_YieldChanges
---------------------------------------------------------------------------------------------------------------
UPDATE Improvement_YieldChanges
SET YieldChange = 1
WHERE ImprovementType = 'IMPROVEMENT_CHATEAU'
AND YieldType = 'YIELD_CULTURE';

INSERT INTO Improvement_YieldChanges
		(ImprovementType,		YieldType,		YieldChange)
VALUES	('IMPROVEMENT_CHATEAU',	'YIELD_FOOD',	1);
---------------------------------------------------------------------------------------------------------------
-- Improvement_ValidFeatures
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_ValidFeatures
		(ImprovementType,		FeatureType)
VALUES	('IMPROVEMENT_CHATEAU',	'FEATURE_VOLCANIC_SOIL'),
		('IMPROVEMENT_CHATEAU',	'FEATURE_MARSH');
---------------------------------------------------------------------------------------------------------------
-- Adjacency_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Adjacency_YieldChanges
		(ID,								Description,	YieldType,			YieldChange,	TilesRequired,	AdjacentRiver,	AdjacentNaturalWonder,	PrereqTech,		ObsoleteTech)
VALUES	('p0k_Chateau_NaturalWonderEarly',	'Placeholder',	'YIELD_CULTURE',	1,				1,				0,				1,						NULL,			'TECH_FLIGHT'),
		('p0k_Chateau_NaturalWonderLate',	'Placeholder',	'YIELD_CULTURE',	1,				1,				0,				1,						'TECH_FLIGHT',	NULL);
---------------------------------------------------------------------------------------------------------------
-- Improvement_Adjacencies
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_Adjacencies
		(ImprovementType,		YieldChangeId)
VALUES	('IMPROVEMENT_CHATEAU',	'p0k_Chateau_NaturalWonderEarly'),
		('IMPROVEMENT_CHATEAU',	'p0k_Chateau_NaturalWonderLate');

