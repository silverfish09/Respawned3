# ----------------------------------------------------------------------------------
# .. Checks if the player used the shovel
# ----------------------------------------------------------------------------------

# .. First: Adds up all the counted uses of the shovel
# ----------------------------------------------------------------------------------
scoreboard objectives add Digging_Detect_Temp dummy

scoreboard players operation @s Digging_Detect_Temp += @s Digging_1
scoreboard players operation @s Digging_Detect_Temp += @s Digging_2
scoreboard players operation @s Digging_Detect_Temp += @s Digging_3
scoreboard players operation @s Digging_Detect_Temp += @s Digging_4
scoreboard players operation @s Digging_Detect_Temp += @s Digging_5
scoreboard players operation @s Digging_Detect_Temp += @s Digging_6

# .. Second: Compare the actual uses of the pickaxe with the initial count
# .. and if the actual count is bigger it means the player used the pickaxe
# .. then it will check the mined blocks to determine if the player mined
# ----------------------------------------------------------------------------------
execute if score @s Digging_Detect_Temp > @s Digging_Detect run function sklps:actions/tracker/digging/digging_blocks

# .. Third: Update the counter
# ----------------------------------------------------------------------------------
scoreboard players operation @s Digging_Detect = @s Digging_Detect_Temp

# .. Then: Resets and Remove temporary scores
# ----------------------------------------------------------------------------------
scoreboard players reset @s Digging_Detect_Temp
scoreboard objectives remove Digging_Detect_Temp