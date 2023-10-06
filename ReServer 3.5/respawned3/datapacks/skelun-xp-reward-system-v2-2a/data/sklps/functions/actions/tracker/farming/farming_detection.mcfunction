# ----------------------------------------------------------------------------------
# .. Checks if the player used the hoe
# ----------------------------------------------------------------------------------

# .. First: Adds up all the counted uses of the hoe
# ----------------------------------------------------------------------------------
scoreboard objectives add Farming_Detect_Temp dummy

scoreboard players operation @s Farming_Detect_Temp += @s Farming_1
scoreboard players operation @s Farming_Detect_Temp += @s Farming_2
scoreboard players operation @s Farming_Detect_Temp += @s Farming_3
scoreboard players operation @s Farming_Detect_Temp += @s Farming_4
scoreboard players operation @s Farming_Detect_Temp += @s Farming_5
scoreboard players operation @s Farming_Detect_Temp += @s Farming_6

# .. Second: Compare the actual uses of the pickaxe with the initial count
# .. and if the actual count is bigger it means the player used the pickaxe
# .. then it will check the mined blocks to determine if the player mined
# ----------------------------------------------------------------------------------
execute if score @s Farming_Detect_Temp > @s Farming_Detect run function sklps:actions/tracker/farming/farming_blocks
execute if score @s Farming_Detect_Temp > @s Farming_Detect run title @s actionbar {"text":"Farmed"}

# .. Third: Update the counter
# ----------------------------------------------------------------------------------
scoreboard players operation @s Farming_Detect = @s Farming_Detect_Temp

# .. Then: Resets and Remove temporary scores
# ----------------------------------------------------------------------------------
scoreboard players reset @s Farming_Detect_Temp
scoreboard objectives remove Farming_Detect_Temp