execute as @e[type=minecraft:armor_stand, tag=bob.banner_pattern, distance=..0.1] if score @s bob.height = $height bob run function bob:get_patterns/get_pattern

scoreboard players add $height bob 1
scoreboard players remove $patterns bob 1
execute if score $patterns bob matches 1.. run function bob:get_patterns/loop