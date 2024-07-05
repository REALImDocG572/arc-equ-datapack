# Natural spawn

# Reset score for endermen
scoreboard players set endermen mobCount 0

# Summon the iron golem. Normal health and increased speed but takes more knockback.
summon iron_golem ~ ~ ~ {Tags:["stone_sentinel"],CustomName:'{"translate":"entity.arcequ.stone_sentinel","color":"gray"}',attributes:[{id:"minecraft:generic.movement_speed",base:0.35d},{id:"minecraft:generic.knockback_resistance",base:0.5d}],DeathLootTable:"arcequ:entity/smob/stone_sentinel"}
team join Hostiles @n[type=iron_golem,tag=stone_sentinel,team=!Hostiles,team=!Players]

# Discard the enderman
tp ~ -128 ~