
function aoc:io/read/next/char
function aoc:io/str/to_int

execute if score CHAR REG matches 1 run scoreboard players set BREAK VAR 1
execute if score BREAK VAR matches 0 run function aoc:sol/day5/parse_stack_loop

scoreboard players set FIRST VAR 0

function aoc:io/read/next/line
execute if score BREAK VAR matches 0 run function aoc:sol/day5/parse_stack