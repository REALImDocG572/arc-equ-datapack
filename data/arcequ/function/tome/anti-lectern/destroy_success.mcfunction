# Runs if a lectern with a tome was detected and destroyed

tellraw @s {"translate":"dialogue.arcequ.tome_lectern_destruction_message","color":"gray"}
give @s written_book[minecraft:custom_data={AEItemID:7b,TomeInfo:-1b,TomeProgression:0b}]

scoreboard players set @s miscTests 0
scoreboard players set @s miscTests2 0