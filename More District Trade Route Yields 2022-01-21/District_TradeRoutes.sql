--============================================================
-- By p0kiehl
--============================================================

--------------------------------------------------------------
-- District_TradeRouteYields
--------------------------------------------------------------
INSERT OR REPLACE INTO District_TradeRouteYields
		(DistrictType,				YieldType,			YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination)
VALUES	('DISTRICT_AERODROME',		'YIELD_PRODUCTION',	0,						1,									1),	
		('DISTRICT_AQUEDUCT',		'YIELD_FOOD',		0,						2,									2),
		('DISTRICT_BATH',			'YIELD_FOOD',		0,						2,									2),	
		('DISTRICT_MBANZA',			'YIELD_FOOD',		0,						1,									1),
		('DISTRICT_NEIGHBORHOOD',	'YIELD_FOOD',		0,						1,									1);

INSERT OR REPLACE INTO District_TradeRouteYields
		(DistrictType,				YieldType,			YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination)
SELECT	'DISTRICT_CANAL',			'YIELD_FOOD',		0,						1,									1		
FROM Districts WHERE DistrictType='DISTRICT_CANAL';

INSERT OR REPLACE INTO District_TradeRouteYields
		(DistrictType,				YieldType,			YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination)
SELECT	'DISTRICT_CANAL',			'YIELD_PRODUCTION',	0,						1,									1		
FROM Districts WHERE DistrictType='DISTRICT_CANAL';

INSERT OR REPLACE INTO District_TradeRouteYields
		(DistrictType,				YieldType,			YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination)
SELECT	'DISTRICT_DAM',				'YIELD_FOOD',		0,						1,									1		
FROM Districts WHERE DistrictType='DISTRICT_DAM';

INSERT OR REPLACE INTO District_TradeRouteYields
		(DistrictType,				YieldType,			YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination)
SELECT	'DISTRICT_DAM',				'YIELD_PRODUCTION',	0,						1,									1		
FROM Districts WHERE DistrictType='DISTRICT_DAM';

INSERT OR REPLACE INTO District_TradeRouteYields
		(DistrictType,				YieldType,			YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination)
SELECT	'DISTRICT_PRESERVE',		'YIELD_FOOD',		0,						1,									0		
FROM Districts WHERE DistrictType='DISTRICT_PRESERVE';

INSERT OR REPLACE INTO District_TradeRouteYields
		(DistrictType,				YieldType,			YieldChangeAsOrigin,	YieldChangeAsDomesticDestination,	YieldChangeAsInternationalDestination)
SELECT	'DISTRICT_PRESERVE',		'YIELD_CULTURE',	0,						0,									1		
FROM Districts WHERE DistrictType='DISTRICT_PRESERVE';


