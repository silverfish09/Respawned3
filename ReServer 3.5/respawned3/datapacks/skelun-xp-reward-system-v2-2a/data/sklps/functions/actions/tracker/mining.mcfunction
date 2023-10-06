# ----------------------------------------------------------------------------------
# .. MINING (Mining with Pickaxe)
# ----------------------------------------------------------------------------------

# .. Will start tracking only if player has a Pickaxe in his main hand
# ----------------------------------------------------------------------------------

execute as @a[tag=sklps] if predicate states:pickaxe run execute as @s run function sklps:actions/tracker/action/mining