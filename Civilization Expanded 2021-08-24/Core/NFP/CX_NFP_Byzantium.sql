--============================================================================================================= 
-- CIVILIZATIONS EXPANDED: BYZANTIUM
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: TAXIS (ENHANCEMENT)
--=============================================================================================================
-- +100% Great Prophet points (remove +1 GPP from Holy Sites).
-- (Change +1 Great Prophet point to all cities instead of just Holy Sites).
-- +1 Culture and +1 Faith for each city following Byzantium's Religion.
--=============================================================================================================
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,												ModifierType)						
VALUES	('P0K_TRAIT_DOUBLE_PROPHET_POINTS',							'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS_PERCENT'),
		('P0K_TRAIT_CULTURE_PER_FOREIGN_CITY_FOLLOWING_RELIGION',	'MODIFIER_PLAYER_RELIGION_ADD_PLAYER_BELIEF_YIELD'),	
		('P0K_TRAIT_FAITH_PER_FOREIGN_CITY_FOLLOWING_RELIGION',		'MODIFIER_PLAYER_RELIGION_ADD_PLAYER_BELIEF_YIELD');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,												Name,					Value)
VALUES	('P0K_TRAIT_DOUBLE_PROPHET_POINTS',							'GreatPersonClassType',	'GREAT_PERSON_CLASS_PROPHET'),
		('P0K_TRAIT_DOUBLE_PROPHET_POINTS',							'Amount',				100),
		('P0K_TRAIT_CULTURE_PER_FOREIGN_CITY_FOLLOWING_RELIGION',	'BeliefYieldType',		'BELIEF_YIELD_PER_CITY'),
		('P0K_TRAIT_CULTURE_PER_FOREIGN_CITY_FOLLOWING_RELIGION',	'YieldType',			'YIELD_CULTURE'),
		('P0K_TRAIT_CULTURE_PER_FOREIGN_CITY_FOLLOWING_RELIGION',	'Amount',				1),
		('P0K_TRAIT_CULTURE_PER_FOREIGN_CITY_FOLLOWING_RELIGION',	'PerXItems',			1),
		('P0K_TRAIT_FAITH_PER_FOREIGN_CITY_FOLLOWING_RELIGION',		'BeliefYieldType',		'BELIEF_YIELD_PER_CITY'),
		('P0K_TRAIT_FAITH_PER_FOREIGN_CITY_FOLLOWING_RELIGION',		'YieldType',			'YIELD_FAITH'),
		('P0K_TRAIT_FAITH_PER_FOREIGN_CITY_FOLLOWING_RELIGION',		'Amount',				1),
		('P0K_TRAIT_FAITH_PER_FOREIGN_CITY_FOLLOWING_RELIGION',		'PerXItems',			1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
DELETE FROM TraitModifiers
WHERE		TraitType = 'TRAIT_CIVILIZATION_BYZANTIUM'
AND			ModifierId = 'BYZANTIUM_GREATPROPHETPOINTS';

INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
VALUES	('TRAIT_CIVILIZATION_BYZANTIUM',	'P0K_TRAIT_DOUBLE_PROPHET_POINTS'),
		('TRAIT_CIVILIZATION_BYZANTIUM',	'P0K_TRAIT_CULTURE_PER_FOREIGN_CITY_FOLLOWING_RELIGION'),
		('TRAIT_CIVILIZATION_BYZANTIUM',	'P0K_TRAIT_FAITH_PER_FOREIGN_CITY_FOLLOWING_RELIGION');
--=============================================================================================================
-- LEADER UNIQUE ABILITY: PORPHYROGENNETOS (ENHANCEMENT)
--=============================================================================================================
-- Holy Sites provide Gold equal to their Faith adjacency bonus.
-- Military units trained in cities with a Worship Building receive a free Promotion.
--=============================================================================================================
-- Types
---------------------------------------------------------------------------------------------------------------
INSERT INTO Types
		(Type,										Kind)
VALUES	('P0K_BYZANTIUM_ABILITY_PORPHYROGENNETOS',	'KIND_ABILITY'); -- ability is actually functionless. Effect granted via traitmodifier. 
---------------------------------------------------------------------------------------------------------------
-- TypeTags
---------------------------------------------------------------------------------------------------------------
INSERT INTO TypeTags
		(Type,										Tag)
VALUES	('P0K_BYZANTIUM_ABILITY_PORPHYROGENNETOS',	'CLASS_ALL_COMBAT_UNITS');
---------------------------------------------------------------------------------------------------------------
-- UnitAbilities
---------------------------------------------------------------------------------------------------------------
INSERT INTO UnitAbilities
		(UnitAbilityType,							Name,												Description,												Inactive)
VALUES	('P0K_BYZANTIUM_ABILITY_PORPHYROGENNETOS',	'LOC_P0K_BYZANTIUM_ABILITY_PORPHYROGENNETOS_NAME',	'LOC_P0K_BYZANTIUM_ABILITY_PORPHYROGENNETOS_DESCRIPTION',	1);
---------------------------------------------------------------------------------------------------------------
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,											RequirementType)
VALUES	('P0K_BYZANTIUM_REQUIRES_PLOT_WITHIN_THREE_HOLY_SITE',	'REQUIREMENT_PLOT_ADJACENT_DISTRICT_TYPE_MATCHES');
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,											Name,			Value)
VALUES	('P0K_BYZANTIUM_REQUIRES_PLOT_WITHIN_THREE_HOLY_SITE',	'DistrictType',	'DISTRICT_HOLY_SITE'),
		('P0K_BYZANTIUM_REQUIRES_PLOT_WITHIN_THREE_HOLY_SITE',	'MaxRange',		3),
		('P0K_BYZANTIUM_REQUIRES_PLOT_WITHIN_THREE_HOLY_SITE',	'MinRange',		0);
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,								RequirementSetType)
VALUES	('P0K_BYZANTIUM_PLOT_WITHIN_THREE_HOLY_SITE',	'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,								RequirementId)
VALUES	('P0K_BYZANTIUM_PLOT_WITHIN_THREE_HOLY_SITE',	'P0K_BYZANTIUM_REQUIRES_PLOT_WITHIN_THREE_HOLY_SITE');
---------------------------------------------------------------------------------------------------------------
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,							ModifierType,														SubjectRequirementSetId)
VALUES	('P0K_TRAIT_HOLY_SITE_GOLD_ADJACENCY',	'MODIFIER_PLAYER_DISTRICTS_ADJUST_YIELD_BASED_ON_ADJACENCY_BONUS',	NULL),
		('P0K_TRAIT_HEAL_WITHIN_9_HOLY_SITE',	'MODIFIER_PLAYER_UNITS_GRANT_HEAL_AFTER_ACTION',					'P0K_BYZANTIUM_PLOT_WITHIN_THREE_HOLY_SITE'); -- no argument
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,							Name,					Value)
VALUES	('P0K_TRAIT_HOLY_SITE_GOLD_ADJACENCY',	'YieldTypeToGrant',		'YIELD_GOLD'),
		('P0K_TRAIT_HOLY_SITE_GOLD_ADJACENCY',	'YieldTypeToMirror',	'YIELD_FAITH');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,				ModifierId)
VALUES	('TRAIT_LEADER_BASIL',	'P0K_TRAIT_HOLY_SITE_GOLD_ADJACENCY'),
		('TRAIT_LEADER_BASIL',	'P0K_TRAIT_HEAL_WITHIN_9_HOLY_SITE');
--=============================================================================================================
-- UNIQUE DISTRICT: HIPPODROME (ENHANCEMENT)
--=============================================================================================================
-- Does not require Population.
-- Provides +1 Great General point.
--=============================================================================================================
-- Districts
---------------------------------------------------------------------------------------------------------------
UPDATE Districts SET RequiresPopulation = 0 WHERE DistrictType = 'DISTRICT_HIPPODROME';
---------------------------------------------------------------------------------------------------------------
-- District_GreatPersonPoints
---------------------------------------------------------------------------------------------------------------
INSERT INTO District_GreatPersonPoints
		(DistrictType,			GreatPersonClassType,			PointsPerTurn)
VALUES	('DISTRICT_HIPPODROME',	'GREAT_PERSON_CLASS_GENERAL',	1);