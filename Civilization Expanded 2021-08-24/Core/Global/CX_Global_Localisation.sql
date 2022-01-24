/* 
	Civilizations Expanded: Global Localisation 
	By p0kiehl
*/
INSERT OR REPLACE INTO BaseGameText
		(Tag,					Text)
VALUES
--=============================================================================================================
-- ADJACENCIES (USED MORE THAN ONCE)
--=============================================================================================================
		('P0K_LOC_DISTRICT_RIVER_FAITH',
		'+{1_num} [ICON_Faith] Faith from the adjacent River.'),
--=============================================================================================================
-- NOBEL PRIZE
--=============================================================================================================
		('LOC_EMERGENCY_DESCRIPTION_FAVOR',
		'An esteemed international commitee is awarding a Nobel Prize for Peace. Let''s prove ourselves the most peaceful, and win this prestigious prize.'),
		('LOC_EMERGENCY_DESCRIPTION_GREAT_ARTISTS',
		'An esteemed international commitee is awarding a Nobel Prize for Literature. Let''s prove ourselves the most artful, and win this prestigious prize.'),
		('LOC_EMERGENCY_DESCRIPTION_GREAT_STEMS',
		'An esteemed international commitee is awarding a Nobel Prize for Physics. Let''s prove ourselves the most scientifically minded, and win this prestigious prize.'),
--=============================================================================================================
-- POLICIES
--=============================================================================================================
		('LOC_POLICY_P0K_HARVEST_CALENDAR_NAME',
		'Harvest Calendar'),
		('LOC_POLICY_P0K_HARVEST_CALENDAR_DESCRIPTION',
		'+1 [ICON_Food] Food in all cities.'),
--=============================================================================================================
-- SKI RESORT
--=============================================================================================================
		('LOC_TECH_BOOST_GOODYHUT',
		'Previously unknown scientific knowledge has been revealed to your people.'),
		('LOC_CIVIC_BOOST_GOODYHUT',
		'Previously unknown wisdom has been revealed to your people, inspiring new ideas.'),
		('LOC_IMPROVEMENT_SKI_RESORT_DESCRIPTION',
		'Unlocks the Builder ability to construct a Ski Resort.[NEWLINE][NEWLINE]+2 [ICON_Gold] Gold, +1 [ICON_Food] Food, and +1 [ICON_Production] Production. +1 [ICON_Culture] for each adjacent Seaside Resort or Ice Hockey Rink. Provides [ICON_Tourism] Tourism equal to the tile''s Appeal. Provides an [ICON_AMENITIES] Amenity. Can only be built on a Mountain. Cannot be built adjacent to another Ski Resort. Cannot be pillaged or removed.');