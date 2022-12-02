


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
scoreboard players operation SOL VAR += P2 VAR
scoreboard players operation P1 VAR -= P2 VAR
scoreboard players operation P1 VAR %= 3 CONST

execute if score P1 VAR matches 2 run scoreboard players add SOL VAR 6
execute if score P1 VAR matches 0 run scoreboard players add SOL VAR 3


function aoc:io/read/next/line
execute if score CONTINUE REG matches 1 run function aoc:sol/day2/solve1