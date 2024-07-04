# Natural spawn

# Reset score for zombies
scoreboard players set zombies mobCount 0

# Transform!
data merge entity @s {Tags:["zombie_brute"],CustomName:'{"translate":"entity.arcequ.zombie_brute","color":"gray"}',ArmorItems:[{id:"minecraft:iron_boots",count:1},{id:"minecraft:iron_leggings",count:1},{id:"minecraft:iron_chestplate",count:1},{id:"minecraft:leather_helmet",count:1,components:{"minecraft:enchantments":{"levels":{"arcequ:smob/zombie_brute":1}},"minecraft:trim":{"pattern":"minecraft:sentry","material":"copper"}}}],attributes:[{id:"minecraft:generic.knockback_resistance",base:0.5d},{id:"minecraft:generic.movement_speed",base:0.18d},{id:"minecraft:generic.max_health",base:60d}],Health:60.0f,IsBaby:0}
scoreboard players set @s smobCD1 1600
scoreboard players set @s smobAD1 -1

# debug
#say Tremble in fear for I, @s, have spawned as a Zombie Brute