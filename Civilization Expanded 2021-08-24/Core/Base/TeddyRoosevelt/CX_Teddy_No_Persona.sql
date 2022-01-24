--=============================================================================================================
-- CIVILIZATIONS EXPANDED: TEDDY ROOSEVELT
-- (NO PERSONA PACK)
--=============================================================================================================
-- LEADER UNIQUE ABILITY: ROOSEVELT COROLLARY (REWORK)
--=============================================================================================================
-- Each active Military Policy grants +1 Influence point per turn.
-- Specialty districts on tiles with Breathtaking Appeal provide +1 of the appropriate Great Person points.
-- Yields from Natural Wonders are doubled.
-- +5 Combat Strength when fighting on America's home continent.
-- Gain access to the Rough Rider unique unit.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,														Kind)
VALUES	('P0K_AMERICA_MODIFIER_PLAYER_DISTRICTS_ATTACH_MODIFIER',	'KIND_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- DynamicModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO DynamicModifiers
		(ModifierType,												CollectionType,					EffectType)
VALUES	('P0K_AMERICA_MODIFIER_PLAYER_DISTRICTS_ATTACH_MODIFIER',	'COLLECTION_PLAYER_DISTRICTS',	'EFFECT_ATTACH_MODIFIER');
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,												RequirementType)
VALUES	('P0K_AMERICA_REQUIRES_LEADER_IS_T_ROOSEVELT',				'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES'),
		('P0K_AMERICA_REQUIRES_PLOT_ADJACENT_TO_TORRES_DEL_PAINE',	'REQUIREMENT_PLOT_ADJACENT_FEATURE_TYPE_MATCHES');

INSERT INTO Requirements
				(RequirementId,											RequirementType)
SELECT DISTINCT 'P0K_AMERICA_REQUIRES_PLOT_HAS_' ||FeatureType,			'REQUIREMENT_PLOT_FEATURE_TYPE_MATCHES'
FROM Feature_YieldChanges WHERE FeatureType IN (SELECT FeatureType FROM Features WHERE NaturalWonder = 1);

INSERT INTO Requirements
				(RequirementId,											RequirementType)
SELECT DISTINCT 'P0K_AMERICA_REQUIRES_PLOT_ADJACENT_TO_' ||FeatureType,	'REQUIREMENT_PLOT_ADJACENT_FEATURE_TYPE_MATCHES'
FROM Feature_AdjacentYields WHERE FeatureType IN (SELECT FeatureType FROM Features WHERE NaturalWonder = 1);

INSERT INTO Requirements
				(RequirementId,											RequirementType)
SELECT DISTINCT	'P0K_AMERICA_REQUIRES_' ||TerrainType,					'REQUIREMENT_PLOT_TERRAIN_TYPE_MATCHES'
FROM Terrain_YieldChanges;
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,												Name,			Value)
VALUES	('P0K_AMERICA_REQUIRES_LEADER_IS_T_ROOSEVELT',				'LeaderType',	'LEADER_T_ROOSEVELT'),
		('P0K_AMERICA_REQUIRES_PLOT_ADJACENT_TO_TORRES_DEL_PAINE',	'FeatureType',	'FEATURE_TORRES_DEL_PAINE');

INSERT INTO RequirementArguments
				(RequirementId,											Name,			Value)
SELECT DISTINCT	'P0K_AMERICA_REQUIRES_PLOT_HAS_' ||FeatureType,			'FeatureType',	FeatureType
FROM Feature_YieldChanges WHERE FeatureType IN (SELECT FeatureType FROM Features WHERE NaturalWonder = 1);

INSERT INTO RequirementArguments
				(RequirementId,											Name,			Value)
SELECT DISTINCT	'P0K_AMERICA_REQUIRES_PLOT_ADJACENT_TO_' ||FeatureType,	'FeatureType',	FeatureType
FROM Feature_AdjacentYields WHERE FeatureType IN (SELECT FeatureType FROM Features WHERE NaturalWonder = 1);

INSERT INTO RequirementArguments
				(RequirementId,											Name,			Value)
SELECT DISTINCT 'P0K_AMERICA_REQUIRES_' ||TerrainType,					'TerrainType',	TerrainType
FROM Terrain_YieldChanges;
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,							RequirementSetType)
VALUES	('P0K_AMERICA_LEADER_IS_T_ROOSEVELT',		'REQUIREMENTSET_TEST_ALL');

