/* 
	Civilizations Expanded: Ottomans
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: SHADOW OF GOD (ENHANCEMENT)
--=============================================================================================================
-- Add +1 Housing to the bonus to cities not founded by the Ottomans.
-- +2 Food and +1 Housing from Commercial Hubs
-- +2 Production and +1 Amenity from Holy Sites.
--=============================================================================================================
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType,											SubjectRequirementSetId)
VALUES	('P0K_TRAIT_CAPTURED_HOUSING',					'MODIFIER_PLAYER_CITIES_ADJUST_POLICY_HOUSING',			'CITY_NOT_FOUNDED'),
		('P0K_SHADOW_OF_GOD_COMMERCIAL_HUB_FOOD',		'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE',		'DISTRICT_IS_COMMERCIAL_HUB'),
		('P0K_SHADOW_OF_GOD_COMMERCIAL_HUB_HOUSING',	'MODIFIER_PLAYER_DISTRICTS_ADJUST_HOUSING',				'DISTRICT_IS_COMMERCIAL_HUB'),
		('P0K_SHADOW_OF_GOD_HOLY_SITE_PRODUCTION',		'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE',		'DISTRICT_IS_HOLY_SITE'),
		('P0K_SHADOW_OF_GOD_HOLY_SITE_AMENITY',			'MODIFIER_PLAYER_DISTRICTS_ADJUST_EXTRA_ENTERTAINMENT',	'DISTRICT_IS_HOLY_SITE');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value)
VALUES	('P0K_TRAIT_CAPTURED_HOUSING',					'Amount',		1),
		('P0K_SHADOW_OF_GOD_COMMERCIAL_HUB_FOOD',		'YieldType',	'YIELD_FOOD'),
		('P0K_SHADOW_OF_GOD_COMMERCIAL_HUB_FOOD',		'Amount',		2),
		('P0K_SHADOW_OF_GOD_COMMERCIAL_HUB_HOUSING',	'Amount',		1),
		('P0K_SHADOW_OF_GOD_HOLY_SITE_PRODUCTION',		'YieldType',	'YIELD_PRODUCTION'),
		('P0K_SHADOW_OF_GOD_HOLY_SITE_PRODUCTION',		'Amount',		2),
		('P0K_SHADOW_OF_GOD_HOLY_SITE_AMENITY',			'Amount',		1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,										ModifierId)
VALUES	('TRAIT_CIVILIZATION_GREAT_TURKISH_BOMBARD',	'P0K_TRAIT_CAPTURED_HOUSING'),
		('TRAIT_CIVILIZATION_GREAT_TURKISH_BOMBARD',	'P0K_SHADOW_OF_GOD_COMMERCIAL_HUB_FOOD'),
		('TRAIT_CIVILIZATION_GREAT_TURKISH_BOMBARD',	'P0K_SHADOW_OF_GOD_COMMERCIAL_HUB_HOUSING'),
		('TRAIT_CIVILIZATION_GREAT_TURKISH_BOMBARD',	'P0K_SHADOW_OF_GOD_HOLY_SITE_PRODUCTION'),
		('TRAIT_CIVILIZATION_GREAT_TURKISH_BOMBARD',	'P0K_SHADOW_OF_GOD_HOLY_SITE_AMENITY');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: ERA OF SPLENDOR (ENHANCEMENT)
--=============================================================================================================
-- Patronage of Great People with Gold and Faith is discounted by 20%.
-- Unlocking a new Government tier grants +2 Governor Titles.
-- Gain access to the Barbary Corsair unique unit (switch the Janissary and the Corsair).
--=============================================================================================================
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
				(RequirementId,										RequirementType)
SELECT DISTINCT 'P0K_OTTOMAN_REQUIRES_PLAYER_HAS_' ||PrereqCivic,	'REQUIREMENT_PLAYER_HAS_CIVIC'
FROM Governments 
WHERE PrereqCivic <> 'CIVIC_POLITICAL_PHILOSOPHY';
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,												Name,			Value)
SELECT DISTINCT 'P0K_OTTOMAN_REQUIRES_PLAYER_HAS_' ||PrereqCivic,	'CivicType',	PrereqCivic
FROM Governments 
WHERE PrereqCivic <> 'CIVIC_POLITICAL_PHILOSOPHY';
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
VALUES	('P0K_OTTOMAN_PLAYER_HAS_TIER_2_GOV_CIVICS',	'REQUIREMENTSET_TEST_ANY'),
		('P0K_OTTOMAN_PLAYER_HAS_TIER_3_GOV_CIVICS',	'REQUIREMENTSET_TEST_ANY'),
		('P0K_OTTOMAN_PLAYER_HAS_TIER_4_GOV_CIVICS',	'REQUIREMENTSET_TEST_ANY');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
SELECT DISTINCT 'P0K_OTTOMAN_PLAYER_HAS_TIER_2_GOV_CIVICS',	'P0K_OTTOMAN_REQUIRES_PLAYER_HAS_' ||PrereqCivic
FROM Governments
WHERE Tier = 'Tier2';

INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
SELECT DISTINCT 'P0K_OTTOMAN_PLAYER_HAS_TIER_3_GOV_CIVICS',	'P0K_OTTOMAN_REQUIRES_PLAYER_HAS_' ||PrereqCivic
FROM Governments
WHERE Tier = 'Tier3';

INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
SELECT DISTINCT 'P0K_OTTOMAN_PLAYER_HAS_TIER_4_GOV_CIVICS',	'P0K_OTTOMAN_REQUIRES_PLAYER_HAS_' ||PrereqCivic
FROM Governments
WHERE Tier = 'Tier4';
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType,														RunOnce,	Permanent,	SubjectRequirementSetId)
VALUES	('P0K_TRAIT_GOV_TITLE_FROM_TIER_1_GOVERNMENT',	'MODIFIER_PLAYER_ADJUST_GOVERNOR_POINTS',							1,			1,			'PLAYER_HAS_POLITICAL_PHILOSOPHY'),
		('P0K_TRAIT_GOV_TITLE_FROM_TIER_2_GOVERNMENT',	'MODIFIER_PLAYER_ADJUST_GOVERNOR_POINTS',							1,			1,			'P0K_OTTOMAN_PLAYER_HAS_TIER_2_GOV_CIVICS'),
		('P0K_TRAIT_GOV_TITLE_FROM_TIER_3_GOVERNMENT',	'MODIFIER_PLAYER_ADJUST_GOVERNOR_POINTS',							1,			1,			'P0K_OTTOMAN_PLAYER_HAS_TIER_3_GOV_CIVICS'),
		('P0K_TRAIT_GOV_TITLE_FROM_TIER_4_GOVERNMENT',	'MODIFIER_PLAYER_ADJUST_GOVERNOR_POINTS',							1,			1,			'P0K_OTTOMAN_PLAYER_HAS_TIER_4_GOV_CIVICS'),
		('P0K_TRAIT_DISCOUNT_GOLD_PATRONAGE',			'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_PATRONAGE_DISCOUNT_PERCENT',	0,			0,			NULL),
		('P0K_TRAIT_DISCOUNT_FAITH_PATRONAGE',			'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_PATRONAGE_DISCOUNT_PERCENT',	0,			0,			NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value)
VALUES	('P0K_TRAIT_GOV_TITLE_FROM_TIER_1_GOVERNMENT',	'Delta',		2),
		('P0K_TRAIT_GOV_TITLE_FROM_TIER_2_GOVERNMENT',	'Delta',		2),
		('P0K_TRAIT_GOV_TITLE_FROM_TIER_3_GOVERNMENT',	'Delta',		2),
		('P0K_TRAIT_GOV_TITLE_FROM_TIER_4_GOVERNMENT',	'Delta',		2),
		('P0K_TRAIT_DISCOUNT_GOLD_PATRONAGE',			'YieldType',	'YIELD_GOLD'),
		('P0K_TRAIT_DISCOUNT_GOLD_PATRONAGE',			'Amount',		20),
		('P0K_TRAIT_DISCOUNT_FAITH_PATRONAGE',			'YieldType',	'YIELD_FAITH'),
		('P0K_TRAIT_DISCOUNT_FAITH_PATRONAGE',			'Amount',		20);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_LEADER_SULEIMAN_GOVERNOR' AND ModifierId = 'SULEIMAN_GOVERNOR_POINTS';

INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
VALUES	('TRAIT_LEADER_SULEIMAN_GOVERNOR',	'P0K_TRAIT_GOV_TITLE_FROM_TIER_1_GOVERNMENT'),
		('TRAIT_LEADER_SULEIMAN_GOVERNOR',	'P0K_TRAIT_GOV_TITLE_FROM_TIER_2_GOVERNMENT'),
		('TRAIT_LEADER_SULEIMAN_GOVERNOR',	'P0K_TRAIT_GOV_TITLE_FROM_TIER_3_GOVERNMENT'),
		('TRAIT_LEADER_SULEIMAN_GOVERNOR',	'P0K_TRAIT_GOV_TITLE_FROM_TIER_4_GOVERNMENT'),
		('TRAIT_LEADER_SULEIMAN_GOVERNOR',	'P0K_TRAIT_DISCOUNT_GOLD_PATRONAGE'),
		('TRAIT_LEADER_SULEIMAN_GOVERNOR',	'P0K_TRAIT_DISCOUNT_FAITH_PATRONAGE');
---------------------------------------------------------------------------------------------------------------
-- CivilizationTraits and LeaderTraits
---------------------------------------------------------------------------------------------------------------
DELETE FROM CivilizationTraits WHERE TraitType = 'TRAIT_CIVILIZATION_UNIT_OTTOMAN_BARBARY_CORSAIR';
DELETE FROM LeaderTraits WHERE TraitType = 'TRAIT_LEADER_UNIT_SULEIMAN_JANISSARY';

INSERT INTO CivilizationTraits
		(CivilizationType,			TraitType)
VALUES	('CIVILIZATION_OTTOMAN',	'TRAIT_LEADER_UNIT_SULEIMAN_JANISSARY');

INSERT INTO LeaderTraits
		(LeaderType,		TraitType)
VALUES	('LEADER_SULEIMAN',	'TRAIT_CIVILIZATION_UNIT_OTTOMAN_BARBARY_CORSAIR');
--=============================================================================================================
-- LEADER UNIQUE GOVERNOR: GRAND VIZIER (ENHANCEMENT)
--=============================================================================================================
-- Khass-Oda-Bashi: Remove the existing Alliance bonus.
-- Instead, +1 Food, +1 Production, and +1 Gold to this city and your other cities within 9 tiles.
--=============================================================================================================
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,							RequirementType)
VALUES	('P0K_IBRAHIM_REQUIRES_WITHIN_9_TILES',	'REQUIREMENT_PLOT_ADJACENT_TO_OWNER');
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,							Name,			Value)
VALUES	('P0K_IBRAHIM_REQUIRES_WITHIN_9_TILES',	'MinDistance',	0),
		('P0K_IBRAHIM_REQUIRES_WITHIN_9_TILES',	'MaxDistance',	9);
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType)
VALUES	('P0K_IBRAHIM_WITHIN_9_TILES_REQUIREMENTS',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
VALUES	('P0K_IBRAHIM_WITHIN_9_TILES_REQUIREMENTS',	'P0K_IBRAHIM_REQUIRES_WITHIN_9_TILES');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,						ModifierType,										SubjectRequirementSetId)
VALUES	('P0K_KHASS_ODA_BASHI_FOOD',		'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'P0K_IBRAHIM_WITHIN_9_TILES_REQUIREMENTS'),
		('P0K_KHASS_ODA_BASHI_PRODUCTION',	'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'P0K_IBRAHIM_WITHIN_9_TILES_REQUIREMENTS'),
		('P0K_KHASS_ODA_BASHI_GOLD',		'MODIFIER_PLAYER_CITIES_ADJUST_CITY_YIELD_CHANGE',	'P0K_IBRAHIM_WITHIN_9_TILES_REQUIREMENTS');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,						Name,			Value)	
VALUES	('P0K_KHASS_ODA_BASHI_FOOD',		'YieldType',	'YIELD_FOOD'),
		('P0K_KHASS_ODA_BASHI_FOOD',		'Amount',		1),
		('P0K_KHASS_ODA_BASHI_PRODUCTION',	'YieldType',	'YIELD_PRODUCTION'),
		('P0K_KHASS_ODA_BASHI_PRODUCTION',	'Amount',		1),
		('P0K_KHASS_ODA_BASHI_GOLD',		'YieldType',	'YIELD_GOLD'),
		('P0K_KHASS_ODA_BASHI_GOLD',		'Amount',		1);
---------------------------------------------------------------------------------------------------------------
-- GovernorPromotionModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM GovernorPromotionModifiers WHERE GovernorPromotionType = 'KHASS_ODA_BASHI_ADJUST_ALLIANCE_POINTS';

INSERT INTO GovernorPromotionModifiers
		(GovernorPromotionType,					ModifierId)
VALUES	('GOVERNOR_PROMOTION_KHASS_ODA_BASHI',	'P0K_KHASS_ODA_BASHI_FOOD'),
		('GOVERNOR_PROMOTION_KHASS_ODA_BASHI',	'P0K_KHASS_ODA_BASHI_PRODUCTION'),
		('GOVERNOR_PROMOTION_KHASS_ODA_BASHI',	'P0K_KHASS_ODA_BASHI_GOLD');
--=============================================================================================================
-- UNIQUE BUILDING: GRAND BAZAAR (ENHANCEMENT)
--=============================================================================================================
-- Grants an additional Great Merchant point.
--=============================================================================================================
UPDATE Building_GreatPersonPoints SET PointsPerTurn = 2 WHERE BuildingType = 'BUILDING_GRAND_BAZAAR';