

scoreboard players set FSIZE VAR 0

execute store result score NB_FILE VAR run data get storage main fs[0].files
execute if score NB_FILE VAR matches 1.. run function aoc:sol/day7/calculate_files_size

data modify storage main fsize append value -1
execute store result storage main fsize[-1] int 1 run scoreboard players get FSIZE VAR


execute store result score NB_FOLDER VAR run data get storage main fs[0].dirs
data modify storage main fstack append value -1
execute if score NB_FOLDER VAR matches 1.. run execute store result storage main fstack[-1] int 1 run scoreboard players get INDEX VAR
execute if score NB_FOLDER VAR matches 1.. run function aoc:sol/day7/calculate_folder_size_recc


data modify storage main fs[0].size set from storage main fsize[-1]
data remove storage main fsize[-1]
data remove storage main fstack[-1]


#scoreboard players add CINDEX VAR 1
#execute if score CINDEX VAR < FS_SIZE VAR run function aoc:sol/day7/calculate_folder_size