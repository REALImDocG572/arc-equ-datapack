# Load function

# Schedule 5-tick and 20-tick functions
schedule function arcequ:5tick 5t replace
schedule function arcequ:20tick 20t replace

### Teams
team add Players
team add Hostiles

### Scoreboards n stuff

# Coordinates
scoreboard objectives add x1 dummy
scoreboard objectives add y1 dummy
scoreboard objectives add z1 dummy
scoreboard objectives add x2 dummy
scoreboard objectives add y2 dummy
scoreboard objectives add z2 dummy

# Smob spawning
scoreboard objectives add mobCount dummy

# Smob cooldowns
scoreboard objectives add smobCD1 dummy
scoreboard objectives add smobCD2 dummy
scoreboard objectives add smobCD3 dummy

# Smob ability dummies
scoreboard objectives add smobAD1 dummy

tellraw @a [{"text":"Arcanic Equilibrium has successfully loaded (arcequ:load)"}]