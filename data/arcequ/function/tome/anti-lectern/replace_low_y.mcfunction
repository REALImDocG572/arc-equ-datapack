# Replaces lecterns when the running player is at the bottom of the Y axis

function arcequ:tome/anti-lectern/fill_tome_lecterns {y1:-64,y2:-52,facing:north}
function arcequ:tome/anti-lectern/fill_tome_lecterns {y1:-64,y2:-52,facing:east}
function arcequ:tome/anti-lectern/fill_tome_lecterns {y1:-64,y2:-52,facing:south}
function arcequ:tome/anti-lectern/fill_tome_lecterns {y1:-64,y2:-52,facing:west}

#fill ~-6 -64 ~-6 ~6 -52 ~6 lectern[facing=north] replace lectern[facing=north]{Book:{components:{"minecraft:custom_data":{AEItemID:7b}}}}
#fill ~-6 -64 ~-6 ~6 -52 ~6 lectern[facing=east] replace lectern[facing=east]{Book:{components:{"minecraft:custom_data":{AEItemID:7b}}}}
#fill ~-6 -64 ~-6 ~6 -52 ~6 lectern[facing=south] replace lectern[facing=south]{Book:{components:{"minecraft:custom_data":{AEItemID:7b}}}}
#fill ~-6 -64 ~-6 ~6 -52 ~6 lectern[facing=west] replace lectern[facing=west]{Book:{components:{"minecraft:custom_data":{AEItemID:7b}}}}