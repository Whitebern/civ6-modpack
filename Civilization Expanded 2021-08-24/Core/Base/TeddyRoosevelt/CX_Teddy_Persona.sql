--=============================================================================================================
-- CIVILIZATIONS EXPANDED: TEDDY ROOSEVELT LEADER ABILITIES 
-- (PERSONA PACK + ETHIOPIA DLC ACTIVATED)
--=============================================================================================================
-- ROUGH RIDER TEDDY
--=============================================================================================================
-- LEADER UNIQUE ABILITY: ROOSEVELT COROLLARY (ENHANCEMENT)
--=============================================================================================================
-- +25% Production to Encampment buildings and Harbor buildings.
-- +4 Gold, +2 Science, and +2 Culture for each City-State you are suzerain of.
--=============================================================================================================
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,									ModifierType)
VALUES	('P0K_TRAIT_TEDDY_ENCAMPMENT_BUILDING_BOOST',	'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION'),			
		('P0K_TRAIT_TEDDY_HARBOR_BUILDING_BOOST',		'MODIFIER_PLAYER_CITIES_ADJUST_BUILDING_PRODUCTION'),			
		('P0K_TRAIT_TRIBUTARY_GOLD',					'MODIFIER_PLAYER_ADJUST_YIELD_CHANGE_PER_TRIBUTARY'),	
		('P0K_TRAIT_TRIBUTARY_SCIENCE',					'MODIFIER_PLAYER_ADJUST_YIELD_CHANGE_PER_TRIBUTARY'),	
		('P0K_TRAIT_TRIBUTARY_CULTURE',					'MODIFIER_PLAYER_ADJUST_YIELD_CHANGE_PER_TRIBUTARY');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments 
		(ModifierId,									Name,			Value) 
VALUES	('P0K_TRAIT_TEDDY_ENCAMPMENT_BUILDING_BOOST',	'DistrictType',	'DISTRICT_ENCAMPMENT'),
		('P0K_TRAIT_TEDDY_ENCAMPMENT_BUILDING_BOOST',	'Amount',		25),
		('P0K_TRAIT_TEDDY_HARBOR_BUILDING_BOOST',		'DistrictType',	'DISTRICT_HARBOR'),
		('P0K_TRAIT_TEDDY_HARBOR_BUILDING_BOOST',		'Amount',		25),
		('P0K_TRAIT_TRIBUTARY_GOLD',					'YieldType',	'YIELD_GOLD'),
		('P0K_TRAIT_TRIBUTARY_GOLD',					'Amount',		4),
		('P0K_TRAIT_TRIBUTARY_SCIENCE',					'YieldType',	'YIELD_SCIENCE'),
		('P0K_TRAIT_TRIBUTARY_SCIENCE',					'Amount',		2),
		('P0K_TRAIT_TRIBUTARY_CULTURE',					'YieldType',	'YIELD_CULTURE'),
		('P0K_TRAIT_TRIBUTARY_CULTURE',					'Amount',		2);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers 
		(TraitType,								ModifierId) 
VALUES	('TRAIT_LEADER_ROOSEVELT_COROLLARY',	'P0K_TRAIT_TEDDY_ENCAMPMENT_BUILDING_BOOST'),
		('TRAIT_LEADER_ROOSEVELT_COROLLARY',	'P0K_TRAIT_TEDDY_HARBOR_BUILDING_BOOST'),
		('TRAIT_LEADER_ROOSEVELT_COROLLARY',	'P0K_TRAIT_TRIBUTARY_GOLD'),
		('TRAIT_LEADER_ROOSEVELT_COROLLARY',	'P0K_TRAIT_TRIBUTARY_SCIENCE'),
		('TRAIT_LEADER_ROOSEVELT_COROLLARY',	'P0K_TRAIT_TRIBUTARY_CULTURE');
--=============================================================================================================
-- BULL MOOSE TEDDY
--=============================================================================================================
-- LEADER UNIQUE ABILITY: ANTIQUITIES AND PARKS (REWORK)
--=============================================================================================================
-- Builders trained in cities with a Natural Wonder gain +2 charges.
-- +1 Science and +1 Gold from tiles with Breathtaking Appeal adjacent to a Natural Wonder, Mountain, or Reef.
-- +1 Culture and +1 Gold from tiles with Breathtaking Appeal adjacent to a World Wonder, Woods, or Marsh.
-- +1 Appeal from Marshes rather than the usual -1.
-- +1 Appeal to all tiles in cities with a National Park.
--=============================================================================================================
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,									RequirementType)
SELECT	'P0K_AMERICA_REQUIRES_CITY_HAS_' ||FeatureType,	'REQUIREMENT_CITY_HAS_FEATURE'
FROM Features WHERE NaturalWonder = 1;

INSERT INTO Requirements
		(RequirementId,											RequirementType)
