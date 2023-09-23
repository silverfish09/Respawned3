scoreboard objectives add Farming_Initial dummy

scoreboard players operation @s Farming_Initial += @s Farming_1
scoreboard players operation @s Farming_Initial += @s Farming_2
scoreboard players operation @s Farming_Initial += @s Farming_3
scoreboard players operation @s Farming_Initial += @s Farming_4
scoreboard players operation @s Farming_Initial += @s Farming_5
scoreboard players operation @s Farming_Initial += @s Farming_6
scoreboard players operation @s Farming_Detect = @s Farming_Initial

scoreboard objectives remove Farming_Initial