
scoreboard players set PART AOC 2
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

scoreboard players set TARGET VAR 0
function aoc:sol/day7/move

scoreboard players set FREE VAR 70000000
execute store result score TOTAL_SIZE VAR run data get storage main fs[0].size
scoreboard players operation FREE VAR -= TOTAL_SIZE VAR

scoreboard players set LIMIT VAR 30000000
scoreboard players set INDEX VAR 0
scoreboard players set SOL VAR 100000000
function aoc:sol/day7/filter_folder_size2


function aoc:core/print_score
function aoc:core/timer_end
