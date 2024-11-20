# uhh something


$say $(item)
$execute store result score dummy RIFTPMSlots run data get block -3 0 0 disabled_slots[$(item)]

execute if score dummy RIFTPMSlots matches 0 run tag @e[type=armor_stand,tag=dummy_RIFT] add x4
execute if score dummy RIFTPMSlots matches 1 run tag @e[type=armor_stand,tag=dummy_RIFT] add x2
execute if score dummy RIFTPMSlots matches 2 run tag @e[type=armor_stand,tag=dummy_RIFT] add x1

execute if score dummy RIFTPMSlots matches 3 run tag @e[type=armor_stand,tag=dummy_RIFT] add positiveX
execute if score dummy RIFTPMSlots matches 5 run tag @e[type=armor_stand,tag=dummy_RIFT] add positiveZ

execute if score dummy RIFTPMSlots matches 6 run tag @e[type=armor_stand,tag=dummy_RIFT] add z4
execute if score dummy RIFTPMSlots matches 7 run tag @e[type=armor_stand,tag=dummy_RIFT] add z2
execute if score dummy RIFTPMSlots matches 8 run tag @e[type=armor_stand,tag=dummy_RIFT] add z1
