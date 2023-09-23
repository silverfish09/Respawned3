# Add patterns one by one to storage
data modify storage bob:data NewBanner.tag set value {BlockEntityTag: {Patterns: []}}
scoreboard players set $height bob 0
function bob:get_patterns/loop

# Apply to the player's inventory
loot give @s[gamemode=!creative, predicate=bob:holding_banner] loot bob:banner_from_bedsheets
loot replace entity @s[gamemode=!creative, predicate=!bob:holding_banner] weapon.mainhand loot bob:banner_from_bedsheets