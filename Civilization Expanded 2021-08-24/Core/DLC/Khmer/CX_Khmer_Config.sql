/* 
	Civilizations Expanded: Khmer
	Author: Sukritact
*/
--==========================================================================================================================
-- CONFIG DATA
--==========================================================================================================================
-- PlayerItems
-------------------------------------	
INSERT INTO PlayerItems
		(
			CivilizationType,
			LeaderType,
			Type,
			Icon,
			Name,	
			Description,
			SortIndex,

			Domain
		)
VALUES
		(
			'CIVILIZATION_KHMER',
			'LEADER_JAYAVARMAN',
			'DISTRICT_SUK_BARAY',
			'ICON_DISTRICT_SUK_BARAY',
			'LOC_DISTRICT_SUK_BARAY_NAME',	
			'LOC_DISTRICT_SUK_BARAY_DESCRIPTION',
			10,

			'Players:Expansion2_Players'
		);
--==========================================================================================================================
--==========================================================================================================================