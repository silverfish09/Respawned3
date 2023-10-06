# ----------------------------------------------------------------------------------
# .. IF THE PLAYER IS ON A BOAT, TARGETS THE NEAREST ENTITY, WHICH IS THE BOAT
# .. THE PLAYER IS IN AND CHECK THE BLOCK BELOW
# ----------------------------------------------------------------------------------

execute at @a[predicate=states:riding_boat] as @e[type=boat,sort=nearest,limit=1] run tag @s add sklps_RiddenBoat
execute at @e[tag=sklps_RiddenBoat] if block ~ ~ ~ minecraft:ice run execute as @p[tag=!sklps_IceBoating] run tag @s add sklps_IceBoating
execute at @e[tag=sklps_RiddenBoat] if block ~ ~ ~ minecraft:blue_ice run execute as @p[tag=!sklps_IceBoating] run tag @s add sklps_IceBoating
execute at @e[tag=sklps_RiddenBoat] if block ~ ~ ~ minecraft:frosted_ice run execute as @p[tag=!sklps_IceBoating] run tag @s add sklps_IceBoating
execute at @e[tag=sklps_RiddenBoat] if block ~ ~ ~ minecraft:packed_ice run execute as @p[tag=!sklps_IceBoating] run tag @s add sklps_IceBoating
execute as @a[predicate=!states:riding_boat] as @e[type=boat,tag=sklps_RiddenBoat,sort=nearest,limit=1] run tag @s remove sklps_RiddenBoat