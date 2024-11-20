# The file for the manipulate angle button

execute if block 2 2 -1 minecraft:lever[powered=false] if score chosenAngle RIFTcontrols matches 0 run function arcequ:rift/flight/manipulate_angle {"operation":"remove","angle":"primaryAngle"}
execute if block 2 2 -1 minecraft:lever[powered=true] if score chosenAngle RIFTcontrols matches 0 run function arcequ:rift/flight/manipulate_angle {"operation":"add","angle":"primaryAngle"}

execute if block 2 2 -1 minecraft:lever[powered=false] if score chosenAngle RIFTcontrols matches 1 run function arcequ:rift/flight/manipulate_angle {"operation":"remove","angle":"secondaryAngle"}
execute if block 2 2 -1 minecraft:lever[powered=true] if score chosenAngle RIFTcontrols matches 1 run function arcequ:rift/flight/manipulate_angle {"operation":"add","angle":"secondaryAngle"}

