# ----------------------------------------------------------------------------------
# .. DEFINES: Farming
# ----------------------------------------------------------------------------------

scoreboard objectives add Farming_Level dummy
scoreboard players set @a Farming_Level 1
scoreboard objectives add Farming_XP dummy
scoreboard objectives add Farming_Initial_Blocks dummy
scoreboard objectives add Farming_Detect dummy
scoreboard objectives add Farming_Count dummy

# .. Farming Tools
# ----------------------------------------------------------------------------------
scoreboard objectives add Farming_1 minecraft.used:minecraft.wooden_hoe
scoreboard objectives add Farming_2 minecraft.used:minecraft.stone_hoe
scoreboard objectives add Farming_3 minecraft.used:minecraft.iron_hoe
scoreboard objectives add Farming_4 minecraft.used:minecraft.golden_hoe
scoreboard objectives add Farming_5 minecraft.used:minecraft.diamond_hoe
scoreboard objectives add Farming_6 minecraft.used:minecraft.netherite_hoe

# .. Sets Initial Value for Hoe Uses
# ----------------------------------------------------------------------------------
function sklps:actions/define/initial/farmed

# .. Crops
# ----------------------------------------------------------------------------------
scoreboard objectives add Farming_crop_wheat minecraft.mined:minecraft.wheat
scoreboard objectives add Farming_crop_beetroots minecraft.mined:minecraft.beetroots
scoreboard objectives add Farming_crop_potatoes minecraft.mined:minecraft.potatoes
scoreboard objectives add Farming_crop_carrots minecraft.mined:minecraft.carrots
scoreboard objectives add Farming_crop_nether-wart minecraft.mined:minecraft.nether_wart
scoreboard objectives add Farming_block_nether-wart minecraft.mined:minecraft.nether_wart_block
scoreboard objectives add Farming_block_warped-wart minecraft.mined:minecraft.warped_wart_block
scoreboard objectives add Farming_block_shroomlight minecraft.mined:minecraft.shroomlight
scoreboard objectives add Farming_block_sponge minecraft.mined:minecraft.sponge
scoreboard objectives add Farming_block_wet-sponge minecraft.mined:minecraft.wet_sponge

# .. Sets Initial Value For Farmed Blocks
# ----------------------------------------------------------------------------------
function sklps:actions/define/initial/farmed_blocks

# .. Sets Initial Ceiling for Leveling
# ----------------------------------------------------------------------------------
scoreboard players operation @s Farming_XP = @s Farming_Initial_Blocks
scoreboard players operation @s Farming_XP += #sklps.deltas Farming_Delta