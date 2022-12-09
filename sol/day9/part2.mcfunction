
scoreboard players set PART AOC 2
scoreboard players set DAY AOC 9
scoreboard players set YEAR AOC 2022
function aoc:core/load_input
function aoc:core/timer_start


#That magic value 400020000 correspond to the unique mapping of the coordinate (0, 0)
data modify storage sort arr set value [400020000]
data modify storage main q set value [[0,0]]
scoreboard players set INDEX VAR 0
scoreboard players set QSIZE VAR 1
scoreboard players set QSIZE_MAX VAR 9

function aoc:io/init/input
function aoc:sol/day9/solve1

function aoc:sort/quick_sort

scoreboard players set SOL VAR 0
scoreboard players set LAST VAR -999999999
execute store result score SIZE VAR run data get storage sort arr

function aoc:sol/day9/count_uniques


function aoc:core/print_score
function aoc:core/timer_end
