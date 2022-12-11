
scoreboard players set PART AOC 2
scoreboard players set DAY AOC 11
scoreboard players set YEAR AOC 2022
function aoc:core/load_input
function aoc:core/timer_start


data modify storage main monkey set value []

scoreboard players set PROD VAR 1
function aoc:io/init/input
function aoc:sol/day11/parse

scoreboard players set ITER VAR 1
scoreboard players set MAX VAR 10000
execute store result score MSIZE VAR run data get storage main monkey
function aoc:sol/day11/iterate

data modify storage sort arr set value []
data modify storage sort arr append from storage main monkey[].ins
function aoc:sort/quick_sort

execute store result score A VAR run data get storage sort arr[-1]
execute store result score B VAR run data get storage sort arr[-2]

scoreboard players operation V LONG = A VAR
function aoc:long/from_int
data modify storage long add set from storage long data

scoreboard players operation V LONG = B VAR
function aoc:long/from_int
function aoc:long/mult


function aoc:core/print_score_long
function aoc:core/timer_end
