# Remove info board
function lockout_lobby:remove_teams_list

# Clear lobby
execute at @e[tag=saved_pos] run setblock ~5 317 ~-4 minecraft:air
execute at @e[tag=saved_pos] run setblock ~5 317 ~4 minecraft:air
execute at @e[tag=saved_pos] run fill ~-13 312 ~-13 ~13 319 ~13 minecraft:air replace

# Set Board Size
execute if score BoardSizeCounter BoardSizeCounter matches 3 run SetBoardSize 3
execute if score BoardSizeCounter BoardSizeCounter matches 4 run SetBoardSize 4
execute if score BoardSizeCounter BoardSizeCounter matches 5 run SetBoardSize 5
execute if score BoardSizeCounter BoardSizeCounter matches 6 run SetBoardSize 6
execute if score BoardSizeCounter BoardSizeCounter matches 7 run SetBoardSize 7

# Set survival
gamemode survival @a

# Clear corgi
execute at @e[tag=saved_pos] run fill ~-55 319 ~50 ~52 185 ~50 minecraft:air
kill @e[tag=saved_pos]