# Executed as the freshly summoned illusioner.
data merge entity @s {PersistenceRequired:1b}
# Safety net: make sure it holds a bow
execute unless items entity @s weapon.mainhand * run item replace entity @s weapon.mainhand with minecraft:bow
# Face the same way the trader did
execute rotated as @e[type=minecraft:wandering_trader,tag=tm_mirage,distance=..1,limit=1,sort=nearest] run tp @s ~ ~ ~ ~ ~
