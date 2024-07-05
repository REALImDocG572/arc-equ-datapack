# Runs every 20 ticks from the running of arcequ:load

# debug
#say 20tick

# Tome trades for Librarians
execute as @e[type=villager,tag=!given_tome_trades,predicate=arcequ:misc/detect_librarian_profession] run function arcequ:misc/tome_trades
tag @e[type=villager,tag=given_tome_trades,predicate=!arcequ:misc/detect_librarian_profession] remove given_tome_trades


# Manage targeting for various hostile iron golems
execute as @e[type=iron_golem,tag=stone_sentinel] unless data entity @s AngryAt at @s if entity @n[team=Players,distance=..16] run data modify entity @s AngryAt set from entity @n[team=Players] UUID


# Reschedule
schedule function arcequ:20tick 20t replace