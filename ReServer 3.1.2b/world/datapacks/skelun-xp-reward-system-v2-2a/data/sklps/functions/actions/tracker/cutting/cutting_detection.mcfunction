# ----------------------------------------------------------------------------------
# .. Checks if the player used the axe
# ----------------------------------------------------------------------------------

# .. First: Adds up all the counted uses of the axe
# ----------------------------------------------------------------------------------
scoreboard objectives add Cutting_Detect_Temp dummy

scoreboard players operation @s Cutting_Detect_Temp += @s Cutting_1
scoreboard players operation @s Cutting_Detect_Temp += @s Cutting_2
scoreboard players operation @s Cutting_Detect_Temp += @s Cutting_3
scoreboard players operation @s Cutting_Detect_Temp += @s Cutting_4
scoreboard players operation @s Cutting_Detect_Temp += @s Cutting_5
scoreboard players operation @s Cutting_Detect_Temp += @s Cutting_6

# .. Second: Compare the actual uses of the pickaxe with the initial count
# .. and if the actual count is bigger it means the player used the pickaxe
# .. then it will check the mined blocks to determine if the player mined
# ----------------------------------------------------------------------------------
execute if score @s Cutting_Detect_Temp > @s Cutting_Detect run function sklps:actions/tracker/cutting/cutting_blocks

# .. Third: Update the counter
# ----------------------------------------------------------------------------------
scoreboard players operation @s Cutting_Detect = @s Cutting_Detect_Temp

# .. Then: Resets and Remove temporary scores
# ----------------------------------------------------------------------------------
scoreboard players reset @s Cutting_Detect_Temp
scoreboard objectives remove Cutting_Detect_Temp