INSERT INTO RequirementSets
				(RequirementSetId,								RequirementSetType)
SELECT DISTINCT	'P0K_AMERICA_PLOT_HAS_' ||FeatureType,			'REQUIREMENTSET_TEST_ALL'
FROM Feature_YieldChanges WHERE FeatureType IN (SELECT FeatureType FROM Features WHERE NaturalWonder = 1);

INSERT INTO RequirementSets
				(RequirementSetId,								RequirementSetType)
SELECT DISTINCT	'P0K_AMERICA_PLOT_ADJACENT_TO_' ||FeatureType,	'REQUIREMENTSET_TEST_ALL'
FROM Feature_AdjacentYields WHERE FeatureType IN (SELECT FeatureType FROM Features WHERE NaturalWonder = 1);

INSERT INTO RequirementSets
				(RequirementSetId,								RequirementSetType)
SELECT DISTINCT	'P0K_AMERICA_TORRES_DEL_PAINE_' ||TerrainType,	'REQUIREMENTSET_TEST_ALL'
FROM Terrain_YieldChanges;
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,							RequirementId)
VALUES	('P0K_AMERICA_LEADER_IS_T_ROOSEVELT',		'P0K_AMERICA_REQUIRES_LEADER_IS_T_ROOSEVELT');

INSERT INTO RequirementSetRequirements
				(RequirementSetId,								RequirementId)
SELECT DISTINCT	'P0K_AMERICA_PLOT_HAS_' ||FeatureType,			'P0K_AMERICA_REQUIRES_PLOT_HAS_' ||FeatureType
FROM Feature_YieldChanges WHERE FeatureType IN (SELECT FeatureType FROM Features WHERE NaturalWonder = 1);

INSERT INTO RequirementSetRequirements
				(RequirementSetId,								RequirementId)
SELECT DISTINCT	'P0K_AMERICA_PLOT_ADJACENT_TO_' ||FeatureType,	'P0K_AMERICA_REQUIRES_PLOT_ADJACENT_TO_' ||FeatureType
FROM Feature_AdjacentYields WHERE FeatureType IN (SELECT FeatureType FROM Features WHERE NaturalWonder = 1);

INSERT INTO RequirementSetRequirements
				(RequirementSetId,								RequirementId)
SELECT DISTINCT	'P0K_AMERICA_TORRES_DEL_PAINE_' ||TerrainType,	'P0K_AMERICA_REQUIRES_PLOT_ADJACENT_TO_TORRES_DEL_PAINE'
FROM Terrain_YieldChanges;

INSERT INTO RequirementSetRequirements
				(RequirementSetId,								RequirementId)
