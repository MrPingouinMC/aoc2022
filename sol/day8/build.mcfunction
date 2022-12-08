
function aoc:io/read/int_single
function aoc:io/read/next/char


scoreboard players add CHAR REG 5
execute store result entity @s Pos[1] double 1 run scoreboard players get CHAR REG
execute at @s run setblock ~ 5 ~ brown_concrete
execute at @s run setblock ~ 4 ~ stone
execute at @s run setblock ~ 4 ~ jukebox{RecordItem:{id:"minecraft:pufferfish",Count:1b,tag:{h:-1}}}
execute at @s store result block ~ 4 ~ RecordItem.tag.h int 1 run scoreboard players get CHAR REG
execute at @s run fill ~ 5 ~ ~ 25 ~ air replace oak_log
execute at @s run fill ~ 5 ~ ~ ~ ~ oak_log replace air

function aoc:marker/move


scoreboard players remove S VAR 1
execute if score S VAR matches 0 run scoreboard players remove S2 VAR 1
execute if score S VAR matches 0 run function aoc:io/read/next/line
execute if score S VAR matches 0 run scoreboard players operation S VAR = SBASE VAR

execute if score S2 VAR matches 1.. at @s run function aoc:sol/day8/build
