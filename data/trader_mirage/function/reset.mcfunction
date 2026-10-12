# /function trader_mirage:reset  (clears the streak)
scoreboard players set #pity tm_state 0
tellraw @s [{"text":"[Trader Mirage] ","color":"light_purple"},{"text":"Streak reset.","color":"gray"}]
