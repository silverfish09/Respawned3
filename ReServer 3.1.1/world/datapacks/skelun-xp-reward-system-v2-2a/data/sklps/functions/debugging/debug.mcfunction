# ----------------------------------------------------------------------------------
# .. REMOVE AND RESETS EVERYTHING THIS DATAPACK DID
# ----------------------------------------------------------------------------------
# .. It also resets the XP level, fills Health and Food
# .. and sets gameplay as Survival.
# ----------------------------------------------------------------------------------

scoreboard objectives remove sklps_Timer

experience add @s -1000000
gamemode survival
scoreboard players reset @s
effect clear @s
effect give @s instant_health 1 255
effect give @s saturation 1 255

function sklps:uninstall

tellraw @a {"text":"Debugging!","color":"dark_purple"}
