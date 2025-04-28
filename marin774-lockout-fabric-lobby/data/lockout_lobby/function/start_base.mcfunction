# Remove info board
function lockout_lobby:remove_teams_list

# Clear lobby
fill -7 312 -7 7 319 7 minecraft:air replace

# Set Board Size
execute if score BoardSizeCounter BoardSizeCounter matches 3 run SetBoardSize 3
execute if score BoardSizeCounter BoardSizeCounter matches 4 run SetBoardSize 4
execute if score BoardSizeCounter BoardSizeCounter matches 5 run SetBoardSize 5
execute if score BoardSizeCounter BoardSizeCounter matches 6 run SetBoardSize 6
execute if score BoardSizeCounter BoardSizeCounter matches 7 run SetBoardSize 7

# Set survival
gamemode survival @a