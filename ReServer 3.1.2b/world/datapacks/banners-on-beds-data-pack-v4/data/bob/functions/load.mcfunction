# Fancy data-pack helper plus thing
#declare storage bob:data

# Setup storage
execute unless data storage bob:data SavedChunks run data modify storage bob:data SavedChunks set value []

# Create scoreboard objectives
scoreboard objectives add bob dummy
scoreboard objectives add bob.color dummy
scoreboard objectives add bob.pattern dummy
scoreboard objectives add bob.height dummy

# Update color
execute as @e[type=minecraft:armor_stand, tag=bob.banner_pattern, tag=!bob.updated] run function bob:update_color