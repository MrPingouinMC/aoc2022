



function aoc:io/read/int
scoreboard players operation X1 VAR = R REG
function aoc:io/read/next/char
function aoc:io/read/int
scoreboard players operation Y1 VAR = R REG

function aoc:io/read/next/char
function aoc:io/read/next/char
function aoc:io/read/next/char
function aoc:io/read/next/char

scoreboard players operation RX1 VAR = X1 VAR
scoreboard players operation RY1 VAR = Y1 VAR

scoreboard players operation RX2 VAR = X2 VAR
scoreboard players operation RY2 VAR = Y2 VAR

scoreboard players remove RX1 VAR 400
scoreboard players remove RX2 VAR 400

scoreboard players operation RX1 VAR += OFFX VAR
scoreboard players operation RX2 VAR += OFFX VAR

scoreboard players operation RY1 VAR += OFFY VAR
scoreboard players operation RY2 VAR += OFFY VAR


scoreboard players operation MAXZ VAR > RY1 VAR

execute if score FIRST VAR matches 0 run function aoc:sol/day14/draw

scoreboard players set FIRST VAR 0
scoreboard players operation X2 VAR = X1 VAR
scoreboard players operation Y2 VAR = Y1 VAR

execute if score CONTINUE REG matches 0 run scoreboard players set FIRST VAR 1
execute if score CONTINUE REG matches 0 run function aoc:io/read/next/line
execute if score CONTINUE REG matches 1 at @s run function aoc:sol/day14/build
