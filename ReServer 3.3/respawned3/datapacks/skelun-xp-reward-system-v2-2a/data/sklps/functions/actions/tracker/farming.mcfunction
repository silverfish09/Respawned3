# ----------------------------------------------------------------------------------
# .. FARMING (Mining/Harvesting with Hoe)
# ----------------------------------------------------------------------------------

# .. Will start tracking only if player has a Hoe in his main hand
# ----------------------------------------------------------------------------------

execute as @a[tag=sklps] if predicate states:hoe run execute as @s run function sklps:actions/tracker/action/farming