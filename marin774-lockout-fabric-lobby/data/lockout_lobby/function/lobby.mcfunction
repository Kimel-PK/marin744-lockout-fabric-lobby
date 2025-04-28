# Build lobby
gamerule commandBlockOutput false


execute as @p at @s run summon armor_stand ~ 319 ~ {Tags:["saved_pos"],Invisible:1,Marker:1,NoGravity:1} 

# - Clear lobby
execute at @e[tag=saved_pos] run fill ~-7 312 ~-7 ~7 319 ~7 minecraft:air replace

# - Create glass
execute at @e[tag=saved_pos] run fill ~-7 316 ~-7 ~7 316 ~7 minecraft:glass replace
execute at @e[tag=saved_pos] run fill ~-7 316 ~7 ~7 319 ~7 minecraft:glass replace
execute at @e[tag=saved_pos] run fill ~-7 316 ~-7 ~7 319 ~-7 minecraft:glass replace
execute at @e[tag=saved_pos] run fill ~-7 316 ~-7 ~-7 319 ~7 minecraft:glass replace
execute at @e[tag=saved_pos] run fill ~7 316 ~-7 ~7 319 ~7 minecraft:glass replace

function lockout_lobby:corgi

# - Global commands
execute at @e[tag=saved_pos] run setblock ~ 315 ~ minecraft:repeating_command_block{Command:"execute as @a at @s if block ~ ~-1 ~ minecraft:glass run team leave @s", auto:1b}
execute at @e[tag=saved_pos] run setblock ~ 314 ~ minecraft:repeating_command_block{Command:"execute as @a at @s if block ~ ~-1 ~ minecraft:glass run scoreboard players reset @a team_number", auto:1b}
execute at @e[tag=saved_pos] run setblock ~ 313 ~ minecraft:repeating_command_block{Command:"execute run function lockout_lobby:calm_players", auto:1b}
execute at @e[tag=saved_pos] run setblock ~ 312 ~ minecraft:repeating_command_block{Command:"execute as @a at @s if entity @s[x=-512,y=-64,z=-512,dx=512,dy=309,dz=512] run tp @s 0 318 0", auto:1b}

# - Team 1run 
execute at @e[tag=saved_pos] run fill ~4 316 ~-1 ~6 316 ~1 minecraft:red_concrete replace
execute at @e[tag=saved_pos] run setblock ~5 315 ~ minecraft:repeating_command_block{Command:"execute as @a[distance=..2] run team join 1", auto:1b}
execute at @e[tag=saved_pos] run setblock ~5 314 ~ minecraft:repeating_command_block{Command:"execute at @a[distance=..3] run scoreboard players set @a[distance=..3] team_number 1", auto:1b}

 # - Team 2run 
execute at @e[tag=saved_pos] run fill ~4 316 ~4 ~6 316 ~6 minecraft:blue_concrete replace
execute at @e[tag=saved_pos] run setblock ~5 315 ~5 minecraft:repeating_command_block{Command:"execute as @a[distance=..2] run team join 2", auto:1b}
execute at @e[tag=saved_pos] run setblock ~5 314 ~5 minecraft:repeating_command_block{Command:"execute at @a[distance=..3] run scoreboard players set @a[distance=..3] team_number 2", auto:1b}

 # - Team 3run 
execute at @e[tag=saved_pos] run fill ~-1 316 ~4 ~1 316 ~6 minecraft:lime_concrete replace
execute at @e[tag=saved_pos] run setblock ~ 315 ~5 minecraft:repeating_command_block{Command:"execute as @a[distance=..2] run team join 3", auto:1b}
execute at @e[tag=saved_pos] run setblock ~ 314 ~5 minecraft:repeating_command_block{Command:"execute at @a[distance=..3] run scoreboard players set @a[distance=..3] team_number 3", auto:1b}

 # - Team 4run 
execute at @e[tag=saved_pos] run fill ~-6 316 ~4 ~-4 316 ~6 minecraft:yellow_concrete replace
execute at @e[tag=saved_pos] run setblock ~-5 315 ~5 minecraft:repeating_command_block{Command:"execute as @a[distance=..2] run team join 4", auto:1b}
execute at @e[tag=saved_pos] run setblock ~-5 314 ~5 minecraft:repeating_command_block{Command:"execute at @a[distance=..3] run scoreboard players set @a[distance=..3] team_number 4", auto:1b}

 # - Team 5run 
execute at @e[tag=saved_pos] run fill ~-6 316 ~-1 ~-4 316 ~1 minecraft:purple_concrete replace
execute at @e[tag=saved_pos] run setblock ~-5 315 ~ minecraft:repeating_command_block{Command:"execute as @a[distance=..2] run team join 5", auto:1b}
execute at @e[tag=saved_pos] run setblock ~-5 314 ~ minecraft:repeating_command_block{Command:"execute at @a[distance=..3] run scoreboard players set @a[distance=..3] team_number 5", auto:1b}

 # - Team 6run 
execute at @e[tag=saved_pos] run fill ~-6 316 ~-6 ~-4 316 ~-4 minecraft:cyan_concrete replace
execute at @e[tag=saved_pos] run setblock ~-5 315 ~-5 minecraft:repeating_command_block{Command:"execute as @a[distance=..2] run team join 6", auto:1b}
execute at @e[tag=saved_pos] run setblock ~-5 314 ~-5 minecraft:repeating_command_block{Command:"execute at @a[distance=..3] run scoreboard players set @a[distance=..3] team_number 6", auto:1b}

 # - Team 7run 
execute at @e[tag=saved_pos] run fill ~-1 316 ~-6 ~1 316 ~-4 minecraft:orange_concrete replace
execute at @e[tag=saved_pos] run setblock ~ 315 ~-5 minecraft:repeating_command_block{Command:"execute as @a[distance=..2] run team join 7", auto:1b}
execute at @e[tag=saved_pos] run setblock ~ 314 ~-5 minecraft:repeating_command_block{Command:"execute at @a[distance=..3] run scoreboard players set @a[distance=..3] team_number 7", auto:1b}

 # - Team 8run 
execute at @e[tag=saved_pos] run fill ~4 316 ~-6 ~6 316 ~-4 minecraft:brown_concrete replace
execute at @e[tag=saved_pos] run setblock ~5 315 ~-5 minecraft:repeating_command_block{Command:"execute as @a[distance=..2] run team join 8", auto:1b}
execute at @e[tag=saved_pos] run setblock ~5 314 ~-5 minecraft:repeating_command_block{Command:"execute at @a[distance=..3] run scoreboard players set @a[distance=..3] team_number 8", auto:1b}

# Create teamsrun 
team add 1
team modify 1 color red 
team add 2 
team modify 2 color blue
team add 3
team modify 3 color green
team add 4
team modify 4 color yellow
team add 5
team modify 5 color light_purple
team add 6
team modify 6 color dark_aqua
team add 7
team modify 7 color gold
team add 8
team modify 8 color dark_red

function lockout_lobby:calm_players

# Teleport all players to lobby
tp @a ~ 317 ~

# Stop cycles
time set noon
gamerule doWeatherCycle false
gamerule doDaylightCycle false
weather clear

# Create info board
function lockout_lobby:create_teams_list