VALUES	('P0K_AMERICA_REQUIRES_PLOT_ADJACENT_TO_REEF',			'REQUIREMENT_PLOT_ADJACENT_FEATURE_TYPE_MATCHES'),
		('P0K_AMERICA_REQUIRES_PLOT_ADJACENT_TO_MARSH',			'REQUIREMENT_PLOT_ADJACENT_FEATURE_TYPE_MATCHES'),
		('P0K_AMERICA_ADJACENT_SCIENCE_FEATURES_MET',			'REQUIREMENT_REQUIREMENTSET_IS_MET'),
		('P0K_AMERICA_ADJACENT_CULTURE_FEATURES_MET',			'REQUIREMENT_REQUIREMENTSET_IS_MET');
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,									Name,			Value)
SELECT	'P0K_AMERICA_REQUIRES_CITY_HAS_' ||FeatureType,	'FeatureType',	FeatureType
FROM Features WHERE NaturalWonder = 1;

INSERT INTO RequirementArguments
		(RequirementId,									Name,				Value)
VALUES	('P0K_AMERICA_REQUIRES_PLOT_ADJACENT_TO_REEF',	'FeatureType',		'FEATURE_REEF'),
		('P0K_AMERICA_REQUIRES_PLOT_ADJACENT_TO_MARSH',	'FeatureType',		'FEATURE_MARSH'),
		('P0K_AMERICA_ADJACENT_SCIENCE_FEATURES_MET',	'RequirementSetId',	'P0K_AMERICA_ADJACENT_NATURAL_WONDER_MOUNTAIN_REEF'),
		('P0K_AMERICA_ADJACENT_CULTURE_FEATURES_MET',	'RequirementSetId',	'P0K_AMERICA_ADJACENT_WONDER_WOODS_MARSH');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,										RequirementSetType)
VALUES	('P0K_AMERICA_CITY_HAS_NATURAL_WONDER',					'REQUIREMENTSET_TEST_ANY'),
		('P0K_AMERICA_ADJACENT_NATURAL_WONDER_MOUNTAIN_REEF',	'REQUIREMENTSET_TEST_ANY'),
		('P0K_AMERICA_ADJACENT_WONDER_WOODS_MARSH',				'REQUIREMENTSET_TEST_ANY'),
		('P0K_AMERICA_PLOT_HAS_BREATHTAKING_SCIENCE_FEATURES',	'REQUIREMENTSET_TEST_ALL'),
		('P0K_AMERICA_PLOT_HAS_BREATHTAKING_CULTURE_FEATURES',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------					
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
SELECT	'P0K_AMERICA_CITY_HAS_NATURAL_WONDER',	'P0K_AMERICA_REQUIRES_CITY_HAS_' ||FeatureType
FROM Features WHERE NaturalWonder = 1;

INSERT INTO RequirementSetRequirements
		(RequirementSetId,										RequirementId)
VALUES	('P0K_AMERICA_ADJACENT_NATURAL_WONDER_MOUNTAIN_REEF',	'REQUIRES_PLOT_ADJACENT_TO_NATURAL_WONDER'),
		('P0K_AMERICA_ADJACENT_NATURAL_WONDER_MOUNTAIN_REEF',	'REQUIRES_PLOT_ADJACENT_TO_MOUNTAIN'),
		('P0K_AMERICA_ADJACENT_NATURAL_WONDER_MOUNTAIN_REEF',	'P0K_AMERICA_REQUIRES_PLOT_ADJACENT_TO_REEF'),
		('P0K_AMERICA_ADJACENT_WONDER_WOODS_MARSH',				'REQUIRES_PLOT_ADJACENT_TO_WONDER'),
		('P0K_AMERICA_ADJACENT_WONDER_WOODS_MARSH',				'REQUIRES_PLOT_ADJACENT_FOREST_ROOSEVELT'),
		('P0K_AMERICA_ADJACENT_WONDER_WOODS_MARSH',				'P0K_AMERICA_REQUIRES_PLOT_ADJACENT_TO_MARSH'),
		('P0K_AMERICA_PLOT_HAS_BREATHTAKING_SCIENCE_FEATURES',	'REQUIRES_PLOT_BREATHTAKING_APPEAL_ROOSEVELT'),
		('P0K_AMERICA_PLOT_HAS_BREATHTAKING_SCIENCE_FEATURES',	'P0K_AMERICA_ADJACENT_SCIENCE_FEATURES_MET'),
		('P0K_AMERICA_PLOT_HAS_BREATHTAKING_CULTURE_FEATURES',	'REQUIRES_PLOT_BREATHTAKING_APPEAL_ROOSEVELT'),
		('P0K_AMERICA_PLOT_HAS_BREATHTAKING_CULTURE_FEATURES',	'P0K_AMERICA_ADJACENT_CULTURE_FEATURES_MET');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,											ModifierType,												Permanent,	SubjectRequirementSetId)
