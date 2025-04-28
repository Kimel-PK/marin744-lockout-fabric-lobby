# Remove info board
function lockout_lobby:remove_teams_list

# Clear lobby
execute at @e[tag=saved_pos] run fill ~-7 312 ~-7 ~7 319 ~7 minecraft:air replace

# Set survival
gamemode survival @a

# Clear corgi
execute at @e[tag=saved_pos] run fill ~-55 319 ~50 ~52 185 ~50 minecraft:air