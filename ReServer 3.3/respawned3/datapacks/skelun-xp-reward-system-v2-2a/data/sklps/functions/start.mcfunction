# ==================================================================================
#
# .. SKELUN'S XP REWARD SYSTEM ♥
#
# ==================================================================================
# v 2.2
# ==================================================================================

# .. FOR DEBUGGING PURPOSES ONLY
# .. It will reset all scores and remove all tags
# ----------------------------------------------------------------------------------
# execute as @a run execute as @a run function sklps:debugging/debug

# .. Creates the initial scoreboards needed
# ----------------------------------------------------------------------------------
function sklps:initialization/scores

# .. Adds a tag to the player to start tracking actions
# ----------------------------------------------------------------------------------
execute as @a[tag=!sklps] run tag @s add sklps

# .. Sets How many blocks untils the Exp is given
# ----------------------------------------------------------------------------------
# .. For the defaults I use a custom formula:
# .. https://docs.google.com/spreadsheets/d/1ja2UrwOSQU-HuBbu5GjIAst3xkR4ZdJTHHQBmAlbfy0/edit?usp=sharing
# ----------------------------------------------------------------------------------
execute as @a[tag=sklps] run function sklps:initialization/deltas

# .. Timer
# ----------------------------------------------------------------------------------
function sklps:utils/timer_loop
scoreboard players set @a[tag=sklps] sklps_Timer 10

# .. Define how actions will be tracked
# ----------------------------------------------------------------------------------
execute as @a[tag=sklps] run function sklps:initialization/define

# .. Welcome message
# ----------------------------------------------------------------------------------
execute as @a[tag=!sklps_Welcome] run function sklps:initialization/welcome_message