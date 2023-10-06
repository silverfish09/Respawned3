# ----------------------------------------------------------------------------------
# .. STORE FIRST VEC3 POSITION
# ----------------------------------------------------------------------------------

execute store result score @s sklps_Player_Moving_X run data get entity @s Pos[0]
execute store result score @s sklps_Player_Moving_Y run data get entity @s Pos[1]
execute store result score @s sklps_Player_Moving_Z run data get entity @s Pos[2]