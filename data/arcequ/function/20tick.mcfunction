# Runs every 20 ticks from the running of arcequ:load

# debug
#say 20tick

# Tome trades for Librarians
execute as @e[type=villager,tag=!given_tome_trades,predicate=arcequ:misc/detect_librarian_profession] run function arcequ:misc/tome_trades
tag @e[type=villager,tag=given_tome_trades,predicate=!arcequ:misc/detect_librarian_profession] remove given_tome_trades


# Restart
schedule function arcequ:20tick 20t replace