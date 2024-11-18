# Performs movement calculations based on angles and stuff

# Reorient based on new angles
execute if score chosenAngle RIFTcontrols matches 0 store result entity @s Rotation[0] float 1 run scoreboard players get primaryAngle RIFTcontrols
execute if score chosenAngle RIFTcontrols matches 1 store result entity @s Rotation[0] float 1 run scoreboard players get secondaryAngle RIFTcontrols

# Altitudifier
#execute 
