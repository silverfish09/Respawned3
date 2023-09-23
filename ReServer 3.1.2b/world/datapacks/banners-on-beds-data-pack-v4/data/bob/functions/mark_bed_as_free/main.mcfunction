execute if block ~ ~ ~ minecraft:white_bed run data modify storage bob:data BedColor set value "white"
execute if block ~ ~ ~ minecraft:orange_bed run data modify storage bob:data BedColor set value "orange"
execute if block ~ ~ ~ minecraft:magenta_bed run data modify storage bob:data BedColor set value "magenta"
execute if block ~ ~ ~ minecraft:light_blue_bed run data modify storage bob:data BedColor set value "light_blue"
execute if block ~ ~ ~ minecraft:yellow_bed run data modify storage bob:data BedColor set value "yellow"
execute if block ~ ~ ~ minecraft:lime_bed run data modify storage bob:data BedColor set value "lime"
execute if block ~ ~ ~ minecraft:pink_bed run data modify storage bob:data BedColor set value "pink"
execute if block ~ ~ ~ minecraft:gray_bed run data modify storage bob:data BedColor set value "gray"
execute if block ~ ~ ~ minecraft:light_gray_bed run data modify storage bob:data BedColor set value "light_gray"
execute if block ~ ~ ~ minecraft:cyan_bed run data modify storage bob:data BedColor set value "cyan"
execute if block ~ ~ ~ minecraft:purple_bed run data modify storage bob:data BedColor set value "purple"
execute if block ~ ~ ~ minecraft:blue_bed run data modify storage bob:data BedColor set value "blue"
execute if block ~ ~ ~ minecraft:brown_bed run data modify storage bob:data BedColor set value "brown"
execute if block ~ ~ ~ minecraft:green_bed run data modify storage bob:data BedColor set value "green"
execute if block ~ ~ ~ minecraft:red_bed run data modify storage bob:data BedColor set value "red"
execute if block ~ ~ ~ minecraft:black_bed run data modify storage bob:data BedColor set value "black"

execute if block ~ ~ ~ #minecraft:beds[facing=west] run function bob:mark_bed_as_free/west
execute if block ~ ~ ~ #minecraft:beds[facing=north] run function bob:mark_bed_as_free/north
execute if block ~ ~ ~ #minecraft:beds[facing=east] run function bob:mark_bed_as_free/east
execute if block ~ ~ ~ #minecraft:beds[facing=south] run function bob:mark_bed_as_free/south

kill @s