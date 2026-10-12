# Executed as a wandering trader that has never been rolled for.
tag @s add tm_rolled
function trader_mirage:calc_chance
# Peaceful: illusioners can't exist there, so this trader is simply ordinary and the streak is untouched.
execute if score #diff tm_state matches 0 run return 0
execute store result score #roll tm_state run random value 1..1000
execute if score #roll tm_state <= #chance tm_state run function trader_mirage:hit
execute unless entity @s[tag=tm_mirage] run function trader_mirage:miss
