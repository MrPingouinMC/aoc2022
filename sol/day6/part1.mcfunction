
scoreboard players set PART AOC 1
scoreboard players set DAY AOC 6
scoreboard players set YEAR AOC 2022
function aoc:core/load_input
function aoc:core/timer_start



data modify storage main window set value []
scoreboard players set WSIZE VAR 4
scoreboard players set INDEX VAR 1

function aoc:io/init/input
function aoc:sol/day6/solve1

scoreboard players remove INDEX VAR 1
scoreboard players operation SOL VAR = INDEX VAR

function aoc:core/print_score
function aoc:core/timer_end
