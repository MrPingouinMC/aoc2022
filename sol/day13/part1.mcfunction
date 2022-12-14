
scoreboard players set PART AOC 1
scoreboard players set DAY AOC 13
scoreboard players set YEAR AOC 2022
function aoc:core/load_input
function aoc:core/timer_start



data modify storage main pairs set value []

scoreboard players set PACKET VAR 0
function aoc:io/init/input
function aoc:sol/day13/parse

scoreboard players set SOL VAR 0
scoreboard players set INDEX VAR 1
function aoc:sol/day13/solve

function aoc:core/print_score
function aoc:core/timer_end
