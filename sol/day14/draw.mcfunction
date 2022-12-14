


execute store result entity @s Pos[0] double 1 run scoreboard players get RX1 VAR
execute store result entity @s Pos[2] double 1 run scoreboard players get RY1 VAR

execute at @s run setblock ~ 4 ~ granite

scoreboard players set DIR VAR 0
execute if score RX1 VAR = RX2 VAR run scoreboard players set DIR VAR 1
execute if score RY1 VAR = RY2 VAR run scoreboard players set DIR VAR 2

execute if score DIR VAR matches 1 if score RY1 VAR < RY2 VAR run scoreboard players add RY1 VAR 1
execute if score DIR VAR matches 1 if score RY1 VAR > RY2 VAR run scoreboard players remove RY1 VAR 1

execute if score DIR VAR matches 2 if score RX1 VAR < RX2 VAR run scoreboard players add RX1 VAR 1
execute if score DIR VAR matches 2 if score RX1 VAR > RX2 VAR run scoreboard players remove RX1 VAR 1

execute store result entity @s Pos[0] double 1 run scoreboard players get RX1 VAR
execute store result entity @s Pos[2] double 1 run scoreboard players get RY1 VAR

execute at @s run setblock ~ 4 ~ granite

scoreboard players set C VAR 0
execute unless score RX1 VAR = RX2 VAR run scoreboard players set C VAR 1
execute unless score RY1 VAR = RY2 VAR run scoreboard players set C VAR 1

execute if score C VAR matches 1 run function aoc:sol/day14/draw