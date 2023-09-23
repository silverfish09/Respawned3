# Load saved chunks
tellraw @a [{"text": "[Banners on Beds] ", "color": "green"}, {"translate": "%1$s%1111236608$s", "with": ["Uninstalling...", {"translate": "bob.commands.function.uninstall"}]}]
function bob:uninstall/load_chunks

# Once entities summoned using this data pack are loaded, kill them, unload chunks and remove objectives on the scoreboard
schedule function bob:uninstall/kill_all 20t
schedule function bob:uninstall/unload_chunks 30t
schedule function bob:uninstall/reset_storage 31t
schedule function bob:uninstall/remove_objectives 31t