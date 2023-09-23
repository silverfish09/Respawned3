data modify storage bob:data SavedChunks append value [0, 0]
execute store result storage bob:data SavedChunks[-1][0] int 1 run scoreboard players get $x_chunk bob
execute store result storage bob:data SavedChunks[-1][1] int 1 run scoreboard players get $z_chunk bob