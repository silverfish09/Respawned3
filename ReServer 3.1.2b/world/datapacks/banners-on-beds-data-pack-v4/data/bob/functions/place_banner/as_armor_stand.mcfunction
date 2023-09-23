# Set scores
scoreboard players operation @s bob.height = $height bob
execute store result score @s bob.color run data get storage bob:data Pattern.Color
execute store result score @s bob.pattern run data get storage bob:data DisplayItem.tag.CustomModelData

# Set name (if the banner had one)
execute if score @s bob.height matches 0 if data storage bob:data Banner.tag.CustomName run data modify entity @s CustomName set from storage bob:data Banner.tag.CustomName

# Edit display item and untag
item modify entity @s armor.head bob:set_display_item_nbt
tag @s remove bob.new