# Fallback: if the query ever fails, treat the world as Normal (2).
scoreboard players set #diff tm_state 2
execute store result score #diff tm_state run difficulty
execute unless score #diff tm_state = #last tm_state run function trader_mirage:apply_tier
