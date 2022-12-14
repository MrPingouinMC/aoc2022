

scoreboard players set ATYPE VAR 0
scoreboard players set BTYPE VAR 0

execute store result score ASIZE VAR run data get storage main a
execute store result score BSIZE VAR run data get storage main b

scoreboard players set FLAG VAR -1
data modify storage main va set from storage main a[0].v
execute store result score FLAG VAR run data modify storage main va set value []
execute if score FLAG VAR matches 0 run scoreboard players set ATYPE VAR 1
execute if data storage main a[0].v[] run scoreboard players set ATYPE VAR 1

scoreboard players set FLAG VAR -1
data modify storage main vb set from storage main b[0].v
execute store result score FLAG VAR run data modify storage main vb set value []
execute if score FLAG VAR matches 0 run scoreboard players set BTYPE VAR 1
execute if data storage main b[0].v[] run scoreboard players set BTYPE VAR 1


execute if score ATYPE VAR matches 0 if score BTYPE VAR matches 0 run function aoc:sol/day13/comp_int

execute if score ATYPE VAR matches 0 if score BTYPE VAR matches 1 run execute store result score A VAR run data get storage main a[0].v
execute if score ATYPE VAR matches 0 if score BTYPE VAR matches 1 run data modify storage main a[0].v set value [{v:-1}]
execute if score ATYPE VAR matches 0 if score BTYPE VAR matches 1 run execute store result storage main a[0].v[0].v int 1 run scoreboard players get A VAR
execute if score ATYPE VAR matches 0 if score BTYPE VAR matches 1 run scoreboard players set ATYPE VAR 1

execute if score ATYPE VAR matches 1 if score BTYPE VAR matches 0 run execute store result score B VAR run data get storage main b[0].v
execute if score ATYPE VAR matches 1 if score BTYPE VAR matches 0 run data modify storage main b[0].v set value [{v:-1}]
execute if score ATYPE VAR matches 1 if score BTYPE VAR matches 0 run execute store result storage main b[0].v[0].v int 1 run scoreboard players get B VAR
execute if score ATYPE VAR matches 1 if score BTYPE VAR matches 0 run scoreboard players set BTYPE VAR 1

execute if score ATYPE VAR matches 1 if score BTYPE VAR matches 1 run function aoc:sol/day13/comp_arr





data remove storage main a[0]
data remove storage main b[0]

execute store result score ASIZE VAR run data get storage main a
execute store result score BSIZE VAR run data get storage main b

execute if score VALID VAR matches -1 if score ASIZE VAR matches 1.. if score BSIZE VAR matches 0 run scoreboard players set VALID VAR 0
execute if score VALID VAR matches -1 if score ASIZE VAR matches 0 if score BSIZE VAR matches 1.. run scoreboard players set VALID VAR 1
execute if score VALID VAR matches -1 if score ASIZE VAR matches 1.. if score BSIZE VAR matches 1.. run function aoc:sol/day13/comp

