#> iris_bob:raycast/loop
#
# Loops forward until a contact surface is found or until the maximum recursion depth has been reached
#
# @context a marker and the current ray position
# @within iris_bob:raycast/loop
# @within iris_bob:raycast/on_block_found

#> THIS FUNCTION IS MODIFIED BY BANNERS ON BEDS
#> This version ignores any block that is not a bed, as the advancement that runs this function only triggers when a bed is interacted with.
#> The original implementation can be found on https://github.com/Aeldrion/Iris.

# Proceed to the next block
function iris_bob:get_side_of_intersection/main
function iris_bob:find_next_block/main
function iris_bob:set_coordinates/main

# If the new block is not an air block, see if the ray intersects with any of its surfaces
execute at @s if block ~ ~ ~ #minecraft:beds run function iris_bob:raycast/on_block_found

# Loop this function, if the maximum recursion depth has not been reached yet
scoreboard players add $depth iris 1
execute if score $depth iris < $max_depth iris at @s run function iris_bob:raycast/loop
execute if score $depth iris >= $max_depth iris run scoreboard players reset $total_distance iris