# Performs precise movements on the X coordinate based on armor stand dummy_RIFT's tags

$execute if entity @e[type=armor_stand,tag=dummy_RIFT,tag=x4] as @e[type=armor_stand,tag=exterior_RIFT] at @s run tp ~$(direction)4 ~ ~
$execute if entity @e[type=armor_stand,tag=dummy_RIFT,tag=x2] as @e[type=armor_stand,tag=exterior_RIFT] at @s run tp ~$(direction)2 ~ ~
$execute if entity @e[type=armor_stand,tag=dummy_RIFT,tag=x1] as @e[type=armor_stand,tag=exterior_RIFT] at @s run tp ~$(direction)1 ~ ~

tag @e[type=armor_stand,tag=dummy_RIFT,tag=x4] remove x4
tag @e[type=armor_stand,tag=dummy_RIFT,tag=x2] remove x2
tag @e[type=armor_stand,tag=dummy_RIFT,tag=x1] remove x1
tag @e[type=armor_stand,tag=dummy_RIFT,tag=positiveX] remove positiveX