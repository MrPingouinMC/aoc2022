

execute at @s store result score H VAR run data get block ~ 4 ~ RecordItem.tag.h

scoreboard players set VISIBLE VAR 4
scoreboard players set SCORE VAR 1

scoreboard players set BREAK VAR 0
scoreboard players set DIR VAR 0
scoreboard players set DELTA VAR 0
execute positioned ~1 ~ ~ run function aoc:sol/day8/check
scoreboard players operation SCORE VAR *= DELTA VAR


scoreboard players set BREAK VAR 0
scoreboard players set DIR VAR 1
scoreboard players set DELTA VAR 0
execute positioned ~ ~ ~1 run function aoc:sol/day8/check
scoreboard players operation SCORE VAR *= DELTA VAR

scoreboard players set BREAK VAR 0
scoreboard players set DIR VAR 2
scoreboard players set DELTA VAR 0
execute positioned ~-1 ~ ~ run function aoc:sol/day8/check
scoreboard players operation SCORE VAR *= DELTA VAR

scoreboard players set BREAK VAR 0
scoreboard players set DIR VAR 3
scoreboard players set DELTA VAR 0
execute positioned ~ ~ ~-1 run function aoc:sol/day8/check
scoreboard players operation SCORE VAR *= DELTA VAR

execute if score SCORE VAR > MAX VAR run scoreboard players operation MAX VAR = SCORE VAR

execute if score VISIBLE VAR matches 1.. run scoreboard players add SOL VAR 1

function aoc:marker/move

scoreboard players remove S VAR 1
execute if score S VAR matches 0 run scoreboard players remove S2 VAR 1
execute if score S VAR matches 0 run function aoc:io/read/next/line
execute if score S VAR matches 0 run scoreboard players operation S VAR = SBASE VAR

execute if score S2 VAR matches 1.. at @s run function aoc:sol/day8/process
