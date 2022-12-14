
scoreboard players set FLAG VAR 1
data modify storage main c set from storage sort arr[0]
execute store result score FLAG VAR run data modify storage main c set value [{v:[{v:2}]}]
execute if score FLAG VAR matches 0 run scoreboard players operation SOL VAR *= INDEX VAR

scoreboard players set FLAG VAR 1
data modify storage main c set from storage sort arr[0]
execute store result score FLAG VAR run data modify storage main c set value [{v:[{v:6}]}]
execute if score FLAG VAR matches 0 run scoreboard players operation SOL VAR *= INDEX VAR

data remove storage sort arr[0]

scoreboard players add INDEX VAR 1
scoreboard players remove SIZE VAR 1
execute if score SIZE VAR matches 1.. run function aoc:sol/day13/find