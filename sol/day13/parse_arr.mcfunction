




function aoc:io/str/special_to_int
scoreboard players operation NCHAR VAR = CHAR REG
execute unless score NCHAR VAR matches 2 run function aoc:io/read/int
execute unless score NCHAR VAR matches 2 run data modify storage main a append value {v:-1}
execute unless score NCHAR VAR matches 2 run execute store result storage main a[-1].v int 1 run scoreboard players get R REG

execute if score NCHAR VAR matches 2 run function aoc:sol/day13/parse_arr_start_stack


# char must be ] or ,
function aoc:io/str/special_to_int
function aoc:io/read/next/char
execute unless score CHAR REG matches -2 run function aoc:sol/day13/parse_arr

