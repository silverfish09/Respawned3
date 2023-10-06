# ----------------------------------------------------------------------------------
# .. DIGGING (Mining with Shovel)
# ----------------------------------------------------------------------------------

# .. Will start tracking only if player has a Shovel in his main hand
# ----------------------------------------------------------------------------------

execute as @a[tag=sklps] if predicate states:shovel run execute as @s run function sklps:actions/tracker/action/digging