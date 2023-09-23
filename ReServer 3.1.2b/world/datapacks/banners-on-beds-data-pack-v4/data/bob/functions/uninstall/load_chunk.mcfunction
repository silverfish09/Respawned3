# Set position
execute store result entity @s Pos[0] double 16 run data get storage bob:data SavedChunks[-1][0]
execute store result entity @s Pos[2] double 16 run data get storage bob:data SavedChunks[-1][1]

# If this chunk is not force loaded, load it and add it to the list of chunks to unload later
execute at @s store success score $is_chunk_force_loaded bob run forceload query ~ ~
execute at @s if score $is_chunk_force_loaded bob matches 0 run forceload add ~ ~
execute at @s if score $is_chunk_force_loaded bob matches 0 run data modify storage bob:data ForceloadedChunks append from storage bob:data SavedChunks[-1]
data remove storage bob:data SavedChunks[-1]

# Loop this function until all saved chunks are force loaded
scoreboard players remove $saved_chunks bob 1
execute if score $saved_chunks bob matches 1.. run function bob:uninstall/load_chunk
execute if score $saved_chunks bob matches 0 run kill @s