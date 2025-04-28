# Revert to default state
execute at @e[tag=saved_pos] run fill ~5 316 ~-3 ~5 316 ~-1 minecraft:ochre_froglight replace
execute at @e[tag=saved_pos] run fill ~5 316 ~ ~5 316 ~3 minecraft:black_concrete replace

execute at @e[tag=saved_pos] run execute if score BoardSizeCounter BoardSizeCounter matches 4.. run setblock ~5 316 ~ minecraft:ochre_froglight replace
execute at @e[tag=saved_pos] run execute if score BoardSizeCounter BoardSizeCounter matches 5.. run setblock ~5 316 ~1 minecraft:ochre_froglight replace
execute at @e[tag=saved_pos] run execute if score BoardSizeCounter BoardSizeCounter matches 6.. run setblock ~5 316 ~2 minecraft:ochre_froglight replace
execute at @e[tag=saved_pos] run execute if score BoardSizeCounter BoardSizeCounter matches 7.. run setblock ~5 316 ~3 minecraft:ochre_froglight replace