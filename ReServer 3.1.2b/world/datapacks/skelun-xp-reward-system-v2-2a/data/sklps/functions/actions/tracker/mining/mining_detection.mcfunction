# ----------------------------------------------------------------------------------
# .. Checks if the player used the pickaxe
# ----------------------------------------------------------------------------------

scoreboard objectives add Mining_Detect_Temp dummy

# .. First: Adds up all the counted uses of the pickaxe
# ----------------------------------------------------------------------------------
scoreboard players operation @s Mining_Detect_Temp += @s Mining_1
scoreboard players operation @s Mining_Detect_Temp += @s Mining_2
scoreboard players operation @s Mining_Detect_Temp += @s Mining_3
scoreboard players operation @s Mining_Detect_Temp += @s Mining_4
scoreboard players operation @s Mining_Detect_Temp += @s Mining_5
scoreboard players operation @s Mining_Detect_Temp += @s Mining_6

# .. Second: Compare the actual uses of the pickaxe with the initial count
# .. and if the actual count is bigger it means the player used the pickaxe
# .. then it will check the mined blocks to determine if the player mined
# ----------------------------------------------------------------------------------
execute if score @s Mining_Detect_Temp > @s Mining_Detect run function sklps:actions/tracker/mining/mining_blocks

# .. Third: Update the counter
# ----------------------------------------------------------------------------------
scoreboard players operation @s Mining_Detect = @s Mining_Detect_Temp

# .. Then: Resets and Remove temporary scores
# ----------------------------------------------------------------------------------
scoreboard players reset @s Mining_Detect_Temp
scoreboard objectives remove Mining_Detect_Temp