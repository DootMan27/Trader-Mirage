# /function trader_mirage:set_hard {value:50}   (permille: 50 = 5%; used as base chance AND per-miss increase)
$scoreboard players set #hard tm_cfg $(value)
function trader_mirage:clamp
