


scoreboard players set VALID VAR -1
data modify storage main stack set value []
data modify storage main a set from storage main pairs[0][0]
data modify storage main b set from storage main pairs[0][1]

execute store result score ASIZE VAR run data get storage main a
execute store result score BSIZE VAR run data get storage main b


execute if score ASIZE VAR matches 1.. if score BSIZE VAR matches 0 run scoreboard players set VALID VAR 0
execute if score ASIZE VAR matches 0 if score BSIZE VAR matches 1.. run scoreboard players set VALID VAR 1
execute if score VALID VAR matches -1 if score ASIZE VAR matches 1.. if score BSIZE VAR matches 1.. run function aoc:sol/day13/comp


execute unless score VALID VAR matches 0 run scoreboard players operation SOL VAR += INDEX VAR

data remove storage main pairs[0]

scoreboard players add INDEX VAR 1
scoreboard players remove PACKET VAR 1
execute if score PACKET VAR matches 1.. run function aoc:sol/day13/solve

