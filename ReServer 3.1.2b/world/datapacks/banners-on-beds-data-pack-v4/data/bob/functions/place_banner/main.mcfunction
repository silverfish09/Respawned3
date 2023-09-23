# Play fancy custom sound effect
playsound minecraft:block.bed.change_bedsheets block @a ~ ~ ~

# Get rotation of the bed
execute if block ~ ~ ~ #minecraft:beds[facing=west] run data modify storage bob:data Rotation set value "west"
execute if block ~ ~ ~ #minecraft:beds[facing=north] run data modify storage bob:data Rotation set value "north"
execute if block ~ ~ ~ #minecraft:beds[facing=east] run data modify storage bob:data Rotation set value "east"
execute if block ~ ~ ~ #minecraft:beds[facing=south] run data modify storage bob:data Rotation set value "south"

# See if there's patterns on this bed already, and if so, save them to the player's inventory
execute if block ~ ~ ~ #minecraft:beds[part=head] run function bob:get_patterns/main
execute if block ~ ~ ~ #minecraft:beds[part=foot] if data storage bob:data {Rotation: "west"} positioned ~-1 ~ ~ run function bob:get_patterns/main
execute if block ~ ~ ~ #minecraft:beds[part=foot] if data storage bob:data {Rotation: "north"} positioned ~ ~ ~-1 run function bob:get_patterns/main
execute if block ~ ~ ~ #minecraft:beds[part=foot] if data storage bob:data {Rotation: "east"} positioned ~1 ~ ~ run function bob:get_patterns/main
execute if block ~ ~ ~ #minecraft:beds[part=foot] if data storage bob:data {Rotation: "south"} positioned ~ ~ ~1 run function bob:get_patterns/main

# Change bed color if necessary
function bob:change_bed_color/main

# Place banner patterns at the correct position
execute if block ~ ~ ~ #minecraft:beds[part=head] run function bob:place_banner/summon_stands
execute if block ~ ~ ~ #minecraft:beds[part=foot] if data storage bob:data {Rotation: "west"} positioned ~-1 ~ ~ run function bob:place_banner/summon_stands
execute if block ~ ~ ~ #minecraft:beds[part=foot] if data storage bob:data {Rotation: "north"} positioned ~ ~ ~-1 run function bob:place_banner/summon_stands
execute if block ~ ~ ~ #minecraft:beds[part=foot] if data storage bob:data {Rotation: "east"} positioned ~1 ~ ~ run function bob:place_banner/summon_stands
execute if block ~ ~ ~ #minecraft:beds[part=foot] if data storage bob:data {Rotation: "south"} positioned ~ ~ ~1 run function bob:place_banner/summon_stands

# Register this position in case the player wants to uninstall this data pack later
function bob:register_position/main