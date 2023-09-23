# ----------------------------------------------------------------------------------
# -- < THE LOOP >
# ----------------------------------------------------------------------------------

execute as @a[tag=!sklps] run function sklps:start

function sklps:actions/tracker/cutting
function sklps:actions/tracker/digging
function sklps:actions/tracker/farming
function sklps:actions/tracker/mining
function sklps:actions/tracker/traveling

# .. Timer
execute as @a[scores={sklps_Timer=1..}] run scoreboard players remove @s sklps_Timer 1
