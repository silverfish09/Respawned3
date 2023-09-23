#> iris_bob:find_closest_surface/main
#
# Determines if the ray hits any of the surfaces in the Surfaces list, and if so, returns which surface is hit first
#
# @within iris_bob:raycast/on_block_found
# @input
#	storage iris_bob:block Surfaces
#		Top: int[][]
#			A list of rectangular surfaces visible from above. Each surface is defined by six numbers between 0 and 1,000,000, two sets of coordinates corresponding to opposite corners of the surface.
#		Bottom: int[][]
#			A list of rectangular surfaces visible from below. Each surface is defined by six numbers between 0 and 1,000,000, two sets of coordinates corresponding to opposite corners of the surface.
#		East: int[][]
#			A list of rectangular surfaces facing east. Each surface is defined by six numbers between 0 and 1,000,000, two sets of coordinates corresponding to opposite corners of the surface.
#		West: int[][]
#			A list of rectangular surfaces facing west. Each surface is defined by six numbers between 0 and 1,000,000, two sets of coordinates corresponding to opposite corners of the surface.
#		North: int[][]
#			A list of rectangular surfaces facing north. Each surface is defined by six numbers between 0 and 1,000,000, two sets of coordinates corresponding to opposite corners of the surface.
#		South: int[][]
#			A list of rectangular surfaces facing south. Each surface is defined by six numbers between 0 and 1,000,000, two sets of coordinates corresponding to opposite corners of the surface.
# @output
#	storage iris_bob:data 
#		ContactSurface: int[]
#			Might not be set. The rectangular surface the ray hits. The surface is defined by six numbers between 0 and 1,000,000, two sets of coordinates corresponding to opposite corners of the surface.
#	score $min_distance_to_surface iris
#		How much more the ray needs to progress to hit a surface within this block, as a number between 0 and 1,733,000. 1,000,000 corresponds to one block.

scoreboard players set $min_distance_to_surface iris 1733000

execute if score $dx iris matches 1.. unless score $min_distance_to_surface iris matches 0 run function iris_bob:find_closest_surface/west/main
execute if score $dx iris matches ..-1 unless score $min_distance_to_surface iris matches 0 run function iris_bob:find_closest_surface/east/main
execute if score $dy iris matches 1.. unless score $min_distance_to_surface iris matches 0 run function iris_bob:find_closest_surface/bottom/main
execute if score $dy iris matches ..-1 unless score $min_distance_to_surface iris matches 0 run function iris_bob:find_closest_surface/top/main
execute if score $dz iris matches 1.. unless score $min_distance_to_surface iris matches 0 run function iris_bob:find_closest_surface/north/main
execute if score $dz iris matches ..-1 unless score $min_distance_to_surface iris matches 0 run function iris_bob:find_closest_surface/south/main