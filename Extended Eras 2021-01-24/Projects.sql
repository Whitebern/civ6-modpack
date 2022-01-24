-- Increase Project cost scaling (credit to Zee)
UPDATE Projects SET CostProgressionParam1 = 2500 WHERE CostProgressionModel = 'COST_PROGRESSION_GAME_PROGRESS';