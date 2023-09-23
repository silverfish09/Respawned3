summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["bob", "bob.unload_forceloaded_chunks"]}
execute store result score $forceloaded_chunks bob run data get storage bob:data ForceloadedChunks
execute if score $forceloaded_chunks bob matches 1.. as @e[type=minecraft:area_effect_cloud, tag=bob.unload_forceloaded_chunks] run function bob:uninstall/unload_chunk