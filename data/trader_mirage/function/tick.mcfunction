execute store result score #diff tm_state run difficulty

# 0) Settings menu: /trigger tm_config
scoreboard players enable @a tm_config
execute as @a[scores={tm_config=1..}] run function trader_mirage:config
scoreboard players set @a[scores={tm_config=1..}] tm_config 0

# 1) Give every newly seen wandering trader its one-time roll
execute as @e[type=minecraft:wandering_trader,tag=!tm_rolled] at @s run function trader_mirage:roll

# 2) Optional faint tell for disguised traders
execute if score #hint tm_cfg matches 1 as @e[type=minecraft:wandering_trader,tag=tm_mirage] at @s run function trader_mirage:sparkle

# 3) Unmask when a player interacts with a disguised trader (not on Peaceful, where the illusioner would vanish instantly)
execute unless score #diff tm_state matches 0 as @a[scores={tm_talk=1..}] at @s as @e[type=minecraft:wandering_trader,tag=tm_mirage,distance=..6,sort=nearest,limit=1] at @s run function trader_mirage:unmask
scoreboard players set @a[scores={tm_talk=1..}] tm_talk 0

# 4) ...or when it takes any damage (same Peaceful rule)
execute unless score #diff tm_state matches 0 as @e[type=minecraft:wandering_trader,tag=tm_mirage] unless data entity @s {HurtTime:0s} at @s run function trader_mirage:unmask
