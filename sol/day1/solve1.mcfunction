



execute store result score CURRENT VAR run data get storage buf data[0]

execute if score CURRENT VAR matches 0.. run scoreboard players operation CAL VAR += CURRENT VAR

execute if score CURRENT VAR matches -1 run scoreboard players operation MAX VAR > CAL VAR
execute if score CURRENT VAR matches -1 run scoreboard players set CAL VAR 0


function aoc:io/read/next/buffer
execute if score CONTINUE REG matches 1 run function aoc:sol/day1/solve1