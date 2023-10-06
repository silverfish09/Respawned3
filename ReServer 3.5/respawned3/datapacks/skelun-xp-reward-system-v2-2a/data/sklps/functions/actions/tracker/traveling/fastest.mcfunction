# ----------------------------------------------------------------------------------
# .. CONVERTS CENTIMETERS TO BLOCKS
# ----------------------------------------------------------------------------------

scoreboard players set @s Traveling_Convert 1000

scoreboard players operation @s Traveling_Convert_block = @s Traveling_Normal1_cm
scoreboard players operation @s Traveling_Convert_block /= @s Traveling_Convert
scoreboard players operation @s Traveling_Count_Temp += @s Traveling_Convert_block