

scoreboard players set SET VAR 0
scoreboard players set ABYSS VAR 0
scoreboard players set D VAR 0
function aoc:sol/day14/fall

execute if score ABYSS VAR matches 0 run scoreboard players add ITER VAR 1

execute unless block ~ ~ ~ air run scoreboard players set ABYSS VAR 1
execute if score ABYSS VAR matches 0 run function aoc:sol/day14/generate
