/* 
	Civilizations Expanded: Aztec
	Author: p0kiehl
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: LEGEND OF THE FIVE SUNS (ENHANCEMENT)
--=============================================================================================================
-- Combat victories grant Faith equal to 50% of the Combat Strength of the defeated unit. 
-- Lake tiles provide +1 Faith, +1 Food, and +1 Production.
-- Land tiles adjacent to Lakes provide +1 Food and +1 Gold.
--=============================================================================================================
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,											RequirementType,						Inverse)
VALUES	('P0K_AZTEC_REQUIRES_NOT_LAKE',							'REQUIREMENT_PLOT_IS_LAKE',				1), -- No argument.
		('P0K_AZTEC_REQUIRES_ADJACENT_TO_LAKE_REQUIREMENTS',	'REQUIREMENT_REQUIREMENTSET_IS_MET',	0);

INSERT INTO Requirements
		(RequirementId,											RequirementType)
SELECT	'P0K_AZTEC_REQUIRES_PLOT_ADJACENT_' ||FeatureType,		'REQUIREMENT_PLOT_ADJACENT_FEATURE_TYPE_MATCHES'
FROM Features WHERE Lake = 1;
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,											Name,				Value)
VALUES	('P0K_AZTEC_REQUIRES_ADJACENT_TO_LAKE_REQUIREMENTS',	'RequirementSetId',	'P0K_AZTEC_TILE_ADJACENT_TO_LAKE');

INSERT INTO RequirementArguments
		(RequirementId,										Name,			Value)
SELECT	'P0K_AZTEC_REQUIRES_PLOT_ADJACENT_' ||FeatureType,	'FeatureType',	FeatureType
FROM Features WHERE Lake = 1;
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType)
VALUES	('P0K_AZTEC_TILE_ADJACENT_TO_LAKE',			'REQUIREMENTSET_TEST_ANY'),
		('P0K_AZTEC_LAND_TILE_ADJACENT_TO_LAKE',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
VALUES	('P0K_AZTEC_TILE_ADJACENT_TO_LAKE',			'REQUIRES_PLOT_ADJACENT_TO_LAKE'),
		('P0K_AZTEC_LAND_TILE_ADJACENT_TO_LAKE',	'P0K_AZTEC_REQUIRES_NOT_LAKE'),
		('P0K_AZTEC_LAND_TILE_ADJACENT_TO_LAKE',	'P0K_AZTEC_REQUIRES_ADJACENT_TO_LAKE_REQUIREMENTS');

INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
SELECT	'P0K_AZTEC_TILE_ADJACENT_TO_LAKE',		'P0K_AZTEC_REQUIRES_PLOT_ADJACENT_' ||FeatureType
FROM Features WHERE Lake = 1;
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,							ModifierType,										SubjectRequirementSetId)
VALUES	('P0K_TRAIT_FAITH_KILLS',				'MODIFIER_PLAYER_UNITS_ADJUST_POST_COMBAT_YIELD',	NULL),
		('P0K_TRAIT_LAKE_FAITH',				'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',				'P0K_CX_PLOT_HAS_LAKE'),
		('P0K_TRAIT_LAKE_FOOD',					'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',				'P0K_CX_PLOT_HAS_LAKE'),
		('P0K_TRAIT_LAKE_PRODUCTION',			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',				'P0K_CX_PLOT_HAS_LAKE'),
		('P0K_TRAIT_LAKE_ADJACENT_LAND_FOOD',	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',				'P0K_AZTEC_LAND_TILE_ADJACENT_TO_LAKE'),
		('P0K_TRAIT_LAKE_ADJACENT_LAND_GOLD',	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',				'P0K_AZTEC_LAND_TILE_ADJACENT_TO_LAKE');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,							Name,						Value)
VALUES	('P0K_TRAIT_FAITH_KILLS',				'YieldType',				'YIELD_FAITH'),
		('P0K_TRAIT_FAITH_KILLS',				'PercentDefeatedStrength',	50),
		('P0K_TRAIT_LAKE_FAITH',				'YieldType',				'YIELD_FAITH'),
		('P0K_TRAIT_LAKE_FAITH',				'Amount',					1),
		('P0K_TRAIT_LAKE_FOOD',					'YieldType',				'YIELD_FOOD'),
		('P0K_TRAIT_LAKE_FOOD',					'Amount',					1),
		('P0K_TRAIT_LAKE_PRODUCTION',			'YieldType',				'YIELD_PRODUCTION'),
		('P0K_TRAIT_LAKE_PRODUCTION',			'Amount',					1),
		('P0K_TRAIT_LAKE_ADJACENT_LAND_FOOD',	'YieldType',				'YIELD_FOOD'),
		('P0K_TRAIT_LAKE_ADJACENT_LAND_FOOD',	'Amount',					1),
		('P0K_TRAIT_LAKE_ADJACENT_LAND_GOLD',	'YieldType',				'YIELD_GOLD'),
		('P0K_TRAIT_LAKE_ADJACENT_LAND_GOLD',	'Amount',					1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	('TRAIT_CIVILIZATION_LEGEND_FIVE_SUNS',	'P0K_TRAIT_FAITH_KILLS'),
		('TRAIT_CIVILIZATION_LEGEND_FIVE_SUNS',	'P0K_TRAIT_LAKE_FAITH'),
		('TRAIT_CIVILIZATION_LEGEND_FIVE_SUNS',	'P0K_TRAIT_LAKE_FOOD'),
		('TRAIT_CIVILIZATION_LEGEND_FIVE_SUNS',	'P0K_TRAIT_LAKE_PRODUCTION'),
		('TRAIT_CIVILIZATION_LEGEND_FIVE_SUNS',	'P0K_TRAIT_LAKE_ADJACENT_LAND_FOOD'),
		('TRAIT_CIVILIZATION_LEGEND_FIVE_SUNS',	'P0K_TRAIT_LAKE_ADJACENT_LAND_GOLD');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: GIFTS FOR THE TLATOANI (ENHANCEMENT)
--=============================================================================================================
-- Entertainment Complexes provide +3 Food and +2 Housing.
-- Ecstatic cities generate +5% Science, +5% Culture, +5% Faith, +5% Food, +5% Production, and +5% Gold.
--=============================================================================================================			
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
VALUES	('P0K_AZTEC_DISTRICT_IS_ENTERTAINMENT_COMPLEX',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
VALUES	('P0K_AZTEC_DISTRICT_IS_ENTERTAINMENT_COMPLEX',	'REQUIRES_DISTRICT_IS_ENTERTAINMENT_COMPLEX');			
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,								ModifierType,										SubjectRequirementSetId)
VALUES	('P0K_TRAIT_ENTERTAINMENT_COMPLEX_FOOD',	'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_CHANGE',	'P0K_AZTEC_DISTRICT_IS_ENTERTAINMENT_COMPLEX'),
		('P0K_TRAIT_ENTERTAINMENT_COMPLEX_HOUSING',	'MODIFIER_PLAYER_DISTRICTS_ADJUST_HOUSING',			'P0K_AZTEC_DISTRICT_IS_ENTERTAINMENT_COMPLEX'),
		('P0K_TRAIT_SCIENCE_ECSTATIC',				'MODIFIER_PLAYER_CITIES_ADJUST_HAPPINESS_YIELD',	NULL),	
		('P0K_TRAIT_CULTURE_ECSTATIC',				'MODIFIER_PLAYER_CITIES_ADJUST_HAPPINESS_YIELD',	NULL),	
		('P0K_TRAIT_FAITH_ECSTATIC',				'MODIFIER_PLAYER_CITIES_ADJUST_HAPPINESS_YIELD',	NULL),	
		('P0K_TRAIT_FOOD_ECSTATIC',					'MODIFIER_PLAYER_CITIES_ADJUST_HAPPINESS_YIELD',	NULL),	
		('P0K_TRAIT_PRODUCTION_ECSTATIC',			'MODIFIER_PLAYER_CITIES_ADJUST_HAPPINESS_YIELD',	NULL),	
		('P0K_TRAIT_GOLD_ECSTATIC',					'MODIFIER_PLAYER_CITIES_ADJUST_HAPPINESS_YIELD',	NULL);
---------------------------------------------------------------------------------------------------------------						
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,								Name,				Value)
VALUES	('P0K_TRAIT_ENTERTAINMENT_COMPLEX_FOOD',	'YieldType',		'YIELD_FOOD'),
		('P0K_TRAIT_ENTERTAINMENT_COMPLEX_FOOD',	'Amount',			3),
		('P0K_TRAIT_ENTERTAINMENT_COMPLEX_HOUSING',	'Amount',			2),
		('P0K_TRAIT_SCIENCE_ECSTATIC',				'YieldType',		'YIELD_SCIENCE'),
		('P0K_TRAIT_SCIENCE_ECSTATIC',				'HappinessType',	'HAPPINESS_ECSTATIC'),
		('P0K_TRAIT_SCIENCE_ECSTATIC',				'Amount',			5),
		('P0K_TRAIT_CULTURE_ECSTATIC',				'YieldType',		'YIELD_CULTURE'),
		('P0K_TRAIT_CULTURE_ECSTATIC',				'HappinessType',	'HAPPINESS_ECSTATIC'),
		('P0K_TRAIT_CULTURE_ECSTATIC',				'Amount',			5),
		('P0K_TRAIT_FAITH_ECSTATIC',				'YieldType',		'YIELD_FAITH'),
		('P0K_TRAIT_FAITH_ECSTATIC',				'HappinessType',	'HAPPINESS_ECSTATIC'),
		('P0K_TRAIT_FAITH_ECSTATIC',				'Amount',			5),
		('P0K_TRAIT_FOOD_ECSTATIC',					'YieldType',		'YIELD_FOOD'),
		('P0K_TRAIT_FOOD_ECSTATIC',					'HappinessType',	'HAPPINESS_ECSTATIC'),
		('P0K_TRAIT_FOOD_ECSTATIC',					'Amount',			5),
		('P0K_TRAIT_PRODUCTION_ECSTATIC',			'YieldType',		'YIELD_PRODUCTION'),
		('P0K_TRAIT_PRODUCTION_ECSTATIC',			'HappinessType',	'HAPPINESS_ECSTATIC'),
		('P0K_TRAIT_PRODUCTION_ECSTATIC',			'Amount',			5),
		('P0K_TRAIT_GOLD_ECSTATIC',					'YieldType',		'YIELD_GOLD'),
		('P0K_TRAIT_GOLD_ECSTATIC',					'HappinessType',	'HAPPINESS_ECSTATIC'),
		('P0K_TRAIT_GOLD_ECSTATIC',					'Amount',			5);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
VALUES	('TRAIT_LEADER_GIFTS_FOR_TLATOANI',	'P0K_TRAIT_ENTERTAINMENT_COMPLEX_FOOD'),
		('TRAIT_LEADER_GIFTS_FOR_TLATOANI',	'P0K_TRAIT_ENTERTAINMENT_COMPLEX_HOUSING'),
		('TRAIT_LEADER_GIFTS_FOR_TLATOANI',	'P0K_TRAIT_SCIENCE_ECSTATIC'),
		('TRAIT_LEADER_GIFTS_FOR_TLATOANI',	'P0K_TRAIT_FOOD_ECSTATIC'),
		('TRAIT_LEADER_GIFTS_FOR_TLATOANI',	'P0K_TRAIT_CULTURE_ECSTATIC'),
		('TRAIT_LEADER_GIFTS_FOR_TLATOANI',	'P0K_TRAIT_FAITH_ECSTATIC'),
		('TRAIT_LEADER_GIFTS_FOR_TLATOANI',	'P0K_TRAIT_PRODUCTION_ECSTATIC'),
		('TRAIT_LEADER_GIFTS_FOR_TLATOANI',	'P0K_TRAIT_GOLD_ECSTATIC');
--=============================================================================================================
-- UNIQUE BUILDING: TLACHTLI (ENHANCEMENT)
--=============================================================================================================
-- +1 Food, +1 Production, and +1 Culture.
-- Grants the ability to buy land units with Faith in this city.
--=============================================================================================================						
-- Building_YieldChanges
---------------------------------------------------------------------------------------------------------------				
INSERT INTO Building_YieldChanges
		(BuildingType,			YieldType,			YieldChange)
VALUES	('BUILDING_TLACHTLI',	'YIELD_FOOD',		1),
		('BUILDING_TLACHTLI',	'YIELD_PRODUCTION',	1);

-- Modifying April 2021 changes
UPDATE	Building_YieldChanges
SET		YieldChange = 1
WHERE	BuildingType = 'BUILDING_TLACHTLI'
AND		YieldType = 'YIELD_CULTURE';
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType)
VALUES	('P0K_TLACHTLI_FAITH_PURCHASE_ANTI_CAVALRY',	'MODIFIER_CITY_ENABLE_UNIT_FAITH_PURCHASE'),
		('P0K_TLACHTLI_FAITH_PURCHASE_HEAVY_CAVALRY',	'MODIFIER_CITY_ENABLE_UNIT_FAITH_PURCHASE'),
		('P0K_TLACHTLI_FAITH_PURCHASE_HEAVY_CHARIOT',	'MODIFIER_CITY_ENABLE_UNIT_FAITH_PURCHASE'),
		('P0K_TLACHTLI_FAITH_PURCHASE_LIGHT_CAVALRY',	'MODIFIER_CITY_ENABLE_UNIT_FAITH_PURCHASE'),
		('P0K_TLACHTLI_FAITH_PURCHASE_LIGHT_CHARIOT',	'MODIFIER_CITY_ENABLE_UNIT_FAITH_PURCHASE'),
		('P0K_TLACHTLI_FAITH_PURCHASE_MELEE',			'MODIFIER_CITY_ENABLE_UNIT_FAITH_PURCHASE'),
		('P0K_TLACHTLI_FAITH_PURCHASE_RANGED',			'MODIFIER_CITY_ENABLE_UNIT_FAITH_PURCHASE'),
		('P0K_TLACHTLI_FAITH_PURCHASE_RANGED_CAVALRY',	'MODIFIER_CITY_ENABLE_UNIT_FAITH_PURCHASE'),
		('P0K_TLACHTLI_FAITH_PURCHASE_RECON',			'MODIFIER_CITY_ENABLE_UNIT_FAITH_PURCHASE'),
		('P0K_TLACHTLI_FAITH_PURCHASE_SIEGE',			'MODIFIER_CITY_ENABLE_UNIT_FAITH_PURCHASE');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,			Value)
VALUES	('P0K_TLACHTLI_FAITH_PURCHASE_ANTI_CAVALRY',	'Tag',	'CLASS_ANTI_CAVALRY'),
		('P0K_TLACHTLI_FAITH_PURCHASE_HEAVY_CAVALRY',	'Tag',	'CLASS_HEAVY_CAVALRY'),
		('P0K_TLACHTLI_FAITH_PURCHASE_HEAVY_CHARIOT',	'Tag',	'CLASS_HEAVY_CHARIOT'),
		('P0K_TLACHTLI_FAITH_PURCHASE_LIGHT_CAVALRY',	'Tag',	'CLASS_LIGHT_CAVALRY'),
		('P0K_TLACHTLI_FAITH_PURCHASE_LIGHT_CHARIOT',	'Tag',	'CLASS_LIGHT_CHARIOT'),
		('P0K_TLACHTLI_FAITH_PURCHASE_MELEE',			'Tag',	'CLASS_MELEE'),
		('P0K_TLACHTLI_FAITH_PURCHASE_RANGED',			'Tag',	'CLASS_RANGED'),
		('P0K_TLACHTLI_FAITH_PURCHASE_RANGED_CAVALRY',	'Tag',	'CLASS_RANGED_CAVALRY'),
		('P0K_TLACHTLI_FAITH_PURCHASE_RECON',			'Tag',	'CLASS_RECON'),
		('P0K_TLACHTLI_FAITH_PURCHASE_SIEGE',			'Tag',	'CLASS_SIEGE');
---------------------------------------------------------------------------------------------------------------
-- BuildingModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO BuildingModifiers
		(BuildingType,			ModifierId)
VALUES	('BUILDING_TLACHTLI',	'P0K_TLACHTLI_FAITH_PURCHASE_ANTI_CAVALRY'),
		('BUILDING_TLACHTLI',	'P0K_TLACHTLI_FAITH_PURCHASE_HEAVY_CAVALRY'),
		('BUILDING_TLACHTLI',	'P0K_TLACHTLI_FAITH_PURCHASE_HEAVY_CHARIOT'),
		('BUILDING_TLACHTLI',	'P0K_TLACHTLI_FAITH_PURCHASE_LIGHT_CAVALRY'),
		('BUILDING_TLACHTLI',	'P0K_TLACHTLI_FAITH_PURCHASE_LIGHT_CHARIOT'),
		('BUILDING_TLACHTLI',	'P0K_TLACHTLI_FAITH_PURCHASE_MELEE'),
		('BUILDING_TLACHTLI',	'P0K_TLACHTLI_FAITH_PURCHASE_RANGED'),
		('BUILDING_TLACHTLI',	'P0K_TLACHTLI_FAITH_PURCHASE_RANGED_CAVALRY'),
		('BUILDING_TLACHTLI',	'P0K_TLACHTLI_FAITH_PURCHASE_RECON'),
		('BUILDING_TLACHTLI',	'P0K_TLACHTLI_FAITH_PURCHASE_SIEGE');