VALUES	('P0K_TRAIT_BUILDER_CHARGES_NATURAL_WONDER',			'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',					0,			'P0K_AMERICA_CITY_HAS_NATURAL_WONDER'),
		('P0K_TRAIT_BUILDER_CHARGES_NATURAL_WONDER_MODIFIER',	'MODIFIER_SINGLE_CITY_BUILDER_CHARGES',						1,			'UNIT_IS_BUILDER'),
		('P0K_TRAIT_SCIENCE_NATURAL_WONDERS_MOUNTAINS_REEFS',	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',						0,			'P0K_AMERICA_PLOT_HAS_BREATHTAKING_SCIENCE_FEATURES'),
		('P0K_TRAIT_GOLD_NATURAL_WONDERS_MOUNTAINS_REEFS',		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',						0,			'P0K_AMERICA_PLOT_HAS_BREATHTAKING_SCIENCE_FEATURES'),
		('P0K_TRAIT_CULTURE_WONDERS_WOODS_MARSH',				'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',						0,			'P0K_AMERICA_PLOT_HAS_BREATHTAKING_CULTURE_FEATURES'),
		('P0K_TRAIT_GOLD_WONDERS_WOODS_MARSH',					'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',						0,			'P0K_AMERICA_PLOT_HAS_BREATHTAKING_CULTURE_FEATURES'),
		('P0K_TRAIT_EXTRA_APPEAL_MARSH',						'MODIFIER_PLAYER_CITIES_ADJUST_FEATURE_APPEAL_MODIFIER',	0,			NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments 
		(ModifierId,											Name,			Value) 
VALUES	('P0K_TRAIT_BUILDER_CHARGES_NATURAL_WONDER',			'ModifierId',	'P0K_TRAIT_BUILDER_CHARGES_NATURAL_WONDER_MODIFIER'),
		('P0K_TRAIT_BUILDER_CHARGES_NATURAL_WONDER_MODIFIER',	'Amount',		2),
		('P0K_TRAIT_SCIENCE_NATURAL_WONDERS_MOUNTAINS_REEFS',	'YieldType',	'YIELD_SCIENCE'),
		('P0K_TRAIT_SCIENCE_NATURAL_WONDERS_MOUNTAINS_REEFS',	'Amount',		1),
		('P0K_TRAIT_GOLD_NATURAL_WONDERS_MOUNTAINS_REEFS',		'YieldType',	'YIELD_GOLD'),
		('P0K_TRAIT_GOLD_NATURAL_WONDERS_MOUNTAINS_REEFS',		'Amount',		1),
		('P0K_TRAIT_CULTURE_WONDERS_WOODS_MARSH',				'YieldType',	'YIELD_CULTURE'),
		('P0K_TRAIT_CULTURE_WONDERS_WOODS_MARSH',				'Amount',		1),
		('P0K_TRAIT_GOLD_WONDERS_WOODS_MARSH',					'YieldType',	'YIELD_GOLD'),
		('P0K_TRAIT_GOLD_WONDERS_WOODS_MARSH',					'Amount',		1),
		('P0K_TRAIT_EXTRA_APPEAL_MARSH',						'FeatureType',	'FEATURE_MARSH'),
		('P0K_TRAIT_EXTRA_APPEAL_MARSH',						'Amount',		2);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_LEADER_ANTIQUES_AND_PARKS'
AND (ModifierId = 'TRAIT_ANTIQUES_AND_PARKS_CULTURE_FORESTS_OR_WONDERS' 
OR ModifierId = 'TRAIT_ANTIQUES_AND_PARKS_SCIENCE_NATIONAL_WONDERS_OR_MOUNTAINS');

INSERT INTO TraitModifiers 
		(TraitType,							ModifierId) 
VALUES	('TRAIT_LEADER_ANTIQUES_AND_PARKS',	'P0K_TRAIT_BUILDER_CHARGES_NATURAL_WONDER'),
		('TRAIT_LEADER_ANTIQUES_AND_PARKS',	'P0K_TRAIT_SCIENCE_NATURAL_WONDERS_MOUNTAINS_REEFS'),
		('TRAIT_LEADER_ANTIQUES_AND_PARKS',	'P0K_TRAIT_GOLD_NATURAL_WONDERS_MOUNTAINS_REEFS'),
		('TRAIT_LEADER_ANTIQUES_AND_PARKS',	'P0K_TRAIT_CULTURE_WONDERS_WOODS_MARSH'),
		('TRAIT_LEADER_ANTIQUES_AND_PARKS',	'P0K_TRAIT_GOLD_WONDERS_WOODS_MARSH'),
		('TRAIT_LEADER_ANTIQUES_AND_PARKS',	'P0K_TRAIT_EXTRA_APPEAL_MARSH');
