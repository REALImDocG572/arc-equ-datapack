# Stuff to run while in melee mode

execute unless entity @n[team=Players,distance=..8] run data merge entity @s {HandItems:[{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{"levels":{"arcequ:smob/skeleton_duelist_ranged":1,"minecraft:vanishing_curse":1}}}},{}]}