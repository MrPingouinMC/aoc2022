


function aoc:io/str/char_to_int
scoreboard players operation P1 VAR = CHAR REG

function aoc:io/read/next/char
function aoc:io/read/next/char

function aoc:io/str/char_to_int
scoreboard players operation P2 VAR = CHAR REG
#Rock	 Paper   Scissor

#A = 1   B = 2   C = 3
#X = 24  Y = 25  Z = 26


scoreboard players remove P2 VAR 23
execute if score P2 VAR matches 2 run scoreboard players add SOL VAR 3
execute if score P2 VAR matches 3 run scoreboard players add SOL VAR 6

execute if score P2 VAR matches 1 run scoreboard players remove P1 VAR 1
execute if score P2 VAR matches 3 run scoreboard players add P1 VAR 1

execute if score P1 VAR matches 0 run scoreboard players set P1 VAR 3
execute if score P1 VAR matches 4 run scoreboard players set P1 VAR 1

scoreboard players operation SOL VAR += P1 VAR


function aoc:io/read/next/line
execute if score CONTINUE REG matches 1 run function aoc:sol/day2/solve2