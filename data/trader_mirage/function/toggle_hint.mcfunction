# Flip the particle hint on/off, then redraw the menu.
execute if score #hint tm_cfg matches 1 run scoreboard players set #hint tm_cfg 5
execute if score #hint tm_cfg matches 0 run scoreboard players set #hint tm_cfg 1
execute if score #hint tm_cfg matches 5 run scoreboard players set #hint tm_cfg 0
function trader_mirage:config
