#> iris_bob:raycast/on_block_found
#
# Runs when the ray enters a non-air block, and identifies whether or not the ray intersects with one of its surfaces
#
# @within iris_bob:raycast/loop
# @context a marker and its position
# @output
#	score $ray_hits_surface iris
#		0 or 1. Whether or not the ray hits any surface of the current block.

# Identify the block and get a list of surfaces
scoreboard players set $ray_hits_surface iris 0
function iris_bob:get_block_surfaces/main

# Determine whether or not the ray hits a surface, and if it does, identify the closest surface and stop the loop
execute if data storage iris_bob:block Surfaces run function iris_bob:find_closest_surface/main
execute if score $ray_hits_surface iris matches 1 run function iris_bob:raycast/end_loop
data remove storage iris_bob:block Surfaces