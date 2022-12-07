
execute store result score FID VAR run data get storage main fs[0].dirs[0].id
data remove storage main fs[0].dirs[0]
scoreboard players operation TARGET VAR = FID VAR

function aoc:sol/day7/move

function aoc:sol/day7/calculate_folder_size

execute store result score FSIZE VAR run data get storage main fs[0].size
execute store result score CFSIZE VAR run data get storage main fsize[-1]
scoreboard players operation FSIZE VAR += CFSIZE VAR
execute store result storage main fsize[-1] int 1 run scoreboard players get FSIZE VAR

execute store result score TARGET VAR run data get storage main fstack[-1]
function aoc:sol/day7/move

execute store result score NB_FOLDER VAR run data get storage main fs[0].dirs

execute if score NB_FOLDER VAR matches 1.. run function aoc:sol/day7/calculate_folder_size_recc