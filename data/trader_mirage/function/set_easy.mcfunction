# /function trader_mirage:set_easy {value:50}   (permille: 50 = 5%; used as base chance AND per-miss increase)
$scoreboard players set #easy tm_cfg $(value)
function trader_mirage:clamp
