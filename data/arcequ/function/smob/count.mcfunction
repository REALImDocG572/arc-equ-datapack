# Count a mob

execute if entity @s[type=zombie] run function arcequ:smob/count/zombie
execute if entity @s[type=skeleton] run function arcequ:smob/count/skeleton
execute if entity @s[type=enderman] run function arcequ:smob/count/enderman

# Tag
tag @s add counted