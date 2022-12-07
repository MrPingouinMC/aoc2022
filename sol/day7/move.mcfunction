
data modify storage main fs append from storage main fs[0]
data remove storage main fs[0]

scoreboard players add INDEX VAR 1
execute if score INDEX VAR >= FS_SIZE VAR run scoreboard players set INDEX VAR 0

execute unless score INDEX VAR = TARGET VAR run function aoc:sol/day7/move