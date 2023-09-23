execute store result score $patterns bob run data get storage bob:data Banner.tag.BlockEntityTag.Patterns
scoreboard players set $height bob 0
execute if score $patterns bob matches 1.. run function bob:place_banner/summon_stand