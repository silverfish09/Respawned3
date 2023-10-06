# ----------------------------------------------------------------------------------
# .. DEFINES: Mining
# ----------------------------------------------------------------------------------

scoreboard objectives add Mining_Level dummy
scoreboard players set @a Mining_Level 1
scoreboard objectives add Mining_XP dummy
scoreboard objectives add Mining_Initial_Blocks dummy
scoreboard objectives add Mining_Detect dummy
scoreboard objectives add Mining_Count dummy

# .. Mining Tools
# ----------------------------------------------------------------------------------
scoreboard objectives add Mining_1 minecraft.used:minecraft.wooden_pickaxe
scoreboard objectives add Mining_2 minecraft.used:minecraft.stone_pickaxe
scoreboard objectives add Mining_3 minecraft.used:minecraft.iron_pickaxe
scoreboard objectives add Mining_4 minecraft.used:minecraft.golden_pickaxe
scoreboard objectives add Mining_5 minecraft.used:minecraft.diamond_pickaxe
scoreboard objectives add Mining_6 minecraft.used:minecraft.netherite_pickaxe

# .. Sets Initial Value for Pickaxe Uses
# ----------------------------------------------------------------------------------
function sklps:actions/define/initial/mined

# .. Hardness -> 50
# ----------------------------------------------------------------------------------
scoreboard objectives add Mining_block_crying-obisdian minecraft.mined:minecraft.crying_obsidian
scoreboard objectives add Mining_block_obsidian minecraft.mined:minecraft.obsidian

# .. Hardness -> 30
# ----------------------------------------------------------------------------------
scoreboard objectives add Mining_block_ancient-debris minecraft.mined:minecraft.ancient_debris

# .. Hardness -> 5 ~ 4.5
# ----------------------------------------------------------------------------------
scoreboard objectives add Mining_block_deepslate-gold-ore minecraft.mined:minecraft.deepslate_gold_ore
scoreboard objectives add Mining_block_deepslate-iron-ore minecraft.mined:minecraft.deepslate_iron_ore
scoreboard objectives add Mining_block_deepslate-copper-ore minecraft.mined:minecraft.deepslate_copper_ore

# .. Hardness -> 3.5 ~ 2.8
# ----------------------------------------------------------------------------------
scoreboard objectives add Mining_block_cobbled-deepslate minecraft.mined:minecraft.cobbled_deepslate
scoreboard objectives add Mining_block_deepslate-bricks minecraft.mined:minecraft.deepslate_bricks
scoreboard objectives add Mining_block_deepslate-tiles minecraft.mined:minecraft.deepslate_tiles
scoreboard objectives add Mining_block_polished-deepslate minecraft.mined:minecraft.polished_deepslate
scoreboard objectives add Mining_block_chiseled-deepslate minecraft.mined:minecraft.chiseled_deepslate
scoreboard objectives add Mining_block_gold-block minecraft.mined:minecraft.gold_block
scoreboard objectives add Mining_block_lapis-block minecraft.mined:minecraft.lapis_block
scoreboard objectives add Mining_block_copper-block minecraft.mined:minecraft.copper_block
scoreboard objectives add Mining_block_copper-ore minecraft.mined:minecraft.copper_ore
scoreboard objectives add Mining_block_deepslate minecraft.mined:minecraft.deepslate
scoreboard objectives add Mining_block_end-stone minecraft.mined:minecraft.end_stone
scoreboard objectives add Mining_block_gold-ore minecraft.mined:minecraft.gold_ore
scoreboard objectives add Mining_block_iron-ore minecraft.mined:minecraft.iron_ore
scoreboard objectives add Mining_block_blue-ice minecraft.mined:minecraft.blue_ice

# .. Hardness -> 2
# ----------------------------------------------------------------------------------
scoreboard objectives add Mining_block_bone-block minecraft.mined:minecraft.bone_block
scoreboard objectives add Mining_block_cobblestone minecraft.mined:minecraft.cobblestone
scoreboard objectives add Mining_block_blackstone minecraft.mined:minecraft.polished_blackstone
scoreboard objectives add Mining_block_mossy-cobblestone minecraft.mined:minecraft.mossy_cobblestone
scoreboard objectives add Mining_block_nether-bricks minecraft.mined:minecraft.nether_bricks
scoreboard objectives add Mining_block_red-nether-bricks minecraft.mined:minecraft.red_nether_bricks
scoreboard objectives add Mining_block_cracked-nether-bricks minecraft.mined:minecraft.cracked_nether_bricks
scoreboard objectives add Mining_block_smooth-stone minecraft.mined:minecraft.smooth_stone

