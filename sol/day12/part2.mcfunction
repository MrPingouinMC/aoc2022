
scoreboard players set PART AOC 2
scoreboard players set DAY AOC 12
scoreboard players set YEAR AOC 2022
function aoc:core/load_input
function aoc:core/timer_start



execute store result score SY VAR run data get storage input data
function aoc:io/init/input
execute store result score SX VAR run data get storage iobuf data
scoreboard players operation SIZEX MARKER = SX VAR
scoreboard players operation SIZEZ MARKER = SY VAR
scoreboard players set START_X VAR -1
scoreboard players set START_Y VAR -1
scoreboard players set END_X VAR -1
scoreboard players set END_Y VAR -1

data modify storage main q set value []

execute positioned 30 5 105 run function aoc:marker/create
execute as @e[tag=marker] at @s run function aoc:marker/clear_wide_area
execute as @e[tag=marker] at @s run function aoc:sol/day12/build

scoreboard players operation SX VAR = SIZEX MARKER
scoreboard players operation SY VAR = SIZEZ MARKER
scoreboard players set SOL VAR 0
scoreboard players set MAX VAR 0
execute positioned 30 5 105 run function aoc:marker/create


scoreboard players set BREAK VAR 0
execute as @e[tag=marker] at @s run function aoc:sol/day12/process

scoreboard players operation SOL VAR = STEP VAR

function aoc:core/print_score
function aoc:core/timer_end
