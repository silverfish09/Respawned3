# Runs iris_bob:find_closest_surface/north/loop for all surfaces with air on the north side

data modify storage iris_bob:data List set from storage iris_bob:block Surfaces.North
execute store result score $surfaces iris run data get storage iris_bob:data List
execute if score $surfaces iris matches 1.. run function iris_bob:find_closest_surface/north/loop