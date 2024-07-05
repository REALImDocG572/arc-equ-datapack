# Natural spawn

# Reset score for skeletons
scoreboard players set skeletons mobCount 0

# Transform!
data merge entity @s {Tags:["skeleton_duelist"],CustomName:'{"translate":"entity.arcequ.skeleton_duelist","color":"gray"}',HandItems:[{id:"minecraft:bow",count:1,components:{"minecraft:enchantments":{"levels":{"arcequ:smob/skeleton_duelist_ranged":1,"minecraft:vanishing_curse":1}}}},{}],ArmorItems:[{id:"minecraft:chainmail_boots",count:1,components:{"minecraft:enchantments":{"levels":{"minecraft:vanishing_curse":1}},"minecraft:enchantment_glint_override":false,"minecraft:trim":{pattern:"minecraft:dune",material:"minecraft:iron"}}},{id:"minecraft:chainmail_leggings",count:1},{id:"minecraft:chainmail_chestplate",count:1},{id:"minecraft:leather_helmet",count:1,components:{"minecraft:enchantments":{"levels":{"arcequ:smob/skeleton_duelist":1,"minecraft:vanishing_curse":1}},"minecraft:enchantment_glint_override":false,"minecraft:trim":{pattern:"minecraft:silence",material:"minecraft:netherite"},"minecraft:dyed_color":{rgb:1908001}}}],attributes:[{id:"minecraft:generic.max_health",base:60d}],Health:60.0f,DeathLootTable:"arcequ:entity/smob/skeleton_duelist"}

# debug
#say Tremble in fear for I, @s, have spawned as a Skeleton Duelist