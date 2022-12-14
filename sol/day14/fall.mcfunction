
scoreboard players add D VAR 1
execute if score D VAR > MAXZ VAR run scoreboard players set SET VAR 1
execute if score PART AOC matches 1 if score D VAR > MAXZ VAR run scoreboard players set ABYSS VAR 1
execute if score PART AOC matches 2 if score D VAR > MAXZ VAR run setblock ~ ~ ~ sand

execute if score SET VAR matches 0 positioned ~ ~ ~1 if block ~ ~ ~ air run function aoc:sol/day14/fall
execute if score SET VAR matches 0 positioned ~-1 ~ ~1 if block ~ ~ ~ air run function aoc:sol/day14/fall
execute if score SET VAR matches 0 positioned ~1 ~ ~1 if block ~ ~ ~ air run function aoc:sol/day14/fall

execute if score SET VAR matches 0 run setblock ~ ~ ~ sand
scoreboard players set SET VAR 1