/* 
	Civilizations Expanded: Arabia
*/
--=============================================================================================================
-- CIVILIZATION UNIQUE ABILITY: SEAL OF THE PROPHETS (ENHANCEMENT)
--=============================================================================================================
-- Earning a Great Prophet grants +1 Trade Route capacity.
-- Receive a random Eureka each time another civilization earns a Great Prophet.
-- (Add +1 Gold per foreign city following Arabia's Religion).
-- Trade Routes exert +100% Religious pressure (note: originally from India).
-- Missionaries have +2 Religion Spreads (note: originally from India).
--=============================================================================================================
-- Requirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId,								RequirementType)
VALUES	('P0K_ARABIA_REQUIRES_UNIT_IS_PROPHET',		'REQUIREMENT_GREAT_PERSON_TYPE_MATCHES');
---------------------------------------------------------------------------------------------------------------
-- RequirementArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementArguments
		(RequirementId,								Name,					Value)
VALUES	('P0K_ARABIA_REQUIRES_UNIT_IS_PROPHET',		'GreatPersonClassType',	'GREAT_PERSON_CLASS_PROPHET');
---------------------------------------------------------------------------------------------------------------
-- RequirementSets
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,						RequirementSetType)
VALUES	('P0K_ARABIA_UNIT_IS_PROPHET',			'REQUIREMENTSET_TEST_ALL');
---------------------------------------------------------------------------------------------------------------
-- RequirementSetRequirements
---------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSetRequirements
		(RequirementSetId,						RequirementId)
VALUES	('P0K_ARABIA_UNIT_IS_PROPHET',			'P0K_ARABIA_REQUIRES_UNIT_IS_PROPHET');
---------------------------------------------------------------------------------------------------------------						
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers 
		(ModifierId,											ModifierType,											RunOnce,	Permanent,	SubjectRequirementSetId) 
VALUES	('P0K_TRAIT_GREAT_PROPHET_EUREKA',						'MODIFIER_PLAYER_GRANT_BOOST_WITH_GREAT_PERSON',		0,			0,			NULL),
		('P0K_TRAIT_GOLD_PER_FOREIGN_CITY_FOLLOWING_RELIGION',	'MODIFIER_PLAYER_RELIGION_ADD_PLAYER_BELIEF_YIELD',		0,			0,			NULL),
		('P0K_TRAIT_PROPHET_TRADE_ROUTE',						'MODIFIER_PLAYER_UNITS_ATTACH_MODIFIER',				0,			0,			'P0K_ARABIA_UNIT_IS_PROPHET'),
		('P0K_TRAIT_PROPHET_TRADE_ROUTE_MODIFIER',				'MODIFIER_PLAYER_ADJUST_TRADE_ROUTE_CAPACITY',			1,			1,			NULL);
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
UPDATE	ModifierArguments
SET		Value = 'BELIEF_YIELD_PER_CITY'
WHERE	Name = 'BeliefYieldType'
AND		ModifierId = 'TRAIT_SCIENCE_PER_FOREIGN_CITY_FOLLOWING_RELIGION';

INSERT INTO ModifierArguments 
		(ModifierId,												Name,					Value) 
VALUES	('P0K_TRAIT_GREAT_PROPHET_EUREKA',							'GreatPersonClass',		'GREAT_PERSON_CLASS_PROPHET'),
		('P0K_TRAIT_GREAT_PROPHET_EUREKA',							'TechBoost',			1),
		('P0K_TRAIT_GREAT_PROPHET_EUREKA',							'OtherPlayers',			1),
		('P0K_TRAIT_GOLD_PER_FOREIGN_CITY_FOLLOWING_RELIGION',		'BeliefYieldType',		'BELIEF_YIELD_PER_CITY'),
		('P0K_TRAIT_GOLD_PER_FOREIGN_CITY_FOLLOWING_RELIGION',		'YieldType',			'YIELD_GOLD'),
		('P0K_TRAIT_GOLD_PER_FOREIGN_CITY_FOLLOWING_RELIGION',		'Amount',				1),
		('P0K_TRAIT_GOLD_PER_FOREIGN_CITY_FOLLOWING_RELIGION',		'PerXItems',			1),
		('P0K_TRAIT_PROPHET_TRADE_ROUTE',							'ModifierId',			'P0K_TRAIT_PROPHET_TRADE_ROUTE_MODIFIER'),
		('P0K_TRAIT_PROPHET_TRADE_ROUTE_MODIFIER',					'Amount',				1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers 
		(TraitType,							ModifierId) 
VALUES	('TRAIT_CIVILIZATION_LAST_PROPHET', 'P0K_TRAIT_GREAT_PROPHET_EUREKA'),
		('TRAIT_CIVILIZATION_LAST_PROPHET', 'P0K_TRAIT_GOLD_PER_FOREIGN_CITY_FOLLOWING_RELIGION'),
		('TRAIT_CIVILIZATION_LAST_PROPHET', 'P0K_TRAIT_PROPHET_TRADE_ROUTE'),
		('TRAIT_CIVILIZATION_LAST_PROPHET',	'TRAIT_ORIGIN_DESTINATION_RELIGIOUS_PRESSURE'), -- from India
		('TRAIT_CIVILIZATION_LAST_PROPHET',	'TRAIT_MISSIONARY_SPREADS');					-- from India
--=============================================================================================================
-- LEADER UNIQUE ABILITY: RIGHTEOUSNESS OF THE FAITH (ENHANCEMENT)
--=============================================================================================================
-- +100% Great Scientist points.
-- May purchase Campus buildings with Faith.
--=============================================================================================================			
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers 
		(ModifierId,									ModifierType)										
VALUES	('P0K_TRAIT_DOUBLE_SCIENTIST_POINTS',			'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS_PERCENT'),
		('P0K_TRAIT_PURCHASE_CAMPUS_BUILDINGS_FAITH',	'MODIFIER_PLAYER_CITIES_ENABLE_BUILDING_FAITH_PURCHASE');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,									Name,					Value)
VALUES	('P0K_TRAIT_DOUBLE_SCIENTIST_POINTS',			'GreatPersonClassType',	'GREAT_PERSON_CLASS_SCIENTIST'),
		('P0K_TRAIT_DOUBLE_SCIENTIST_POINTS',			'Amount',				100),
		('P0K_TRAIT_PURCHASE_CAMPUS_BUILDINGS_FAITH',	'DistrictType',			'DISTRICT_CAMPUS');
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers 
		(TraitType,								ModifierId) 
VALUES	('TRAIT_LEADER_RIGHTEOUSNESS_OF_FAITH',	'P0K_TRAIT_DOUBLE_SCIENTIST_POINTS'),
		('TRAIT_LEADER_RIGHTEOUSNESS_OF_FAITH',	'P0K_TRAIT_PURCHASE_CAMPUS_BUILDINGS_FAITH');
--=============================================================================================================
-- UNIQUE BUILDING: MADRASA (ENHANCEMENT)
--=============================================================================================================
-- +1 Housing and +1 Amenity.
---------------------------------------------------------------------------------------------------------------
UPDATE	Buildings
SET		Housing = Housing + 1, Entertainment = Entertainment + 1
WHERE	BuildingType = 'BUILDING_MADRASA';