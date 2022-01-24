--=============================================================================================================
-- CIVILIZATIONS EXPANDED: ICONS
--=============================================================================================================
-- IconTextureAtlases
---------------------------------------------------------------------------------------------------------------
INSERT INTO IconTextureAtlases	
		(Name,								IconSize,	IconsPerRow,	IconsPerColumn,		Filename)
VALUES	('ICON_ATLAS_P0K_STAVE_CHURCH',		256,		1,				1,					'p0k_Icon_StaveChurch_256.dds'),
		('ICON_ATLAS_P0K_STAVE_CHURCH',		80,			1,				1,					'p0k_Icon_StaveChurch_80.dds'),
		('ICON_ATLAS_P0K_STAVE_CHURCH',		50,			1,				1,					'p0k_Icon_StaveChurch_50.dds'),
		('ICON_ATLAS_P0K_STAVE_CHURCH',		38,			1,				1,					'p0k_Icon_StaveChurch_38.dds'),
	--	('ICON_ATLAS_P0K_CLAN_CASTLE',		256,		1,				1,					'p0k_Icon_Clan_Castle_256.dds'),
	--	('ICON_ATLAS_P0K_CLAN_CASTLE',		80,			1,				1,					'p0k_Icon_Clan_Castle_80.dds'),
	--	('ICON_ATLAS_P0K_CLAN_CASTLE',		50,			1,				1,					'p0k_Icon_Clan_Castle_50.dds'),
	--	('ICON_ATLAS_P0K_CLAN_CASTLE',		38,			1,				1,					'p0k_Icon_Clan_Castle_38.dds'),
		('ICON_ATLAS_LEU_LIBERTADOR',		256,	 	1,				1,					'Leu_LibertadorFlag256.dds'),
		('ICON_ATLAS_LEU_LIBERTADOR',		80,			1,				1,					'Leu_LibertadorFlag80.dds'),
		('ICON_ATLAS_LEU_LIBERTADOR',		50,		 	1,				1,					'Leu_LibertadorFlag50.dds'),
		('ICON_ATLAS_LEU_LIBERTADOR',		38,			1,				1,					'Leu_LibertadorFlag38.dds'),
		('ICON_ATLAS_LEU_LIBERTADOR',		32,		 	1,				1,					'Leu_LibertadorFlag32.dds'),
		('ICON_ATLAS_LEU_LIBERTADOR',		22,		 	1,				1,					'Leu_LibertadorFlag22.dds');
---------------------------------------------------------------------------------------------------------------
-- IconDefinitions
---------------------------------------------------------------------------------------------------------------
INSERT INTO IconDefinitions	
		(Name,									Atlas, 								'Index')
VALUES  ('ICON_P0K_IMPROVEMENT_STAVE_CHURCH',	'ICON_ATLAS_P0K_STAVE_CHURCH',		0);
	--	('ICON_P0K_IMPROVEMENT_CLAN_CASTLE',	'ICON_ATLAS_P0K_CLAN_CASTLE',		0),

INSERT OR REPLACE INTO IconDefinitions	
		(Name,										Atlas, 											'Index')
VALUES  ('ICON_UNIT_COMANDANTE_GENERAL',			'ICON_ATLAS_LEU_LIBERTADOR',					0),
		('ICON_UNIT_COMANDANTE_GENERAL_WHITE',		'ICON_ATLAS_LEU_LIBERTADOR',					0);
