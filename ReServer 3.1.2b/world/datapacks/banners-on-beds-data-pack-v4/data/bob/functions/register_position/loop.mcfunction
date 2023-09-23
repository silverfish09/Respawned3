execute store result score $x_chunk_2 bob run data get storage bob:data Chunks[-1][0]
execute store result score $z_chunk_2 bob run data get storage bob:data Chunks[-1][1]
data remove storage bob:data Chunks[-1]

scoreboard players remove $saved_chunks bob 1
execute if score $x_chunk bob = $x_chunk_2 bob if score $z_chunk bob = $z_chunk_2 bob run scoreboard players set $chunk_already_saved bob 1
execute if score $saved_chunks bob matches 1.. if score $chunk_already_saved bob matches 0 run function bob:register_position/loop