


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


scoreboard players set OVER VAR 0
execute if score B VAR >= C VAR if score B VAR <= D VAR run scoreboard players set OVER VAR 1
execute if score A VAR >= C VAR if score A VAR <= D VAR run scoreboard players set OVER VAR 1
execute if score C VAR >= A VAR if score C VAR <= B VAR run scoreboard players set OVER VAR 1

execute if score OVER VAR matches 1 run scoreboard players add SOL VAR 1


data modify storage buf data set value []
function aoc:io/read/next/line
execute if score CONTINUE REG matches 1 run function aoc:sol/day4/solve2

