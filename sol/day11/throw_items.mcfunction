
scoreboard players operation MF VAR -= M VAR
execute if score MF VAR matches ..-1 run scoreboard players operation MF VAR += MSIZE VAR

scoreboard players operation MT VAR -= M VAR
execute if score MT VAR matches ..-1 run scoreboard players operation MT VAR += MSIZE VAR

#This should never equal 0
#execute if score MF VAR matches 0 run data modify storage main monkey[0].mf[] append from storage main mf 
execute if score MF VAR matches 1 run data modify storage main monkey[1].items append from storage main mf[]
execute if score MF VAR matches 2 run data modify storage main monkey[2].items append from storage main mf[]
execute if score MF VAR matches 3 run data modify storage main monkey[3].items append from storage main mf[]
execute if score MF VAR matches 4 run data modify storage main monkey[4].items append from storage main mf[]
execute if score MF VAR matches 5 run data modify storage main monkey[5].items append from storage main mf[]
execute if score MF VAR matches 6 run data modify storage main monkey[6].items append from storage main mf[]
execute if score MF VAR matches 7 run data modify storage main monkey[7].items append from storage main mf[]

execute if score MT VAR matches 1 run data modify storage main monkey[1].items append from storage main mt[]
execute if score MT VAR matches 2 run data modify storage main monkey[2].items append from storage main mt[]
execute if score MT VAR matches 3 run data modify storage main monkey[3].items append from storage main mt[]
execute if score MT VAR matches 4 run data modify storage main monkey[4].items append from storage main mt[]
execute if score MT VAR matches 5 run data modify storage main monkey[5].items append from storage main mt[]
execute if score MT VAR matches 6 run data modify storage main monkey[6].items append from storage main mt[]
execute if score MT VAR matches 7 run data modify storage main monkey[7].items append from storage main mt[]