SELECT DISTINCT	'P0K_AMERICA_TORRES_DEL_PAINE_' ||TerrainType,	'P0K_AMERICA_REQUIRES_' ||TerrainType
FROM Terrain_YieldChanges;
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,										ModifierType,												SubjectRequirementSetId)
VALUES	('P0K_TRAIT_INFLUENCE_POINT_PER_MILITARY_POLICY',	'MODIFIER_PLAYER_ADJUST_INFLUENCE_POINTS_PER_TURN',			'P0K_AMERICA_LEADER_IS_T_ROOSEVELT'),
		('P0K_TRAIT_BREATHTAKING_SCIENTIST_POINT',			'P0K_AMERICA_MODIFIER_PLAYER_DISTRICTS_ATTACH_MODIFIER',	'DISTRICT_IS_CAMPUS'),
		('P0K_TRAIT_BREATHTAKING_SCIENTIST_POINT_MODIFIER',	'MODIFIER_PLAYER_DISTRICT_ADJUST_GREAT_PERSON_POINTS',		'PLOT_BREATHTAKING_APPEAL'),
		('P0K_TRAIT_BREATHTAKING_WRITER_POINT',				'P0K_AMERICA_MODIFIER_PLAYER_DISTRICTS_ATTACH_MODIFIER',	'DISTRICT_IS_THEATER'),
		('P0K_TRAIT_BREATHTAKING_WRITER_POINT_MODIFIER',	'MODIFIER_PLAYER_DISTRICT_ADJUST_GREAT_PERSON_POINTS',		'PLOT_BREATHTAKING_APPEAL'),
		('P0K_TRAIT_BREATHTAKING_ARTIST_POINT',				'P0K_AMERICA_MODIFIER_PLAYER_DISTRICTS_ATTACH_MODIFIER',	'DISTRICT_IS_THEATER'),
		('P0K_TRAIT_BREATHTAKING_ARTIST_POINT_MODIFIER',	'MODIFIER_PLAYER_DISTRICT_ADJUST_GREAT_PERSON_POINTS',		'PLOT_BREATHTAKING_APPEAL'),
		('P0K_TRAIT_BREATHTAKING_MUSICIAN_POINT',			'P0K_AMERICA_MODIFIER_PLAYER_DISTRICTS_ATTACH_MODIFIER',	'DISTRICT_IS_THEATER'),
		('P0K_TRAIT_BREATHTAKING_MUSICIAN_POINT_MODIFIER',	'MODIFIER_PLAYER_DISTRICT_ADJUST_GREAT_PERSON_POINTS',		'PLOT_BREATHTAKING_APPEAL'),
		('P0K_TRAIT_BREATHTAKING_PROPHET_POINT',			'P0K_AMERICA_MODIFIER_PLAYER_DISTRICTS_ATTACH_MODIFIER',	'DISTRICT_IS_HOLY_SITE'),
		('P0K_TRAIT_BREATHTAKING_PROPHET_POINT_MODIFIER',	'MODIFIER_PLAYER_DISTRICT_ADJUST_GREAT_PERSON_POINTS',		'PLOT_BREATHTAKING_APPEAL'),
		('P0K_TRAIT_BREATHTAKING_GENERAL_POINT',			'P0K_AMERICA_MODIFIER_PLAYER_DISTRICTS_ATTACH_MODIFIER',	'DISTRICT_IS_ENCAMPMENT'),
		('P0K_TRAIT_BREATHTAKING_GENERAL_POINT_MODIFIER',	'MODIFIER_PLAYER_DISTRICT_ADJUST_GREAT_PERSON_POINTS',		'PLOT_BREATHTAKING_APPEAL'),
		('P0K_TRAIT_BREATHTAKING_ENGINEER_POINT',			'P0K_AMERICA_MODIFIER_PLAYER_DISTRICTS_ATTACH_MODIFIER',	'DISTRICT_IS_INDUSTRIAL_ZONE'),
		('P0K_TRAIT_BREATHTAKING_ENGINEER_POINT_MODIFIER',	'MODIFIER_PLAYER_DISTRICT_ADJUST_GREAT_PERSON_POINTS',		'PLOT_BREATHTAKING_APPEAL'),
		('P0K_TRAIT_BREATHTAKING_MERCHANT_POINT',			'P0K_AMERICA_MODIFIER_PLAYER_DISTRICTS_ATTACH_MODIFIER',	'DISTRICT_IS_COMMERCIAL_HUB'),
		('P0K_TRAIT_BREATHTAKING_MERCHANT_POINT_MODIFIER',	'MODIFIER_PLAYER_DISTRICT_ADJUST_GREAT_PERSON_POINTS',		'PLOT_BREATHTAKING_APPEAL');

INSERT INTO Modifiers
				(ModifierId,													ModifierType,							SubjectRequirementSetId)
SELECT DISTINCT	'P0K_TRAIT_' ||FeatureType|| '_DOUBLE_' ||YieldType,			'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',	'P0K_AMERICA_PLOT_HAS_' ||FeatureType
FROM Feature_YieldChanges WHERE FeatureType IN (SELECT DISTINCT FeatureType FROM Features WHERE NaturalWonder = 1);

INSERT INTO Modifiers
				(ModifierId,													ModifierType,							SubjectRequirementSetId)
SELECT DISTINCT	'P0K_TRAIT_ADJACENT' ||FeatureType|| '_DOUBLE_' ||YieldType,	'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',	'P0K_AMERICA_PLOT_ADJACENT_TO_' ||FeatureType
FROM Feature_AdjacentYields WHERE FeatureType IN (SELECT DISTINCT FeatureType FROM Features WHERE NaturalWonder = 1);

