# Runs every 5 ticks from the running of arcequ:load

# debug
#say 5tick

# Smob spawning
execute as @e[type=#arcequ:smob/can_spawn_smob,tag=!counted] run function arcequ:smob/count


# Do RIFT things
execute in arcequ:the_rift run function arcequ:rift/index

# Reschedule
schedule function arcequ:5tick 5t replace