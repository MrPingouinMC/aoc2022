

scoreboard players operation RINDEX VAR = INDEX VAR

data modify storage main fs[0].dirs append value {name:-1,id:-1}
execute store result storage main fs[0].dirs[-1].name int 1 run scoreboard players get R REG
execute store result storage main fs[0].dirs[-1].id int 1 run scoreboard players get FS_SIZE VAR

scoreboard players set TARGET VAR 0

function aoc:sol/day7/move


data modify storage main fs append value {dirs:[],files:[],name:-1,size:-1}
execute store result storage main fs[-1].name int 1 run scoreboard players get R REG
scoreboard players add FS_SIZE VAR 1

scoreboard players operation TARGET VAR = RINDEX VAR
function aoc:sol/day7/move
