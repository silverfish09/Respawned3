# ----------------------------------------------------------------------------------
# .. IF THE PLAYER IS ON A MINECART, CHECKS IF THE RAIL BELOW IS A CORNER
# .. TO COMPENSATE RAIL-BUGGING ABSURD SPEEDS
# ----------------------------------------------------------------------------------

execute at @a[tag=sklps,predicate=states:riding_minecart] as @e[type=minecart,sort=nearest,limit=1] run tag @s add sklps_RiddenMinecart
execute at @e[tag=sklps_RiddenMinecart] if block ~ ~ ~ minecraft:rail[shape=north_east] run execute as @p[tag=!sklps_RailBug] run tag @s add sklps_RailBug
execute at @e[tag=sklps_RiddenMinecart] if block ~ ~ ~ minecraft:rail[shape=north_west] run execute as @p[tag=!sklps_RailBug] run tag @s add sklps_RailBug
execute at @e[tag=sklps_RiddenMinecart] if block ~ ~ ~ minecraft:rail[shape=south_east] run execute as @p[tag=!sklps_RailBug] run tag @s add sklps_RailBug
execute at @e[tag=sklps_RiddenMinecart] if block ~ ~ ~ minecraft:rail[shape=south_west] run execute as @p[tag=!sklps_RailBug] run tag @s add sklps_RailBug
execute as @a[tag=sklps,predicate=!states:riding_minecart] as @e[type=minecart,tag=sklps_RiddenMinecart,sort=nearest,limit=1] run tag @s remove sklps_RiddenMinecart