# Runs on every world load / reload.
scoreboard objectives add tm_state dummy "Trader Mirage: state"
scoreboard objectives add tm_cfg dummy "Trader Mirage: settings"
scoreboard objectives add tm_talk minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add tm_config trigger "Trader Mirage settings"

# Constants
scoreboard players set #ten tm_state 10

# Per-difficulty value in permille (50 = 5.0%). Used as BOTH the base chance and the
# per-miss increase. Only applied if never configured.
execute unless score #easy tm_cfg matches 0..1000 run scoreboard players set #easy tm_cfg 50
execute unless score #normal tm_cfg matches 0..1000 run scoreboard players set #normal tm_cfg 100
execute unless score #hard tm_cfg matches 0..1000 run scoreboard players set #hard tm_cfg 150
execute unless score #hint tm_cfg matches 0..1 run scoreboard players set #hint tm_cfg 1

# Clean up settings from v1 of this pack, if present
scoreboard players reset #base tm_cfg
scoreboard players reset #step tm_cfg

# Make sure the miss counter exists
scoreboard players add #pity tm_state 0
