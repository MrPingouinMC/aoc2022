
scoreboard players set PART AOC 1
scoreboard players set DAY AOC 1
scoreboard players set YEAR AOC 2022
function aoc:core/load_input
function aoc:core/timer_start

function aoc:io/init/input
function aoc:sol/day1/parse

scoreboard players set CAL VAR 0
scoreboard players set MAX VAR 0

function aoc:io/init/buffer
function aoc:sol/day1/solve1

scoreboard players operation SOL VAR = MAX VAR

function aoc:core/print_score
function aoc:core/timer_end
