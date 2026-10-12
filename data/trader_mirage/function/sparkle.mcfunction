# Executed as + at a disguised trader. Roughly 1 tick in 25 shows a faint particle.
# (Uses the random command instead of a predicate file, because the predicate JSON format differs between versions.)
execute store result score #r tm_state run random value 1..25
execute if score #r tm_state matches 1 run particle minecraft:witch ~ ~1.3 ~ 0.25 0.35 0.25 0 2
