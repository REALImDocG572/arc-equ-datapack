# Called by advancement arcequ:internal/put_tome_on_lectern to stop players from putting their tomes on lecterns

#execute if function arcequ:tome/anti-lectern/replace_tome_lecterns run function arcequ:tome/anti-lectern/destroy_success

execute if entity @s[y=-64,dy=6] run function arcequ:tome/anti-lectern/replace_low_y

execute if score @s miscTests2 matches 1.. run function arcequ:tome/anti-lectern/destroy_success

# debug
#say haha u got detected

advancement revoke @s only arcequ:internal/interacted_with_lectern