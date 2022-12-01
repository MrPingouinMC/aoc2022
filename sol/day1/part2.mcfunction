
scoreboard players set PART AOC 1
scoreboard players set DAY AOC 1
scoreboard players set YEAR AOC 2022
function aoc:core/load_input
function aoc:core/timer_start



function aoc:io/init/input
function aoc:sol/day1/parse

scoreboard players set CAL VAR 0

data modify storage sort arr set value []

function aoc:io/init/buffer
function aoc:sol/day1/solve2

function aoc:sort/quick_sort

execute store result score TOP1 VAR run data get storage sort arr[-1]
execute store result score TOP2 VAR run data get storage sort arr[-2]
execute store result score TOP3 VAR run data get storage sort arr[-3]

scoreboard players set SOL VAR 0
scoreboard players operation SOL VAR += TOP1 VAR
scoreboard players operation SOL VAR += TOP2 VAR
scoreboard players operation SOL VAR += TOP3 VAR

function aoc:core/print_score
function aoc:core/timer_end