# .. Hardness -> Less than 1.5
# ----------------------------------------------------------------------------------
scoreboard objectives add Mining_block_andesite minecraft.mined:minecraft.andesite
scoreboard objectives add Mining_block_blackstone minecraft.mined:minecraft.blackstone
scoreboard objectives add Mining_block_amethyst-block minecraft.mined:minecraft.amethyst_block
scoreboard objectives add Mining_block_amethyst-cluster minecraft.mined:minecraft.amethyst_cluster
scoreboard objectives add Mining_block_amethyst-budding minecraft.mined:minecraft.budding_amethyst
scoreboard objectives add Mining_block_dripstone-block minecraft.mined:minecraft.dripstone_block
scoreboard objectives add Mining_block_dripstone minecraft.mined:minecraft.pointed_dripstone
scoreboard objectives add Mining_block_polished-blackstone-bricks minecraft.mined:minecraft.polished_blackstone_bricks
scoreboard objectives add Mining_block_gilded-blackstone minecraft.mined:minecraft.gilded_blackstone
scoreboard objectives add Mining_block_infested-deepslate minecraft.mined:minecraft.infested_deepslate
scoreboard objectives add Mining_block_dark-prismarine minecraft.mined:minecraft.dark_prismarine
scoreboard objectives add Mining_block_diorite minecraft.mined:minecraft.diorite
scoreboard objectives add Mining_block_granite minecraft.mined:minecraft.granite
scoreboard objectives add Mining_block_prismarine minecraft.mined:minecraft.prismarine
scoreboard objectives add Mining_block_prismarine-bricks minecraft.mined:minecraft.prismarine_bricks
scoreboard objectives add Mining_block_stone minecraft.mined:minecraft.stone
scoreboard objectives add Mining_block_stone-bricks minecraft.mined:minecraft.stone_bricks
scoreboard objectives add Mining_block_cracked-stone-bricks minecraft.mined:minecraft.cracked_stone_bricks
scoreboard objectives add Mining_block_purpur-block minecraft.mined:minecraft.purpur_block
scoreboard objectives add Mining_block_purpur-pillar minecraft.mined:minecraft.purpur_pillar
scoreboard objectives add Mining_block_tuff minecraft.mined:minecraft.tuff
scoreboard objectives add Mining_block_terracota minecraft.mined:minecraft.terracotta
scoreboard objectives add Mining_block_basalt minecraft.mined:minecraft.basalt
scoreboard objectives add Mining_block_packed-mud minecraft.mined:minecraft.packed_mud
# ----------------------------------------------------------------------------------
scoreboard objectives add Mining_block_infested-cobblestone minecraft.mined:minecraft.infested_cobblestone
scoreboard objectives add Mining_block_quartz-block minecraft.mined:minecraft.quartz_block
scoreboard objectives add Mining_block_sandstone minecraft.mined:minecraft.sandstone
scoreboard objectives add Mining_block_red-sandstone minecraft.mined:minecraft.red_sandstone
scoreboard objectives add Mining_block_calcite minecraft.mined:minecraft.calcite
scoreboard objectives add Mining_block_infested-stone minecraft.mined:minecraft.infested_stone
scoreboard objectives add Mining_block_magma-block minecraft.mined:minecraft.magma_block
scoreboard objectives add Mining_block_ice minecraft.mined:minecraft.ice
scoreboard objectives add Mining_block_packed-ice minecraft.mined:minecraft.packed_ice
scoreboard objectives add Mining_block_frosted-ice minecraft.mined:minecraft.frosted_ice
scoreboard objectives add Mining_block_netherrack minecraft.mined:minecraft.netherrack
scoreboard objectives add Mining_block_warped-nylium minecraft.mined:minecraft.warped_nylium
scoreboard objectives add Mining_block_crimson-nylium minecraft.mined:minecraft.crimson_nylium

# .. Sets Initial Value for Mined Blocks
# ----------------------------------------------------------------------------------
function sklps:actions/define/initial/mined_blocks

# .. Sets Initial Ceiling for Leveling
# ----------------------------------------------------------------------------------
scoreboard players operation @s Mining_XP = @s Mining_Initial_Blocks
scoreboard players operation @s Mining_XP += #sklps.deltas Mining_Delta