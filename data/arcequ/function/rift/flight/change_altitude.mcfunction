# Change altitude based on altitudifier setting

# Teleport
$tp ~ ~$(change) ~

# Set the timer back up based on the clock. clock 1 = 2 seconds / 8 5ticks, clock 2 = 6 seconds / 24 5ticks, clock 3 = 12 seconds / 48 5ticks, clock 4 = 30 seconds / 120 5ticks
execute in arcequ:the_rift if block 1 2 -2 minecraft:repeater[delay=1] run scoreboard players set altitudifierTimer RIFTcontrols 8
execute in arcequ:the_rift if block 1 2 -2 minecraft:repeater[delay=2] run scoreboard players set altitudifierTimer RIFTcontrols 24
execute in arcequ:the_rift if block 1 2 -2 minecraft:repeater[delay=3] run scoreboard players set altitudifierTimer RIFTcontrols 48
execute in arcequ:the_rift if block 1 2 -2 minecraft:repeater[delay=4] run scoreboard players set altitudifierTimer RIFTcontrols 120