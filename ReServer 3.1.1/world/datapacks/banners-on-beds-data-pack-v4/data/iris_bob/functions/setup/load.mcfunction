#> iris_bob:setup/load
#
# Defines scoreboard objectives and sets up storage if it has not already been done
#
# @handles #minecraft:load
# @context any

# You've got to define those somewhere, right?
#define storage iris_bob:data
#define storage iris_bob:block
#define storage iris_bob:input
#define storage iris_bob:output

execute unless data storage iris_bob:data is_setup run function iris_bob:setup/scoreboard
execute unless data storage iris_bob:data is_setup run function iris_bob:setup/storage