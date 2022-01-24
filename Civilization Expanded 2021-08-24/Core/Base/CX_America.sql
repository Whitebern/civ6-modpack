/* 
	Civilizations Expanded: America
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: MANIFEST DESTINY (ENHANCEMENT)
--=============================================================================================================
-- Tiles can be purchased for 50% less Gold.
-- +2 Amenities and +2 Housing to cities on the same continent as the Capital.	
-- When outside American territory, all units receive +1 Sight and ignore the Movement costs of terrain and features.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,										Kind)
VALUES	('P0K_AMERICA_ABILITY_MANIFEST_DESTINY',	'KIND_ABILITY');
---------------------------------------------------------------------------------------------------------------
-- TypeTags
---------------------------------------------------------------------------------------------------------------
INSERT INTO TypeTags
		(Type,									Tag)
VALUES	('P0K_AMERICA_ABILITY_MANIFEST_DESTINY', 'CLASS_ALL_UNITS');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilities
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilities
		(UnitAbilityType,							Name,												Description,											Inactive)
VALUES	('P0K_AMERICA_ABILITY_MANIFEST_DESTINY',	'LOC_P0K_AMERICA_ABILITY_MANIFEST_DESTINY_NAME',	'LOC_P0K_AMERICA_ABILITY_MANIFEST_DESTINY_DESCRIPTION',	1);
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,												RequirementType)
VALUES	('P0K_AMERICA_REQUIRES_CITY_IS_OWNER_CAPITAL_CONTINENT',	'REQUIREMENT_CITY_IS_OWNER_CAPITAL_CONTINENT'),	-- No argument necessary.
		('P0K_AMERICA_REQUIRES_PLOT_CAPITAL_CONTINENT',				'REQUIREMENT_PLOT_IS_OWNER_CAPITAL_CONTINENT'); -- No argument necessary.
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType)
VALUES	('P0K_AMERICA_CITY_IS_CAPITAL_CONTINENT',	'REQUIREMENTSET_TEST_ALL'),
		('P0K_AMERICA_PLOT_IS_CAPITAL_CONTINENT',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
VALUES	('P0K_AMERICA_CITY_IS_CAPITAL_CONTINENT',	'P0K_AMERICA_REQUIRES_CITY_IS_OWNER_CAPITAL_CONTINENT'),
		('P0K_AMERICA_PLOT_IS_CAPITAL_CONTINENT',	'P0K_AMERICA_REQUIRES_PLOT_CAPITAL_CONTINENT');		
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,								ModifierType,										SubjectRequirementSetId)
VALUES	('P0K_MANIFEST_DESTINY_EXTRA_SIGHT',		'MODIFIER_PLAYER_UNIT_ADJUST_SIGHT',				'DIGGER_NON_DOMESTIC_PLOT_REQUIREMENTS'),
		('P0K_MANIFEST_DESTINY_IGNORE_TERRAIN',		'MODIFIER_PLAYER_UNIT_ADJUST_IGNORE_TERRAIN_COST',	'DIGGER_NON_DOMESTIC_PLOT_REQUIREMENTS'),
		('P0K_MANIFEST_DESTINY_IGNORE_RIVERS',		'MODIFIER_PLAYER_UNIT_ADJUST_IGNORE_RIVERS',		'DIGGER_NON_DOMESTIC_PLOT_REQUIREMENTS'),
		('P0K_TRAIT_TILE_PURCHASE_DISCOUNT',		'MODIFIER_PLAYER_CITIES_ADJUST_PLOT_PURCHASE_COST',	NULL),
		('P0K_TRAIT_CAPITAL_CONTINENT_AMENITIES',	'MODIFIER_PLAYER_CITIES_ADJUST_POLICY_AMENITY',		'P0K_AMERICA_CITY_IS_CAPITAL_CONTINENT'),
		('P0K_TRAIT_CAPITAL_CONTINENT_HOUSING',		'MODIFIER_PLAYER_CITIES_ADJUST_POLICY_HOUSING',		'P0K_AMERICA_CITY_IS_CAPITAL_CONTINENT'),
		('P0K_TRAIT_MANIFEST_DESTINY_ABILITY',		'MODIFIER_PLAYER_UNITS_GRANT_ABILITY',				NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,								Name,			Value)
VALUES	('P0K_MANIFEST_DESTINY_EXTRA_SIGHT',		'Amount',		1),
		('P0K_MANIFEST_DESTINY_IGNORE_TERRAIN',		'Ignore',		1),
		('P0K_MANIFEST_DESTINY_IGNORE_TERRAIN',		'Type',			'ALL'),
		('P0K_MANIFEST_DESTINY_IGNORE_RIVERS',		'Ignore',		1),
		('P0K_TRAIT_TILE_PURCHASE_DISCOUNT',		'Amount',		-50),
		('P0K_TRAIT_CAPITAL_CONTINENT_AMENITIES',	'Amount',		2),
		('P0K_TRAIT_CAPITAL_CONTINENT_HOUSING',		'Amount',		2),
		('P0K_TRAIT_MANIFEST_DESTINY_ABILITY',		'AbilityType',	'P0K_AMERICA_ABILITY_MANIFEST_DESTINY');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilityModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilityModifiers
		(UnitAbilityType,							ModifierId)
VALUES	('P0K_AMERICA_ABILITY_MANIFEST_DESTINY',	'P0K_MANIFEST_DESTINY_EXTRA_SIGHT'),
		('P0K_AMERICA_ABILITY_MANIFEST_DESTINY',	'P0K_MANIFEST_DESTINY_IGNORE_TERRAIN'),
		('P0K_AMERICA_ABILITY_MANIFEST_DESTINY',	'P0K_MANIFEST_DESTINY_IGNORE_RIVERS');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_CIVILIZATION_FOUNDING_FATHERS' AND ModifierId = 'TRAIT_WILD_CARD_FAVOR';

INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	('TRAIT_CIVILIZATION_FOUNDING_FATHERS',	'P0K_TRAIT_TILE_PURCHASE_DISCOUNT'),
		('TRAIT_CIVILIZATION_FOUNDING_FATHERS',	'P0K_TRAIT_CAPITAL_CONTINENT_AMENITIES'),
		('TRAIT_CIVILIZATION_FOUNDING_FATHERS',	'P0K_TRAIT_CAPITAL_CONTINENT_HOUSING'),
		('TRAIT_CIVILIZATION_FOUNDING_FATHERS',	'P0K_TRAIT_MANIFEST_DESTINY_ABILITY');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: Defined in TeddyRoosevelt folder.
--=============================================================================================================
--=============================================================================================================
-- UNIQUE BUILDING: FILM STUDIO (ENHANCEMENT)
--=============================================================================================================
-- +1 Amenity.
-- No maintenance cost.
-- Bonus Production equal to the Culture adjacency bonus of the Theater Square.
--=============================================================================================================
-- Buildings
---------------------------------------------------------------------------------------------------------------
UPDATE Buildings SET Entertainment = 1, Maintenance = 0 WHERE BuildingType = 'BUILDING_FILM_STUDIO';
---------------------------------------------------------------------------------------------------------------
-- Building_YieldDistrictCopies
---------------------------------------------------------------------------------------------------------------
INSERT INTO Building_YieldDistrictCopies
		(BuildingType,				OldYieldType,		NewYieldType)
VALUES	('BUILDING_FILM_STUDIO',	'YIELD_CULTURE',	'YIELD_PRODUCTION');
--=============================================================================================================
-- START BIASES
--=============================================================================================================
-- Add start bias for Forests and Marsh.
---------------------------------------------------------------------------------------------------------------
-- StartBiasFeatures
---------------------------------------------------------------------------------------------------------------
INSERT INTO StartBiasFeatures
		(CivilizationType,			FeatureType,		Tier)
VALUES	('CIVILIZATION_AMERICA',	'FEATURE_FOREST',	2),
		('CIVILIZATION_AMERICA',	'FEATURE_MARSH',	3);