

execute store result score HX VAR run data get storage main q[0][0]
execute store result score HY VAR run data get storage main q[0][1]

execute if score DIR VAR matches 18 run scoreboard players add HX VAR 1 
execute if score DIR VAR matches 21 run scoreboard players add HY VAR 1 
execute if score DIR VAR matches 12 run scoreboard players remove HX VAR 1 
execute if score DIR VAR matches 4 run scoreboard players remove HY VAR 1 

execute store result storage main q[0][0] int 1 run scoreboard players get HX VAR
execute store result storage main q[0][1] int 1 run scoreboard players get HY VAR

scoreboard players set TAIL_MOVED VAR 0
scoreboard players set INDEX VAR 1
data modify storage main q append from storage main q[0]
data remove storage main q[0]
function aoc:sol/day9/move_part


scoreboard players operation H VAR = TX VAR
scoreboard players operation H VAR += 20000 CONST
scoreboard players operation H VAR *= 20000 CONST
scoreboard players operation H VAR += TY VAR
scoreboard players operation H VAR += 20000 CONST

execute if score TAIL_MOVED VAR matches 1 run data modify storage sort arr append value -1
execute if score TAIL_MOVED VAR matches 1 run execute store result storage sort arr[-1] int 1 run scoreboard players get H VAR
execute if score TAIL_MOVED VAR matches 1 run execute store result storage sort arr[-1] int 1 run scoreboard players get H VAR

function aoc:sol/day9/shift_back



scoreboard players remove DELTA VAR 1
execute if score DELTA VAR matches 1.. run function aoc:sol/day9/move2

