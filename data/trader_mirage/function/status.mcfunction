# /function trader_mirage:status
function trader_mirage:calc_chance
scoreboard players operation #whole tm_state = #chance tm_state
scoreboard players operation #whole tm_state /= #ten tm_state
scoreboard players operation #tenth tm_state = #chance tm_state
scoreboard players operation #tenth tm_state %= #ten tm_state
tellraw @s [{"text":"[Trader Mirage] ","color":"light_purple"},{"text":"Ordinary traders in a row: ","color":"gray"},{"score":{"name":"#pity","objective":"tm_state"},"color":"white"}]
execute if score #diff tm_state matches 0 run tellraw @s {"text":"Difficulty is Peaceful: disguises are paused.","color":"gray"}
execute unless score #diff tm_state matches 0 run tellraw @s [{"text":"Next trader is an illusioner with ","color":"gray"},{"score":{"name":"#whole","objective":"tm_state"},"color":"white"},{"text":".","color":"white"},{"score":{"name":"#tenth","objective":"tm_state"},"color":"white"},{"text":"% chance","color":"white"}]
