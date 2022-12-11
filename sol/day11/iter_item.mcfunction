

execute store result score V VAR run data get storage main monkey[0].items[0]
data remove storage main monkey[0].items[0]

execute if score PART AOC matches 1 run function aoc:sol/day11/mod_op1
execute if score PART AOC matches 2 run function aoc:sol/day11/mod_op2


execute if score OP_SELF VAR matches 0 if score OP VAR matches 10 run scoreboard players operation V VAR += OP_V VAR
execute if score OP_SELF VAR matches 0 if score OP VAR matches 11 run scoreboard players operation V VAR *= OP_V VAR
execute if score OP_SELF VAR matches 1 if score OP VAR matches 10 run scoreboard players operation V VAR += V VAR
execute if score PART AOC matches 1 if score OP_SELF VAR matches 1 if score OP VAR matches 11 run scoreboard players operation V VAR *= V VAR
execute if score PART AOC matches 2 if score OP_SELF VAR matches 1 if score OP VAR matches 11 run function aoc:sol/day11/square

execute if score PART AOC matches 1 run scoreboard players operation V VAR /= 3 CONST

scoreboard players operation V VAR %= PROD VAR
scoreboard players operation W VAR = V VAR
scoreboard players operation W VAR %= DIV VAR


execute if score W VAR matches 0 run data modify storage main mt append value -1
execute if score W VAR matches 0 run execute store result storage main mt[-1] int 1 run scoreboard players get V VAR

execute if score W VAR matches 1.. run data modify storage main mf append value -1
execute if score W VAR matches 1.. run execute store result storage main mf[-1] int 1 run scoreboard players get V VAR



scoreboard players remove ISIZE VAR 1
execute if score ISIZE VAR matches 1.. run function aoc:sol/day11/iter_item
