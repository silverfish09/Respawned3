# ----------------------------------------------------------------------------------
# .. SET TAGS
# ----------------------------------------------------------------------------------

# .. Soul Speed Enchantment Buff || I 40% / II 50% / III 60%
execute as @s[tag=!sklps_Soul] if predicate states:soul_speed run tag @s add sklps_Soul
execute as @s[tag=sklps_Soul] unless predicate states:soul_speed run tag @s remove sklps_Soul

# .. Depth Strider Enchantment Buff || I +1/3 / II +2/3 / III Same as Walking Speed
execute as @s[tag=!sklps_Depth] if predicate states:depth_strider run tag @s add sklps_Depth
execute as @s[tag=sklps_Depth] unless predicate states:depth_strider run tag @s remove sklps_Depth

# .. Using Elytra
execute as @s[tag=!sklps_Elytra] if predicate states:elytra run tag @s add sklps_Elytra
execute as @s[tag=sklps_Elytra] unless predicate states:elytra run tag @s remove sklps_Elytra

# .. Dolphin's Grace
execute as @s[tag=!sklps_Dolphin] if predicate states:dolphins_grace run tag @s add sklps_Dolphin
execute as @s[tag=sklps_Dolphin] unless predicate states:dolphins_grace run tag @s remove sklps_Dolphin

# .. Speed Buff || 20% * lvl
execute as @s[tag=!sklps_Speed] if predicate states:speed run tag @s add sklps_Speed
execute as @s[tag=sklps_Speed] unless predicate states:speed run tag @s remove sklps_Speed

# .. Sprinting
execute as @s if predicate states:sprinting run tag @s add sklps_Sprinting
execute as @s unless predicate states:sprinting run tag @s remove sklps_Sprinting

# .. Rail Bugging
execute as @s[predicate=states:riding_minecart] run function sklps:actions/tracker/traveling/special_cases/railbug

# .. Using Boat on Ice
execute as @s[predicate=states:riding_boat] run function sklps:actions/tracker/traveling/special_cases/iceboating