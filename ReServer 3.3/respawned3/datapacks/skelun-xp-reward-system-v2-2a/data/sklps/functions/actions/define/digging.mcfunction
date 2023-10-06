# ----------------------------------------------------------------------------------
# .. DEFINES: Digging
# ----------------------------------------------------------------------------------

scoreboard objectives add Digging_Level dummy
scoreboard players set @a Digging_Level 1
scoreboard objectives add Digging_XP dummy
scoreboard objectives add Digging_Initial_Blocks dummy
scoreboard objectives add Digging_Detect dummy
scoreboard objectives add Digging_Count dummy

# .. Digging Tools
# ----------------------------------------------------------------------------------
scoreboard objectives add Digging_1 minecraft.used:minecraft.wooden_shovel
scoreboard objectives add Digging_2 minecraft.used:minecraft.stone_shovel
scoreboard objectives add Digging_3 minecraft.used:minecraft.iron_shovel
scoreboard objectives add Digging_4 minecraft.used:minecraft.golden_shovel
scoreboard objectives add Digging_5 minecraft.used:minecraft.diamond_shovel
scoreboard objectives add Digging_6 minecraft.used:minecraft.netherite_shovel

# .. Sets Initial Value for Shovel Uses
# ----------------------------------------------------------------------------------
function sklps:actions/define/initial/digged

# .. Hardness -> 0.15 ~ 0.1
# ----------------------------------------------------------------------------------
scoreboard objectives add Digging_block_clay minecraft.mined:minecraft.clay
scoreboard objectives add Digging_block_farmland minecraft.mined:minecraft.farmland
scoreboard objectives add Digging_block_grass-block minecraft.mined:minecraft.grass_block
scoreboard objectives add Digging_block_dirt-path minecraft.mined:minecraft.dirt_path
scoreboard objectives add Digging_block_gravel minecraft.mined:minecraft.gravel
scoreboard objectives add Digging_block_mycelium minecraft.mined:minecraft.mycelium
scoreboard objectives add Digging_block_podzol minecraft.mined:minecraft.podzol
scoreboard objectives add Digging_block_coarse-dirt minecraft.mined:minecraft.coarse_dirt
scoreboard objectives add Digging_block_dirt minecraft.mined:minecraft.dirt
scoreboard objectives add Digging_block_red-sand minecraft.mined:minecraft.red_sand
scoreboard objectives add Digging_block_sand minecraft.mined:minecraft.sand
scoreboard objectives add Digging_block_soul-sand minecraft.mined:minecraft.soul_sand
scoreboard objectives add Digging_block_soul-soil minecraft.mined:minecraft.soul_soil
scoreboard objectives add Digging_block_mud minecraft.mined:minecraft.mud
scoreboard objectives add Digging_block_muddy-mangrove-roots minecraft.mined:minecraft.muddy_mangrove_roots

# .. Hardness -> 0.05
# ----------------------------------------------------------------------------------
scoreboard objectives add Digging_Hardness_2 dummy
# ----------------------------------------------------------------------------------
scoreboard objectives add Digging_block_snow-block minecraft.mined:minecraft.snow_block
scoreboard objectives add Digging_block_snow minecraft.mined:minecraft.snow

# .. Sets Initial Value for Mined Blocks
# ----------------------------------------------------------------------------------
function sklps:actions/define/initial/digged_blocks

# .. Sets Initial Ceiling for Leveling
# ----------------------------------------------------------------------------------
scoreboard players operation @s Digging_XP = @s Digging_Initial_Blocks
scoreboard players operation @s Digging_XP += #sklps.deltas Digging_Delta