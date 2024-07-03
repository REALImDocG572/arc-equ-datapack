# Reset score for zombies
scoreboard players set zombies mobCount 0

# Transform!
data merge entity @s {CustomName:'{"translate":"entity.arcequ.zombie_brute","color":"gray"}',ArmorItems:[{id:"minecraft:iron_boots",count:1},{id:"minecraft:iron_leggings",count:1},{id:"minecraft:iron_chestplate",count:1},{id:"minecraft:leather_helmet",count:1,components:{"minecraft:trim":{"pattern":"minecraft:sentry","material":"copper"}}}]}

# debug
#say Tremble in fear for I, @s, have spawned as a Zombie Brute