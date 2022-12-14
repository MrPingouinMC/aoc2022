
data modify storage main pairs append value []

data modify storage main a set value []
data modify storage main stack set value []
function aoc:sol/day13/parse_arr_start

execute if score PART AOC matches 1 run data modify storage main pairs[-1] append from storage main a
execute if score PART AOC matches 2 run data modify storage sort arr append from storage main a
function aoc:io/read/next/line

data modify storage main a set value []
data modify storage main stack set value []
function aoc:sol/day13/parse_arr_start

execute if score PART AOC matches 1 run data modify storage main pairs[-1] append from storage main a
execute if score PART AOC matches 2 run data modify storage sort arr append from storage main a
scoreboard players add PACKET VAR 1

#tellraw @a ["pairs   ", {"nbt":"pairs[-1]","storage":"main"}]

function aoc:io/read/next/line
function aoc:io/read/next/line
execute if score CONTINUE REG matches 1 run function aoc:sol/day13/parse
