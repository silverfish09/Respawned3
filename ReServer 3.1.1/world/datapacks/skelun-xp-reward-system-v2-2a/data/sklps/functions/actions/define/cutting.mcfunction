# ----------------------------------------------------------------------------------
# .. DEFINE: CUTTING
# ----------------------------------------------------------------------------------

scoreboard objectives add Cutting_Level dummy
scoreboard players set @s Cutting_Level 1
scoreboard objectives add Cutting_XP dummy
scoreboard objectives add Cutting_Initial_Blocks dummy
scoreboard objectives add Cutting_Detect dummy
scoreboard objectives add Cutting_Count dummy

# .. Cutting Tools
# ----------------------------------------------------------------------------------
scoreboard objectives add Cutting_1 minecraft.used:minecraft.wooden_axe
scoreboard objectives add Cutting_2 minecraft.used:minecraft.stone_axe
scoreboard objectives add Cutting_3 minecraft.used:minecraft.iron_axe
scoreboard objectives add Cutting_4 minecraft.used:minecraft.golden_axe
scoreboard objectives add Cutting_5 minecraft.used:minecraft.diamond_axe
scoreboard objectives add Cutting_6 minecraft.used:minecraft.netherite_axe

# .. Sets the initial value for shovel uses
# ----------------------------------------------------------------------------------
execute as @a[tag=sklps] run function sklps:actions/define/initial/cut

# .. "Cutable" Blocks
# ----------------------------------------------------------------------------------
scoreboard objectives add Cutting_block_oak-log minecraft.mined:minecraft.oak_log
scoreboard objectives add Cutting_block_birch-log minecraft.mined:minecraft.birch_log
scoreboard objectives add Cutting_block_acacia-log minecraft.mined:minecraft.acacia_log
scoreboard objectives add Cutting_block_jungle-log minecraft.mined:minecraft.jungle_log
scoreboard objectives add Cutting_block_spruce-log minecraft.mined:minecraft.spruce_log
scoreboard objectives add Cutting_block_warped-stem minecraft.mined:minecraft.warped_stem
scoreboard objectives add Cutting_block_crimson-stem minecraft.mined:minecraft.crimson_stem
scoreboard objectives add Cutting_block_dark-oak-log minecraft.mined:minecraft.dark_oak_log
scoreboard objectives add Cutting_block_mangrove-log minecraft.mined:minecraft.mangrove_log
scoreboard objectives add Cutting_block_oak-planks minecraft.mined:minecraft.oak_planks
scoreboard objectives add Cutting_block_birch-planks minecraft.mined:minecraft.birch_planks
scoreboard objectives add Cutting_block_acacia-planks minecraft.mined:minecraft.acacia_planks
scoreboard objectives add Cutting_block_jungle-planks minecraft.mined:minecraft.jungle_planks
scoreboard objectives add Cutting_block_spruce-planks minecraft.mined:minecraft.spruce_planks
scoreboard objectives add Cutting_block_warped-planks minecraft.mined:minecraft.warped_planks
scoreboard objectives add Cutting_block_crimson-planks minecraft.mined:minecraft.crimson_planks
scoreboard objectives add Cutting_block_oak-planks minecraft.mined:minecraft.dark_oak_planks
scoreboard objectives add Cutting_block_mangrove-planks minecraft.mined:minecraft.mangrove_planks

# .. Melts-like-butter Blocks
# ----------------------------------------------------------------------------------
scoreboard objectives add Cutting_Hardness_2 dummy
# ----------------------------------------------------------------------------------
scoreboard objectives add Cutting_block_mangrove-roots minecraft.mined:minecraft.mangrove_roots
scoreboard objectives add Cutting_block_melon minecraft.mined:minecraft.melon
scoreboard objectives add Cutting_block_pumpkin minecraft.mined:minecraft.pumpkin
scoreboard objectives add Cutting_block_bee-nest minecraft.mined:minecraft.bee_nest
scoreboard objectives add Cutting_block_bamboo minecraft.mined:minecraft.bamboo
scoreboard objectives add Cutting_block_cocoa minecraft.mined:minecraft.cocoa
scoreboard objectives add Cutting_block_red-mushroom-block minecraft.mined:minecraft.red_mushroom_block
scoreboard objectives add Cutting_block_brown-mushrom-block minecraft.mined:minecraft.brown_mushroom_block

# .. Sets initial value for "Cut" blocks
# ----------------------------------------------------------------------------------
function sklps:actions/define/initial/cut_blocks

# .. SETS INITIAL CEILING FOR LEVELING
# ----------------------------------------------------------------------------------
scoreboard players operation @s Cutting_XP = @s Cutting_Initial_Blocks
scoreboard players operation @s Cutting_XP += #sklps.deltas Cutting_Delta