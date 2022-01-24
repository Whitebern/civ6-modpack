/* 
	Civilizations Expanded: Zulu
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: ISIBONGO (ENHANCEMENT)
--=============================================================================================================
-- Cities with a garrisoned unit gain +3 Loyalty and +1 Amenity, doubling if the garrisoned unit is a Corps or Army.
-- Gold and resource costs for unit upgrades are discounted 50%.
--=============================================================================================================
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType,													SubjectRequirementSetId)
VALUES	('P0K_TRAIT_GARRISON_AMENITY',					'MODIFIER_PLAYER_CITIES_ADJUST_POLICY_AMENITY',					'CITY_HAS_GARRISON_UNIT_REQUIERMENT'),
		('P0K_TRAIT_GARRISON_FORMATION_AMENITY',		'MODIFIER_PLAYER_CITIES_ADJUST_POLICY_AMENITY',					'CITY_HAS_GARRISON_CORPS_OR_ARMY_REQUIREMENT'),
		('P0K_TRAIT_UNIT_GOLD_UPGRADE_DISCOUNT',		'MODIFIER_PLAYER_ADJUST_UNIT_UPGRADE_DISCOUNT_PERCENT',			NULL),
		('P0K_TRAIT_UNIT_RESOURCE_UPGRADE_DISCOUNT',	'MODIFIER_PLAYER_ADJUST_UNIT_UPGRADE_RESOURCE_COST_MODIFIER',	NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
UPDATE ModifierArguments SET Value = 3 WHERE ModifierId = 'TRAIT_ISIBONGO_GARRISONFORMATIONIDENTITY';

INSERT INTO ModifierArguments
		(ModifierId,									Name,		Value)
VALUES	('P0K_TRAIT_GARRISON_AMENITY',					'Amount',	1),
		('P0K_TRAIT_GARRISON_FORMATION_AMENITY',		'Amount',	1),
		('P0K_TRAIT_UNIT_GOLD_UPGRADE_DISCOUNT',		'Amount',	50),
		('P0K_TRAIT_UNIT_RESOURCE_UPGRADE_DISCOUNT',	'Amount',	50);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	('TRAIT_CIVILIZATION_ZULU_ISIBONGO',	'P0K_TRAIT_GARRISON_AMENITY'),
		('TRAIT_CIVILIZATION_ZULU_ISIBONGO',	'P0K_TRAIT_GARRISON_FORMATION_AMENITY'),
		('TRAIT_CIVILIZATION_ZULU_ISIBONGO',	'P0K_TRAIT_UNIT_GOLD_UPGRADE_DISCOUNT'),
		('TRAIT_CIVILIZATION_ZULU_ISIBONGO',	'P0K_TRAIT_UNIT_RESOURCE_UPGRADE_DISCOUNT');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: AMABUTHO (ENHANCEMENT)
--=============================================================================================================
-- +1 Governor Title from the Government Plaza and each of its buildings.
-- Cities with a Governor receive an additional Ranged strike each turn.
-- Military units trained in cities with a Governor begin with a free Promotion.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,														Kind)
VALUES	('P0K_ZULU_MODIFIER_PLAYER_CITIES_ADJUST_ATTACKS_PER_TURN',	'KIND_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- DynamicModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,												CollectionType,				EffectType)
VALUES	('P0K_ZULU_MODIFIER_PLAYER_CITIES_ADJUST_ATTACKS_PER_TURN',	'COLLECTION_PLAYER_CITIES',	'EFFECT_ADJUST_CITY_ATTACKS_PER_TURN');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,									RequirementSetType)
VALUES	('P0K_ZULU_PLAYER_HAS_GOV_PLAZA_TIER_1_BUILDING',	'REQUIREMENTSET_TEST_ANY'),
		('P0K_ZULU_PLAYER_HAS_GOV_PLAZA_TIER_2_BUILDING',	'REQUIREMENTSET_TEST_ANY'),
		('P0K_ZULU_PLAYER_HAS_GOV_PLAZA_TIER_3_BUILDING',	'REQUIREMENTSET_TEST_ANY');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,									RequirementId)
VALUES	('P0K_ZULU_PLAYER_HAS_GOV_PLAZA_TIER_1_BUILDING',	'PLAYER_HAS_GOV_BUILDING_TALL_REQUIREMENT'),
		('P0K_ZULU_PLAYER_HAS_GOV_PLAZA_TIER_1_BUILDING',	'PLAYER_HAS_GOV_BUILDING_WIDE_REQUIREMENT'),
		('P0K_ZULU_PLAYER_HAS_GOV_PLAZA_TIER_1_BUILDING',	'PLAYER_HAS_GOV_BUILDING_CONQUEST_REQUIREMENT'),	
		('P0K_ZULU_PLAYER_HAS_GOV_PLAZA_TIER_2_BUILDING',	'PLAYER_HAS_GOV_BUILDING_CITYSTATES_REQUIREMENT'),
		('P0K_ZULU_PLAYER_HAS_GOV_PLAZA_TIER_2_BUILDING',	'PLAYER_HAS_GOV_BUILDING_FAITH_REQUIREMENT'),
		('P0K_ZULU_PLAYER_HAS_GOV_PLAZA_TIER_2_BUILDING',	'PLAYER_HAS_GOV_BUILDING_SPIES_REQUIREMENT'),	
		('P0K_ZULU_PLAYER_HAS_GOV_PLAZA_TIER_3_BUILDING',	'PLAYER_HAS_GOV_BUILDING_MILITARY_REQUIREMENT'),
		('P0K_ZULU_PLAYER_HAS_GOV_PLAZA_TIER_3_BUILDING',	'PLAYER_HAS_GOV_BUILDING_SCIENCE_REQUIREMENT'),
		('P0K_ZULU_PLAYER_HAS_GOV_PLAZA_TIER_3_BUILDING',	'PLAYER_HAS_GOV_BUILDING_CULTURE_REQUIREMENT');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType,												SubjectRequirementSetId)
VALUES	('P0K_TRAIT_GOVERNMENT_PLAZA_TITLE',			'MODIFIER_PLAYER_ADJUST_GOVERNOR_POINTS',					'PLAYER_HAS_GOVERNMENT_DISTRICT_REQUIREMENTS'),
		('P0K_TRAIT_GOVERNMENT_PLAZA_TIER_1_TITLE',		'MODIFIER_PLAYER_ADJUST_GOVERNOR_POINTS',					'P0K_ZULU_PLAYER_HAS_GOV_PLAZA_TIER_1_BUILDING'),
		('P0K_TRAIT_GOVERNMENT_PLAZA_TIER_2_TITLE',		'MODIFIER_PLAYER_ADJUST_GOVERNOR_POINTS',					'P0K_ZULU_PLAYER_HAS_GOV_PLAZA_TIER_2_BUILDING'),
		('P0K_TRAIT_GOVERNMENT_PLAZA_TIER_3_TITLE',		'MODIFIER_PLAYER_ADJUST_GOVERNOR_POINTS',					'P0K_ZULU_PLAYER_HAS_GOV_PLAZA_TIER_3_BUILDING'),
		('P0K_TRAIT_GOVERNOR_EXTRA_CITY_ATTACK',		'P0K_ZULU_MODIFIER_PLAYER_CITIES_ADJUST_ATTACKS_PER_TURN',	'CITY_HAS_GOVERNOR'),
		('P0K_TRAIT_GOVERNOR_FREE_PROMOTION',			'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',					'CITY_HAS_GOVERNOR'),
		('P0K_TRAIT_GOVERNOR_FREE_PROMOTION_MODIFIER',	'MODIFIER_CITY_TRAINED_UNITS_ADJUST_GRANT_EXPERIENCE',		NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value)
VALUES	('P0K_TRAIT_GOVERNMENT_PLAZA_TITLE',			'Delta',		1),
		('P0K_TRAIT_GOVERNMENT_PLAZA_TIER_1_TITLE',		'Delta',		1),
		('P0K_TRAIT_GOVERNMENT_PLAZA_TIER_2_TITLE',		'Delta',		1),
		('P0K_TRAIT_GOVERNMENT_PLAZA_TIER_3_TITLE',		'Delta',		1),
		('P0K_TRAIT_GOVERNOR_EXTRA_CITY_ATTACK',		'Amount',		1),		
		('P0K_TRAIT_GOVERNOR_FREE_PROMOTION',			'ModifierId',	'P0K_TRAIT_GOVERNOR_FREE_PROMOTION_MODIFIER'),
		('P0K_TRAIT_GOVERNOR_FREE_PROMOTION_MODIFIER',	'Amount',		-1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,					ModifierId)
VALUES	('TRAIT_LEADER_AMABUTHO',	'P0K_TRAIT_GOVERNMENT_PLAZA_TITLE'),
		('TRAIT_LEADER_AMABUTHO',	'P0K_TRAIT_GOVERNMENT_PLAZA_TIER_1_TITLE'),
		('TRAIT_LEADER_AMABUTHO',	'P0K_TRAIT_GOVERNMENT_PLAZA_TIER_2_TITLE'),
		('TRAIT_LEADER_AMABUTHO',	'P0K_TRAIT_GOVERNMENT_PLAZA_TIER_3_TITLE'),
		('TRAIT_LEADER_AMABUTHO',	'P0K_TRAIT_GOVERNOR_EXTRA_CITY_ATTACK'),
		('TRAIT_LEADER_AMABUTHO',	'P0K_TRAIT_GOVERNOR_FREE_PROMOTION');
--=============================================================================================================
-- UNIQUE DISTRICT: IKANDA (ENHANCEMENT)
--=============================================================================================================
-- All buildings in this district provide +1 Science and +1 Culture. 
--=============================================================================================================
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,							ModifierType)
VALUES	('P0K_IKANDA_BARRACKS_SCIENCE',			'MODIFIER_BUILDING_YIELD_CHANGE'),
		('P0K_IKANDA_STABLE_SCIENCE',			'MODIFIER_BUILDING_YIELD_CHANGE'),
		('P0K_IKANDA_ARMORY_SCIENCE',			'MODIFIER_BUILDING_YIELD_CHANGE'),
		('P0K_IKANDA_MILITARY_ACADEMY_SCIENCE',	'MODIFIER_BUILDING_YIELD_CHANGE'),
		('P0K_IKANDA_BARRACKS_CULTURE',			'MODIFIER_BUILDING_YIELD_CHANGE'),
		('P0K_IKANDA_STABLE_CULTURE',			'MODIFIER_BUILDING_YIELD_CHANGE'),
		('P0K_IKANDA_ARMORY_CULTURE',			'MODIFIER_BUILDING_YIELD_CHANGE'),
		('P0K_IKANDA_MILITARY_ACADEMY_CULTURE',	'MODIFIER_BUILDING_YIELD_CHANGE');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,							Name,				Value)
VALUES	('P0K_IKANDA_BARRACKS_SCIENCE',			'BuildingType',		'BUILDING_BARRACKS'),
		('P0K_IKANDA_BARRACKS_SCIENCE',			'YieldType',		'YIELD_SCIENCE'),
		('P0K_IKANDA_BARRACKS_SCIENCE',			'Amount',			1),
		('P0K_IKANDA_STABLE_SCIENCE',			'BuildingType',		'BUILDING_STABLE'),
		('P0K_IKANDA_STABLE_SCIENCE',			'YieldType',		'YIELD_SCIENCE'),
		('P0K_IKANDA_STABLE_SCIENCE',			'Amount',			1),
		('P0K_IKANDA_ARMORY_SCIENCE',			'BuildingType',		'BUILDING_ARMORY'),
		('P0K_IKANDA_ARMORY_SCIENCE',			'YieldType',		'YIELD_SCIENCE'),
		('P0K_IKANDA_ARMORY_SCIENCE',			'Amount',			1),
		('P0K_IKANDA_MILITARY_ACADEMY_SCIENCE',	'BuildingType',		'BUILDING_MILITARY_ACADEMY'),
		('P0K_IKANDA_MILITARY_ACADEMY_SCIENCE',	'YieldType',		'YIELD_SCIENCE'),
		('P0K_IKANDA_MILITARY_ACADEMY_SCIENCE',	'Amount',			1),
		('P0K_IKANDA_BARRACKS_CULTURE',			'BuildingType',		'BUILDING_BARRACKS'),
		('P0K_IKANDA_BARRACKS_CULTURE',			'YieldType',		'YIELD_CULTURE'),
		('P0K_IKANDA_BARRACKS_CULTURE',			'Amount',			1),
		('P0K_IKANDA_STABLE_CULTURE',			'BuildingType',		'BUILDING_STABLE'),
		('P0K_IKANDA_STABLE_CULTURE',			'YieldType',		'YIELD_CULTURE'),
		('P0K_IKANDA_STABLE_CULTURE',			'Amount',			1),
		('P0K_IKANDA_ARMORY_CULTURE',			'BuildingType',		'BUILDING_ARMORY'),
		('P0K_IKANDA_ARMORY_CULTURE',			'YieldType',		'YIELD_CULTURE'),
		('P0K_IKANDA_ARMORY_CULTURE',			'Amount',			1),
		('P0K_IKANDA_MILITARY_ACADEMY_CULTURE',	'BuildingType',		'BUILDING_MILITARY_ACADEMY'),
		('P0K_IKANDA_MILITARY_ACADEMY_CULTURE',	'YieldType',		'YIELD_CULTURE'),
		('P0K_IKANDA_MILITARY_ACADEMY_CULTURE',	'Amount',			1);
---------------------------------------------------------------------------------------------------------------
-- DistrictModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DistrictModifiers
		(DistrictType,		ModifierId)
VALUES	('DISTRICT_IKANDA',	'P0K_IKANDA_BARRACKS_SCIENCE'),
		('DISTRICT_IKANDA',	'P0K_IKANDA_STABLE_SCIENCE'),
		('DISTRICT_IKANDA',	'P0K_IKANDA_ARMORY_SCIENCE'),
		('DISTRICT_IKANDA',	'P0K_IKANDA_MILITARY_ACADEMY_SCIENCE'),
		('DISTRICT_IKANDA',	'P0K_IKANDA_BARRACKS_CULTURE'),
		('DISTRICT_IKANDA',	'P0K_IKANDA_STABLE_CULTURE'),
		('DISTRICT_IKANDA',	'P0K_IKANDA_ARMORY_CULTURE'),
		('DISTRICT_IKANDA',	'P0K_IKANDA_MILITARY_ACADEMY_CULTURE');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
-- Reverting April 2021 changes
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_CIVILIZATION_DISTRICT_IKANDA';