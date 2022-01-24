/* 
	Civilizations Expanded: Scotland
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: SCOTTISH ENLIGHTENMENT (ENHANCEMENT)
--=============================================================================================================
-- Trade Routes to Scottish cities gain +1 Science and +1 Gold for each specialty district in the destination city.
--=============================================================================================================
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,														ModifierType)
VALUES	('P0K_SCOTLAND_TRAIT_DOMESTIC_TRADE_ROUTE_SCIENCE_PER_DISTRICT',	'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_SPECIALTY_DISTRICT_FOR_DOMESTIC'),
		('P0K_SCOTLAND_TRAIT_DOMESTIC_TRADE_ROUTE_GOLD_PER_DISTRICT',		'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_YIELD_PER_SPECIALTY_DISTRICT_FOR_DOMESTIC');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,														Name,			Value)
VALUES	('P0K_SCOTLAND_TRAIT_DOMESTIC_TRADE_ROUTE_SCIENCE_PER_DISTRICT',	'YieldType',	'YIELD_SCIENCE'),
		('P0K_SCOTLAND_TRAIT_DOMESTIC_TRADE_ROUTE_SCIENCE_PER_DISTRICT',	'Amount',		1),
		('P0K_SCOTLAND_TRAIT_DOMESTIC_TRADE_ROUTE_GOLD_PER_DISTRICT',		'YieldType',	'YIELD_GOLD'),
		('P0K_SCOTLAND_TRAIT_DOMESTIC_TRADE_ROUTE_GOLD_PER_DISTRICT',		'Amount',		2);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,										ModifierId)
VALUES	('TRAIT_CIVILIZATION_SCOTTISH_ENLIGHTENMENT',	'P0K_SCOTLAND_TRAIT_DOMESTIC_TRADE_ROUTE_SCIENCE_PER_DISTRICT'),
		('TRAIT_CIVILIZATION_SCOTTISH_ENLIGHTENMENT',	'P0K_SCOTLAND_TRAIT_DOMESTIC_TRADE_ROUTE_GOLD_PER_DISTRICT');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: LAST OF THE FREE (REWORK)
--=============================================================================================================
-- Training military units grants a burst of Science equal to 15% of the Production cost.
-- Military units gain +25% Experience if fighting in or adjacent to friendly territory.
-- Citizens exert +0.5 Loyalty to their city when a district project is active. 
-- Completing a district project grants +10% Great People points for each building in that district.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,									Kind)
VALUES	('P0K_SCOTLAND_ABILITY_LAST_OF_FREE',	'KIND_ABILITY');
---------------------------------------------------------------------------------------------------------------
-- TypeTags
---------------------------------------------------------------------------------------------------------------
INSERT INTO TypeTags
		(Type,									Tag)
VALUES	('P0K_SCOTLAND_ABILITY_LAST_OF_FREE',	'CLASS_ALL_COMBAT_UNITS');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilities
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilities
		(UnitAbilityType,						Name,											Description,											Inactive)
VALUES	('P0K_SCOTLAND_ABILITY_LAST_OF_FREE',	'LOC_P0K_SCOTLAND_ABILITY_LAST_OF_FREE_NAME',	'LOC_P0K_SCOTLAND_ABILITY_LAST_OF_FREE_DESCRIPTION',	1);
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,										RequirementType)
VALUES	('P0K_SCOTLAND_REQUIRES_CITY_IS_PRODUCING_PROJECT',	'REQUIREMENT_CITY_IS_PRODUCING_PROJECT'); -- no argument
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType)
VALUES	('P0K_SCOTLAND_CITY_IS_PRODUCING_PROJECT',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
VALUES	('P0K_SCOTLAND_CITY_IS_PRODUCING_PROJECT',	'P0K_SCOTLAND_REQUIRES_CITY_IS_PRODUCING_PROJECT');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,											ModifierType,												OwnerRequirementSetId,								SubjectRequirementSetId)
VALUES	('P0K_TRAIT_GRANT_SCIENCE_UNIT_TRAINED',				'MODIFIER_PLAYER_CITIES_GRANT_YIELD_PER_UNIT_COST',			NULL,												NULL),
		('P0K_LAST_OF_FREE_COMBAT_EXPERIENCE',					'MODIFIER_PLAYER_UNIT_ADJUST_UNIT_EXPERIENCE_MODIFIER',		'COSSACK_PLOT_IS_OWNER_OR_ADJACENT_REQUIREMENTS',	NULL),
		('P0K_TRAIT_FRIENDLY_TERRITORY_EXPERIENCE_ABILITY',		'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',						NULL,												NULL),
		('P0K_TRAIT_LOYALTY_DURING_PROJECT',					'MODIFIER_PLAYER_CITIES_ADJUST_IDENTITY_PER_CITIZEN',		NULL,												'P0K_SCOTLAND_CITY_IS_PRODUCING_PROJECT'),
		('P0K_TRAIT_PROJECT_GREAT_PEOPLE_POINTS_MULTIPLIER',	'MODIFIER_PLAYER_ADJUST_PROPERTY',							NULL,												NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,											Name,						Value)
VALUES	('P0K_TRAIT_GRANT_SCIENCE_UNIT_TRAINED',				'YieldType',				'YIELD_SCIENCE'),
		('P0K_TRAIT_GRANT_SCIENCE_UNIT_TRAINED',				'UnitProductionPercent',	20),
		('P0K_LAST_OF_FREE_COMBAT_EXPERIENCE',					'Amount',					25),
		('P0K_TRAIT_FRIENDLY_TERRITORY_EXPERIENCE_ABILITY',		'AbilityType',				'P0K_SCOTLAND_ABILITY_LAST_OF_FREE'),
		('P0K_TRAIT_LOYALTY_DURING_PROJECT',					'Amount',					0.5),
		('P0K_TRAIT_PROJECT_GREAT_PEOPLE_POINTS_MULTIPLIER',	'Key',						'PROJECT_POINTS_MULTIPLIER_PER_BUILDING'),
		('P0K_TRAIT_PROJECT_GREAT_PEOPLE_POINTS_MULTIPLIER',	'Amount',					10);
---------------------------------------------------------------------------------------------------------------
-- UnitAbilityModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,						ModifierId)
VALUES	('P0K_SCOTLAND_ABILITY_LAST_OF_FREE',	'P0K_LAST_OF_FREE_COMBAT_EXPERIENCE');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers 
WHERE		TraitType = 'TRAIT_LEADER_BANNOCKBURN' 
AND			ModifierId IN ('TRAIT_LIBERATION_WAR_MOVEMENT', 'TRAIT_LIBERATION_WAR_PRODUCTION');

INSERT INTO TraitModifiers
		(TraitType,						ModifierId)
VALUES	('TRAIT_LEADER_BANNOCKBURN',	'P0K_TRAIT_GRANT_SCIENCE_UNIT_TRAINED'),
		('TRAIT_LEADER_BANNOCKBURN',	'P0K_TRAIT_FRIENDLY_TERRITORY_EXPERIENCE_ABILITY'),
		('TRAIT_LEADER_BANNOCKBURN',	'P0K_TRAIT_LOYALTY_DURING_PROJECT'),
		('TRAIT_LEADER_BANNOCKBURN',	'P0K_TRAIT_PROJECT_GREAT_PEOPLE_POINTS_MULTIPLIER');
--=============================================================================================================
-- UNIQUE IMPROVEMENT: GOLF COURSE (ENHANCEMENT)
--=============================================================================================================
-- +1 Housing.
-- Unlock at Guilds.
-- +1 Culture, +1 Production, and +1 Gold. Remove City Center Culture adjacency and add Water Park Culture adjacency.
-- +1 Culture for each adjacent Ski Resort or Seaside Resort.
-- +1 Food, +1 Production, and +1 Gold at Professional Sports.
-- Make buildable on Volcanic Soil and Marsh.
--=============================================================================================================
-- Improvements
---------------------------------------------------------------------------------------------------------------
UPDATE Improvements SET Housing = 1, PrereqCivic = 'CIVIC_GUILDS' WHERE ImprovementType = 'IMPROVEMENT_GOLF_COURSE';
---------------------------------------------------------------------------------------------------------------
-- Improvement_YieldChanges
---------------------------------------------------------------------------------------------------------------
UPDATE Improvement_YieldChanges SET YieldChange = 1 WHERE ImprovementType = 'IMPROVEMENT_GOLF_COURSE' AND YieldType = 'YIELD_CULTURE';
UPDATE Improvement_YieldChanges SET YieldChange = 1 WHERE ImprovementType = 'IMPROVEMENT_GOLF_COURSE' AND YieldType = 'YIELD_GOLD';

INSERT INTO Improvement_YieldChanges
		(ImprovementType,			YieldType,			YieldChange)
VALUES	('IMPROVEMENT_GOLF_COURSE',	'YIELD_PRODUCTION',	1);
---------------------------------------------------------------------------------------------------------------
-- Improvement_BonusYieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_BonusYieldChanges
		(Id,	ImprovementType,			YieldType,			BonusYieldChange,	PrereqCivic)
VALUES	('45',	'IMPROVEMENT_GOLF_COURSE',	'YIELD_PRODUCTION',	1,					'CIVIC_PROFESSIONAL_SPORTS'),
		('46',	'IMPROVEMENT_GOLF_COURSE',	'YIELD_GOLD',		1,					'CIVIC_PROFESSIONAL_SPORTS');
---------------------------------------------------------------------------------------------------------------
-- Adjacency_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Adjacency_YieldChanges
		(ID,									Description,	YieldType,			YieldChange,	TilesRequired,	AdjacentImprovement,		AdjacentDistrict)	
VALUES	('p0k_GolfCourse_WaterPark_Culture',	'Placeholder',	'YIELD_CULTURE',	1,				1,				NULL,						'DISTRICT_WATER_ENTERTAINMENT_COMPLEX'),
		('p0k_GolfCourse_Beach_Culture',		'Placeholder',	'YIELD_CULTURE',	1,				1,				'IMPROVEMENT_BEACH_RESORT',	NULL),
		('p0k_GolfCourse_Ski_Culture',			'Placeholder',	'YIELD_CULTURE',	1,				1,				'IMPROVEMENT_SKI_RESORT',	NULL);
---------------------------------------------------------------------------------------------------------------
-- Improvement_Adjacencies
---------------------------------------------------------------------------------------------------------------
DELETE FROM Improvement_Adjacencies WHERE ImprovementType = 'IMPROVEMENT_GOLF_COURSE' AND YieldChangeId = 'GolfCourse_CityCenterAdjacency';

INSERT INTO Improvement_Adjacencies
		(ImprovementType,			YieldChangeId)
VALUES	('IMPROVEMENT_GOLF_COURSE',	'p0k_GolfCourse_WaterPark_Culture'),
		('IMPROVEMENT_GOLF_COURSE',	'p0k_GolfCourse_Beach_Culture'),
		('IMPROVEMENT_GOLF_COURSE',	'p0k_GolfCourse_Ski_Culture');
---------------------------------------------------------------------------------------------------------------
-- Improvement_ValidFeatures
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_ValidFeatures
		(ImprovementType,			FeatureType)
VALUES	('IMPROVEMENT_GOLF_COURSE',	'FEATURE_VOLCANIC_SOIL'),
		('IMPROVEMENT_GOLF_COURSE',	'FEATURE_MARSH');
/* TBD
--=============================================================================================================
-- UNIQUE IMPROVEMENT: CLAN CASTLE (REWORK)
--=============================================================================================================
-- Unlocks at Feudalism.
-- One per city.
-- +2 Loyalty, +1 Amenity, and +2 Housing.
-- +4 Defense and +2 turns of fortification.
-- +1 Culture, +1 GOLD, and +1 GOLD.
-- +1 GOLD for each adjacent Farm or Pasture.
-- +1 Culture for each adjacent Woods or Marsh.
-- Additional yields and Tourism at Conservation.
-- Must be built on a Hill.
-- Cannot be built on Desert terrain.
--=============================================================================================================
-- First, housekeeping. 
--=============================================================================================================
DELETE FROM Traits
WHERE TraitType = 'TRAIT_CIVILIZATION_IMPROVEMENT_GOLF_COURSE';

DELETE FROM CivilizationTraits
WHERE TraitType = 'TRAIT_CIVILIZATION_IMPROVEMENT_GOLF_COURSE';

DELETE FROM Types 
WHERE Type = 'IMPROVEMENT_GOLF_COURSE';

DELETE FROM Improvements 
WHERE ImprovementType = 'IMPROVEMENT_GOLF_COURSE';

DELETE FROM ImprovementModifiers 
WHERE ImprovementType = 'IMPROVEMENT_GOLF_COURSE';

DELETE FROM Improvement_YieldChanges 
WHERE ImprovementType = 'IMPROVEMENT_GOLF_COURSE';

DELETE FROM Improvement_ValidTerrains 
WHERE ImprovementType = 'IMPROVEMENT_GOLF_COURSE';

DELETE FROM Improvement_Tourism 
WHERE ImprovementType = 'IMPROVEMENT_GOLF_COURSE';

DELETE FROM Improvement_BonusYieldChanges 
WHERE ImprovementType = 'IMPROVEMENT_GOLF_COURSE';

DELETE FROM Improvement_Adjacencies 
WHERE ImprovementType = 'IMPROVEMENT_GOLF_COURSE';
--=============================================================================================================
-- Now we can add the Improvement.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,												Kind)
VALUES	('P0K_TRAIT_CIVILIZATION_IMPROVEMENT_CLAN_CASTLE',	'KIND_TRAIT'),
		('P0K_IMPROVEMENT_CLAN_CASTLE',						'KIND_IMPROVEMENT');
---------------------------------------------------------------------------------------------------------------
-- Traits
---------------------------------------------------------------------------------------------------------------
INSERT INTO Traits
		(TraitType,											Name)
VALUES	('P0K_TRAIT_CIVILIZATION_IMPROVEMENT_CLAN_CASTLE',	'LOC_P0K_TRAIT_CIVILIZATION_IMPROVEMENT_CLAN_CASTLE_NAME');
---------------------------------------------------------------------------------------------------------------
-- CivilizationTraits
---------------------------------------------------------------------------------------------------------------
INSERT INTO CivilizationTraits
		(CivilizationType,			TraitType)
VALUES	('CIVILIZATION_SCOTLAND',	'P0K_TRAIT_CIVILIZATION_IMPROVEMENT_CLAN_CASTLE');
---------------------------------------------------------------------------------------------------------------
-- Adjacency_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Adjacency_YieldChanges
		(ID,								Description,	YieldType,			YieldChange,	TilesRequired,	AdjacentFeature,	AdjacentImprovement)
VALUES	('p0k_Clan_Castle_Farm_GOLD',		'Placeholder',	'YIELD_GOLD',		1,				1,				NULL,				'IMPROVEMENT_FARM'),
		('p0k_Clan_Castle_Pasture_GOLD',	'Placeholder',	'YIELD_GOLD',		1,				1,				NULL,				'IMPROVEMENT_PASTURE'),		
		('p0k_Clan_Castle_Woods_Culture',	'Placeholder',	'YIELD_CULTURE',	1,				1,				'FEATURE_FOREST',	NULL),				
		('p0k_Clan_Castle_Marsh_Culture',	'Placeholder',	'YIELD_CULTURE',	1,				1,				'FEATURE_MARSH',	NULL);	
---------------------------------------------------------------------------------------------------------------
-- Improvements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvements
		(ImprovementType,					
		Name,										
		PrereqCivic,		
		Buildable,	
		Description,									
		PlunderType,		
		PlunderAmount,	
		Icon,									
		TraitType,	
		Housing,	
		TilesRequired,	
		SameAdjacentValid,	
		DefenseModifier,
		GrantFortification,
		OnePerCity,
		Workable)
VALUES	('P0K_IMPROVEMENT_CLAN_CASTLE',						-- ImprovementType
		'LOC_P0K_IMPROVEMENT_CLAN_CASTLE_NAME',				-- Name
		'CIVIC_FEUDALISM',									-- PrereqCivic
		1,													-- Buildable
		'LOC_P0K_IMPROVEMENT_CLAN_CASTLE_DESCRIPTION',		-- Description 	
		'PLUNDER_GOLD',										-- PlunderType
		100,												-- PlunderAmount
		'ICON_P0K_IMPROVEMENT_CLAN_CASTLE',					-- Icon
		'P0K_TRAIT_CIVILIZATION_IMPROVEMENT_CLAN_CASTLE',	-- TraitType,
		2,													-- Housing
		1,													-- TilesRequired
		0,													-- SameAdjacentValid
		4,													-- DefenseModifier
		2,													-- GrantFortification,
		1,													-- OnePerCity
		1);													-- Workable	
---------------------------------------------------------------------------------------------------------------
-- MomentIllustrations
---------------------------------------------------------------------------------------------------------------
INSERT INTO MomentIllustrations
		(MomentIllustrationType,					MomentDataType,				GameDataType,					Texture)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_IMPROVEMENT',	'MOMENT_DATA_IMPROVEMENT',	'P0K_IMPROVEMENT_CLAN_CASTLE',	'p0k_Moment_Infrastructure_Scotland.dds');
---------------------------------------------------------------------------------------------------------------
-- Improvement_ValidTerrains
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_ValidTerrains
		(ImprovementType,					TerrainType)
VALUES	('P0K_IMPROVEMENT_CLAN_CASTLE',	'TERRAIN_GRASS_HILLS'),
		('P0K_IMPROVEMENT_CLAN_CASTLE',	'TERRAIN_PLAINS_HILLS'),
		('P0K_IMPROVEMENT_CLAN_CASTLE',	'TERRAIN_TUNDRA_HILLS'),
		('P0K_IMPROVEMENT_CLAN_CASTLE',	'TERRAIN_SNOW_HILLS');
---------------------------------------------------------------------------------------------------------------
-- Improvement_ValidBuildUnits
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_ValidBuildUnits
		(ImprovementType,				UnitType)
VALUES	('P0K_IMPROVEMENT_CLAN_CASTLE',	'UNIT_BUILDER');
---------------------------------------------------------------------------------------------------------------
-- Improvement_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_YieldChanges
		(ImprovementType,				YieldType,			YieldChange)
VALUES	('P0K_IMPROVEMENT_CLAN_CASTLE',	'YIELD_CULTURE',	1),
		('P0K_IMPROVEMENT_CLAN_CASTLE',	'YIELD_GOLD',		1),
		('P0K_IMPROVEMENT_CLAN_CASTLE',	'YIELD_GOLD',	1);
---------------------------------------------------------------------------------------------------------------
-- Improvement_BonusYieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_BonusYieldChanges
		(Id,	ImprovementType,				YieldType,			BonusYieldChange,	PrereqCivic)
VALUES	('300',	'P0K_IMPROVEMENT_CLAN_CASTLE',	'YIELD_CULTURE',	1,					'CIVIC_CONSERVATION'),
		('301',	'P0K_IMPROVEMENT_CLAN_CASTLE',	'YIELD_GOLD',		1,					'CIVIC_CONSERVATION'),
		('302',	'P0K_IMPROVEMENT_CLAN_CASTLE',	'YIELD_GOLD',	1,					'CIVIC_CONSERVATION');
---------------------------------------------------------------------------------------------------------------
-- Improvement_Adjacencies
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_Adjacencies
		(ImprovementType,					YieldChangeId)
 VALUES	('P0K_IMPROVEMENT_CLAN_CASTLE',	'p0k_Clan_Castle_Farm_GOLD'),
		('P0K_IMPROVEMENT_CLAN_CASTLE',	'p0k_Clan_Castle_Pasture_GOLD'),
		('P0K_IMPROVEMENT_CLAN_CASTLE',	'p0k_Clan_Castle_Woods_Culture'),
		('P0K_IMPROVEMENT_CLAN_CASTLE',	'p0k_Clan_Castle_Marsh_Culture');
---------------------------------------------------------------------------------------------------------------
-- Improvement_Tourism
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_Tourism
		(ImprovementType,				TourismSource,				PrereqTech,		ScalingFactor)
VALUES	('P0K_IMPROVEMENT_CLAN_CASTLE',	'TOURISMSOURCE_CULTURE',	'TECH_FLIGHT',	100);
*/
--=============================================================================================================
-- UNIQUE UNIT: HIGHLANDER (ENHANCEMENT)
--=============================================================================================================
-- Reduce cost to 360.
---------------------------------------------------------------------------------------------------------------
UPDATE Units SET Cost = 360 WHERE UnitType = 'UNIT_SCOTTISH_HIGHLANDER';