# Build lobby

# - Clear lobby
execute at @e[tag=saved_pos] run setblock ~5 317 ~-4 minecraft:air
execute at @e[tag=saved_pos] run setblock ~5 317 ~4 minecraft:air
execute at @e[tag=saved_pos] run fill ~-13 312 ~-13 ~13 319 ~13 minecraft:air replace
kill @e[tag=saved_pos]

# - Save new position
execute as @p at @s run summon armor_stand ~ 319 ~ {Tags:["saved_pos"],Invisible:1,Marker:1,NoGravity:1} 

# - Create glass
execute at @e[tag=saved_pos] run fill ~-13 316 ~-13 ~13 316 ~13 minecraft:glass replace
execute at @e[tag=saved_pos] run fill ~-13 316 ~13 ~13 319 ~13 minecraft:glass replace
execute at @e[tag=saved_pos] run fill ~-13 316 ~-13 ~13 319 ~-13 minecraft:glass replace
execute at @e[tag=saved_pos] run fill ~-13 316 ~-13 ~-13 319 ~13 minecraft:glass replace
execute at @e[tag=saved_pos] run fill ~13 316 ~-13 ~13 319 ~13 minecraft:glass replace

# - Global commands
execute at @e[tag=saved_pos] run setblock ~ 315 ~ minecraft:repeating_command_block{Command:"execute as @a at @s if block ~ ~-1 ~ minecraft:glass run team leave @s", auto:1b}
execute at @e[tag=saved_pos] run setblock ~ 314 ~ minecraft:repeating_command_block{Command:"execute as @a at @s if block ~ ~-1 ~ minecraft:glass run scoreboard players reset @a team_number", auto:1b}
execute at @e[tag=saved_pos] run setblock ~ 313 ~ minecraft:repeating_command_block{Command:"execute run function lockout_lobby:calm_players", auto:1b}
execute at @e[tag=saved_pos] run setblock ~ 312 ~ minecraft:repeating_command_block{Command:"execute as @a at @s if entity @s[x=-512,y=-64,z=-512,dx=512,dy=309,dz=512] run tp @s 0 318 0", auto:1b}

# - Team 1 (Red)
execute at @e[tag=saved_pos] run fill ~9 316 ~-1 ~11 316 ~1 minecraft:red_concrete replace
execute at @e[tag=saved_pos] run setblock ~10 315 ~0 minecraft:repeating_command_block{Command:"execute as @a[distance=..2] run team join 1", auto:1b}
execute at @e[tag=saved_pos] run setblock ~10 314 ~0 minecraft:repeating_command_block{Command:"execute at @a[distance=..3] run scoreboard players set @a[distance=..3] team_number 1", auto:1b}

# - Team 2 (Blue)
execute at @e[tag=saved_pos] run fill ~9 316 ~4 ~11 316 ~6 minecraft:blue_concrete replace
execute at @e[tag=saved_pos] run setblock ~10 315 ~5 minecraft:repeating_command_block{Command:"execute as @a[distance=..2] run team join 2", auto:1b}
execute at @e[tag=saved_pos] run setblock ~10 314 ~5 minecraft:repeating_command_block{Command:"execute at @a[distance=..3] run scoreboard players set @a[distance=..3] team_number 2", auto:1b}

# - Team 3 (Lime)
execute at @e[tag=saved_pos] run fill ~9 316 ~9 ~11 316 ~11 minecraft:lime_concrete replace
execute at @e[tag=saved_pos] run setblock ~10 315 ~10 minecraft:repeating_command_block{Command:"execute as @a[distance=..2] run team join 3", auto:1b}
execute at @e[tag=saved_pos] run setblock ~10 314 ~10 minecraft:repeating_command_block{Command:"execute at @a[distance=..3] run scoreboard players set @a[distance=..3] team_number 3", auto:1b}

# - Team 4 (Yellow)
execute at @e[tag=saved_pos] run fill ~4 316 ~9 ~6 316 ~11 minecraft:yellow_concrete replace
execute at @e[tag=saved_pos] run setblock ~5 315 ~10 minecraft:repeating_command_block{Command:"execute as @a[distance=..2] run team join 4", auto:1b}
execute at @e[tag=saved_pos] run setblock ~5 314 ~10 minecraft:repeating_command_block{Command:"execute at @a[distance=..3] run scoreboard players set @a[distance=..3] team_number 4", auto:1b}

# - Team 5 (Orange)
execute at @e[tag=saved_pos] run fill ~-1 316 ~9 ~1 316 ~11 minecraft:orange_concrete replace
execute at @e[tag=saved_pos] run setblock ~0 315 ~10 minecraft:repeating_command_block{Command:"execute as @a[distance=..2] run team join 5", auto:1b}
execute at @e[tag=saved_pos] run setblock ~0 314 ~10 minecraft:repeating_command_block{Command:"execute at @a[distance=..3] run scoreboard players set @a[distance=..3] team_number 5", auto:1b}

