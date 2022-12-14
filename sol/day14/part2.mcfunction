
scoreboard players set PART AOC 2
scoreboard players set DAY AOC 14
scoreboard players set YEAR AOC 2022
function aoc:core/load_input
function aoc:core/timer_start


kill @e[tag=m]

function aoc:io/init/input
summon marker 30 4 169 {Tags:[m]}
scoreboard players set OFFX VAR 30
scoreboard players set OFFY VAR 169
scoreboard players set MAXZ VAR 169
scoreboard players set FIRST VAR 1

fill -40 4 169 0 4 339 air
fill 0 4 169 100 4 339 air
fill 100 4 169 200 4 339 air
fill 200 4 169 300 4 339 air

execute as @e[tag=m] at @s run function aoc:sol/day14/build


scoreboard players remove MAXZ VAR 169
scoreboard players add MAXZ VAR 1


scoreboard players set SX VAR 100
scoreboard players set SY VAR 0

scoreboard players operation SX VAR += OFFX VAR
scoreboard players operation SY VAR += OFFY VAR


execute as @e[tag=m] at @s store result entity @s Pos[0] double 1 run scoreboard players get SX VAR
execute as @e[tag=m] at @s store result entity @s Pos[2] double 1 run scoreboard players get SY VAR


scoreboard players set ITER VAR 0

execute as @e[tag=m] at @s positioned ~ ~ ~ run function aoc:sol/day14/generate

scoreboard players operation SOL VAR = ITER VAR


kill @e[tag=m]

function aoc:core/print_score
function aoc:core/timer_end
