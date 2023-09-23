# ----------------------------------------------------------------------------------
# .. Actually count the blocks mined using the shovel
# ----------------------------------------------------------------------------------

scoreboard objectives add Digging_Count_Temp dummy

# .. Sets the hardness values
# ----------------------------------------------------------------------------------
scoreboard players set @s Digging_Hardness_2 2

# ----------------------------------------------------------------------------------
scoreboard objectives add Digging_Count_Multiplier dummy
scoreboard objectives add Digging_Count_Multiplier_Temp dummy
# ----------------------------------------------------------------------------------

scoreboard players set @s Digging_Count 0

# .. Blocks with normal hardness
# ----------------------------------------------------------------------------------
scoreboard players operation @s Digging_Count_Temp += @s Digging_block_clay
scoreboard players operation @s Digging_Count_Temp += @s Digging_block_farmland
scoreboard players operation @s Digging_Count_Temp += @s Digging_block_grass-block
scoreboard players operation @s Digging_Count_Temp += @s Digging_block_dirt-path
scoreboard players operation @s Digging_Count_Temp += @s Digging_block_gravel
scoreboard players operation @s Digging_Count_Temp += @s Digging_block_mycelium
scoreboard players operation @s Digging_Count_Temp += @s Digging_block_podzol
scoreboard players operation @s Digging_Count_Temp += @s Digging_block_coarse-dirt
scoreboard players operation @s Digging_Count_Temp += @s Digging_block_dirt
scoreboard players operation @s Digging_Count_Temp += @s Digging_block_red-sand
scoreboard players operation @s Digging_Count_Temp += @s Digging_block_sand
scoreboard players operation @s Digging_Count_Temp += @s Digging_block_soul-sand
scoreboard players operation @s Digging_Count_Temp += @s Digging_block_soul-soil
scoreboard players operation @s Digging_Count_Temp += @s Digging_block_mud
scoreboard players operation @s Digging_Count_Temp += @s Digging_block_muddy-mangrove-roots

scoreboard players operation @s Digging_Count += @s Digging_Count_Temp

scoreboard players set @s Digging_Count_Temp 0

# .. Blocks with half as normal hardness
# ----------------------------------------------------------------------------------
scoreboard players operation @s Digging_Count_Temp += @s Digging_block_snow-block
scoreboard players operation @s Digging_Count_Temp += @s Digging_block_snow

scoreboard players operation @s Digging_Count_Multiplier_Temp = @s Digging_Count_Temp
scoreboard players operation @s Digging_Count_Multiplier_Temp /= @s Digging_Hardness_5
scoreboard players operation @s Digging_Count_Multiplier = @s Digging_Count_Temp

scoreboard players operation @s Digging_Count += @s Digging_Count_Multiplier

scoreboard players set @s Digging_Count_Multiplier 0
scoreboard players set @s Digging_Count_Temp 0

# .. GIVES XP
# ----------------------------------------------------------------------------------
execute if score @s Digging_Count >= @s Digging_XP run function sklps:give_xp

# .. INCREMENTS CEILING
# ----------------------------------------------------------------------------------
execute if score @s Digging_Count >= @s Digging_XP run scoreboard players operation @s Digging_XP += #sklps.deltas Digging_Delta
execute if score @s Digging_Count >= @s Digging_XP run scoreboard players add @s Digging_Level 1

# ----------------------------------------------------------------------------------
scoreboard players reset @s Digging_Count_Temp
scoreboard players reset @s Digging_Count_Multiplier
scoreboard players reset @s Digging_Count_Multiplier_Temp
scoreboard objectives remove Digging_Count_Temp
scoreboard objectives remove Digging_Count_Multiplier
scoreboard objectives remove Digging_Count_Multiplier_Temp
# ----------------------------------------------------------------------------------