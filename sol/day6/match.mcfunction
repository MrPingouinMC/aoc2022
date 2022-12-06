
execute store result score W1 VAR run data get storage sort arr[0]
execute store result score W2 VAR run data get storage sort arr[1]

execute if score W1 VAR = W2 VAR run scoreboard players set FLAG VAR 1
data remove storage sort arr[0]

scoreboard players remove SIZE VAR 1
execute if score SIZE VAR matches 2.. run function aoc:sol/day6/match
