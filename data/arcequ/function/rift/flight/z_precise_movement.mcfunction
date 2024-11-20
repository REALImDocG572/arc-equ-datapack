# Performs precise movements on the Z coordinate based on armor stand dummy_RIFT's tags

$execute if entity @e[type=armor_stand,tag=dummy_RIFT,tag=z4] as @e[type=armor_stand,tag=exterior_RIFT] at @s run tp ~ ~ ~$(direction)4
$execute if entity @e[type=armor_stand,tag=dummy_RIFT,tag=z2] as @e[type=armor_stand,tag=exterior_RIFT] at @s run tp ~ ~ ~$(direction)2
$execute if entity @e[type=armor_stand,tag=dummy_RIFT,tag=z1] as @e[type=armor_stand,tag=exterior_RIFT] at @s run tp ~ ~ ~$(direction)1

tag @e[type=armor_stand,tag=dummy_RIFT,tag=z4] remove z4
tag @e[type=armor_stand,tag=dummy_RIFT,tag=z2] remove z2
tag @e[type=armor_stand,tag=dummy_RIFT,tag=z1] remove z1
tag @e[type=armor_stand,tag=dummy_RIFT,tag=positiveZ] remove positiveZ