# - Team 6 (Pink)
execute at @e[tag=saved_pos] run fill ~-6 316 ~9 ~-4 316 ~11 minecraft:pink_concrete replace
execute at @e[tag=saved_pos] run setblock ~-5 315 ~10 minecraft:repeating_command_block{Command:"execute as @a[distance=..2] run team join 6", auto:1b}
execute at @e[tag=saved_pos] run setblock ~-5 314 ~10 minecraft:repeating_command_block{Command:"execute at @a[distance=..3] run scoreboard players set @a[distance=..3] team_number 6", auto:1b}

# - Team 7 (Light Blue)
execute at @e[tag=saved_pos] run fill ~-11 316 ~9 ~-9 316 ~11 minecraft:light_blue_concrete replace
execute at @e[tag=saved_pos] run setblock ~-10 315 ~10 minecraft:repeating_command_block{Command:"execute as @a[distance=..2] run team join 7", auto:1b}
execute at @e[tag=saved_pos] run setblock ~-10 314 ~10 minecraft:repeating_command_block{Command:"execute at @a[distance=..3] run scoreboard players set @a[distance=..3] team_number 7", auto:1b}

# - Team 8 (Magenta)
execute at @e[tag=saved_pos] run fill ~-11 316 ~4 ~-9 316 ~6 minecraft:magenta_concrete replace
execute at @e[tag=saved_pos] run setblock ~-10 315 ~5 minecraft:repeating_command_block{Command:"execute as @a[distance=..2] run team join 8", auto:1b}
execute at @e[tag=saved_pos] run setblock ~-10 314 ~5 minecraft:repeating_command_block{Command:"execute at @a[distance=..3] run scoreboard players set @a[distance=..3] team_number 8", auto:1b}

# - Team 9 (Cyan)
execute at @e[tag=saved_pos] run fill ~-11 316 ~-1 ~-9 316 ~1 minecraft:cyan_concrete replace
execute at @e[tag=saved_pos] run setblock ~-10 315 ~0 minecraft:repeating_command_block{Command:"execute as @a[distance=..2] run team join 9", auto:1b}
execute at @e[tag=saved_pos] run setblock ~-10 314 ~0 minecraft:repeating_command_block{Command:"execute at @a[distance=..3] run scoreboard players set @a[distance=..3] team_number 9", auto:1b}

# - Team 10 (Green)
execute at @e[tag=saved_pos] run fill ~-11 316 ~-6 ~-9 316 ~-4 minecraft:green_concrete replace
execute at @e[tag=saved_pos] run setblock ~-10 315 ~-5 minecraft:repeating_command_block{Command:"execute as @a[distance=..2] run team join 10", auto:1b}
execute at @e[tag=saved_pos] run setblock ~-10 314 ~-5 minecraft:repeating_command_block{Command:"execute at @a[distance=..3] run scoreboard players set @a[distance=..3] team_number 10", auto:1b}

# - Team 11 (White)
execute at @e[tag=saved_pos] run fill ~-11 316 ~-11 ~-9 316 ~-9 minecraft:white_concrete replace
execute at @e[tag=saved_pos] run setblock ~-10 315 ~-10 minecraft:repeating_command_block{Command:"execute as @a[distance=..2] run team join 11", auto:1b}
execute at @e[tag=saved_pos] run setblock ~-10 314 ~-10 minecraft:repeating_command_block{Command:"execute at @a[distance=..3] run scoreboard players set @a[distance=..3] team_number 11", auto:1b}

# - Team 12 (Dark red)
execute at @e[tag=saved_pos] run fill ~-6 316 ~-11 ~-4 316 ~-9 minecraft:brown_concrete replace
execute at @e[tag=saved_pos] run setblock ~-5 315 ~-10 minecraft:repeating_command_block{Command:"execute as @a[distance=..2] run team join 12", auto:1b}
execute at @e[tag=saved_pos] run setblock ~-5 314 ~-10 minecraft:repeating_command_block{Command:"execute at @a[distance=..3] run scoreboard players set @a[distance=..3] team_number 12", auto:1b}

# - Team 13 (Light gray)
execute at @e[tag=saved_pos] run fill ~-1 316 ~-11 ~1 316 ~-9 minecraft:light_gray_concrete replace
execute at @e[tag=saved_pos] run setblock ~0 315 ~-10 minecraft:repeating_command_block{Command:"execute as @a[distance=..2] run team join 13", auto:1b}
execute at @e[tag=saved_pos] run setblock ~0 314 ~-10 minecraft:repeating_command_block{Command:"execute at @a[distance=..3] run scoreboard players set @a[distance=..3] team_number 13", auto:1b}

