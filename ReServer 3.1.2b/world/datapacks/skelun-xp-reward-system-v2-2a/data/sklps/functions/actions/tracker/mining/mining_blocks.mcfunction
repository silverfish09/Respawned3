# ----------------------------------------------------------------------------------
# .. Actually count the blocks mined using the pickaxe
# ----------------------------------------------------------------------------------

scoreboard objectives add Mining_Count_Temp dummy
scoreboard objectives add Mining_Count_Multiplier dummy
scoreboard objectives add Mining_Count_Multiplier_Temp dummy
scoreboard objectives add Mining_Hardness_50 dummy
scoreboard objectives add Mining_Hardness_30 dummy
scoreboard objectives add Mining_Hardness_5 dummy

scoreboard players set @s Mining_Count 0

# .. Sets the hardness values
# ----------------------------------------------------------------------------------
scoreboard players set @s Mining_Hardness_50 20
scoreboard players set @s Mining_Hardness_30 12
scoreboard players set @s Mining_Hardness_5 2

# .. Blocks with hardness ~50
# ----------------------------------------------------------------------------------
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_crying-obisdian
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_obsidian

scoreboard players operation @s Mining_Count_Multiplier = @s Mining_Count_Temp
scoreboard players operation @s Mining_Count_Multiplier *= @s Mining_Hardness_50

scoreboard players operation @s Mining_Count += @s Mining_Count_Multiplier

scoreboard players set @s Mining_Count_Multiplier 0
scoreboard players set @s Mining_Count_Temp 0

# .. Blocks with hardness ~30
# ----------------------------------------------------------------------------------
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_ancient-debris

scoreboard players operation @s Mining_Count_Multiplier = @s Mining_Count_Temp
scoreboard players operation @s Mining_Count_Multiplier *= @s Mining_Hardness_30

scoreboard players operation @s Mining_Count += @s Mining_Count_Multiplier

scoreboard players set @s Mining_Count_Multiplier 0
scoreboard players set @s Mining_Count_Temp 0


# .. Blocks with hardness ~5
# ----------------------------------------------------------------------------------
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_deepslate-gold-ore
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_deepslate-iron-ore
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_deepslate-copper-ore

scoreboard players operation @s Mining_Count_Multiplier = @s Mining_Count_Temp
scoreboard players operation @s Mining_Count_Multiplier *= @s Mining_Hardness_5

scoreboard players operation @s Mining_Count += @s Mining_Count_Multiplier

scoreboard players set @s Mining_Count_Multiplier 0
scoreboard players set @s Mining_Count_Temp 0

# .. Blocks with hardness ~3
# ----------------------------------------------------------------------------------
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_deepslate-cobbled-deepslate
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_deepslate-bricks
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_deepslate-tiles
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_polished-deepslate
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_chiseled-deepslate
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_gold-block
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_lapis-block
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_copper-block
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_copper-ore
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_deepslate
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_end-stone
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_gold-ore
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_iron-ore
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_blue-ice

scoreboard players operation @s Mining_Count_Multiplier_Temp = @s Mining_Count_Temp
scoreboard players operation @s Mining_Count_Multiplier_Temp /= @s Mining_Hardness_5

scoreboard players operation @s Mining_Count_Multiplier = @s Mining_Count_Temp
scoreboard players operation @s Mining_Count_Multiplier += @s Mining_Count_Multiplier_Temp

scoreboard players operation @s Mining_Count += @s Mining_Count_Multiplier

scoreboard players set @s Mining_Count_Multiplier_Temp 0
scoreboard players set @s Mining_Count_Multiplier 0
scoreboard players set @s Mining_Count_Temp 0

# .. Blocks with hardness ~2
# ----------------------------------------------------------------------------------
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_bone-block
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_cobblestone
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_blackstone
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_mossy-cobblestone
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_nether-bricks
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_red-nether-bricks
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_cracked-nether-bricks
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_smooth-stone

# .. Blocks with hardness ~1
# ----------------------------------------------------------------------------------
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_amethyst-block
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_amethyst-cluster
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_amethyst-budding
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_andesite
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_blackstone
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_polished-blackstone-bricks
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_gilded-blackstone
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_dripstone-block
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_dripstone
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_infested-deepslate
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_dark-prismarine
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_diorite
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_granite
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_prismarine
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_prismarine-bricks
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_stone
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_stone-bricks
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_cracked-stone-bricks
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_purpur-block
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_purpur-pillar
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_tuff
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_terracota
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_basalt
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_infested-cobblestone
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_quartz-block
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_sandstone
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_red-sandstone
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_calcite
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_infested-stone
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_magma-block
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_ice
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_packed-ice
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_frosted-ice
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_netherrack
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_warped-nylium
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_crimson-nylium
scoreboard players operation @s Mining_Count_Temp += @s Mining_block_packed-mud

scoreboard players operation @s Mining_Count += @s Mining_Count_Temp

scoreboard players set @s Mining_Count_Multiplier 0
scoreboard players set @s Mining_Count_Temp 0

# .. Gives xp
# ----------------------------------------------------------------------------------
execute if score @s Mining_Count >= @s Mining_XP run function sklps:give_xp

# .. Increments ceiling
# ----------------------------------------------------------------------------------
execute if score @s Mining_Count >= @s Mining_XP run scoreboard players operation @s Mining_XP += #sklps.deltas Mining_Delta
execute if score @s Mining_Count >= @s Mining_XP run scoreboard players add @s Mining_Level 1

# .. Then: Resets and Remove temporary scores
# ----------------------------------------------------------------------------------
scoreboard players reset @s Mining_Count_Temp
scoreboard players reset @s Mining_Count_Multiplier
scoreboard players reset @s Mining_Count_Multiplier_Temp
scoreboard objectives remove Mining_Count_Temp
scoreboard objectives remove Mining_Count_Multiplier
scoreboard objectives remove Mining_Count_Multiplier_Temp
scoreboard objectives remove Mining_Hardness_50
scoreboard objectives remove Mining_Hardness_30
scoreboard objectives remove Mining_Hardness_5