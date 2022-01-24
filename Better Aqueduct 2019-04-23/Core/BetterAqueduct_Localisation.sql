/* 
	p0kiehl's Better Aqueduct
	Author: p0kiehl
*/
--========================================================================
-- BaseGameText
--========================================================================
INSERT OR REPLACE INTO BaseGameText
		(Tag, 																								Text)
VALUES  ('LOC_DISTRICT_AQUEDUCT_DESCRIPTION',
		'A district that provides this city with a source of fresh water from an adjacent River, Lake, Oasis, or Mountain. Cities that do not yet have existing fresh water receive up to 6 [ICON_Housing] Housing. Cities that already have existing fresh water will instead get +2 [ICON_Housing] Housing. If built adjacent to a Geothermal Fissure +1 [ICON_Amenities] Amenity. Provides +1 [ICON_Food] Food to Farms built over resources. Prevents [ICON_Food] Food loss during Drought. Must be built adjacent to the City Center.'),
		('LOC_DISTRICT_BATH_EXPANSION2_DESCRIPTION',
		'A district unique to Rome for city growth. Replaces the Aqueduct district and cheaper to build.[NEWLINE][NEWLINE]It provides this city with a source of fresh water from an adjacent River, Lake, Oasis, or Mountain. Cities that do not yet have existing fresh water receive up to 6 [ICON_Housing] Housing. Cities that already have existing fresh water will instead get +2 [ICON_Housing] Housing. If built adjacent to a Geothermal Fissure +1 [ICON_Amenities] Amenity. In all cases the Bath provides an additional bonus of +2 [ICON_Housing] Housing and +1 [ICON_Amenities] Amenity. Provides +1 [ICON_Food] Food to Farms built over resources. Prevents [ICON_Food] Food loss during Drought. Must be built adjacent to the City Center.'),
		('LOC_P0K_BA_AQUEDUCT_DISTRICT_FOOD',
		'+{1_num} [ICON_Food] Food from the adjacent {1_Num : plural 1?district; other?districts;}.'),
		('LOC_P0K_BA_AQUEDUCT_RIVER_FOOD',
		'+{1_num} [ICON_Food] Food from the adjacent River.'),
		('LOC_P0K_BA_AQUEDUCT_OASIS_FOOD',
		'+{1_num} [ICON_Food] Food from the adjacent Oasis {1_Num : plural 1?tile; other?tiles;}.');