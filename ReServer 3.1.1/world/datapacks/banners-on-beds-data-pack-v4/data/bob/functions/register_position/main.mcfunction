# Get current chunk position
execute store result score $x_chunk bob run data get storage iris_bob:output TargetedBlock[0] 0.0625
execute store result score $z_chunk bob run data get storage iris_bob:output TargetedBlock[2] 0.0625

# See if the current chunk is already saved
scoreboard players set $chunk_already_saved bob 0
data modify storage bob:data Chunks set from storage bob:data SavedChunks
execute store result score $saved_chunks bob run data get storage bob:data Chunks
execute if score $saved_chunks bob matches 1.. run function bob:register_position/loop

# If it isn't, save the current chunk
execute if score $chunk_already_saved bob matches 0 run function bob:register_position/new_chunk