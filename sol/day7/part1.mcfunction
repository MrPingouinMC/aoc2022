
scoreboard players set PART AOC 1
scoreboard players set DAY AOC 7
scoreboard players set YEAR AOC 2022
function aoc:core/load_input
function aoc:core/timer_start


scoreboard players set INDEX VAR 0
scoreboard players set FS_SIZE VAR 1
data modify storage main fs set value [{dirs:[],files:[],id:0}]

data modify storage main stack set value [0]

function aoc:io/init/input
function aoc:sol/day7/solve1

scoreboard players set TARGET VAR 0
function aoc:sol/day7/move

data modify storage main fstack set value []
data modify storage main fsize set value []
scoreboard players set CINDEX VAR 0
function aoc:sol/day7/calculate_folder_size


scoreboard players set LIMIT VAR 100000

scoreboard players set SOL VAR 0
scoreboard players set INDEX VAR 0
function aoc:sol/day7/filter_folder_size


function aoc:core/print_score
function aoc:core/timer_end
