# Gets position of AEC

execute store result score @n[type=zombie,tag=zombie_brute] x2 run data get entity @s Pos[0] 1000
execute store result score @n[type=zombie,tag=zombie_brute] y2 run data get entity @s Pos[1] 1000
execute store result score @n[type=zombie,tag=zombie_brute] z2 run data get entity @s Pos[2] 1000