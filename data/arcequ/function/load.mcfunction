# Load function

# Schedule 5-tick and 20-tick functions
schedule function arcequ:5tick 5t replace
schedule function arcequ:20tick 20t replace

# Scoreboards n stuff
scoreboard objectives add mobCount dummy

tellraw @a [{"text":"Arcanic Equilibrium has successfully loaded (arcequ:load)"}]