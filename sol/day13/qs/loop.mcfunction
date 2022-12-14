
data modify storage long comp set from storage sort arr[-1]

data modify storage main a set from storage long comp
data modify storage main b set from storage long data

execute store result score ASIZE VAR run data get storage main a
execute store result score BSIZE VAR run data get storage main b

scoreboard players set VALID VAR -1
execute if score ASIZE VAR matches 1.. if score BSIZE VAR matches 0 run scoreboard players set VALID VAR 0
execute if score ASIZE VAR matches 0 if score BSIZE VAR matches 1.. run scoreboard players set VALID VAR 1

execute if score VALID VAR matches -1 run function aoc:sol/day13/comp

execute if score VALID VAR matches -1 run scoreboard players set VALID VAR 1

execute if score VALID VAR matches 1.. run data modify storage sort up append from storage sort arr[-1]
execute if score VALID VAR matches ..0 run data modify storage sort down append from storage sort arr[-1]


data remove storage sort arr[-1]

scoreboard players remove SIZE SORT 1
execute if score SIZE SORT matches 1.. run function aoc:sol/day13/qs/loop