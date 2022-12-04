


function aoc:io/read/int
function aoc:io/read/next/char
function aoc:io/read/int
function aoc:io/read/next/char
function aoc:io/read/int
function aoc:io/read/next/char
function aoc:io/read/int

execute store result score A VAR run data get storage buf data[0]
execute store result score B VAR run data get storage buf data[1]
execute store result score C VAR run data get storage buf data[2]
execute store result score D VAR run data get storage buf data[3]

data modify storage buf data set value []

#Using a flag to handle the case where both range are the same
scoreboard players set CONTAINS VAR 0
execute if score A VAR <= C VAR if score B VAR >= D VAR run scoreboard players set CONTAINS VAR 1
execute if score A VAR >= C VAR if score B VAR <= D VAR run scoreboard players set CONTAINS VAR 1
execute if score CONTAINS VAR matches 1 run scoreboard players add SOL VAR 1



function aoc:io/read/next/line
execute if score CONTINUE REG matches 1 run function aoc:sol/day4/solve1

