-- Make roads more effective (credit to Olleus)
UPDATE Routes SET MovementCost = 0.75  WHERE RouteType='ROUTE_ANCIENT_ROAD';
UPDATE Routes SET MovementCost = 0.625 WHERE RouteType='ROUTE_MEDIEVAL_ROAD'; 
UPDATE Routes SET MovementCost = 0.5 WHERE RouteType='ROUTE_INDUSTRIAL_ROAD'; 
UPDATE Routes SET MovementCost = 0.375  WHERE RouteType='ROUTE_MODERN_ROAD';

