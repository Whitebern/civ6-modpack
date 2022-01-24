--=============================================================================================================
-- CIVILIZATIONS EXPANDED: CATHERINE DE MEDICI FRONT-END CONFIG 
-- (PERSONA PACK + ETHIOPIA DLC)
--=============================================================================================================
-- Players
---------------------------------------------------------------------------------------------------------------
UPDATE Players SET 
LeaderAbilityName = 'P0K_LOC_TRAIT_LEADER_BLACK_QUEEN_NAME',
LeaderAbilityDescription = 'P0K_LOC_TRAIT_LEADER_BLACK_QUEEN_DESCRIPTION'
WHERE LeaderType = 'LEADER_CATHERINE_DE_MEDICI'
AND EXISTS (SELECT 1 FROM Players
WHERE LeaderType = 'LEADER_CATHERINE_DE_MEDICI_ALT');
