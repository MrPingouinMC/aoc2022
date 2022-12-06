


function aoc:io/read/word

function aoc:io/read/next/char
function aoc:io/read/int

scoreboard players operation MOVE VAR = R REG

function aoc:io/read/next/char
function aoc:io/read/word
function aoc:io/read/next/char
function aoc:io/read/int

scoreboard players operation FROM VAR = R REG

function aoc:io/read/next/char
function aoc:io/read/word
function aoc:io/read/next/char
function aoc:io/read/int

scoreboard players operation TO VAR = R REG

scoreboard players operation TARGET VAR = FROM VAR
execute unless score TARGET VAR = INDEX VAR run function aoc:sol/day5/shift

scoreboard players operation TARGET VAR = MOVE VAR
data modify storage main pop set value []
function aoc:sol/day5/pop

scoreboard players operation TARGET VAR = TO VAR
execute unless score TARGET VAR = INDEX VAR run function aoc:sol/day5/shift

scoreboard players operation TARGET VAR = MOVE VAR
function aoc:sol/day5/poppop

scoreboard players set TARGET VAR 1
execute unless score TARGET VAR = INDEX VAR run function aoc:sol/day5/shift

function aoc:io/read/next/line
execute if score CONTINUE REG matches 1 run function aoc:sol/day5/solve1

