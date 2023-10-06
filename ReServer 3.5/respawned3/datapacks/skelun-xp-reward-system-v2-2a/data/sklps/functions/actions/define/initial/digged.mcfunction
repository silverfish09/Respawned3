scoreboard objectives add Digging_Initial dummy

scoreboard players operation @s Digging_Initial += @s Digging_1
scoreboard players operation @s Digging_Initial += @s Digging_2
scoreboard players operation @s Digging_Initial += @s Digging_3
scoreboard players operation @s Digging_Initial += @s Digging_4
scoreboard players operation @s Digging_Initial += @s Digging_5
scoreboard players operation @s Digging_Initial += @s Digging_6
scoreboard players operation @s Digging_Detect = @s Digging_Initial

scoreboard objectives remove Digging_Initial