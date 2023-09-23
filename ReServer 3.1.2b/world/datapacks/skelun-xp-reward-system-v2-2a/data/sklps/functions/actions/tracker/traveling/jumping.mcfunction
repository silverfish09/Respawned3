# ----------------------------------------------------------------------------------
# .. CONVERTS CENTIMETERS TO BLOCKS
# ----------------------------------------------------------------------------------

# .. Compensates if the player is sprinting or if it has Speed buff
# ----------------------------------------------------------------------------------

scoreboard players set @s Traveling_Convert 50
execute if entity @s[tag=sklps_Sprinting] run scoreboard players add @s Traveling_Convert 50
execute if entity @s[tag=sklps_Speed] run scoreboard players add @s Traveling_Convert 100

scoreboard players operation @s Traveling_Convert_block = @s Traveling_Jump_jumps
scoreboard players operation @s Traveling_Convert_block /= @s Traveling_Convert
scoreboard players operation @s Traveling_Count_Temp += @s Traveling_Convert_block