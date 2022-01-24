-- This file is only active if the Tech and Civic Shuffle Mode is NOT activated
 
-- Decrease value of Boosts
UPDATE Boosts SET Boost = 25;

-- Increase Technology costs (credit to Zee for majority of values)
UPDATE Technologies SET Cost = ROUND(Cost*1.2)	WHERE EraType = 'ERA_ANCIENT';
UPDATE Technologies SET Cost = ROUND(Cost*1.5)  WHERE EraType = 'ERA_CLASSICAL';
UPDATE Technologies SET Cost = ROUND(Cost*1.9)  WHERE EraType = 'ERA_MEDIEVAL';
UPDATE Technologies SET Cost = ROUND(Cost*2.1)  WHERE EraType = 'ERA_RENAISSANCE';
UPDATE Technologies SET Cost = ROUND(Cost*2.3)	WHERE EraType = 'ERA_INDUSTRIAL';
UPDATE Technologies SET Cost = ROUND(Cost*2.4)	WHERE EraType = 'ERA_MODERN';
UPDATE Technologies SET Cost = ROUND(Cost*2.8)	WHERE EraType = 'ERA_ATOMIC';
UPDATE Technologies SET Cost = ROUND(Cost*3.2)	WHERE EraType = 'ERA_INFORMATION';
UPDATE Technologies SET Cost = ROUND(Cost*3.4)	WHERE EraType = 'ERA_FUTURE';
UPDATE TechnologyRandomCosts SET Cost = ROUND(Cost*3.4);

-- Increase Civic costs (credit to Zee for majority of values)
UPDATE Civics SET Cost = ROUND(Cost*1.4) WHERE EraType = 'ERA_ANCIENT';
UPDATE Civics SET Cost = ROUND(Cost*1.9) WHERE EraType = 'ERA_CLASSICAL';
UPDATE Civics SET Cost = ROUND(Cost*2.3) WHERE EraType = 'ERA_MEDIEVAL';
UPDATE Civics SET Cost = ROUND(Cost*2.5) WHERE EraType = 'ERA_RENAISSANCE';
UPDATE Civics SET Cost = ROUND(Cost*2.9) WHERE EraType = 'ERA_INDUSTRIAL';
UPDATE Civics SET Cost = ROUND(Cost*3.1) WHERE EraType = 'ERA_MODERN';
UPDATE Civics SET Cost = ROUND(Cost*3.3) WHERE EraType = 'ERA_ATOMIC';
UPDATE Civics SET Cost = ROUND(Cost*3.5) WHERE EraType = 'ERA_INFORMATION';
UPDATE Civics SET Cost = ROUND(Cost*3.8) WHERE EraType = 'ERA_FUTURE';
UPDATE CivicRandomCosts SET Cost = ROUND(Cost*3.8);

-- Increase Great Person costs (credit to Zee for majority of values)
UPDATE Eras SET GreatPersonBaseCost = ROUND(GreatPersonBaseCost*1.3) WHERE EraType = 'ERA_CLASSICAL';
UPDATE Eras SET GreatPersonBaseCost = ROUND(GreatPersonBaseCost*1.5) WHERE EraType = 'ERA_MEDIEVAL';
UPDATE Eras SET GreatPersonBaseCost = ROUND(GreatPersonBaseCost*1.7) WHERE EraType = 'ERA_RENAISSANCE';
UPDATE Eras SET GreatPersonBaseCost = ROUND(GreatPersonBaseCost*1.9) WHERE EraType = 'ERA_INDUSTRIAL';
UPDATE Eras SET GreatPersonBaseCost = ROUND(GreatPersonBaseCost*2.0) WHERE EraType = 'ERA_MODERN';
UPDATE Eras SET GreatPersonBaseCost = ROUND(GreatPersonBaseCost*2.4) WHERE EraType = 'ERA_ATOMIC';
UPDATE Eras SET GreatPersonBaseCost = ROUND(GreatPersonBaseCost*2.6) WHERE EraType = 'ERA_INFORMATION';
UPDATE Eras SET GreatPersonBaseCost = ROUND(GreatPersonBaseCost*2.8) WHERE EraType = 'ERA_FUTURE';

-- Adjust turns per era (credit to Zee for majority of values)
UPDATE Eras_XP1 SET GameEraMinimumTurns = 52, GameEraMaximumTurns = 62 WHERE EraType = 'ERA_ANCIENT';
UPDATE Eras_XP1 SET GameEraMinimumTurns = 55, GameEraMaximumTurns = 62 WHERE EraType = 'ERA_CLASSICAL';
UPDATE Eras_XP1 SET GameEraMinimumTurns = 55, GameEraMaximumTurns = 60 WHERE EraType = 'ERA_MEDIEVAL';
UPDATE Eras_XP1 SET GameEraMinimumTurns = 55, GameEraMaximumTurns = 60 WHERE EraType = 'ERA_RENAISSANCE';
UPDATE Eras_XP1 SET GameEraMinimumTurns = 55, GameEraMaximumTurns = 60 WHERE EraType = 'ERA_INDUSTRIAL';
UPDATE Eras_XP1 SET GameEraMinimumTurns = 50, GameEraMaximumTurns = 55 WHERE EraType = 'ERA_MODERN';
UPDATE Eras_XP1 SET GameEraMinimumTurns = 52, GameEraMaximumTurns = 60 WHERE EraType = 'ERA_ATOMIC';
UPDATE Eras_XP1 SET GameEraMinimumTurns = 48, GameEraMaximumTurns = 58 WHERE EraType = 'ERA_INFORMATION';
