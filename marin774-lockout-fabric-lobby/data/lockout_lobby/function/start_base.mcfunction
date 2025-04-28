# Remove info board
function lockout_lobby:remove_teams_list

# Clear lobby
fill ~-7 312 ~-7 ~7 319 ~7 minecraft:air replace

# Set survival
gamemode survival @a

# Clear corgi
fill ~-55 319 ~50 ~52 185 ~50 minecraft:air