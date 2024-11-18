# Set the angle based on item data

# Math. y = 45x - 135
$execute store result score $(angle) RIFTcontrols run data get entity @e[type=item_frame,tag=target_angle,limit=1] ItemRotation

$scoreboard players operation $(angle) RIFTcontrols *= 45 constant
$scoreboard players operation $(angle) RIFTcontrols -= 135 constant

# Set the score
scoreboard players set setAngleButton RIFTcontrols 1