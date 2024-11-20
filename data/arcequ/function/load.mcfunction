# Load function

# Schedule 5-tick and 20-tick functions
schedule function arcequ:5tick 5t replace
schedule function arcequ:20tick 20t replace

### Teams
team add Players
team add Hostiles

### Scoreboards n stuff

# Maths
scoreboard objectives add constant dummy
scoreboard players set 45 constant 45
scoreboard players set 135 constant 135

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

# RIFT
scoreboard objectives add RIFTcontrols dummy
scoreboard objectives add RIFTetpCD dummy
scoreboard objectives add RIFTPMSlots dummy

# Misc tests
scoreboard objectives add miscTests dummy
scoreboard objectives add miscTests2 dummy

tellraw @a [{"text":"Arcanic Equilibrium has successfully loaded (arcequ:load)"}]