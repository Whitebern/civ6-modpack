/* 
	Civilizations Expanded: Scythia
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: PEOPLE OF THE STEPPE (ENHANCEMENT)
--=============================================================================================================
-- Begin the game with the Animal Husbandry technology unlocked.
-- +1 Food, +1 Production, and +1 Gold from Camps and Pastures.
--=============================================================================================================
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,							ModifierType,									SubjectRequirementSetId)
VALUES	('P0K_TRAIT_GRANT_ANIMAL_HUSBANDRY',	'MODIFIER_PLAYER_GRANT_SPECIFIC_TECHNOLOGY',	NULL),
		('P0K_TRAIT_STEPPE_CAMP_FOOD',			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',			'PLOT_HAS_CAMP_REQUIREMENTS'),
		('P0K_TRAIT_STEPPE_CAMP_PRODUCTION',	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',			'PLOT_HAS_CAMP_REQUIREMENTS'),
		('P0K_TRAIT_STEPPE_CAMP_GOLD',			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',			'PLOT_HAS_CAMP_REQUIREMENTS'),
		('P0K_TRAIT_STEPPE_PASTURE_FOOD',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',			'PLOT_HAS_PASTURE_REQUIREMENTS'),
		('P0K_TRAIT_STEPPE_PASTURE_PRODUCTION',	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',			'PLOT_HAS_PASTURE_REQUIREMENTS'),
		('P0K_TRAIT_STEPPE_PASTURE_GOLD',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',			'PLOT_HAS_PASTURE_REQUIREMENTS');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,							Name,			Value)
VALUES	('P0K_TRAIT_GRANT_ANIMAL_HUSBANDRY',	'TechType',		'TECH_ANIMAL_HUSBANDRY'),
		('P0K_TRAIT_STEPPE_CAMP_FOOD',			'YieldType',	'YIELD_FOOD'),
		('P0K_TRAIT_STEPPE_CAMP_FOOD',			'Amount',		1),
		('P0K_TRAIT_STEPPE_CAMP_PRODUCTION',	'YieldType',	'YIELD_PRODUCTION'),
		('P0K_TRAIT_STEPPE_CAMP_PRODUCTION',	'Amount',		1),
		('P0K_TRAIT_STEPPE_CAMP_GOLD',			'YieldType',	'YIELD_GOLD'),
		('P0K_TRAIT_STEPPE_CAMP_GOLD',			'Amount',		1),
		('P0K_TRAIT_STEPPE_PASTURE_FOOD',		'YieldType',	'YIELD_FOOD'),
		('P0K_TRAIT_STEPPE_PASTURE_FOOD',		'Amount',		1),
		('P0K_TRAIT_STEPPE_PASTURE_PRODUCTION',	'YieldType',	'YIELD_PRODUCTION'),
		('P0K_TRAIT_STEPPE_PASTURE_PRODUCTION',	'Amount',		1),
		('P0K_TRAIT_STEPPE_PASTURE_GOLD',		'YieldType',	'YIELD_GOLD'),
		('P0K_TRAIT_STEPPE_PASTURE_GOLD',		'Amount',		1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,									ModifierId)
VALUES	('TRAIT_CIVILIZATION_EXTRA_LIGHT_CAVALRY',	'P0K_TRAIT_GRANT_ANIMAL_HUSBANDRY'),
		('TRAIT_CIVILIZATION_EXTRA_LIGHT_CAVALRY',	'P0K_TRAIT_STEPPE_CAMP_FOOD'),
		('TRAIT_CIVILIZATION_EXTRA_LIGHT_CAVALRY',	'P0K_TRAIT_STEPPE_CAMP_PRODUCTION'),
		('TRAIT_CIVILIZATION_EXTRA_LIGHT_CAVALRY',	'P0K_TRAIT_STEPPE_CAMP_GOLD'),
		('TRAIT_CIVILIZATION_EXTRA_LIGHT_CAVALRY',	'P0K_TRAIT_STEPPE_PASTURE_FOOD'),
		('TRAIT_CIVILIZATION_EXTRA_LIGHT_CAVALRY',	'P0K_TRAIT_STEPPE_PASTURE_PRODUCTION'),
		('TRAIT_CIVILIZATION_EXTRA_LIGHT_CAVALRY',	'P0K_TRAIT_STEPPE_PASTURE_GOLD');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: QUEEN OF THE MASSAGATAE (ENHANCEMENT)
--=============================================================================================================
-- Yields gained from plundering Trade Routes and pillaging are doubled, and these actions only cost 1 Movement.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,										Kind)
VALUES	('P0K_SCYTHIA_ABILITY_QUEEN_MASSAGATAE',	'KIND_ABILITY');
---------------------------------------------------------------------------------------------------------------
-- TypeTags
---------------------------------------------------------------------------------------------------------------
INSERT INTO TypeTags
		(Type,									Tag)
VALUES	('P0K_SCYTHIA_ABILITY_QUEEN_MASSAGATAE', 'CLASS_ALL_COMBAT_UNITS');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilities
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilities
		(UnitAbilityType,							Name,												Description,											Inactive)
VALUES	('P0K_SCYTHIA_ABILITY_QUEEN_MASSAGATAE',	'LOC_P0K_SCYTHIA_ABILITY_QUEEN_MASSAGATAE_NAME',	'LOC_P0K_SCYTHIA_ABILITY_QUEEN_MASSAGATAE_DESCRIPTION',	1);
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,										ModifierType,										SubjectRequirementSetId)
VALUES	('P0K_ABILITY_QUEEN_MASSAGATAE_PILLAGE_MOVEMENT',	'MODIFIER_PLAYER_UNIT_ADJUST_ADVANCED_PILLAGING',	NULL),
		('P0K_TRAIT_GRANT_QUEEN_MASSAGATAE_ABILITY',		'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				NULL),
		('P0K_TRAIT_DOUBLE_PLUNDER_YIELDS',					'MODIFIER_PLAYER_UNITS_ADJUST_PLUNDER_YIELDS',		NULL),
		('P0K_TRAIT_DOUBLE_DISTRICT_PILLAGE',				'MODIFIER_PLAYER_ADJUST_DISTRICT_PILLAGE',			NULL),
		('P0K_TRAIT_DOUBLE_IMPROVEMENT_PILLAGE',			'MODIFIER_PLAYER_ADJUST_IMPROVEMENT_PILLAGE',		NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,					Value)
VALUES	('P0K_ABILITY_QUEEN_MASSAGATAE_PILLAGE_MOVEMENT',	'UseAdvancedPillaging',	1),
		('P0K_TRAIT_GRANT_QUEEN_MASSAGATAE_ABILITY',		'AbilityType',			'P0K_SCYTHIA_ABILITY_QUEEN_MASSAGATAE'),
		('P0K_TRAIT_DOUBLE_PLUNDER_YIELDS',					'Amount',				100),
		('P0K_TRAIT_DOUBLE_DISTRICT_PILLAGE',				'Amount',				100),
		('P0K_TRAIT_DOUBLE_IMPROVEMENT_PILLAGE',			'Amount',				100);
---------------------------------------------------------------------------------------------------------------
-- UnitAbilityModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,							ModifierId)
VALUES	('P0K_SCYTHIA_ABILITY_QUEEN_MASSAGATAE',	'P0K_ABILITY_QUEEN_MASSAGATAE_PILLAGE_MOVEMENT');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
VALUES	('TRAIT_LEADER_KILLER_OF_CYRUS',	'P0K_TRAIT_GRANT_QUEEN_MASSAGATAE_ABILITY'),
		('TRAIT_LEADER_KILLER_OF_CYRUS',	'P0K_TRAIT_DOUBLE_PLUNDER_YIELDS'),
		('TRAIT_LEADER_KILLER_OF_CYRUS',	'P0K_TRAIT_DOUBLE_DISTRICT_PILLAGE'),
		('TRAIT_LEADER_KILLER_OF_CYRUS',	'P0K_TRAIT_DOUBLE_IMPROVEMENT_PILLAGE');
--=============================================================================================================
-- UNIQUE IMPROVEMENT: BURIAL MOUND (ENHANCEMENT)
--=============================================================================================================
-- New base yield is +2 Gold, +1 Faith.
-- +1 Faith for each adjacent Camp, and another +1 at Stirrups.
-- Can no longer be built next to another Burial Mound.
-- +1 Gold at Guilds and +1 Gold at Mercantilism.
-- Can be built on Marsh and Volcanic Soil.
--=============================================================================================================
-- Adjacency_YieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Adjacency_YieldChanges
		(ID,								Description,	YieldType,		YieldChange,	TilesRequired,		AdjacentImprovement,	PrereqTech,			ObsoleteTech)
VALUES	('p0k_Kurgan_CampFaith',			'Placeholder',	'YIELD_FAITH',	1,				1,					'IMPROVEMENT_CAMP',		NULL,				'TECH_STIRRUPS'),
		('p0k_Kurgan_CampFaith_Stirrups',	'Placeholder',	'YIELD_FAITH',	2,				1,					'IMPROVEMENT_CAMP',		'TECH_STIRRUPS',	NULL);
---------------------------------------------------------------------------------------------------------------
-- Improvement_Adjacencies
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_Adjacencies
		(ImprovementType,		YieldChangeId)
VALUES	('IMPROVEMENT_KURGAN',	'p0k_Kurgan_CampFaith'),
		('IMPROVEMENT_KURGAN',	'p0k_Kurgan_CampFaith_Stirrups');
---------------------------------------------------------------------------------------------------------------
-- Improvements
---------------------------------------------------------------------------------------------------------------
UPDATE	Improvements
SET		SameAdjacentValid = 0
WHERE	ImprovementType = 'IMPROVEMENT_KURGAN';
---------------------------------------------------------------------------------------------------------------
-- Improvement_YieldChanges
---------------------------------------------------------------------------------------------------------------
UPDATE	Improvement_YieldChanges 
SET		YieldChange = 2 
WHERE	ImprovementType = 'IMPROVEMENT_KURGAN'
AND		YieldType = 'YIELD_GOLD';
---------------------------------------------------------------------------------------------------------------
-- Improvement_BonusYieldChanges
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_BonusYieldChanges
		(Id,	ImprovementType,		YieldType,		BonusYieldChange,	PrereqCivic)
VALUES	('280',	'IMPROVEMENT_KURGAN',	'YIELD_GOLD',	1,					'CIVIC_GUILDS'),
		('281',	'IMPROVEMENT_KURGAN',	'YIELD_GOLD',	1,					'CIVIC_MERCANTILISM');
---------------------------------------------------------------------------------------------------------------
-- Improvement_ValidFeatures
---------------------------------------------------------------------------------------------------------------
INSERT INTO Improvement_ValidFeatures
		(ImprovementType,		FeatureType)
VALUES	('IMPROVEMENT_KURGAN',	'FEATURE_MARSH'),
		('IMPROVEMENT_KURGAN',	'FEATURE_VOLCANIC_SOIL');
--=============================================================================================================
-- UNIQUE UNIT: SAKA HORSE ARCHER (ALTERATION)
--=============================================================================================================
-- Now upgrades into Crossbowman.
--=============================================================================================================
-- UnitUpgrades
---------------------------------------------------------------------------------------------------------------
UPDATE UnitUpgrades SET UpgradeUnit = 'UNIT_CROSSBOWMAN' WHERE Unit = 'UNIT_SCYTHIAN_HORSE_ARCHER';
