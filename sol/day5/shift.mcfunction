

data modify storage main stacks append from storage main stacks[0] 
data remove storage main stacks[0]


scoreboard players add INDEX VAR 1
execute if score INDEX VAR > MAX_INDEX VAR run scoreboard players set INDEX VAR 1

execute unless score TARGET VAR = INDEX VAR run function aoc:sol/day5/shift