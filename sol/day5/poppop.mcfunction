

data modify storage main stacks[0] prepend from storage main pop[0]

data remove storage main pop[0]

scoreboard players remove TARGET VAR 1

execute if score TARGET VAR matches 1.. run function aoc:sol/day5/poppop