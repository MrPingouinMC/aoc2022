
data modify storage main stacks set value []
scoreboard players set FIRST VAR 1
scoreboard players set BREAK VAR 0

function aoc:io/init/input
function aoc:sol/day5/parse_stack


scoreboard players set INDEX VAR 1

execute store result score MAX_INDEX VAR run data get storage main stacks

function aoc:io/read/next/line

function aoc:sol/day5/solve1

data modify storage main sol set value []
scoreboard players operation SIZE VAR = MAX_INDEX VAR
function aoc:sol/day5/reduce

scoreboard players set SOL VAR -1
function aoc:core/print_score
tellraw @a ["Text solution : ", {"nbt":"sol[]","storage":"main", "separator":""}]
