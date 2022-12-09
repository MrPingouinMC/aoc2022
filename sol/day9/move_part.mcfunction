


execute if score INDEX VAR >= QSIZE VAR run data modify storage main q prepend value [0, 0]
execute if score INDEX VAR >= QSIZE VAR run scoreboard players add QSIZE VAR 1


execute store result score TX VAR run data get storage main q[0][0]
execute store result score TY VAR run data get storage main q[0][1]


scoreboard players operation DX VAR = HX VAR
scoreboard players operation DY VAR = HY VAR
scoreboard players operation DX VAR -= TX VAR
scoreboard players operation DY VAR -= TY VAR

scoreboard players set MOVE VAR 0

execute unless score DX VAR matches -1..1 run scoreboard players add MOVE VAR 1
execute unless score DY VAR matches -1..1 run scoreboard players add MOVE VAR 1


execute if score MOVE VAR matches 1.. if score DX VAR matches ..-1 run scoreboard players remove TX VAR 1
execute if score MOVE VAR matches 1.. if score DX VAR matches 1.. run scoreboard players add TX VAR 1
execute if score MOVE VAR matches 1.. if score DY VAR matches ..-1 run scoreboard players remove TY VAR 1
execute if score MOVE VAR matches 1.. if score DY VAR matches 1.. run scoreboard players add TY VAR 1

execute store result storage main q[0][0] int 1 run scoreboard players get TX VAR
execute store result storage main q[0][1] int 1 run scoreboard players get TY VAR

execute if score INDEX VAR >= QSIZE_MAX VAR if score MOVE VAR matches 1.. run scoreboard players set TAIL_MOVED VAR 1
execute if score INDEX VAR >= QSIZE_MAX VAR run scoreboard players set MOVE VAR 0
execute if score INDEX VAR >= QSIZE_MAX VAR run scoreboard players set TAIL VAR 0



execute if score MOVE VAR matches 1.. run data modify storage main q append from storage main q[0]
execute if score MOVE VAR matches 1.. run data remove storage main q[0]

scoreboard players add INDEX VAR 1
scoreboard players operation HX VAR = TX VAR
scoreboard players operation HY VAR = TY VAR


execute if score MOVE VAR matches 1.. run function aoc:sol/day9/move_part