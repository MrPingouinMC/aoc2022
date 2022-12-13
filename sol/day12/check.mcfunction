



execute store result score H2 VAR run data get block ~ 4 ~ RecordItem.tag.h


execute unless block ~ 5 ~ brown_concrete run scoreboard players set BREAK VAR 1

execute if score BREAK VAR matches 0 run scoreboard players add DELTA VAR 1

execute if score H VAR <= H2 VAR run scoreboard players remove VISIBLE VAR 1
execute if score H VAR <= H2 VAR run scoreboard players set BREAK VAR 1



execute if score BREAK VAR matches 0 if score DIR VAR matches 0 positioned ~1 ~ ~ run function aoc:sol/day8/check
execute if score BREAK VAR matches 0 if score DIR VAR matches 1 positioned ~ ~ ~1 run function aoc:sol/day8/check
execute if score BREAK VAR matches 0 if score DIR VAR matches 2 positioned ~-1 ~ ~ run function aoc:sol/day8/check
execute if score BREAK VAR matches 0 if score DIR VAR matches 3 positioned ~ ~ ~-1 run function aoc:sol/day8/check