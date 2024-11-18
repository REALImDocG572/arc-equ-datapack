# Precisely manipulate the chosen angle negatively/'leftwards'/counterclockwise based on the repeater value


$execute if block 2 2 0 minecraft:repeater[delay=1] run scoreboard players $(operation) $(angle) RIFTcontrols 1
$execute if block 2 2 0 minecraft:repeater[delay=2] run scoreboard players $(operation) $(angle) RIFTcontrols 2
$execute if block 2 2 0 minecraft:repeater[delay=3] run scoreboard players $(operation) $(angle) RIFTcontrols 3
$execute if block 2 2 0 minecraft:repeater[delay=4] run scoreboard players $(operation) $(angle) RIFTcontrols 4

scoreboard players set manipulateAngleButton RIFTcontrols 1