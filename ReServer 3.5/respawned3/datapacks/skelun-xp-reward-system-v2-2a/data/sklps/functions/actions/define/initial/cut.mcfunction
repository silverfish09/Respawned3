scoreboard objectives add Cutting_Initial dummy

scoreboard players operation @s Cutting_Initial += @s Cutting_1
scoreboard players operation @s Cutting_Initial += @s Cutting_2
scoreboard players operation @s Cutting_Initial += @s Cutting_3
scoreboard players operation @s Cutting_Initial += @s Cutting_4
scoreboard players operation @s Cutting_Initial += @s Cutting_5
scoreboard players operation @s Cutting_Initial += @s Cutting_6
scoreboard players operation @s Cutting_Detect = @s Cutting_Initial

scoreboard objectives remove Cutting_Initial