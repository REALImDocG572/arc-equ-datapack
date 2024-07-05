# Stuff to run while in ranged mode

execute if entity @n[team=Players,distance=..6] run data merge entity @s {HandItems:[{id:"minecraft:stone_sword",count:1,components:{"minecraft:enchantments":{"levels":{"arcequ:smob/skeleton_duelist_melee":1,"minecraft:vanishing_curse":1}}}},{}]}