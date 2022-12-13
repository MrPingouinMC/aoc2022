

execute store result score X VAR run data get storage main q[0][0]
execute store result score Y VAR run data get storage main q[0][1]
execute store result score STEP VAR run data get storage main q[0][2]

execute store result entity @s Pos[0] double 1 run scoreboard players get X VAR
execute store result entity @s Pos[2] double 1 run scoreboard players get Y VAR


execute at @s store result score H VAR run data get block ~ 4 ~ RecordItem.tag.h

execute if score H VAR matches 27 run scoreboard players set BREAK VAR 1 
execute if score BREAK VAR matches 0 run scoreboard players add STEP VAR 1

scoreboard players add X VAR 1 
execute at @s if block ~ 5 ~ diorite positioned ~1 ~ ~ if block ~ 4 ~ jukebox if block ~ 5 ~ diorite run function aoc:sol/day12/try_move
scoreboard players remove X VAR 2 
execute at @s if block ~ 5 ~ diorite positioned ~-1 ~ ~ if block ~ 4 ~ jukebox if block ~ 5 ~ diorite run function aoc:sol/day12/try_move

scoreboard players add X VAR 1 
scoreboard players add Y VAR 1 
execute at @s if block ~ 5 ~ diorite positioned ~ ~ ~1 if block ~ 4 ~ jukebox if block ~ 5 ~ diorite run function aoc:sol/day12/try_move
scoreboard players remove Y VAR 2 
execute at @s if block ~ 5 ~ diorite positioned ~ ~ ~-1 if block ~ 4 ~ jukebox if block ~ 5 ~ diorite run function aoc:sol/day12/try_move

data remove storage main q[0]
execute at @s run setblock ~ 5 ~ stone

execute if score BREAK VAR matches 0 run function aoc:sol/day12/process
