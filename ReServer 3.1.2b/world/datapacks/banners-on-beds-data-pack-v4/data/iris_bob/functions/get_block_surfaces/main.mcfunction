#> iris_bob:get_block_surfaces/main
#
# Returns a list of surfaces of the current block
#
# @within iris_bob:raycast/on_block_found
# @output
#	storage iris_bob:block Surfaces
#		Top: int[][]
#			A list of rectangular surfaces visible from above. Each surface is defined by six numbers, two sets of coordinates corresponding to opposite corners of the surface.
#		Bottom: int[][]
#			A list of rectangular surfaces visible from below. Each surface is defined by six numbers, two sets of coordinates corresponding to opposite corners of the surface.
#		East: int[][]
#			A list of rectangular surfaces facing east. Each surface is defined by six numbers, two sets of coordinates corresponding to opposite corners of the surface.
#		West: int[][]
#			A list of rectangular surfaces facing west. Each surface is defined by six numbers, two sets of coordinates corresponding to opposite corners of the surface.
#		North: int[][]
#			A list of rectangular surfaces facing north. Each surface is defined by six numbers, two sets of coordinates corresponding to opposite corners of the surface.
#		South: int[][]
#			A list of rectangular surfaces facing south. Each surface is defined by six numbers, two sets of coordinates corresponding to opposite corners of the surface.

#> THIS FUNCTION IS MODIFIED BY BANNERS ON BEDS
#> This version ignores any block that is not a bed, as the advancement that runs this function only triggers when a bed is interacted with.
#> The original implementation can be found on https://github.com/Aeldrion/Iris.

data remove storage iris_bob:block Surfaces
function iris_bob:get_block_surfaces/block/beds