# - Team 14 (Dark blue)
execute at @e[tag=saved_pos] run fill ~4 316 ~-11 ~6 316 ~-9 minecraft:blue_concrete replace
execute at @e[tag=saved_pos] run setblock ~5 315 ~-10 minecraft:repeating_command_block{Command:"execute as @a[distance=..2] run team join 14", auto:1b}
execute at @e[tag=saved_pos] run setblock ~5 314 ~-10 minecraft:repeating_command_block{Command:"execute at @a[distance=..3] run scoreboard players set @a[distance=..3] team_number 14", auto:1b}

# - Team 15 (Dark gray)
execute at @e[tag=saved_pos] run fill ~9 316 ~-11 ~11 316 ~-9 minecraft:gray_concrete replace
execute at @e[tag=saved_pos] run setblock ~10 315 ~-10 minecraft:repeating_command_block{Command:"execute as @a[distance=..2] run team join 15", auto:1b}
execute at @e[tag=saved_pos] run setblock ~10 314 ~-10 minecraft:repeating_command_block{Command:"execute at @a[distance=..3] run scoreboard players set @a[distance=..3] team_number 15", auto:1b}

# - Team 16 (Black)
execute at @e[tag=saved_pos] run fill ~9 316 ~-6 ~11 316 ~-4 minecraft:black_concrete replace
execute at @e[tag=saved_pos] run setblock ~10 315 ~-5 minecraft:repeating_command_block{Command:"execute as @a[distance=..2] run team join 16", auto:1b}
execute at @e[tag=saved_pos] run setblock ~10 314 ~-5 minecraft:repeating_command_block{Command:"execute at @a[distance=..3] run scoreboard players set @a[distance=..3] team_number 16", auto:1b}

team add 1
team modify 1 color red 
team add 2 
team modify 2 color blue
team add 3
team modify 3 color green
team add 4
team modify 4 color yellow
team add 5
team modify 5 color gold
team add 6
team modify 6 color light_purple
team add 7
team modify 7 color aqua
team add 8
team modify 8 color dark_purple
team add 9
team modify 9 color dark_aqua
team add 10
team modify 10 color dark_green
team add 11
team modify 11 color white
team add 12
team modify 12 color dark_red
team add 13
team modify 13 color gray
team add 14
team modify 14 color dark_blue
team add 15
team modify 15 color dark_gray
team add 16
team modify 16 color black

function lockout_lobby:calm_players

# Teleport all players to lobby
execute at @e[tag=saved_pos] run tp @a ~ 317 ~

# Stop cycles
time set noon
gamerule doWeatherCycle false
gamerule doDaylightCycle false
weather clear

# Create info board
function lockout_lobby:create_teams_list

# Hide command blocks output
gamerule commandBlockOutput false

# Create Board Size Selector

# - Add BoardSizeCounter variable
scoreboard players set BoardSizeCounter BoardSizeCounter 3

# - Create floor
function lockout_lobby:refresh_board_size_selector
execute at @e[tag=saved_pos] run setblock ~5 319 ~ minecraft:oak_wall_hanging_sign[facing="west"]{front_text:{messages:['[{"text":""}]','[{"text":"Board Size"}]','[{"text":""}]','[{"text":""}]']},back_text:{messages:['[{"text":""}]','[{"text":"Board Size"}]','[{"text":""}]','[{"text":""}]']}}

# - Create decrement logic
execute at @e[tag=saved_pos] run setblock ~5 319 ~-4 minecraft:oak_wall_hanging_sign[facing="west"]{front_text:{messages:['[{"text":""}]','[{"text":"-"}]','[{"text":""}]','[{"text":""}]']},back_text:{messages:['[{"text":""}]','[{"text":"-"}]','[{"text":""}]','[{"text":""}]']}}
execute at @e[tag=saved_pos] run setblock ~5 317 ~-4 minecraft:stone_pressure_plate
execute at @e[tag=saved_pos] run setblock ~5 316 ~-4 minecraft:command_block{Command:"function lockout_lobby:decrement_board_size", auto:0b}

# - Create increment logic
execute at @e[tag=saved_pos] run setblock ~5 319 ~4 minecraft:oak_wall_hanging_sign[facing="west"]{front_text:{messages:['[{"text":""}]','[{"text":"+"}]','[{"text":""}]','[{"text":""}]']},back_text:{messages:['[{"text":""}]','[{"text":"+"}]','[{"text":""}]','[{"text":""}]']}}
execute at @e[tag=saved_pos] run setblock ~5 317 ~4 minecraft:stone_pressure_plate
execute at @e[tag=saved_pos] run setblock ~5 316 ~4 minecraft:command_block{Command:"function lockout_lobby:increment_board_size", auto:0b}
