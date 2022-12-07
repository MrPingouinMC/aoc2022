
function aoc:io/read/next/char


function aoc:io/str/special_to_int
scoreboard players set DIR_INS VAR 0
execute if score CHAR REG matches 5 run scoreboard players set DIR_INS VAR 1
execute if score CHAR REG matches 9 run scoreboard players set DIR_INS VAR 2

execute if score DIR_INS VAR matches 0 run function aoc:io/read/word_to_int
execute if score DIR_INS VAR matches 0 run scoreboard players operation TARGET_DIR VAR = R REG 
execute if score DIR_INS VAR matches 0 run data modify storage main d set from storage main fs[0].dirs

execute if score DIR_INS VAR matches 0 run function aoc:sol/day7/find_dir
execute if score DIR_INS VAR matches 0 run data modify storage main stack append value -1
execute if score DIR_INS VAR matches 0 run execute store result storage main stack[-1] int 1 run scoreboard players get TARGET VAR

execute if score DIR_INS VAR matches 1 run data remove storage main stack[-1]
execute if score DIR_INS VAR matches 1 run execute store result score TARGET VAR run data get storage main stack[-1]


execute if score DIR_INS VAR matches 2 run data modify storage main stack set value [0]
execute if score DIR_INS VAR matches 2 run scoreboard players set TARGET VAR 0

function aoc:sol/day7/move

function aoc:io/read/next/line