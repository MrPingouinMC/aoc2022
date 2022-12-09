


execute if score DIR VAR matches 18 run scoreboard players add HX VAR 1 
execute if score DIR VAR matches 21 run scoreboard players add HY VAR 1 
execute if score DIR VAR matches 12 run scoreboard players remove HX VAR 1 
execute if score DIR VAR matches 4 run scoreboard players remove HY VAR 1 

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

scoreboard players operation H VAR = TX VAR
scoreboard players operation H VAR += 20000 CONST
scoreboard players operation H VAR *= 20000 CONST
scoreboard players operation H VAR += TY VAR
scoreboard players operation H VAR += 20000 CONST



execute unless score LAST VAR = H VAR run data modify storage sort arr append value -1
execute unless score LAST VAR = H VAR run execute store result storage sort arr[-1] int 1 run scoreboard players get H VAR
scoreboard players operation LAST VAR = H VAR


scoreboard players remove DELTA VAR 1
execute if score DELTA VAR matches 1.. run function aoc:sol/day9/move

