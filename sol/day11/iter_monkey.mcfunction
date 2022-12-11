

data modify storage main mf set value []
data modify storage main mt set value []

execute store result score OP VAR run data get storage main monkey[0].op
execute store result score OP_SELF VAR run data get storage main monkey[0].op_self
execute store result score OP_V VAR run data get storage main monkey[0].op_v
execute store result score DIV VAR run data get storage main monkey[0].div

execute store result score MF VAR run data get storage main monkey[0].mf
execute store result score MT VAR run data get storage main monkey[0].mt

execute store result score ISIZE VAR run data get storage main monkey[0].items

execute store result score INS VAR run data get storage main monkey[0].ins
scoreboard players operation INS VAR += ISIZE VAR
execute store result storage main monkey[0].ins int 1 run scoreboard players get INS VAR

execute if score ISIZE VAR matches 1.. run function aoc:sol/day11/iter_item




function aoc:sol/day11/throw_items



data modify storage main monkey append from storage main monkey[0]
data remove storage main monkey[0]

scoreboard players add M VAR 1
execute if score M VAR < MSIZE VAR run function aoc:sol/day11/iter_monkey