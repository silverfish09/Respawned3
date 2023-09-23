#> iris_bob:get_block_surfaces/block/cubic
#
# Runs for 1x1x1 cubic blocks and for any other block that isn't supported by Iris
#
# @within iris_bob:get_block_surfaces/main

data modify storage iris_bob:block Surfaces.Top set value [[    0,       1000000, 0,       1000000, 1000000, 1000000 ]]
data modify storage iris_bob:block Surfaces.Bottom set value [[ 0,       0,       0,       1000000, 0,       1000000 ]]
data modify storage iris_bob:block Surfaces.West set value [[   0,       0,       0,       0,       1000000, 1000000 ]]
data modify storage iris_bob:block Surfaces.East set value [[   1000000, 0,       0,       1000000, 1000000, 1000000 ]]
data modify storage iris_bob:block Surfaces.North set value [[  0,       0,       0,       1000000, 1000000, 0       ]]
data modify storage iris_bob:block Surfaces.South set value [[  0,       0,       1000000, 1000000, 1000000, 1000000 ]]