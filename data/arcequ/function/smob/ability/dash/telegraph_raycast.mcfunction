# Recursive raycast for particle effects

# Cool particles
particle minecraft:enchanted_hit ~ ~ ~ 0.5 0.5 0.5 0.1 100 normal

# Rerun unless raycast is done
execute positioned ^ ^ ^1 if entity @s[distance=..8] run function arcequ:smob/ability/dash/telegraph_raycast