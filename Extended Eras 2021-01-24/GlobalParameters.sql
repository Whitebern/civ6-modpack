-- Reduce Science and Culture per citizen
UPDATE GlobalParameters SET Value = 25 WHERE Name='CULTURE_PERCENTAGE_YIELD_PER_POP'; --default 30
UPDATE GlobalParameters SET Value = 45 WHERE Name='SCIENCE_PERCENTAGE_YIELD_PER_POP';	--default 50

-- Make Techs and Civics more expensive once the player is beyond the current Era
UPDATE GlobalParameters SET Value = 40 WHERE Name='CIVIC_COST_PERCENT_CHANGE_AFTER_GAME_ERA';	--default 20
UPDATE GlobalParameters SET Value = 40 WHERE Name='TECH_COST_PERCENT_CHANGE_AFTER_GAME_ERA';	--default 20

-- Adjust thresholds for Golden Ages and Dark Ages (DISREGARD)
-- UPDATE GlobalParameters SET Value = 16 WHERE Name = 'DARK_AGE_SCORE_BASE_THRESHOLD';		-- default 12
-- UPDATE GlobalParameters SET Value = 30 WHERE Name = 'GOLDEN_AGE_SCORE_BASE_THRESHOLD';	-- default 24
-- UPDATE GlobalParameters SET Value = 2 	WHERE Name = 'THRESHOLD_SHIFT_PER_CITY';			-- default 1
-- UPDATE GlobalParameters SET Value = -6 	WHERE Name = 'THRESHOLD_SHIFT_PER_PAST_DARK_AGE';	-- default -5
-- UPDATE GlobalParameters SET Value = 6 	WHERE Name = 'THRESHOLD_SHIFT_PER_PAST_GOLDEN_AGE';	-- default 5

-- More difficult to avoid Dark Age
UPDATE GlobalParameters
SET Value = Value + 1 -- default 1 (default 3 for Dramatic Ages)
WHERE Name = 'THRESHOLD_SHIFT_PER_CITY';

UPDATE GlobalParameters
SET Value = Value + 2 -- default 5
WHERE Name = 'THRESHOLD_SHIFT_PER_PAST_GOLDEN_AGE';

-- Slow down population growth to compensate for slower progress (credit to Olleus)
UPDATE GlobalParameters SET Value = 2.1 WHERE Name = 'CITY_GROWTH_EXPONENT'; -- default 1.5

-- Increase Diplomatic Victory point threshold. This change will not occur if using another mod that changes this threshold, such as my Apocalypse Mode++
UPDATE GlobalParameters SET Value = 30 WHERE Name = 'DIPLOMATIC_VICTORY_POINTS_REQUIRED' AND Value = 20;