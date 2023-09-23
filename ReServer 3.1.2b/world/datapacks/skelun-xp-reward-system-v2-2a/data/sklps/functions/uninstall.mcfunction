# ----------------------------------------------------------------------------------
# .. REMOVES TAGS
# ----------------------------------------------------------------------------------
function sklps:utils/remove_tags
execute as @a[tag=sklps] run tag @s remove sklps
execute as @a[tag=sklps_welcome] run tag @s remove sklps_welcome
# ----------------------------------------------------------------------------------
# .. Removes legacy scoreboards
# ----------------------------------------------------------------------------------
scoreboard objectives remove Farming_Melon
scoreboard objectives remove Farming_Pumpkin
scoreboard objectives remove Farming_crop_sugar-cane
scoreboard objectives remove Mining_block_budding-amethyst
scoreboard objectives remove Timer
# ----------------------------------------------------------------------------------
# .. Removes timer scoreboard
# ----------------------------------------------------------------------------------
scoreboard objectives remove sklps_Timer
# ----------------------------------------------------------------------------------
# .. Removes all scoreboards for --> CUTTING
# ----------------------------------------------------------------------------------
scoreboard objectives remove Cutting_Delta
scoreboard objectives remove Cutting_Level
scoreboard objectives remove Cutting_XP
scoreboard objectives remove Cutting_Initial
scoreboard objectives remove Cutting_Initial_Blocks
scoreboard objectives remove Cutting_Detect
scoreboard objectives remove Cutting_Detect_Temp
scoreboard objectives remove Cutting_Count
scoreboard objectives remove Cutting_Count_Temp
scoreboard objectives remove Cutting_Count_Multiplier
scoreboard objectives remove Cutting_Count_Multiplier_Temp
# ----------------------------------------------------------------------------------
scoreboard objectives remove Cutting_1
scoreboard objectives remove Cutting_2
scoreboard objectives remove Cutting_3
scoreboard objectives remove Cutting_4
scoreboard objectives remove Cutting_5
scoreboard objectives remove Cutting_6
# ----------------------------------------------------------------------------------
scoreboard objectives remove Cutting_block_oak-log
scoreboard objectives remove Cutting_block_birch-log
scoreboard objectives remove Cutting_block_acacia-log
scoreboard objectives remove Cutting_block_jungle-log
scoreboard objectives remove Cutting_block_spruce-log
scoreboard objectives remove Cutting_block_warped-stem
scoreboard objectives remove Cutting_block_crimson-stem
scoreboard objectives remove Cutting_block_dark-oak-log
scoreboard objectives remove Cutting_block_mangrove-log
scoreboard objectives remove Cutting_block_oak-planks
scoreboard objectives remove Cutting_block_birch-planks
scoreboard objectives remove Cutting_block_acacia-planks
scoreboard objectives remove Cutting_block_jungle-planks
scoreboard objectives remove Cutting_block_spruce-planks
scoreboard objectives remove Cutting_block_warped-planks
scoreboard objectives remove Cutting_block_crimson-planks
scoreboard objectives remove Cutting_block_oak-planks
scoreboard objectives remove Cutting_block_mangrove-planks
scoreboard objectives remove Cutting_block_mangrove-roots
scoreboard objectives remove Cutting_block_melon
scoreboard objectives remove Cutting_block_pumpkin
scoreboard objectives remove Cutting_block_bee-nest
scoreboard objectives remove Cutting_block_bamboo
scoreboard objectives remove Cutting_block_cocoa
scoreboard objectives remove Cutting_block_red-mushroom-block
scoreboard objectives remove Cutting_block_brown-mushrom-block
# ----------------------------------------------------------------------------------
# .. Removes all scoreboards for --> DIGGING
# ----------------------------------------------------------------------------------
scoreboard objectives remove Digging_Delta
scoreboard objectives remove Digging_Level
scoreboard objectives remove Digging_XP
scoreboard objectives remove Digging_Initial
scoreboard objectives remove Digging_Initial_Blocks
scoreboard objectives remove Digging_Detect
scoreboard objectives remove Digging_Detect_Temp
scoreboard objectives remove Digging_Count
scoreboard objectives remove Digging_Count_Temp
scoreboard objectives remove Digging_Count_Multiplier
scoreboard objectives remove Digging_Count_Multiplier_Temp
# ----------------------------------------------------------------------------------
scoreboard objectives remove Digging_1
scoreboard objectives remove Digging_2
scoreboard objectives remove Digging_3
scoreboard objectives remove Digging_4
scoreboard objectives remove Digging_5
scoreboard objectives remove Digging_6
# ----------------------------------------------------------------------------------
scoreboard objectives remove Digging_Hardness_2
# ----------------------------------------------------------------------------------
scoreboard objectives remove Digging_block_clay
scoreboard objectives remove Digging_block_farmland
scoreboard objectives remove Digging_block_grass-block
scoreboard objectives remove Digging_block_dirt-path
scoreboard objectives remove Digging_block_gravel
scoreboard objectives remove Digging_block_mycelium
scoreboard objectives remove Digging_block_podzol
scoreboard objectives remove Digging_block_coarse-dirt
scoreboard objectives remove Digging_block_dirt
scoreboard objectives remove Digging_block_red-sand
scoreboard objectives remove Digging_block_sand
scoreboard objectives remove Digging_block_soul-sand
scoreboard objectives remove Digging_block_soul-soil
scoreboard objectives remove Digging_block_snow-block
scoreboard objectives remove Digging_block_snow
scoreboard objectives remove Digging_block_mud
scoreboard objectives remove Digging_block_muddy-mangrove-roots
# ----------------------------------------------------------------------------------
# .. Removes all scoreboards for --> MINING
# ----------------------------------------------------------------------------------
scoreboard objectives remove Mining_Delta
scoreboard objectives remove Mining_Level
scoreboard objectives remove Mining_XP
scoreboard objectives remove Mining_Initial
scoreboard objectives remove Mining_Initial_Blocks
scoreboard objectives remove Mining_Detect
scoreboard objectives remove Mining_Detect_Temp
scoreboard objectives remove Mining_Count
scoreboard objectives remove Mining_Count_Temp
scoreboard objectives remove Mining_Count_Multiplier
scoreboard objectives remove Mining_Count_Multiplier_Temp
# ----------------------------------------------------------------------------------
scoreboard objectives remove Mining_1
scoreboard objectives remove Mining_2
scoreboard objectives remove Mining_3
scoreboard objectives remove Mining_4
scoreboard objectives remove Mining_5
scoreboard objectives remove Mining_6
# ----------------------------------------------------------------------------------
scoreboard objectives remove Mining_Hardness_5
scoreboard objectives remove Mining_Hardness_30
scoreboard objectives remove Mining_Hardness_50
# ----------------------------------------------------------------------------------
scoreboard objectives remove Mining_block_crying-obisdian
scoreboard objectives remove Mining_block_obsidian
scoreboard objectives remove Mining_block_ancient-debris
scoreboard objectives remove Mining_block_deepslate-gold-ore
scoreboard objectives remove Mining_block_deepslate-iron-ore
scoreboard objectives remove Mining_block_deepslate-copper-ore
scoreboard objectives remove Mining_block_cobbled-deepslate
scoreboard objectives remove Mining_block_deepslate-bricks
scoreboard objectives remove Mining_block_deepslate-tiles
scoreboard objectives remove Mining_block_polished-deepslate
scoreboard objectives remove Mining_block_chiseled-deepslate
scoreboard objectives remove Mining_block_gold-block
scoreboard objectives remove Mining_block_lapis-block
scoreboard objectives remove Mining_block_copper-block
scoreboard objectives remove Mining_block_copper-ore
scoreboard objectives remove Mining_block_deepslate
scoreboard objectives remove Mining_block_end-stone
scoreboard objectives remove Mining_block_gold-ore
scoreboard objectives remove Mining_block_iron-ore
scoreboard objectives remove Mining_block_blue-ice
scoreboard objectives remove Mining_block_bone-block
scoreboard objectives remove Mining_block_cobblestone
scoreboard objectives remove Mining_block_blackstone
scoreboard objectives remove Mining_block_mossy-cobblestone
scoreboard objectives remove Mining_block_nether-bricks
scoreboard objectives remove Mining_block_red-nether-bricks
scoreboard objectives remove Mining_block_cracked-nether-bricks
scoreboard objectives remove Mining_block_smooth-stone
scoreboard objectives remove Mining_block_andesite
scoreboard objectives remove Mining_block_blackstone
scoreboard objectives remove Mining_block_amethyst-block
scoreboard objectives remove Mining_block_amethyst-cluster
scoreboard objectives remove Mining_block_amethyst-budding
scoreboard objectives remove Mining_block_dripstone-block
scoreboard objectives remove Mining_block_dripstone
scoreboard objectives remove Mining_block_polished-blackstone-bricks
scoreboard objectives remove Mining_block_gilded-blackstone
scoreboard objectives remove Mining_block_infested-deepslate
scoreboard objectives remove Mining_block_dark-prismarine
scoreboard objectives remove Mining_block_diorite
scoreboard objectives remove Mining_block_granite
scoreboard objectives remove Mining_block_prismarine
scoreboard objectives remove Mining_block_prismarine-bricks
scoreboard objectives remove Mining_block_stone
scoreboard objectives remove Mining_block_stone-bricks
scoreboard objectives remove Mining_block_cracked-stone-bricks
scoreboard objectives remove Mining_block_purpur-block
scoreboard objectives remove Mining_block_purpur-pillar
scoreboard objectives remove Mining_block_tuff
scoreboard objectives remove Mining_block_terracota
scoreboard objectives remove Mining_block_basalt
scoreboard objectives remove Mining_block_infested-cobblestone
scoreboard objectives remove Mining_block_quartz-block
scoreboard objectives remove Mining_block_sandstone
scoreboard objectives remove Mining_block_red-sandstone
scoreboard objectives remove Mining_block_calcite
scoreboard objectives remove Mining_block_infested-stone
scoreboard objectives remove Mining_block_magma-block
scoreboard objectives remove Mining_block_ice
scoreboard objectives remove Mining_block_packed-ice
scoreboard objectives remove Mining_block_frosted-ice
scoreboard objectives remove Mining_block_netherrack
scoreboard objectives remove Mining_block_warped-nylium
scoreboard objectives remove Mining_block_crimson-nylium
scoreboard objectives remove Mining_block_packed-mud
# ----------------------------------------------------------------------------------
# .. Removes all scoreboards for --> FARMING
# ----------------------------------------------------------------------------------
scoreboard objectives remove Farming_Delta
scoreboard objectives remove Farming_Level
scoreboard objectives remove Farming_XP
scoreboard objectives remove Farming_Initial
scoreboard objectives remove Farming_Initial_Blocks
scoreboard objectives remove Farming_Detect
scoreboard objectives remove Farming_Detect_Temp
scoreboard objectives remove Farming_Count
scoreboard objectives remove Farming_Count_Temp
# ----------------------------------------------------------------------------------
scoreboard objectives remove Farming_1
scoreboard objectives remove Farming_2
scoreboard objectives remove Farming_3
scoreboard objectives remove Farming_4
scoreboard objectives remove Farming_5
scoreboard objectives remove Farming_6
# ----------------------------------------------------------------------------------
scoreboard objectives remove Farming_crop_wheat
scoreboard objectives remove Farming_crop_beetroots
scoreboard objectives remove Farming_crop_potatoes
scoreboard objectives remove Farming_crop_carrots
scoreboard objectives remove Farming_crop_nether-wart
scoreboard objectives remove Farming_block_nether-wart
scoreboard objectives remove Farming_block_warped-wart
scoreboard objectives remove Farming_block_shroomlight
scoreboard objectives remove Farming_block_sponge
scoreboard objectives remove Farming_block_wet-sponge
# ----------------------------------------------------------------------------------
# .. Removes all scoreboards for --> TRAVELING
# ----------------------------------------------------------------------------------
scoreboard objectives remove sklps_Player_Pos_X
scoreboard objectives remove sklps_Player_Pos_Y
scoreboard objectives remove sklps_Player_Pos_Z
scoreboard objectives remove sklps_Player_Moving_X
scoreboard objectives remove sklps_Player_Moving_Y
scoreboard objectives remove sklps_Player_Moving_Z
scoreboard objectives remove Traveling_Level
scoreboard objectives remove Traveling_XP
scoreboard objectives remove Traveling_Initial
scoreboard objectives remove Traveling_Count
scoreboard objectives remove Traveling_Count_Temp
scoreboard objectives remove Traveling_Delta
scoreboard objectives remove Traveling_Convert
scoreboard objectives remove Traveling_Convert_block
scoreboard objectives remove Traveling_Low1_cm
scoreboard objectives remove Traveling_Low2_cm
scoreboard objectives remove Traveling_Low3_cm
scoreboard objectives remove Traveling_Normal1_cm
scoreboard objectives remove Traveling_Normal2_cm
scoreboard objectives remove Traveling_Normal3_cm
scoreboard objectives remove Traveling_Fast1_cm
scoreboard objectives remove Traveling_Fast2_cm
scoreboard objectives remove Traveling_Max1_cm
scoreboard objectives remove Traveling_Sprint_cm
scoreboard objectives remove Traveling_Boat_cm
scoreboard objectives remove Traveling_Jump_jumps
scoreboard objectives remove sklps_XP_Amount

execute as @a run tellraw @s [{"text":"Skelun's XP Reward System","bold":true},{"text":"was uninstalled.","bold":false}]