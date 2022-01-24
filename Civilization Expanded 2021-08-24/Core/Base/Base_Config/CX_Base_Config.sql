--=============================================================================================================
-- CIVILIZATIONS EXPANDED: BASE FRONT-END CONFIG 
--=============================================================================================================
-- PlayerItems
---------------------------------------------------------------------------------------------------------------
DELETE FROM PlayerItems WHERE Type = 'BUILDING_STAVE_CHURCH';

INSERT INTO PlayerItems
		(Domain,						CivilizationType,		LeaderType,			Type,							Name,										Description,									Icon,									SortIndex)
VALUES	('Players:Expansion2_Players',	'CIVILIZATION_NORWAY',	'LEADER_HARDRADA',	'P0K_IMPROVEMENT_STAVE_CHURCH',	'LOC_P0K_IMPROVEMENT_STAVE_CHURCH_NAME',	'LOC_P0K_IMPROVEMENT_STAVE_CHURCH_DESCRIPTION',	'ICON_P0K_IMPROVEMENT_STAVE_CHURCH',	30);

-- With this mod, Barbarian Clans mode doesn't actually change Sumer's Civ UA, so let's reverse the text update
UPDATE	GameModePlayerInfoOverrides
SET		CivilizationAbilityDescription = 'LOC_TRAIT_CIVILIZATION_FIRST_CIVILIZATION_DESCRIPTION'
WHERE	GameModeType = 'GAMEMODE_BARBARIAN_CLANS'
AND		CivilizationType = 'CIVILIZATION_SUMERIA';
