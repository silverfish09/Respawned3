# .. Slow
# ----------------------------------------------------------------------------------

scoreboard players set @s Traveling_Convert 50

scoreboard players operation @s Traveling_Convert_block = @s Traveling_Low1_cm
scoreboard players operation @s Traveling_Convert_block /= @s Traveling_Convert
scoreboard players operation @s Traveling_Count_Temp += @s Traveling_Convert_block
scoreboard players set @s Traveling_Convert_block 0

scoreboard players operation @s Traveling_Convert_block = @s Traveling_Low2_cm
scoreboard players operation @s Traveling_Convert_block /= @s Traveling_Convert
scoreboard players operation @s Traveling_Count_Temp += @s Traveling_Convert_block
scoreboard players set @s Traveling_Convert_block 0

scoreboard players operation @s Traveling_Convert_block = @s Traveling_Low3_cm
scoreboard players operation @s Traveling_Convert_block /= @s Traveling_Convert
scoreboard players operation @s Traveling_Count_Temp += @s Traveling_Convert_block
scoreboard players set @s Traveling_Convert_block 0

# .. Jumps
# ----------------------------------------------------------------------------------
scoreboard players operation @s Traveling_Convert_block = @s Traveling_Jump_jumps
scoreboard players operation @s Traveling_Convert_block /= @s Traveling_Convert
scoreboard players operation @s Traveling_Count_Temp += @s Traveling_Convert_block
scoreboard players set @s Traveling_Convert_block 0

# ----------------------------------------------------------------------------------
# .. Normal
# ----------------------------------------------------------------------------------

scoreboard players set @s Traveling_Convert 100

scoreboard players operation @s Traveling_Convert_block = @s Traveling_Normal1_cm
scoreboard players operation @s Traveling_Convert_block /= @s Traveling_Convert
scoreboard players operation @s Traveling_Count_Temp += @s Traveling_Convert_block
scoreboard players set @s Traveling_Convert_block 0

scoreboard players operation @s Traveling_Convert_block = @s Traveling_Normal2_cm
scoreboard players operation @s Traveling_Convert_block /= @s Traveling_Convert
scoreboard players operation @s Traveling_Count_Temp += @s Traveling_Convert_block
scoreboard players set @s Traveling_Convert_block 0

scoreboard players operation @s Traveling_Convert_block = @s Traveling_Normal3_cm
scoreboard players operation @s Traveling_Convert_block /= @s Traveling_Convert
scoreboard players operation @s Traveling_Count_Temp += @s Traveling_Convert_block
scoreboard players set @s Traveling_Convert_block 0

# ----------------------------------------------------------------------------------
# .. Fast
# ----------------------------------------------------------------------------------

scoreboard players set @s Traveling_Convert 200

scoreboard players operation @s Traveling_Convert_block = @s Traveling_Fast1_cm
scoreboard players operation @s Traveling_Convert_block /= @s Traveling_Convert
scoreboard players operation @s Traveling_Count_Temp += @s Traveling_Convert_block
scoreboard players set @s Traveling_Convert_block 0

scoreboard players operation @s Traveling_Convert_block = @s Traveling_Fast2_cm
scoreboard players operation @s Traveling_Convert_block /= @s Traveling_Convert
scoreboard players operation @s Traveling_Count_Temp += @s Traveling_Convert_block
scoreboard players set @s Traveling_Convert_block 0

# .. Sprint
# ----------------------------------------------------------------------------------
scoreboard players operation @s Traveling_Convert_block = @s Traveling_Sprint_cm
scoreboard players operation @s Traveling_Convert_block /= @s Traveling_Convert
scoreboard players operation @s Traveling_Count_Temp += @s Traveling_Convert_block
scoreboard players set @s Traveling_Convert_block 0

# .. Boating
# ----------------------------------------------------------------------------------
scoreboard players operation @s Traveling_Convert_block = @s Traveling_Boat_cm
scoreboard players operation @s Traveling_Convert_block /= @s Traveling_Convert
scoreboard players operation @s Traveling_Count_Temp += @s Traveling_Convert_block
scoreboard players set @s Traveling_Convert_block 0

# ----------------------------------------------------------------------------------
# .. Fastest
# ----------------------------------------------------------------------------------

scoreboard players set @s Traveling_Convert 1000

scoreboard players operation @s Traveling_Convert_block = @s Traveling_Normal1_cm
scoreboard players operation @s Traveling_Convert_block /= @s Traveling_Convert
scoreboard players operation @s Traveling_Count_Temp += @s Traveling_Convert_block
scoreboard players set @s Traveling_Convert_block 0

# ----------------------------------------------------------------------------------
# .. Adds All Up
# ----------------------------------------------------------------------------------

scoreboard players operation @s Traveling_Initial = @s Traveling_Count_Temp
scoreboard players set @s Traveling_Count_Temp 0