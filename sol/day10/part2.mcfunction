
scoreboard players set PART AOC 2
scoreboard players set DAY AOC 10
scoreboard players set YEAR AOC 2022
function aoc:core/load_input
function aoc:core/timer_start

data modify storage main screen set value [] 
data modify storage main line set value [] 

scoreboard players set INDEX VAR 0
scoreboard players set CLOCK VAR 1
scoreboard players set SOL VAR 0
scoreboard players set REGISTER VAR 1
function aoc:io/init/input
function aoc:sol/day10/solve1


tellraw @a [{"nbt":"screen[0][]","storage":"main","separator":""}]
tellraw @a [{"nbt":"screen[1][]","storage":"main","separator":""}]
tellraw @a [{"nbt":"screen[2][]","storage":"main","separator":""}]
tellraw @a [{"nbt":"screen[3][]","storage":"main","separator":""}]
tellraw @a [{"nbt":"screen[4][]","storage":"main","separator":""}]
tellraw @a [{"nbt":"screen[5][]","storage":"main","separator":""}]

function aoc:core/print_score
function aoc:core/timer_end
