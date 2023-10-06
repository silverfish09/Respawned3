# ----------------------------------------------------------------------------------
# .. TRAVELING (Moving around by foot, mounted or using Elytra)
# ----------------------------------------------------------------------------------

# .. Will start tracking 9 ticks after player moved.
# ----------------------------------------------------------------------------------

execute as @a[tag=sklps] if score @s sklps_Timer matches 0 run function sklps:utils/set_timer_10

execute if score @p[scores={sklps_Timer=1..}] sklps_Timer matches 10 run function sklps:actions/tracker/traveling/check_movement/position1
execute if score @p[scores={sklps_Timer=1..}] sklps_Timer matches 5 run function sklps:actions/tracker/traveling/check_movement/position2
execute if score @p[scores={sklps_Timer=1..}] sklps_Timer matches 1 run function sklps:actions/tracker/traveling/check_movement/moving