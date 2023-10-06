# ----------------------------------------------------------------------------------
# .. CONVERTS CENTIMETERS TO BLOCKS
# ----------------------------------------------------------------------------------

scoreboard players set @s Traveling_Convert 200
execute if entity @s[tag=sklps_Speed] run scoreboard players add @s Traveling_Convert 200

scoreboard players operation @s Traveling_Convert_block = @s Traveling_Sprint_cm
scoreboard players operation @s Traveling_Convert_block /= @s Traveling_Convert
scoreboard players operation @s Traveling_Count_Temp += @s Traveling_Convert_block