INSERT INTO Modifiers
				(ModifierId,													ModifierType,							SubjectRequirementSetId)
SELECT DISTINCT	'P0K_TRAIT_TORRES_DOUBLE_' ||TerrainType|| '_' ||YieldType,		'MODIFIER_PLAYER_ADJUST_PLOT_YIELD',	'P0K_AMERICA_TORRES_DEL_PAINE_' ||TerrainType
FROM Terrain_YieldChanges;

-- p0kiehl's Better Aqueducts compatibility
INSERT INTO Modifiers
		(ModifierId,										ModifierType,												SubjectRequirementSetId)
SELECT 'P0K_TRAIT_BREATHTAKING_AQUEDUCT_POINT',				'P0K_AMERICA_MODIFIER_PLAYER_DISTRICTS_ATTACH_MODIFIER',	'DISTRICT_IS_AQUEDUCT'
WHERE EXISTS (SELECT * FROM District_GreatPersonPoints WHERE DistrictType = 'DISTRICT_AQUEDUCT');

INSERT INTO Modifiers
		(ModifierId,										ModifierType,												SubjectRequirementSetId)
SELECT 'P0K_TRAIT_BREATHTAKING_AQUEDUCT_POINT_MODIFIER',	'MODIFIER_PLAYER_DISTRICT_ADJUST_GREAT_PERSON_POINTS',		'PLOT_BREATHTAKING_APPEAL'
WHERE EXISTS (SELECT * FROM District_GreatPersonPoints WHERE DistrictType = 'DISTRICT_AQUEDUCT');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,					Value)
VALUES	('P0K_TRAIT_INFLUENCE_POINT_PER_MILITARY_POLICY',	'Amount',				1),
		('P0K_TRAIT_BREATHTAKING_SCIENTIST_POINT',			'ModifierId',			'P0K_TRAIT_BREATHTAKING_SCIENTIST_POINT_MODIFIER'),
		('P0K_TRAIT_BREATHTAKING_SCIENTIST_POINT_MODIFIER',	'GreatPersonClassType',	'GREAT_PERSON_CLASS_SCIENTIST'),
		('P0K_TRAIT_BREATHTAKING_SCIENTIST_POINT_MODIFIER',	'Amount',				1),
		('P0K_TRAIT_BREATHTAKING_WRITER_POINT',				'ModifierId',			'P0K_TRAIT_BREATHTAKING_WRITER_POINT_MODIFIER'),
		('P0K_TRAIT_BREATHTAKING_WRITER_POINT_MODIFIER',	'GreatPersonClassType',	'GREAT_PERSON_CLASS_WRITER'),
		('P0K_TRAIT_BREATHTAKING_WRITER_POINT_MODIFIER',	'Amount',				1),
		('P0K_TRAIT_BREATHTAKING_ARTIST_POINT',				'ModifierId',			'P0K_TRAIT_BREATHTAKING_ARTIST_POINT_MODIFIER'),
		('P0K_TRAIT_BREATHTAKING_ARTIST_POINT_MODIFIER',	'GreatPersonClassType',	'GREAT_PERSON_CLASS_ARTIST'),
		('P0K_TRAIT_BREATHTAKING_ARTIST_POINT_MODIFIER',	'Amount',				1),
		('P0K_TRAIT_BREATHTAKING_MUSICIAN_POINT',			'ModifierId',			'P0K_TRAIT_BREATHTAKING_MUSICIAN_POINT_MODIFIER'),
		('P0K_TRAIT_BREATHTAKING_MUSICIAN_POINT_MODIFIER',	'GreatPersonClassType',	'GREAT_PERSON_CLASS_MUSICIAN'),
		('P0K_TRAIT_BREATHTAKING_MUSICIAN_POINT_MODIFIER',	'Amount',				1),
		('P0K_TRAIT_BREATHTAKING_PROPHET_POINT',			'ModifierId',			'P0K_TRAIT_BREATHTAKING_PROPHET_POINT_MODIFIER'),
		('P0K_TRAIT_BREATHTAKING_PROPHET_POINT_MODIFIER',	'GreatPersonClassType',	'GREAT_PERSON_CLASS_PROPHET'),
		('P0K_TRAIT_BREATHTAKING_PROPHET_POINT_MODIFIER',	'Amount',				1),
		('P0K_TRAIT_BREATHTAKING_GENERAL_POINT',			'ModifierId',			'P0K_TRAIT_BREATHTAKING_GENERAL_POINT_MODIFIER'),
		('P0K_TRAIT_BREATHTAKING_GENERAL_POINT_MODIFIER',	'GreatPersonClassType',	'GREAT_PERSON_CLASS_GENERAL'),
		('P0K_TRAIT_BREATHTAKING_GENERAL_POINT_MODIFIER',	'Amount',				1),
		('P0K_TRAIT_BREATHTAKING_ENGINEER_POINT',			'ModifierId',			'P0K_TRAIT_BREATHTAKING_ENGINEER_POINT_MODIFIER'),
		('P0K_TRAIT_BREATHTAKING_ENGINEER_POINT_MODIFIER',	'GreatPersonClassType',	'GREAT_PERSON_CLASS_ENGINEER'),
		('P0K_TRAIT_BREATHTAKING_ENGINEER_POINT_MODIFIER',	'Amount',				1),
		('P0K_TRAIT_BREATHTAKING_MERCHANT_POINT',			'ModifierId',			'P0K_TRAIT_BREATHTAKING_MERCHANT_POINT_MODIFIER'),
		('P0K_TRAIT_BREATHTAKING_MERCHANT_POINT_MODIFIER',	'GreatPersonClassType',	'GREAT_PERSON_CLASS_MERCHANT'),
		('P0K_TRAIT_BREATHTAKING_MERCHANT_POINT_MODIFIER',	'Amount',				1);

