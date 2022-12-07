

execute store result score SIZ VAR run data get storage main fs[0].size
data modify storage main fs append from storage main fs[0]
data remove storage main fs[0]

scoreboard players operation TSIZ VAR = SIZ VAR
scoreboard players operation TSIZ VAR += FREE VAR
execute if score TSIZ VAR >= LIMIT VAR if score SIZ VAR < SOL VAR run scoreboard players operation SOL VAR = SIZ VAR


scoreboard players add INDEX VAR 1
execute if score INDEX VAR < FS_SIZE VAR run function aoc:sol/day7/filter_folder_size2