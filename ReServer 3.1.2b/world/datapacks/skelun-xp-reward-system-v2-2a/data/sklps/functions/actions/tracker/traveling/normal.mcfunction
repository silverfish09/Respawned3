# ----------------------------------------------------------------------------------
# .. CONVERTS CENTIMETERS TO BLOCKS
# ----------------------------------------------------------------------------------

scoreboard players set @s Traveling_Convert 100
execute if entity @e[tag=sklps_Soul] run scoreboard players add @s Traveling_Convert 50
execute if entity @e[tag=sklps_Speed] run scoreboard players add @s Traveling_Convert 100

scoreboard players operation @s Traveling_Convert_block = @s Traveling_Normal1_cm
scoreboard players operation @s Traveling_Convert_block /= @s Traveling_Convert
scoreboard players operation @s Traveling_Count_Temp += @s Traveling_Convert_block

scoreboard players operation @s Traveling_Convert_block = @s Traveling_Normal2_cm
scoreboard players operation @s Traveling_Convert_block /= @s Traveling_Convert
scoreboard players operation @s Traveling_Count_Temp += @s Traveling_Convert_block

scoreboard players operation @s Traveling_Convert_block = @s Traveling_Normal3_cm
scoreboard players operation @s Traveling_Convert_block /= @s Traveling_Convert
scoreboard players operation @s Traveling_Count_Temp += @s Traveling_Convert_block
