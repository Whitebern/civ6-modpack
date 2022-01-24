--=======================================================================================================================
-- Collect data needed
--=======================================================================================================================

CREATE TABLE Resources_TC_Harvestable_Temp1 AS
SELECT * FROM Resources
LEFT JOIN Improvement_ValidResources ON Improvement_ValidResources.ResourceType = Resources.ResourceType;

CREATE TABLE Resources_TC_Harvestable_Temp2 AS
SELECT ResourceType, ImprovementType, ResourceClassType, RevealedEra FROM Resources_TC_Harvestable_Temp1;

DROP TABLE Resources_TC_Harvestable_Temp1;

CREATE TABLE Resources_TC_Harvestable_Temp3 AS
SELECT * FROM Resources_TC_Harvestable_Temp2
LEFT JOIN Improvements ON Improvements.ImprovementType = Resources_TC_Harvestable_Temp2.ImprovementType;

DROP TABLE Resources_TC_Harvestable_Temp2;

CREATE TABLE Resources_TC_Harvestable_Temp4 AS
SELECT ResourceType, ImprovementType, ResourceClassType, RevealedEra, PrereqTech FROM Resources_TC_Harvestable_Temp3;

DROP TABLE Resources_TC_Harvestable_Temp3;

CREATE TABLE Resources_TC_Harvestable AS
SELECT * FROM Resources_TC_Harvestable_Temp4
WHERE ImprovementType == 'IMPROVEMENT_FARM' OR ImprovementType == 'IMPROVEMENT_CAMP' OR ImprovementType == 'IMPROVEMENT_FISHING_BOATS' OR ImprovementType == 'IMPROVEMENT_MINE' OR ImprovementType == 'IMPROVEMENT_PASTURE'
OR ImprovementType == 'IMPROVEMENT_LUMBER_MILL' OR ImprovementType == 'IMPROVEMENT_OIL_WELL' OR ImprovementType == 'IMPROVEMENT_PLANTATION' OR ImprovementType == 'IMPROVEMENT_QUARRY' OR ResourceClassType='RESOURCECLASS_ARTIFACT';

DROP TABLE Resources_TC_Harvestable_Temp4;

--=======================================================================================================================
-- Build table setting yield types and amounts from harvesting different types of LUXURY resources
--=======================================================================================================================

CREATE TABLE Resources_TC_Harvestable_Luxury_Data AS
SELECT ResourceType, ImprovementType, null AS YieldType1, null AS YieldType2, 0 AS Amount1, 0 AS Amount2, PrereqTech FROM Resources_TC_Harvestable
WHERE ResourceClassType == 'RESOURCECLASS_LUXURY';

UPDATE Resources_TC_Harvestable_Luxury_Data
SET YieldType1 = 'YIELD_FOOD', YieldType2 = 'YIELD_GOLD', Amount1 = '60', Amount2 = '20'
WHERE ImprovementType == 'IMPROVEMENT_FARM';

UPDATE Resources_TC_Harvestable_Luxury_Data
SET YieldType1 = 'YIELD_PRODUCTION', YieldType2 = 'YIELD_GOLD', Amount1 = '60', Amount2 = '40'
WHERE ImprovementType == 'IMPROVEMENT_MINE';

UPDATE Resources_TC_Harvestable_Luxury_Data
SET YieldType1 = 'YIELD_PRODUCTION', YieldType2 = 'YIELD_GOLD', Amount1 = '60', Amount2 = '40'
WHERE ImprovementType == 'IMPROVEMENT_QUARRY';

UPDATE Resources_TC_Harvestable_Luxury_Data
SET YieldType1 = 'YIELD_PRODUCTION', YieldType2 = 'YIELD_GOLD', Amount1 = '60', Amount2 = '40'
WHERE ImprovementType == 'IMPROVEMENT_LUMBER_MILL';

UPDATE Resources_TC_Harvestable_Luxury_Data
SET YieldType1 = 'YIELD_PRODUCTION', YieldType2 = 'YIELD_GOLD', Amount1 = '60', Amount2 = '40'
WHERE ImprovementType == 'IMPROVEMENT_OIL_WELL';

