# Set position
execute store result entity @s Pos[0] double 16 run data get storage bob:data ForceloadedChunks[-1][0]
execute store result entity @s Pos[2] double 16 run data get storage bob:data ForceloadedChunks[-1][1]

# Unload this chunk
execute at @s run forceload remove ~ ~

# Loop this function until all force loaded chunks are unloaded
data remove storage bob:data ForceloadedChunks[-1]
scoreboard players remove $forceloaded_chunks bob 1
execute if score $forceloaded_chunks bob matches 1.. run function bob:uninstall/unload_chunk
execute if score $forceloaded_chunks bob matches 0 run kill @s