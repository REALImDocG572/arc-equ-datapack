#

# roar
playsound minecraft:entity.ender_dragon.growl hostile @a ~ ~ ~ 1 2

# Get positions
execute store result score @s x1 run data get entity @s Pos[0] 1000
execute store result score @s y1 run data get entity @s Pos[1] 1000
execute store result score @s z1 run data get entity @s Pos[2] 1000

execute positioned ^ ^ ^1 summon minecraft:area_effect_cloud positioned ^ ^ ^-1 run function arcequ:smob/ability/dash/get_aec_pos

# Add a bit to the Y motion if the AEC and mob scores are too similar or remove if y2 is too high
scoreboard players operation @s y2 -= @s y1
scoreboard players add @s[scores={y2=-50..300}] y2 180
scoreboard players remove @s[scores={y2=700..1000}] y2 200

# Apply motion
execute store result entity @s Motion[0] double 0.0015 run scoreboard players operation @s x2 -= @s x1
execute store result entity @s Motion[1] double 0.0018 run scoreboard players get @s y2
execute store result entity @s Motion[2] double 0.0015 run scoreboard players operation @s z2 -= @s z1

# Return to normal functioning
data merge entity @s {NoAI:0}

scoreboard players set @s smobCD1 1600
scoreboard players set @s smobAD1 -1