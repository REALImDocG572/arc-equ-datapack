# Performs movement calculations based on angles and stuff 

# Move in the selected direction based on speed. 1 = sluggish, 2 = slow, 3 = fast
execute if score speed RIFTcontrols matches 1 run tp ^ ^ ^1
execute if score speed RIFTcontrols matches 2 run tp ^ ^ ^2.5
execute if score speed RIFTcontrols matches 3 run tp ^ ^ ^4

# Forceload
forceload add ~ ~

# Altitudifier
execute if score altitudifierTimer RIFTcontrols matches 0 if score altitudifier RIFTcontrols matches 0 run function arcequ:rift/flight/change_altitude {"change":"-1"}
execute if score altitudifierTimer RIFTcontrols matches 0 if score altitudifier RIFTcontrols matches 1 run function arcequ:rift/flight/change_altitude {"change":"1"}

# Spatial highway boost
execute if score spatialHighway RIFTcontrols matches 1 if score speed RIFTcontrols matches 0 run tp ^ ^ ^1.5