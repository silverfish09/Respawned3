# ----------------------------------------------------------------------------------
# .. GIVES XP
# ----------------------------------------------------------------------------------

# .. DEFAULTS: https://docs.google.com/spreadsheets/d/1ja2UrwOSQU-HuBbu5GjIAst3xkR4ZdJTHHQBmAlbfy0/edit?usp=sharing
# ----------------------------------------------------------------------------------
# .. To get from 0 to level 30 the vanilla way you have to:
# ..
# .. Kill 300 Zombies; or
# .. Mine around 215 to 503 diamond Ores; or
# .. Smelt 2,152 raw Iron/Gold/Copper
# ..
# ----------------------------------------------------------------------------------
# .. To get from 0 to level 30 using this data pack with 'default values' you have to:
# ..
# .. Cut 1110 Oak Logs (~17 stacks)
# .. Dig 4736 Dirt Blocks (~74 stacks)
# .. Farm 1776 Crops (~27 stacks)
# .. Mine 2516 Stone blocks (~39 stacks)
# .. Walk 2146 Blocks (~157 chunks)
# ..
# ----------------------------------------------------------------------------------
# .. It seems a lot, but consider that you will be doing a lot of stuff
# .. that gives you XP, and everything will pile up
# ----------------------------------------------------------------------------------

scoreboard objectives add sklps_Current_Level dummy
execute store result score @s sklps_Current_Level run experience query @s levels

# .. You can set a custom amount if you wish
# .. Just edit last NUMBER of the following lines
# ----------------------------------------------------------------------------------
execute if score @s sklps_Current_Level matches 0..9 run experience add @s 12
execute if score @s sklps_Current_Level matches 10..19 run experience add @s 15
execute if score @s sklps_Current_Level matches 20..29 run experience add @s 21
execute if score @s sklps_Current_Level matches 30.. run experience add @s 33
# ----------------------------------------------------------------------------------

execute at @s run function sklps:animations/xp_feedback

scoreboard players reset @s sklps_Current_Level
scoreboard objectives remove sklps_Current_Level