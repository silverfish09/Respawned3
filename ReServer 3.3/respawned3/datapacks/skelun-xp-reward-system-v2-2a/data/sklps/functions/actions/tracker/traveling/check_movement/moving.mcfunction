# ----------------------------------------------------------------------------------
# .. Compare both Vec3 Positions to tell if the player is moving/moved
# ----------------------------------------------------------------------------------

execute as @a[tag=!sklps_Moving] unless score @s sklps_Player_Pos_X = @s sklps_Player_Moving_X run tag @s add sklps_Moving
execute as @a[tag=!sklps_Moving] unless score @s sklps_Player_Pos_Y = @s sklps_Player_Moving_Y run tag @s add sklps_Moving
execute as @a[tag=!sklps_Moving] unless score @s sklps_Player_Pos_Z = @s sklps_Player_Moving_Z run tag @s add sklps_Moving

execute as @a[tag=sklps_Moving] run execute as @s run function sklps:actions/tracker/action/traveling