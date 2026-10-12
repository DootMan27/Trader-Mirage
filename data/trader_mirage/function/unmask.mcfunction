# Executed as + at the disguised trader.
# Mark illusioners already nearby so the new one can be told apart.
tag @e[type=minecraft:illusioner,distance=..3] add tm_old

# Summon with NO nbt: only then does the game run its spawn setup (which hands the illusioner its bow).
summon minecraft:illusioner ~ ~ ~

# Tweak the new one afterwards instead of passing nbt in the summon.
execute as @n[type=minecraft:illusioner,tag=!tm_old,distance=..1] run function trader_mirage:setup_illusioner
tag @e[type=minecraft:illusioner,distance=..3] remove tm_old

particle minecraft:cloud ~ ~1 ~ 0.4 0.6 0.4 0.05 30
playsound minecraft:entity.illusioner.prepare_mirror hostile @a ~ ~ ~ 2 0.9
tp @s ~ -1000 ~
kill @s
