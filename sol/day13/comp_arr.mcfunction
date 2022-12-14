


data modify storage main stack append from storage main a
data modify storage main stack append from storage main b
data modify storage main a set from storage main a[0].v
data modify storage main b set from storage main b[0].v


execute store result score ASIZE VAR run data get storage main a
execute store result score BSIZE VAR run data get storage main b

execute if score ASIZE VAR matches 1.. if score BSIZE VAR matches 0 run scoreboard players set VALID VAR 0
execute if score ASIZE VAR matches 0 if score BSIZE VAR matches 1.. run scoreboard players set VALID VAR 1
execute if score VALID VAR matches -1 if score ASIZE VAR matches 1.. if score BSIZE VAR matches 1.. run function aoc:sol/day13/comp


data modify storage main a set from storage main stack[-2]
data modify storage main b set from storage main stack[-1]

data remove storage main stack[-1]
data remove storage main stack[-1]
