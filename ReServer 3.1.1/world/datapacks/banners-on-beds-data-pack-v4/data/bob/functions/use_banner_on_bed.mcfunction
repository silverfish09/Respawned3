# Revoke advancement and clear actionbar
advancement revoke @s only bob:use_banner_on_bed
title @s actionbar ""

# Remove a banner from the player's hand, but keep track of the banner's data
data modify storage bob:data Banner set from entity @s SelectedItem
item modify entity @s[gamemode=!creative] weapon.mainhand bob:consume_banner

# Find the bed and place the banner on it
execute anchored eyes positioned ^ ^ ^ run function iris_bob:get_targeted_block
execute at @e[type=minecraft:marker, tag=iris.ray] align xyz positioned ~0.5 ~ ~0.5 run function bob:place_banner/main