


data modify storage main q prepend from storage main q[-1]
data remove storage main q[-1]

scoreboard players remove INDEX VAR 1

execute if score INDEX VAR matches 2.. run function aoc:sol/day9/shift_back