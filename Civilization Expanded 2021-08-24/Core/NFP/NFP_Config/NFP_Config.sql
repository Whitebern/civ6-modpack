--=============================================================================================================
-- CIVILIZATIONS EXPANDED: NEW FRONTIER PASS FRONT-END CONFIG 
--=============================================================================================================
-- Players
---------------------------------------------------------------------------------------------------------------
UPDATE Players 
SET CivilizationAbilityDescription = 'P0K_CONGRESS_OF_CUCUTA_NO_ETHIOPIA_DESCRIPTION'
WHERE CivilizationAbilityName = 'LOC_TRAIT_CIVILIZATION_EJERCITO_PATRIOTA_NAME'
AND NOT EXISTS (SELECT * FROM Players WHERE CivilizationType = 'CIVILIZATION_ETHIOPIA');