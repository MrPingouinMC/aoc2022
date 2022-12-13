
function aoc:io/str/char_to_int
function aoc:io/read/next/char


execute if score CHAR REG matches 5 run scoreboard players operation END_X VAR = X MARKER
execute if score CHAR REG matches 5 run scoreboard players operation END_Y VAR = Z MARKER
execute if score CHAR REG matches 5 run scoreboard players set CHAR REG 58

execute if score CHAR REG matches 19 run scoreboard players operation START_X VAR = X MARKER
execute if score CHAR REG matches 19 run scoreboard players operation START_Y VAR = Z MARKER
execute if score CHAR REG matches 19 run scoreboard players set CHAR REG 31

scoreboard players remove CHAR REG 31



setblock ~ 4 ~ stone
setblock ~ 4 ~ jukebox{RecordItem:{id:"minecraft:pufferfish",Count:1b,tag:{h:-1,v:0,s:-1}}}
execute store result block ~ 4 ~ RecordItem.tag.h int 1 run scoreboard players get CHAR REG

execute if score PART AOC matches 2 if score CHAR REG matches ..1 run data modify storage main q append value [-1, -1, 0]
execute if score PART AOC matches 2 if score CHAR REG matches ..1 run execute store result storage main q[-1][0] int 1 run data get entity @s Pos[0]
execute if score PART AOC matches 2 if score CHAR REG matches ..1 run execute store result storage main q[-1][1] int 1 run data get entity @s Pos[2]


scoreboard players add CHAR REG 5
execute store result entity @s Pos[1] double 1 run scoreboard players get CHAR REG
execute at @s run fill ~ 5 ~ ~ 40 ~ air replace diorite
execute at @s run fill ~ 5 ~ ~ ~ ~ diorite replace air


function aoc:marker/move


execute if score X MARKER matches 0 run function aoc:io/read/next/line

execute if score DONE MARKER matches 0 at @s run function aoc:sol/day12/build
