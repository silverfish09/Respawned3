# ----------------------------------------------------------------------------------
# .. Converts centimeters to blocks
# ----------------------------------------------------------------------------------

# .. Compensates if the player is Sprinting, has speed increasing Enchantments
# .. or speed increasing Buffs
# ----------------------------------------------------------------------------------

scoreboard players set @s Traveling_Convert 50
execute if entity @s[tag=sklps_Sprinting] run scoreboard players add @s Traveling_Convert 30
execute if entity @s[tag=sklps_Depth] run scoreboard players add @s Traveling_Convert 50
execute if entity @s[tag=sklps_Soul] run scoreboard players add @s Traveling_Convert 50
execute if entity @s[tag=sklps_Speed] run scoreboard players add @s Traveling_Convert 100
execute if entity @s[tag=sklps_Dolphin] run scoreboard players add @s Traveling_Convert 150
execute if entity @s[tag=sklps_Elytra] run scoreboard players add @s Traveling_Convert 950

scoreboard players operation @s Traveling_Convert_block = @s Traveling_Low1_cm
scoreboard players operation @s Traveling_Convert_block /= @s Traveling_Convert
scoreboard players operation @s Traveling_Count_Temp += @s Traveling_Convert_block

scoreboard players operation @s Traveling_Convert_block = @s Traveling_Low2_cm
scoreboard players operation @s Traveling_Convert_block /= @s Traveling_Convert
scoreboard players operation @s Traveling_Count_Temp += @s Traveling_Convert_block

scoreboard players operation @s Traveling_Convert_block = @s Traveling_Low3_cm
scoreboard players operation @s Traveling_Convert_block /= @s Traveling_Convert
scoreboard players operation @s Traveling_Count_Temp += @s Traveling_Convert_block