INSERT INTO ModifierArguments
		(ModifierId,															Name,			Value)
SELECT DISTINCT	'P0K_TRAIT_' ||FeatureType|| '_DOUBLE_' ||YieldType,			'YieldType',	YieldType
FROM Feature_YieldChanges WHERE FeatureType IN (SELECT DISTINCT FeatureType FROM Features WHERE NaturalWonder = 1);

INSERT INTO ModifierArguments
		(ModifierId,															Name,			Value)
SELECT DISTINCT	'P0K_TRAIT_' ||FeatureType|| '_DOUBLE_' ||YieldType,			'Amount',		YieldChange
FROM Feature_YieldChanges WHERE FeatureType IN (SELECT DISTINCT FeatureType FROM Features WHERE NaturalWonder = 1);

INSERT INTO ModifierArguments
		(ModifierId,															Name,			Value)
SELECT DISTINCT	'P0K_TRAIT_ADJACENT' ||FeatureType|| '_DOUBLE_' ||YieldType,	'YieldType',	YieldType
FROM Feature_AdjacentYields WHERE FeatureType IN (SELECT DISTINCT FeatureType FROM Features WHERE NaturalWonder = 1);

INSERT INTO ModifierArguments
		(ModifierId,															Name,			Value)
SELECT DISTINCT	'P0K_TRAIT_ADJACENT' ||FeatureType|| '_DOUBLE_' ||YieldType,	'Amount',		YieldChange
FROM Feature_AdjacentYields WHERE FeatureType IN (SELECT DISTINCT FeatureType FROM Features WHERE NaturalWonder = 1);

INSERT INTO ModifierArguments
		(ModifierId,														Name,			Value)
SELECT DISTINCT	'P0K_TRAIT_TORRES_DOUBLE_' ||TerrainType|| '_' ||YieldType,	'YieldType',	YieldType
FROM Terrain_YieldChanges;

INSERT INTO ModifierArguments
		(ModifierId,														Name,			Value)
SELECT DISTINCT	'P0K_TRAIT_TORRES_DOUBLE_' ||TerrainType|| '_' ||YieldType,	'Amount',		YieldChange
FROM Terrain_YieldChanges;

-- p0kiehl's Better Aqueducts compatibility
INSERT INTO ModifierArguments
		(ModifierId,										Name,					Value)
SELECT	'P0K_TRAIT_BREATHTAKING_AQUEDUCT_POINT',			'ModifierId',			'P0K_TRAIT_BREATHTAKING_AQUEDUCT_POINT_MODIFIER'
WHERE EXISTS (SELECT * FROM District_GreatPersonPoints WHERE DistrictType = 'DISTRICT_AQUEDUCT');

