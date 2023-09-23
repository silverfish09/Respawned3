scoreboard players operation $pattern bob = @s bob.pattern
scoreboard players operation $color bob = @s bob.color

data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns append value {Pattern: "", Color: 0}

# Set colour
execute store result storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Color int 1 run scoreboard players get $color bob

# Set pattern
execute if score $pattern bob matches 4320001 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "b"
execute if score $pattern bob matches 4320002 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "bo"
execute if score $pattern bob matches 4320003 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "bri"
execute if score $pattern bob matches 4320004 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "mc"
execute if score $pattern bob matches 4320005 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "cre"
execute if score $pattern bob matches 4320006 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "cr"
execute if score $pattern bob matches 4320007 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "cbo"
execute if score $pattern bob matches 4320008 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "ld"
execute if score $pattern bob matches 4320009 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "rud"
execute if score $pattern bob matches 4320010 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "lud"
execute if score $pattern bob matches 4320011 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "rd"
execute if score $pattern bob matches 4320012 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "flo"
execute if score $pattern bob matches 4320013 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "glb"
execute if score $pattern bob matches 4320014 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "gra"
execute if score $pattern bob matches 4320015 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "gru"
execute if score $pattern bob matches 4320016 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "hh"
execute if score $pattern bob matches 4320017 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "vh"
execute if score $pattern bob matches 4320018 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "vhr"
execute if score $pattern bob matches 4320019 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "moj"
execute if score $pattern bob matches 4320020 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "pig"
execute if score $pattern bob matches 4320021 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "mr"
execute if score $pattern bob matches 4320022 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "sku"
execute if score $pattern bob matches 4320023 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "ss"
execute if score $pattern bob matches 4320024 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "bl"
execute if score $pattern bob matches 4320025 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "br"
execute if score $pattern bob matches 4320026 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "tl"
execute if score $pattern bob matches 4320027 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "tr"
execute if score $pattern bob matches 4320028 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "sc"
execute if score $pattern bob matches 4320029 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "bs"
execute if score $pattern bob matches 4320030 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "cs"
execute if score $pattern bob matches 4320031 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "dls"
execute if score $pattern bob matches 4320032 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "drs"
execute if score $pattern bob matches 4320033 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "ls"
execute if score $pattern bob matches 4320034 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "ms"
execute if score $pattern bob matches 4320035 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "rs"
execute if score $pattern bob matches 4320036 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "ts"
execute if score $pattern bob matches 4320037 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "bt"
execute if score $pattern bob matches 4320038 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "tt"
execute if score $pattern bob matches 4320039 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "bts"
execute if score $pattern bob matches 4320040 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "tts"
execute if score $pattern bob matches 4320041 run data modify storage bob:data NewBanner.tag.BlockEntityTag.Patterns[-1].Pattern set value "hhb"

# Copy name (if the banner had one)
execute if data entity @s ArmorItems[3].tag.display.Name run data modify storage bob:data NewBanner.tag.display.Name set from entity @s ArmorItems[3].tag.display.Name
execute if data entity @s ArmorItems[3].tag.display.Lore run data modify storage bob:data NewBanner.tag.display.Lore set from entity @s ArmorItems[3].tag.display.Lore

# Shoo!
kill @s