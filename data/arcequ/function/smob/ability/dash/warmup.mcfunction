# Timer function

execute if entity @s[predicate=arcequ:smob/dash_telegraph] run function arcequ:smob/ability/dash/telegraph

scoreboard players remove @s smobAD1 10
execute if score @s smobAD1 matches ..-1 run scoreboard players set @s smobAD1 0

execute if entity @s[scores={smobCD1=0,smobAD1=0}] run function arcequ:smob/ability/dash/execute