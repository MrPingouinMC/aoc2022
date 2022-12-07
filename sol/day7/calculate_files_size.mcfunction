

execute store result score F VAR run data get storage main fs[0].files[0].file
data remove storage main fs[0].files[0]
scoreboard players operation FSIZE VAR += F VAR


scoreboard players remove NB_FILE VAR 1
execute if score NB_FILE VAR matches 1.. run function aoc:sol/day7/calculate_files_size