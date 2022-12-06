

data modify storage main sol append from storage main stacks[0][0]
data remove storage main stacks[0]


scoreboard players remove SIZE VAR 1

execute if score SIZE VAR matches 1.. run function aoc:sol/day5/reduce