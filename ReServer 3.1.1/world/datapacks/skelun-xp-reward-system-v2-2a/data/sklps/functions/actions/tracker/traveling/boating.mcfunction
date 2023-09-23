# ----------------------------------------------------------------------------------
# .. CONVERTS CENTIMETERS TO BLOCKS
# ----------------------------------------------------------------------------------

# .. If the ground is some kind of Ice Block it will reduce the XP gain
# ----------------------------------------------------------------------------------

scoreboard players set @s Traveling_Convert 200
execute if entity @s[tag=sklps_IceBoating] run scoreboard players add @s Traveling_Convert 800

scoreboard players operation @s Traveling_Convert_block = @s Traveling_Boat_cm
scoreboard players operation @s Traveling_Convert_block /= @s Traveling_Convert
scoreboard players operation @s Traveling_Count_Temp += @s Traveling_Convert_block