


function aoc:io/str/char_to_int

scoreboard players set INS VAR 0
execute if score CHAR REG matches 32 run scoreboard players set INS VAR 1
execute if score CHAR REG matches 45 run scoreboard players set INS VAR 2

function aoc:io/read/next/char
function aoc:io/read/next/char
function aoc:io/read/next/char
function aoc:io/read/next/char
function aoc:io/read/next/char

scoreboard players set V VAR 0
execute if score INS VAR matches 1 run function aoc:io/read/int
execute if score INS VAR matches 1 run scoreboard players operation V VAR = R REG


function aoc:sol/day10/cycle

execute if score INS VAR matches 1 run function aoc:sol/day10/cycle
execute if score INS VAR matches 1 run scoreboard players operation REGISTER VAR += V VAR


function aoc:io/read/next/line
execute if score CONTINUE REG matches 1 run function aoc:sol/day10/solve1

