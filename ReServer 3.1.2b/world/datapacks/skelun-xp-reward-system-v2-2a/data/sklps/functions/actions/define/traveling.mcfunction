# ----------------------------------------------------------------------------------
# .. DEFINES: Traveling
# ----------------------------------------------------------------------------------

scoreboard objectives add sklps_Player_Pos_X dummy
scoreboard objectives add sklps_Player_Pos_Y dummy
scoreboard objectives add sklps_Player_Pos_Z dummy
scoreboard objectives add sklps_Player_Moving_X dummy
scoreboard objectives add sklps_Player_Moving_Y dummy
scoreboard objectives add sklps_Player_Moving_Z dummy

scoreboard objectives add Traveling_Level dummy
scoreboard players set @a Traveling_Level 1
scoreboard objectives add Traveling_XP dummy
scoreboard objectives add Traveling_Initial dummy
scoreboard objectives add Traveling_Count dummy
scoreboard objectives add Traveling_Count_Temp dummy
scoreboard objectives add Traveling_Convert dummy
scoreboard objectives add Traveling_Convert_block dummy

# .. @ Lower (Lower than 4.0 m/s)
# ----------------------------------------------------------------------------------
scoreboard objectives add Traveling_Low1_cm minecraft.custom:swim_one_cm
scoreboard objectives add Traveling_Low2_cm minecraft.custom:walk_on_water_one_cm
scoreboard objectives add Traveling_Low3_cm minecraft.custom:walk_under_water_one_cm

# .. @ Normal Speed (Between 4.0 m/s and 7 m/s)
# ----------------------------------------------------------------------------------
scoreboard objectives add Traveling_Normal1_cm minecraft.custom:walk_one_cm
scoreboard objectives add Traveling_Normal2_cm minecraft.custom:pig_one_cm
scoreboard objectives add Traveling_Normal3_cm minecraft.custom:strider_one_cm

# .. @ Faster Speed (Between 7.0 m/s and 30.0 m/s)
# ----------------------------------------------------------------------------------
scoreboard objectives add Traveling_Fast1_cm minecraft.custom:minecart_one_cm
scoreboard objectives add Traveling_Fast2_cm minecraft.custom:horse_one_cm

# .. @ Fastest (Faster than 30.0 m/s)
# ----------------------------------------------------------------------------------
scoreboard objectives add Traveling_Max1_cm minecraft.custom:aviate_one_cm

# .. @ Special Cases
# ----------------------------------------------------------------------------------
scoreboard objectives add Traveling_Sprint_cm minecraft.custom:sprint_one_cm
scoreboard objectives add Traveling_Boat_cm minecraft.custom:boat_one_cm
scoreboard objectives add Traveling_Jump_jumps minecraft.custom:jump

# .. Sets Initial Value for Traveled Blocks
# ----------------------------------------------------------------------------------
function sklps:actions/define/initial/traveled

# .. Sets Initial Ceiling For Leveling
# ----------------------------------------------------------------------------------
scoreboard players operation @s Traveling_XP = @s Traveling_Initial
scoreboard players operation @s Traveling_XP += #sklps.deltas Traveling_Delta