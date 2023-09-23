data modify storage bob:data ForceloadedChunks set value []
summon minecraft:area_effect_cloud ~ ~ ~ {Tags: ["bob", "bob.load_saved_chunks"]}
execute store result score $saved_chunks bob run data get storage bob:data SavedChunks
execute if score $saved_chunks bob matches 1.. as @e[type=minecraft:area_effect_cloud, tag=bob.load_saved_chunks] run function bob:uninstall/load_chunk