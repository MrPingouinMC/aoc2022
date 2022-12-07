

scoreboard players set BREAK VAR 0

execute store result score ID VAR run data get storage main d[0].name
execute if score ID VAR = TARGET_DIR VAR run scoreboard players set BREAK VAR 1

execute if score BREAK VAR matches 1 run execute store result score TARGET VAR run data get storage main d[0].id

data remove storage main d[0]

execute if score BREAK VAR matches 0 run function aoc:sol/day7/find_dir