INSERT INTO ModifierArguments
		(ModifierId,										Name,					Value)
SELECT	'P0K_TRAIT_BREATHTAKING_AQUEDUCT_POINT_MODIFIER',	'GreatPersonClassType',	'GREAT_PERSON_CLASS_ENGINEER'
WHERE EXISTS (SELECT * FROM District_GreatPersonPoints WHERE DistrictType = 'DISTRICT_AQUEDUCT');

INSERT INTO ModifierArguments
		(ModifierId,										Name,					Value)
SELECT	'P0K_TRAIT_BREATHTAKING_AQUEDUCT_POINT_MODIFIER',	'Amount',				1
WHERE EXISTS (SELECT * FROM District_GreatPersonPoints WHERE DistrictType = 'DISTRICT_AQUEDUCT');
---------------------------------------------------------------------------------------------------------------
-- PolicyModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO PolicyModifiers
		(PolicyType,	ModifierId)
SELECT	PolicyType,		'P0K_TRAIT_INFLUENCE_POINT_PER_MILITARY_POLICY'
FROM Policies WHERE GovernmentSlotType = 'SLOT_MILITARY';
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers WHERE TraitType = 'TRAIT_LEADER_ROOSEVELT_COROLLARY' AND ModifierId = 'TRAIT_NATIONAL_PARK_APPEAL_BONUS';

INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
VALUES	('TRAIT_LEADER_ROOSEVELT_COROLLARY',	'P0K_TRAIT_BREATHTAKING_SCIENTIST_POINT'),
		('TRAIT_LEADER_ROOSEVELT_COROLLARY',	'P0K_TRAIT_BREATHTAKING_WRITER_POINT'),
		('TRAIT_LEADER_ROOSEVELT_COROLLARY',	'P0K_TRAIT_BREATHTAKING_ARTIST_POINT'),
		('TRAIT_LEADER_ROOSEVELT_COROLLARY',	'P0K_TRAIT_BREATHTAKING_MUSICIAN_POINT'),
		('TRAIT_LEADER_ROOSEVELT_COROLLARY',	'P0K_TRAIT_BREATHTAKING_PROPHET_POINT'),
		('TRAIT_LEADER_ROOSEVELT_COROLLARY',	'P0K_TRAIT_BREATHTAKING_GENERAL_POINT'),
		('TRAIT_LEADER_ROOSEVELT_COROLLARY',	'P0K_TRAIT_BREATHTAKING_ENGINEER_POINT'),
		('TRAIT_LEADER_ROOSEVELT_COROLLARY',	'P0K_TRAIT_BREATHTAKING_MERCHANT_POINT');

INSERT INTO TraitModifiers
				(TraitType,							ModifierId)
SELECT DISTINCT 'TRAIT_LEADER_ROOSEVELT_COROLLARY',	'P0K_TRAIT_' ||FeatureType|| '_DOUBLE_' ||YieldType
FROM Feature_YieldChanges WHERE FeatureType IN (SELECT DISTINCT FeatureType FROM Features WHERE NaturalWonder = 1);

INSERT INTO TraitModifiers
				(TraitType,							ModifierId)
SELECT DISTINCT 'TRAIT_LEADER_ROOSEVELT_COROLLARY',	'P0K_TRAIT_ADJACENT' ||FeatureType|| '_DOUBLE_' ||YieldType
FROM Feature_AdjacentYields WHERE FeatureType IN (SELECT DISTINCT FeatureType FROM Features WHERE NaturalWonder = 1);

INSERT INTO TraitModifiers
				(TraitType,							ModifierId)
SELECT DISTINCT 'TRAIT_LEADER_ROOSEVELT_COROLLARY',	'P0K_TRAIT_TORRES_DOUBLE_' ||TerrainType|| '_' ||YieldType
FROM Terrain_YieldChanges;

-- p0kiehl's Better Aqueducts compatibility
INSERT INTO TraitModifiers
		(TraitType,								ModifierId)
SELECT	'TRAIT_LEADER_ROOSEVELT_COROLLARY',		'P0K_TRAIT_BREATHTAKING_AQUEDUCT_POINT'
WHERE EXISTS (SELECT * FROM District_GreatPersonPoints WHERE DistrictType = 'DISTRICT_AQUEDUCT');