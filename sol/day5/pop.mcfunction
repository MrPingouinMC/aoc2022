

execute if score PART AOC matches 1 run data modify storage main pop append from storage main stacks[0][0]
execute if score PART AOC matches 2 run data modify storage main pop prepend from storage main stacks[0][0]
data remove storage main stacks[0][0]


scoreboard players remove TARGET VAR 1

execute if score TARGET VAR matches 1.. run function aoc:sol/day5/pop