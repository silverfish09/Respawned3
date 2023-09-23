# Runs iris_bob:find_closest_surface/bottomloop for all surfaces with air on the west side

data modify storage iris_bob:data List set from storage iris_bob:block Surfaces.Bottom
execute store result score $surfaces iris run data get storage iris_bob:data List
execute if score $surfaces iris matches 1.. run function iris_bob:find_closest_surface/bottom/loop