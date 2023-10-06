scoreboard objectives add Mining_Initial dummy

scoreboard players operation @s Mining_Initial += @s Mining_1
scoreboard players operation @s Mining_Initial += @s Mining_2
scoreboard players operation @s Mining_Initial += @s Mining_3
scoreboard players operation @s Mining_Initial += @s Mining_4
scoreboard players operation @s Mining_Initial += @s Mining_5
scoreboard players operation @s Mining_Initial += @s Mining_6
scoreboard players operation @s Mining_Detect = @s Mining_Initial

scoreboard objectives remove Mining_Initial