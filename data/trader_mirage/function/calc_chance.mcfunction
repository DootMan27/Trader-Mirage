# Reads the CURRENT difficulty every time, so changing it mid-game just works.
# Results: #diff tm_state   = 0 peaceful, 1 easy, 2 normal, 3 hard
#          #chance tm_state = chance in permille (0..1000) = (misses + 1) * value, capped
scoreboard players set #diff tm_state 0
execute store result score #diff tm_state run difficulty

scoreboard players set #value tm_state 0
execute if score #diff tm_state matches 1 run scoreboard players operation #value tm_state = #easy tm_cfg
execute if score #diff tm_state matches 2 run scoreboard players operation #value tm_state = #normal tm_cfg
execute if score #diff tm_state matches 3 run scoreboard players operation #value tm_state = #hard tm_cfg
execute if score #value tm_state matches 1001.. run scoreboard players set #value tm_state 1000
execute if score #value tm_state matches ..-1 run scoreboard players set #value tm_state 0

scoreboard players operation #chance tm_state = #pity tm_state
scoreboard players add #chance tm_state 1
scoreboard players operation #chance tm_state *= #value tm_state
execute if score #chance tm_state matches 1001.. run scoreboard players set #chance tm_state 1000