UPDATE Resources_TC_Harvestable_Luxury_Data
SET YieldType1 = 'YIELD_FOOD', YieldType2 = 'YIELD_GOLD', Amount1 = '40', Amount2 = '40'
WHERE ImprovementType == 'IMPROVEMENT_FISHING_BOATS';

UPDATE Resources_TC_Harvestable_Luxury_Data
SET YieldType1 = 'YIELD_CULTURE', YieldType2 = 'YIELD_FOOD', Amount1 = '60', Amount2 = '20'
WHERE ImprovementType == 'IMPROVEMENT_PLANTATION';

UPDATE Resources_TC_Harvestable_Luxury_Data
SET YieldType1 = 'YIELD_FOOD', YieldType2 = 'YIELD_PRODUCTION', Amount1 = '40', Amount2 = '20'
WHERE ImprovementType == 'IMPROVEMENT_PASTURE';

UPDATE Resources_TC_Harvestable_Luxury_Data
SET YieldType1 = 'YIELD_FOOD', YieldType2 = 'YIELD_CULTURE', Amount1 = '40', Amount2 = '30'
WHERE ImprovementType == 'IMPROVEMENT_CAMP';

--=======================================================================================================================
-- Update Resource_Harvests with all resources
--=======================================================================================================================

DELETE FROM Resource_Harvests;

--Set standardized yields for bonus resources
INSERT INTO Resource_Harvests
SELECT ResourceType, 'YIELD_FOOD' AS YieldType, 20 AS Amount, PrereqTech FROM Resources_TC_Harvestable
WHERE ResourceClassType == 'RESOURCECLASS_BONUS' AND (ImprovementType == 'IMPROVEMENT_FARM' OR ImprovementType == 'IMPROVEMENT_PLANTATION' OR ImprovementType == 'IMPROVEMENT_PASTURE' OR ImprovementType == 'IMPROVEMENT_CAMP' OR ImprovementType == 'IMPROVEMENT_FISHING_BOATS');

INSERT INTO Resource_Harvests
SELECT ResourceType, 'YIELD_PRODUCTION' AS YieldType, 20 AS Amount, PrereqTech FROM Resources_TC_Harvestable
WHERE ResourceClassType == 'RESOURCECLASS_BONUS' AND (ImprovementType == 'IMPROVEMENT_MINE' OR ImprovementType == 'IMPROVEMENT_QUARRY' OR ImprovementType == 'IMPROVEMENT_LUMBER_MILL' OR ImprovementType == 'IMPROVEMENT_OIL_WELL');

--Set strategic resources as harvestable, and set their yield amount based on each resource's RevealedEra
INSERT INTO Resource_Harvests
SELECT ResourceType, 'YIELD_PRODUCTION' AS YieldType, RevealedEra*10+15 AS Amount, PrereqTech FROM Resources_TC_Harvestable
WHERE ResourceClassType == 'RESOURCECLASS_STRATEGIC';

--Luxury resources, primary yields
INSERT INTO Resource_Harvests
SELECT ResourceType, YieldType1, Amount1, PrereqTech FROM Resources_TC_Harvestable_Luxury_Data;

--Luxury resources, secondary yields
INSERT INTO Resource_Harvests
SELECT ResourceType, YieldType2, Amount2, PrereqTech FROM Resources_TC_Harvestable_Luxury_Data;

--Artifact harvests
INSERT INTO Resource_Harvests
SELECT ResourceType, 'YIELD_CULTURE', '100', PrereqTech FROM Resources_TC_Harvestable
WHERE ResourceClassType == 'RESOURCECLASS_ARTIFACT';

--=======================================================================================================================
-- Change technology descriptions (tooltip on tech tree) to show resources that can be removed by researching that tech
--=======================================================================================================================

CREATE TABLE Resources_TC_Harvestable_Text_Grouped (TechnologyType, PrereqTechDescriptionTextAddition, BaseTechnologyText);

INSERT INTO Resources_TC_Harvestable_Text_Grouped
	SELECT	PrereqTech AS TechnologyType, 
			GROUP_CONCAT('[ICON_' || ResourceType || '] ' || lower(replace(ResourceType, 'RESOURCE_','')), ', ') || '.' AS PrereqTechDescriptionTextAddition, 
			'Allows harvesting of '
	FROM Resources_TC_Harvestable
	WHERE TechnologyType = 'TECH_ANIMAL_HUSBANDRY';

