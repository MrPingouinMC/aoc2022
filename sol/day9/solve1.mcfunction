


function aoc:io/str/char_to_int

scoreboard players operation DIR VAR = CHAR REG
function aoc:io/read/next/char
function aoc:io/read/next/char
function aoc:io/read/int

scoreboard players operation DELTA VAR = R REG

execute if score PART AOC matches 1 run function aoc:sol/day9/move
execute if score PART AOC matches 2 run function aoc:sol/day9/move2


function aoc:io/read/next/line
execute if score CONTINUE REG matches 1 run function aoc:sol/day9/solve1

