


execute store result score V VAR run data get storage sort arr[0]
data remove storage sort arr[0]

execute unless score LAST VAR = V VAR run scoreboard players add SOL VAR 1

scoreboard players operation LAST VAR = V VAR


scoreboard players remove SIZE VAR 1
execute if score SIZE VAR matches 1.. run function aoc:sol/day9/count_uniques

