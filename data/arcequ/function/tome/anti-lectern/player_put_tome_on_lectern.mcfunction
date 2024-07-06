# Called by advancement arcequ:internal/put_tome_on_lectern to stop players from putting their tomes on lecterns

execute if function arcequ:tome/anti-lectern/replace_tome_lecterns run tellraw @s {"translate":"dialogue.arcequ.tome_lectern_destruction_message","color":"gray"}

say haha u got detected

advancement revoke @s only arcequ:internal/interacted_with_lectern