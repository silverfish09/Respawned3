execute store success score $get_coordinates.within_32768 iris if entity @s[distance=..0.032768]

execute if score $get_coordinates.within_32768 iris matches 0 run scoreboard players add ${x} iris 32768
execute if score $get_coordinates.within_32768 iris matches 0 positioned ~0.032768 ~ ~ run function iris_bob:get_coordinates/x/5
execute if score $get_coordinates.within_32768 iris matches 1 run function iris_bob:get_coordinates/x/5