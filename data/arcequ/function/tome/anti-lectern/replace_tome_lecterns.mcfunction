# Empty any lecterns with tomes in a radius

execute unless entity @s[y=-64,dy=6] unless entity @s[y=320,dy=6] run function arcequ:tome/anti-lectern/replace_normal_y

# In case the player is in the rare situation where they are at the lowest or highest points in the world, which leads to /fill malfunctioning:
execute if entity @s[y=-64,dy=6] run function arcequ:tome/anti-lectern/replace_low_y
execute if entity @s[y=320,dy=6] run function arcequ:tome/anti-lectern/replace_high_y