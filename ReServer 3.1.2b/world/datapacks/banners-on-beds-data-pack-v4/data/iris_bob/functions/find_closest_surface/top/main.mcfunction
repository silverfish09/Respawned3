# Runs iris_bob:find_closest_surface/top/loop for all surfaces with air on the top side

data modify storage iris_bob:data List set from storage iris_bob:block Surfaces.Top
execute store result score $surfaces iris run data get storage iris_bob:data List
execute if score $surfaces iris matches 1.. run function iris_bob:find_closest_surface/top/loop