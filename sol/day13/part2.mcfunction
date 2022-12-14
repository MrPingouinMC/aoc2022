
scoreboard players set PART AOC 2
scoreboard players set DAY AOC 13
scoreboard players set YEAR AOC 2022
function aoc:core/load_input
function aoc:core/timer_start



data modify storage sort arr set value [[{v:[{v:2}]}],[{v:[{v:6}]}]]

scoreboard players set PACKET VAR 0
function aoc:io/init/input
function aoc:sol/day13/parse

function aoc:sol/day13/qs/sort

scoreboard players set SOL VAR 1
scoreboard players set INDEX VAR 1
execute store result score SIZE VAR run data get storage sort arr
function aoc:sol/day13/find

function aoc:core/print_score
function aoc:core/timer_end
