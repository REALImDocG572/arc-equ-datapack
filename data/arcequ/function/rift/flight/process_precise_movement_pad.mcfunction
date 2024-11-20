# Process data from the crafter block acting as the Precise Movement pad/interface

# Count number of total disabled slots
#execute store result score totalDisabledSlots RIFTPMSlots if data block -3 0 0 disabled_slots[]


execute if data block -3 0 0 disabled_slots[0] run function arcequ:rift/flight/count_precise_movement_slots {"item":"0"}
execute if data block -3 0 0 disabled_slots[1] run function arcequ:rift/flight/count_precise_movement_slots {"item":"1"}
execute if data block -3 0 0 disabled_slots[2] run function arcequ:rift/flight/count_precise_movement_slots {"item":"2"}
execute if data block -3 0 0 disabled_slots[3] run function arcequ:rift/flight/count_precise_movement_slots {"item":"3"}
execute if data block -3 0 0 disabled_slots[4] run function arcequ:rift/flight/count_precise_movement_slots {"item":"4"}
execute if data block -3 0 0 disabled_slots[5] run function arcequ:rift/flight/count_precise_movement_slots {"item":"5"}
execute if data block -3 0 0 disabled_slots[6] run function arcequ:rift/flight/count_precise_movement_slots {"item":"6"}
execute if data block -3 0 0 disabled_slots[7] run function arcequ:rift/flight/count_precise_movement_slots {"item":"7"}
execute if data block -3 0 0 disabled_slots[8] run function arcequ:rift/flight/count_precise_movement_slots {"item":"8"}


execute if entity @e[type=armor_stand,tag=positiveX] run function arcequ:rift/flight/x_precise_movement {"direction":""}
execute unless entity @e[type=armor_stand,tag=positiveX] run function arcequ:rift/flight/x_precise_movement {"direction":"-"}
execute if entity @e[type=armor_stand,tag=positiveZ] run function arcequ:rift/flight/z_precise_movement {"direction":""}
execute unless entity @e[type=armor_stand,tag=positiveZ] run function arcequ:rift/flight/z_precise_movement {"direction":"-"}

scoreboard players set preciseMovementButton RIFTcontrols 1