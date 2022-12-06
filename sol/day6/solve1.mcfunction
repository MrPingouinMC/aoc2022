


function aoc:io/str/char_to_int
function aoc:io/read/next/char


scoreboard players set FLAG VAR 0
scoreboard players operation SIZE VAR = WSIZE VAR
execute if score INDEX VAR > WSIZE VAR run data modify storage sort arr set from storage main window
execute if score INDEX VAR > WSIZE VAR run function aoc:sort/quick_sort
execute if score INDEX VAR > WSIZE VAR run function aoc:sol/day6/match

execute if score INDEX VAR > WSIZE VAR if score FLAG VAR matches 0 run scoreboard players set CONTINUE REG 0

data modify storage main window append value -1
execute store result storage main window[-1] int 1 run scoreboard players get CHAR REG
execute if score INDEX VAR > WSIZE VAR run data remove storage main window[0]



execute if score CONTINUE REG matches 1 run scoreboard players add INDEX VAR 1
execute if score CONTINUE REG matches 1 run function aoc:sol/day6/solve1

