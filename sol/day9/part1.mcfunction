
scoreboard players set PART AOC 1
scoreboard players set DAY AOC 9
scoreboard players set YEAR AOC 2022
function aoc:core/load_input
function aoc:core/timer_start



data modify storage sort arr set value []
scoreboard players set HX VAR 0
scoreboard players set HY VAR 0
scoreboard players set TX VAR 0
scoreboard players set TY VAR 0
scoreboard players set LAG VAR 1
scoreboard players set LAST VAR -999999999
function aoc:io/init/input
function aoc:sol/day9/solve1

function aoc:sort/quick_sort

scoreboard players set SOL VAR 0
scoreboard players set LAST VAR -999999999
execute store result score SIZE VAR run data get storage sort arr

function aoc:sol/day9/count_uniques


function aoc:core/print_score
function aoc:core/timer_end
