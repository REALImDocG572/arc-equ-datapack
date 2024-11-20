# Called by 5tick. IF there are players in the RIFT at all, check all the controls to determine what to do.

# Check entranceway status: 0 = open, 1 = closed
execute if block 0 1 3 minecraft:lever[powered=true] unless score entranceway RIFTcontrols matches 0 run function arcequ:rift/entranceway/open
execute if block 0 1 3 minecraft:lever[powered=false] unless score entranceway RIFTcontrols matches 1 run function arcequ:rift/entranceway/close



### Check various flight controls
# Indicator (comparator): 0 = off (compare mode), 1 = on (subtract mode)
execute store success score indicator RIFTcontrols if block -1 1 3 minecraft:comparator[mode=subtract]

# Chosen angle (lever): 0 = primary, 1 = secondary
execute store success score chosenAngle RIFTcontrols if block 3 1 0 minecraft:lever[powered=true]

# Handbrakes (lever): 0 = off (which means flying), 1 = on (which is NOT flying)
execute store success score handbrakes RIFTcontrols if block 3 1 1 minecraft:lever[powered=false]

# Set angle (button): 0 = unpressed, 1 = pressed
execute if block 4 0 0 minecraft:stone_button[powered=true] if score chosenAngle RIFTcontrols matches 0 if score setAngleButton RIFTcontrols matches 0 run function arcequ:rift/flight/set_angle {"angle":"primaryAngle"}
execute if block 4 0 0 minecraft:stone_button[powered=true] if score chosenAngle RIFTcontrols matches 1 if score setAngleButton RIFTcontrols matches 0 run function arcequ:rift/flight/set_angle {"angle":"secondaryAngle"}
execute if block 4 0 0 minecraft:stone_button[powered=false] run scoreboard players set setAngleButton RIFTcontrols 0

# Manipulate angle: 0 = unpressed, 1 = pressed
#execute if block 2 2 1 minecraft:stone_button[powered=true] if score manipulateAngleButton RIFTcontrols matches 0 if block 2 2 -1 minecraft:lever[powered=false] if score chosenAngle RIFTcontrols matches 0 run function arcequ:rift/flight/manipulate_angle {"operation":"remove","angle":"primaryAngle"}
#execute if block 2 2 1 minecraft:stone_button[powered=true] if score manipulateAngleButton RIFTcontrols matches 0 if block 2 2 -1 minecraft:lever[powered=true] if score chosenAngle RIFTcontrols matches 0 run function arcequ:rift/flight/manipulate_angle {"operation":"add","angle":"primaryAngle"}

#execute if block 2 2 1 minecraft:stone_button[powered=true] if score manipulateAngleButton RIFTcontrols matches 0 if block 2 2 -1 minecraft:lever[powered=false] if score chosenAngle RIFTcontrols matches 1 run function arcequ:rift/flight/manipulate_angle {"operation":"remove","angle":"secondaryAngle"}
#execute if block 2 2 1 minecraft:stone_button[powered=true] if score manipulateAngleButton RIFTcontrols matches 0 if block 2 2 -1 minecraft:lever[powered=true] if score chosenAngle RIFTcontrols matches 1 run function arcequ:rift/flight/manipulate_angle {"operation":"add","angle":"secondaryAngle"}

execute if block 2 2 1 minecraft:stone_button[powered=true] if score manipulateAngleButton RIFTcontrols matches 0 run function arcequ:rift/flight/manipulate_angle_button

execute if block 2 2 1 minecraft:stone_button[powered=false] run scoreboard players set manipulateAngleButton RIFTcontrols 0

# Altitudifier (comparator): 0 = down, 1 = up (subtract mode)
execute store success score altitudifier RIFTcontrols if block 1 1 -3 minecraft:comparator[mode=subtract]

execute if score altitudifierTimer RIFTcontrols matches 1.. run scoreboard players remove altitudifierTimer RIFTcontrols 1

# Horizontal speed (repeater): 1 = off, 2 = sluggish (best for catching people / test piloting), 3 = slow , 4 = fast
execute if block 3 1 -1 minecraft:repeater[delay=1] run scoreboard players set speed RIFTcontrols 0
execute if block 3 1 -1 minecraft:repeater[delay=2] run scoreboard players set speed RIFTcontrols 1
execute if block 3 1 -1 minecraft:repeater[delay=3] run scoreboard players set speed RIFTcontrols 2
execute if block 3 1 -1 minecraft:repeater[delay=4] run scoreboard players set speed RIFTcontrols 3

# Neatinator (button)
execute if block -3 1 -1 minecraft:stone_button[powered=true] if score neatinatorButton RIFTcontrols matches 0 run function arcequ:rift/flight/neatinator
execute if block -3 1 -1 minecraft:stone_button[powered=false] run scoreboard players set neatinatorButton RIFTcontrols 0

# Precise Movement (button, uses a crafter interface)
execute if block -4 0 0 minecraft:stone_button[powered=true] if score preciseMovementButton RIFTcontrols matches 0 run function arcequ:rift/flight/process_precise_movement_pad
execute if block -4 0 0 minecraft:stone_button[powered=false] run scoreboard players set preciseMovementButton RIFTcontrols 0



# Teleport in/out
execute if score entranceway RIFTcontrols matches 0 as @e[type=armor_stand,tag=interior_RIFT] at @s as @e[distance=..0.6,tag=!interior_RIFT,scores={RIFTetpCD=..0}] rotated as @s at @e[type=armor_stand,tag=exterior_RIFT,limit=1] run function arcequ:rift/entranceway/teleport
execute if score entranceway RIFTcontrols matches 0 as @e[type=armor_stand,tag=exterior_RIFT] at @s as @e[distance=..0.6,tag=!exterior_RIFT,scores={RIFTetpCD=..0}] at @s rotated as @s positioned as @e[type=armor_stand,tag=interior_RIFT,limit=1] in arcequ:the_rift run function arcequ:rift/entranceway/teleport

scoreboard players remove @e[scores={RIFTetpCD=1..}] RIFTetpCD 1




### Movement
# Reorient based on new angles (can happen independent of movement related to handbrakes)
execute if score chosenAngle RIFTcontrols matches 0 store result entity @e[type=armor_stand,tag=exterior_RIFT,limit=1] Rotation[0] float 1 run scoreboard players get primaryAngle RIFTcontrols
execute if score chosenAngle RIFTcontrols matches 1 store result entity @e[type=armor_stand,tag=exterior_RIFT,limit=1] Rotation[0] float 1 run scoreboard players get secondaryAngle RIFTcontrols

# Do certain movements if handbrakes are off
execute if score handbrakes RIFTcontrols matches 0 as @e[type=armor_stand,tag=exterior_RIFT] at @s run function arcequ:rift/flight/movement




### FX
# Exterior entranceway
#execute if score entranceway RIFTcontrols matches 0 as @e[type=armor_stand,tag=interior_RIFT] run particle ...

# Closed interior and exterior entranceway particles
execute if score entranceway RIFTcontrols matches 1 at @e[type=armor_stand,tag=interior_RIFT] run particle minecraft:dust{color:[0,1,1],scale:1} ~ ~1 ~ 0 0.5 0 0.5 20 normal
execute if score entranceway RIFTcontrols matches 1 at @e[type=armor_stand,tag=exterior_RIFT] run particle minecraft:dust{color:[0,1,1],scale:1} ~ ~1 ~ 0 0.5 0 0.5 20 normal

# Exterior indicator
execute if score indicator RIFTcontrols matches 1 at @e[type=armor_stand,tag=exterior_RIFT] positioned ~ ~1 ~ run function arcequ:rift/fx/exterior_indicator