# ----------------------------------------------------------------------------------
# .. CUTTING (Mining with Axe)
# ----------------------------------------------------------------------------------

# .. Will start tracking only if player has an Axe in his main hand
# ----------------------------------------------------------------------------------

execute as @a[tag=sklps] if predicate states:axe run execute as @s run function sklps:actions/tracker/action/cutting