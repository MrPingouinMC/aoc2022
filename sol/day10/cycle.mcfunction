

scoreboard players operation W VAR = CLOCK VAR
scoreboard players operation W VAR %= 40 CONST

execute if score W VAR matches 20 run scoreboard players operation T VAR = REGISTER VAR
execute if score W VAR matches 20 run scoreboard players operation T VAR *= CLOCK VAR
execute if score W VAR matches 20 run scoreboard players operation SOL VAR += T VAR


scoreboard players operation DIST VAR = REGISTER VAR
scoreboard players operation DIST VAR -= INDEX VAR
execute if score DIST VAR matches -1..1 run data modify storage main line append value "#"
execute unless score DIST VAR matches -1..1 run data modify storage main line append value "_"

execute if score W VAR matches 0 run data modify storage main screen append from storage main line
execute if score W VAR matches 0 run data modify storage main line set value []


execute if score W VAR matches 0 run scoreboard players set INDEX VAR 0
execute if score W VAR matches 1.. run scoreboard players add INDEX VAR 1

scoreboard players add CLOCK VAR 1