INSERT INTO Resources_TC_Harvestable_Text_Grouped
	SELECT	PrereqTech AS TechnologyType, 
			GROUP_CONCAT('[ICON_' || ResourceType || '] ' || lower(replace(ResourceType, 'RESOURCE_','')), ', ') || '.' AS PrereqTechDescriptionTextAddition, 
			'Allows clearing of Marsh, and harvesting of '
	FROM Resources_TC_Harvestable
	WHERE TechnologyType = 'TECH_IRRIGATION';

INSERT INTO Resources_TC_Harvestable_Text_Grouped
	SELECT	PrereqTech AS TechnologyType, 
			GROUP_CONCAT('[ICON_' || ResourceType || '] ' || lower(replace(ResourceType, 'RESOURCE_','')), ', ') || '.' AS PrereqTechDescriptionTextAddition, 
			'Allows clearing of Marsh, and harvesting of '
	FROM Resources_TC_Harvestable
	WHERE TechnologyType = 'TECH_MINING';

INSERT INTO Resources_TC_Harvestable_Text_Grouped
	SELECT	PrereqTech AS TechnologyType, 
			GROUP_CONCAT('[ICON_' || ResourceType || '] ' || lower(replace(ResourceType, 'RESOURCE_','')), ', ') || '.' AS PrereqTechDescriptionTextAddition, 
			'Allows Builders to embark. Allows harvesting of '
	FROM Resources_TC_Harvestable
	WHERE TechnologyType = 'TECH_SAILING';

INSERT INTO Resources_TC_Harvestable_Text_Grouped
	SELECT	PrereqTech AS TechnologyType, 
			GROUP_CONCAT('[ICON_' || ResourceType || '] ' || lower(replace(ResourceType, 'RESOURCE_','')), ', ') || '.' AS PrereqTechDescriptionTextAddition, 
			'+1 [ICON_Production] Production from the Lumber Mill improvement. Unlocks Urban Defenses, giving all of your cities an automatic 400 Fortification Strength and the ability to perform a ranged attack. All previous wall improvements become obsolete and siege support units are no longer effective. Allows harvesting of '
	FROM Resources_TC_Harvestable
	WHERE TechnologyType = 'TECH_STEEL';

INSERT INTO Resources_TC_Harvestable_Text_Grouped
	SELECT	PrereqTech AS TechnologyType, 
			GROUP_CONCAT('[ICON_' || ResourceType || '] ' || lower(replace(ResourceType, 'RESOURCE_','')), ', ') || '.' AS PrereqTechDescriptionTextAddition, 
			'Allows harvesting of '
	FROM Resources_TC_Harvestable
	WHERE TechnologyType = 'TECH_MACHINERY';

UPDATE Technologies 
SET Description =
(SELECT BaseTechnologyText || PrereqTechDescriptionTextAddition FROM Resources_TC_Harvestable_Text_Grouped WHERE Technologies.TechnologyType = Resources_TC_Harvestable_Text_Grouped.TechnologyType)
WHERE EXISTS ( SELECT BaseTechnologyText || PrereqTechDescriptionTextAddition FROM Resources_TC_Harvestable_Text_Grouped WHERE Technologies.TechnologyType = Resources_TC_Harvestable_Text_Grouped.TechnologyType );

--=======================================================================================================================
--Add ability to remove flood plains
--=======================================================================================================================

UPDATE Features 
SET RemoveTech = 'TECH_ENGINEERING', Removable = '1'
WHERE FeatureType = 'FEATURE_FLOODPLAINS';

UPDATE Features 
SET RemoveTech = 'TECH_ENGINEERING', Removable = '1'
WHERE FeatureType = 'FEATURE_REEF';

UPDATE Technologies 
SET Description = 'Allows removal of flood plains and reefs.'
WHERE TechnologyType = 'TECH_ENGINEERING';

--=======================================================================================================================
--Cleanup
--=======================================================================================================================

DROP TABLE Resources_TC_Harvestable;
DROP TABLE Resources_TC_Harvestable_Luxury_Data;
DROP TABLE Resources_TC_Harvestable_Text_Grouped;