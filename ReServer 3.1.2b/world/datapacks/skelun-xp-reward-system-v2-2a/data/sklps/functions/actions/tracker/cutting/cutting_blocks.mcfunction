# ----------------------------------------------------------------------------------
# .. Actually Count The Blocks Mined Using The Axe
# ----------------------------------------------------------------------------------

scoreboard objectives add Cutting_Count_Temp dummy

# .. Sets the hardness values
# ----------------------------------------------------------------------------------
scoreboard players set @s Cutting_Hardness_2 2

# ----------------------------------------------------------------------------------
scoreboard objectives add Cutting_Count_Multiplier dummy
scoreboard objectives add Cutting_Count_Multiplier_Temp dummy
# ----------------------------------------------------------------------------------

scoreboard players set @s Cutting_Count 0

# .. Blocks with normal hardness
# ----------------------------------------------------------------------------------

scoreboard players operation @s Cutting_Count_Temp += @s Cutting_block_oak-log
scoreboard players operation @s Cutting_Count_Temp += @s Cutting_block_birch-log
scoreboard players operation @s Cutting_Count_Temp += @s Cutting_block_acacia-log
scoreboard players operation @s Cutting_Count_Temp += @s Cutting_block_jungle-log
scoreboard players operation @s Cutting_Count_Temp += @s Cutting_block_spruce-log
scoreboard players operation @s Cutting_Count_Temp += @s Cutting_block_warped-stem
scoreboard players operation @s Cutting_Count_Temp += @s Cutting_block_crimson-stem
scoreboard players operation @s Cutting_Count_Temp += @s Cutting_block_dark-oak-log
scoreboard players operation @s Cutting_Count_Temp += @s Cutting_block_mangrove-log
scoreboard players operation @s Cutting_Count_Temp += @s Cutting_block_oak-planks
scoreboard players operation @s Cutting_Count_Temp += @s Cutting_block_birch-planks
scoreboard players operation @s Cutting_Count_Temp += @s Cutting_block_acacia-planks
scoreboard players operation @s Cutting_Count_Temp += @s Cutting_block_jungle-planks
scoreboard players operation @s Cutting_Count_Temp += @s Cutting_block_spruce-planks
scoreboard players operation @s Cutting_Count_Temp += @s Cutting_block_warped-planks
scoreboard players operation @s Cutting_Count_Temp += @s Cutting_block_crimson-planks
scoreboard players operation @s Cutting_Count_Temp += @s Cutting_block_oak-planks
scoreboard players operation @s Cutting_Count_Temp += @s Cutting_block_mangrove-planks

scoreboard players operation @s Cutting_Count += @s Cutting_Count_Temp

scoreboard players set @s Cutting_Count_Temp 0

# .. Blocks with half as normal hardness
# ----------------------------------------------------------------------------------
scoreboard players operation @s Cutting_Count_Temp += @s Cutting_block_mangrove-roots
scoreboard players operation @s Cutting_Count_Temp += @s Cutting_block_melon
scoreboard players operation @s Cutting_Count_Temp += @s Cutting_block_pumpkin
scoreboard players operation @s Cutting_Count_Temp += @s Cutting_block_bee-nest
scoreboard players operation @s Cutting_Count_Temp += @s Cutting_block_bamboo
scoreboard players operation @s Cutting_Count_Temp += @s Cutting_block_cocoa
scoreboard players operation @s Cutting_Count_Temp += @s Cutting_block_red-mushroom-block
scoreboard players operation @s Cutting_Count_Temp += @s Cutting_block_brown-mushrom-block

scoreboard players operation @s Cutting_Count_Multiplier_Temp = @s Cutting_Count_Temp
scoreboard players operation @s Cutting_Count_Multiplier_Temp /= @s Cutting_Hardness_5
scoreboard players operation @s Cutting_Count_Multiplier = @s Cutting_Count_Temp

scoreboard players operation @s Cutting_Count += @s Cutting_Count_Multiplier

scoreboard players set @s Cutting_Count_Multiplier 0
scoreboard players set @s Cutting_Count_Temp 0

# .. Gives xp
# ----------------------------------------------------------------------------------
execute if score @s Cutting_Count >= @s Cutting_XP run function sklps:give_xp

# .. Increments ceiling
# ----------------------------------------------------------------------------------
execute if score @s Cutting_Count >= @s Cutting_XP run scoreboard players operation @s Cutting_XP += #sklps.deltas Cutting_Delta
execute if score @s Cutting_Count >= @s Cutting_XP run scoreboard players add @s Cutting_Level 1

# .. Removes Temporary Scoreboards
# ----------------------------------------------------------------------------------
scoreboard objectives remove Cutting_Count_Temp
scoreboard objectives remove Cutting_Count_Multiplier
scoreboard objectives remove Cutting_Count_Multiplier_Temp
# ----------------------------------------------------------------------------------