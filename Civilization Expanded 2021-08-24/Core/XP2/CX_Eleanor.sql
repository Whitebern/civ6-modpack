/* 
	Civilizations Expanded: Eleanor of Aquitaine
	Author: p0kiehl
*/
--=============================================================================================================
-- LEADER UNIQUE ABILITY: COURT OF LOVE (ENHANCEMENT)
--=============================================================================================================
-- +100% Great Musician points.
-- Receive a random Inspiration upon earning a Great Musician.
-- Amphitheaters receive one slot for Great Works of Music.
--=============================================================================================================
-- Modifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers
		(ModifierId,											ModifierType)
VALUES	('P0K_TRAIT_DOUBLE_MUSICIAN_POINTS',					'MODIFIER_PLAYER_ADJUST_GREAT_PERSON_POINTS_PERCENT'),
		('P0K_TRAIT_MUSICIAN_INSPIRATION',						'MODIFIER_PLAYER_GRANT_BOOST_WITH_GREAT_PERSON'),
		('P0K_TRAIT_AMPHITHEATER_GREAT_WORK_SLOTS',				'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER'),		
		('P0K_TRAIT_AMPHITHEATER_GREAT_WORK_SLOTS_MODIFIER',	'MODIFIER_SINGLE_CITY_ADJUST_EXTRA_GREAT_WORK_SLOTS');
---------------------------------------------------------------------------------------------------------------
-- ModifierArguments
---------------------------------------------------------------------------------------------------------------	
INSERT INTO ModifierArguments
		(ModifierId,											Name,					Value)
VALUES	('P0K_TRAIT_DOUBLE_MUSICIAN_POINTS',					'GreatPersonClassType',	'GREAT_PERSON_CLASS_MUSICIAN'),
		('P0K_TRAIT_DOUBLE_MUSICIAN_POINTS',					'Amount',				100),
		('P0K_TRAIT_MUSICIAN_INSPIRATION',						'GreatPersonClass',		'GREAT_PERSON_CLASS_MUSICIAN'),
		('P0K_TRAIT_MUSICIAN_INSPIRATION',						'TechBoost',			0),
		('P0K_TRAIT_MUSICIAN_INSPIRATION',						'OtherPlayers',			0),
		('P0K_TRAIT_AMPHITHEATER_GREAT_WORK_SLOTS',				'ModifierId',			'P0K_TRAIT_AMPHITHEATER_GREAT_WORK_SLOTS_MODIFIER'),
		('P0K_TRAIT_AMPHITHEATER_GREAT_WORK_SLOTS_MODIFIER',	'BuildingType',			'BUILDING_AMPHITHEATER'),
		('P0K_TRAIT_AMPHITHEATER_GREAT_WORK_SLOTS_MODIFIER',	'GreatWorkSlotType',	'GREATWORKSLOT_MUSIC'),
		('P0K_TRAIT_AMPHITHEATER_GREAT_WORK_SLOTS_MODIFIER',	'Amount',				1);
---------------------------------------------------------------------------------------------------------------
-- TraitModifiers
---------------------------------------------------------------------------------------------------------------
INSERT INTO TraitModifiers
		(TraitType,							ModifierId)
VALUES	('TRAIT_LEADER_ELEANOR_LOYALTY',	'P0K_TRAIT_DOUBLE_MUSICIAN_POINTS'),
		('TRAIT_LEADER_ELEANOR_LOYALTY',	'P0K_TRAIT_MUSICIAN_INSPIRATION'),	
		('TRAIT_LEADER_ELEANOR_LOYALTY',	'P0K_TRAIT_AMPHITHEATER_GREAT_WORK_SLOTS');