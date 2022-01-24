--=============================================================================================================	
-- GOLD DEFLATION
-- Author: p0kiehl
--=============================================================================================================
-- DISTRICTS
--=============================================================================================================
-- Make all districts with 0 maintenance have 1 maintenance, except for Harbors, Commercial Hubs, and Canals.
---------------------------------------------------------------------------------------------------------------
UPDATE Districts 
SET Maintenance = 1
WHERE Maintenance = 0  
AND DistrictType NOT IN ('DISTRICT_HARBOR', 'DISTRICT_COMMERCIAL_HUB', 'DISTRICT_CANAL', 'DISTRICT_WONDER')
AND DistrictType 
NOT IN (SELECT CivUniqueDistrictType 
FROM DistrictReplaces
WHERE (ReplacesDistrictType = 'DISTRICT_COMMERCIAL_HUB' 
OR ReplacesDistrictType = 'DISTRICT_HARBOR'));
---------------------------------------------------------------------------------------------------------------
-- Make Government Plaza and Diplomatic Quarter have 3 maintenance.
---------------------------------------------------------------------------------------------------------------
UPDATE Districts 
SET Maintenance = 2
WHERE DistrictType IN ('DISTRICT_GOVERNMENT', 'DISTRICT_DIPLOMATIC_QUARTER');
---------------------------------------------------------------------------------------------------------------
-- Make Aerodrome and Space Port have 4 maintenance
---------------------------------------------------------------------------------------------------------------
UPDATE Districts 
SET Maintenance = 4
WHERE DistrictType IN ('DISTRICT_AERODROME', 'DISTRICT_SPACEPORT');
--=============================================================================================================
-- BUILDINGS
--=============================================================================================================
-- 3 maintenance: Increase the rest to 5.
---------------------------------------------------------------------------------------------------------------
UPDATE Buildings 
SET Maintenance = 5
WHERE Maintenance = 3;
---------------------------------------------------------------------------------------------------------------
-- 2 maintenance: Airports should be 5. 
--Increase the rest to 4.
---------------------------------------------------------------------------------------------------------------
UPDATE Buildings 
SET Maintenance = 5
WHERE Maintenance = 2
AND PrereqDistrict = 'DISTRICT_AERODROME';

UPDATE Buildings
SET Maintenance = 4 
WHERE Maintenance = 2;
---------------------------------------------------------------------------------------------------------------
-- 1 maintenance: Don't want to increase maintenance for all 1 maintenance buildings yet, but let's increase it for a few.
---------------------------------------------------------------------------------------------------------------
-- 2 for Tier 1 Government Plaza buildings and Consulate
UPDATE Buildings 
SET Maintenance = 2
WHERE GovernmentTierRequirement = 1 
OR BuildingType = 'BUILDING_CONSULATE';

-- 4 for Hangars, Neighborhood Buildings, Dam Buildings
UPDATE Buildings 
SET Maintenance = 4
WHERE Maintenance = 1 
AND PrereqDistrict IN ('DISTRICT_AERODROME', 'DISTRICT_NEIGHBORHOOD', 'DISTRICT_DAM');

-- 6 for Flood Barriers
UPDATE Buildings 
SET Maintenance = 6
WHERE BuildingType = 'BUILDING_FLOOD_BARRIER';
---------------------------------------------------------------------------------------------------------------
-- 0 maintenace: Give +1 maintenance to a few buildings with 0 maintenance.
---------------------------------------------------------------------------------------------------------------
-- Walls
UPDATE Buildings 
SET Maintenance = 1 
WHERE BuildingType 
IN ('BUILDING_WALLS', 'BUILDING_CASTLE', 'BUILDING_STAR_FORT', 'BUILDING_TSIKHE');

-- Worship Buildings
UPDATE Buildings 
SET Maintenance = 1 
WHERE EnabledByReligion = 1;
--=============================================================================================================
-- UNITS
--=============================================================================================================
-- Increase maintenance by 1 for all units that already have a maintenance cost.
---------------------------------------------------------------------------------------------------------------
UPDATE Units
SET Maintenance = Maintenance + 1 
WHERE Maintenance <> 0;
---------------------------------------------------------------------------------------------------------------
-- Another +1 increase for units from the Industrial Era onward.
---------------------------------------------------------------------------------------------------------------
UPDATE Units 
SET Maintenance = Maintenance + 1 
WHERE Maintenance <> 0
AND (PrereqTech IN 
(SELECT TechnologyType
FROM Technologies 
WHERE EraType IN ('ERA_INDUSTRIAL', 'ERA_MODERN', 'ERA_ATOMIC', 'ERA_INFORMATION', 'ERA_FUTURE'))
OR PrereqCivic IN
(SELECT CivicType
FROM Civics
WHERE EraType IN ('ERA_INDUSTRIAL', 'ERA_MODERN', 'ERA_ATOMIC', 'ERA_INFORMATION', 'ERA_FUTURE')));
---------------------------------------------------------------------------------------------------------------
-- Another +1 increase for units from the Atomic Era onward.
---------------------------------------------------------------------------------------------------------------
UPDATE Units 
SET Maintenance = Maintenance + 1 
WHERE Maintenance <> 0
AND (PrereqTech IN 
(SELECT TechnologyType
FROM Technologies 
WHERE EraType IN ('ERA_ATOMIC', 'ERA_INFORMATION', 'ERA_FUTURE'))
OR PrereqCivic IN
(SELECT CivicType
FROM Civics
WHERE EraType IN ('ERA_ATOMIC', 'ERA_INFORMATION', 'ERA_FUTURE')));