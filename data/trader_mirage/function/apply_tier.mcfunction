# Copies the settings for the current difficulty into the active slots.
# 0 = peaceful (feature paused), 1 = easy, 2 = normal, 3+ = hard
scoreboard players operation #last tm_state = #diff tm_state
scoreboard players set #active tm_state 1
execute if score #diff tm_state matches 0 run scoreboard players set #active tm_state 0

scoreboard players operation #abase tm_state = #base_normal tm_cfg
scoreboard players operation #astep tm_state = #step_normal tm_cfg
execute if score #diff tm_state matches 1 run scoreboard players operation #abase tm_state = #base_easy tm_cfg
execute if score #diff tm_state matches 1 run scoreboard players operation #astep tm_state = #step_easy tm_cfg
execute if score #diff tm_state matches 3.. run scoreboard players operation #abase tm_state = #base_hard tm_cfg
execute if score #diff tm_state matches 3.. run scoreboard players operation #astep tm_state = #step_hard tm_cfg
