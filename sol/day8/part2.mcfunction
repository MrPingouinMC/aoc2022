
scoreboard players set PART AOC 2
scoreboard players set DAY AOC 8
scoreboard players set YEAR AOC 2022
function aoc:core/load_input
function aoc:core/timer_start



data modify storage main window set value []
scoreboard players set WSIZE VAR 4
scoreboard players set INDEX VAR 1

function aoc:io/init/input
execute store result score SBASE VAR run data get storage iobuf data
scoreboard players operation S VAR = SBASE VAR
scoreboard players operation S2 VAR = SBASE VAR
scoreboard players operation SIZEX MARKER = SBASE VAR
scoreboard players operation SIZEZ MARKER = SBASE VAR
execute positioned 30 5 -11 run function aoc:marker/create
execute as @e[tag=marker] at @s run function aoc:marker/clear_wide_area
execute as @e[tag=marker] at @s run function aoc:sol/day8/build


scoreboard players operation S VAR = SBASE VAR
scoreboard players operation S2 VAR = SBASE VAR
scoreboard players set SOL VAR 0
scoreboard players set MAX VAR 0
execute positioned 30 5 -11 run function aoc:marker/create
execute as @e[tag=marker] at @s run function aoc:sol/day8/process

scoreboard players operation SOL VAR = MAX VAR

function aoc:core/print_score
function aoc:core/timer_end
