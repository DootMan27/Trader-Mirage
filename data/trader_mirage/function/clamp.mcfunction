# Keep every per-difficulty value between 0% and 100% (0..1000 permille)
execute if score #easy tm_cfg matches ..-1 run scoreboard players set #easy tm_cfg 0
execute if score #easy tm_cfg matches 1001.. run scoreboard players set #easy tm_cfg 1000
execute if score #normal tm_cfg matches ..-1 run scoreboard players set #normal tm_cfg 0
execute if score #normal tm_cfg matches 1001.. run scoreboard players set #normal tm_cfg 1000
execute if score #hard tm_cfg matches ..-1 run scoreboard players set #hard tm_cfg 0
execute if score #hard tm_cfg matches 1001.. run scoreboard players set #hard tm_cfg 1000
