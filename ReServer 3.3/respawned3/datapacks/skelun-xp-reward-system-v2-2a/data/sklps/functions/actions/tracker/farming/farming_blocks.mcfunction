# ----------------------------------------------------------------------------------
# .. Actually count the blocks mined/harvested using the hoe
# ----------------------------------------------------------------------------------

scoreboard objectives add Farming_Count_Temp dummy

scoreboard players set @s Farming_Count 0

# .. Farmed blocks using Hoe
# ----------------------------------------------------------------------------------
scoreboard players operation @s Farming_Count_Temp += @s Farming_crop_wheat
scoreboard players operation @s Farming_Count_Temp += @s Farming_crop_beetroots
scoreboard players operation @s Farming_Count_Temp += @s Farming_crop_potatoes
scoreboard players operation @s Farming_Count_Temp += @s Farming_crop_carrots
scoreboard players operation @s Farming_Count_Temp += @s Farming_crop_nether-wart
scoreboard players operation @s Farming_Count_Temp += @s Farming_block_nether-wart
scoreboard players operation @s Farming_Count_Temp += @s Farming_block_warped-wart
scoreboard players operation @s Farming_Count_Temp += @s Farming_block_shroomlight
scoreboard players operation @s Farming_Count_Temp += @s Farming_block_sponge
scoreboard players operation @s Farming_Count_Temp += @s Farming_block_wet-sponge

scoreboard players operation @s Farming_Count += @s Farming_Count_Temp

scoreboard players set @s Farming_Count_Temp 0

# .. Gives xp
# ----------------------------------------------------------------------------------
execute if score @s Farming_Count >= @s Farming_XP run function sklps:give_xp

# .. Increments ceiling
# ----------------------------------------------------------------------------------
execute if score @s Farming_Count >= @s Farming_XP run scoreboard players operation @s Farming_XP += #sklps.deltas Farming_Delta
execute if score @s Farming_Count >= @s Farming_XP run scoreboard players add @s Farming_Level 1

# .. Resets and removes unused scoreboards
# ----------------------------------------------------------------------------------
scoreboard players reset @s Farming_Count_Temp
scoreboard players reset @s Farming_Count_Multiplier
scoreboard players reset @s Farming_Count_Multiplier_Temp
scoreboard objectives remove Farming_Count_Temp
scoreboard objectives remove Farming_Count_Multiplier
scoreboard objectives remove Farming_Count_Multiplier_Temp
# ----------------------------------------------------------------------------------