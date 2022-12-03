



execute store result score A VAR run data get storage main bag1[0]
execute store result score B VAR run data get storage main bag2[0]
execute store result score C VAR run data get storage main bag3[0]


execute if score A VAR <= B VAR if score A VAR <= C VAR run data remove storage main bag1[0]
execute if score B VAR <= A VAR if score B VAR <= C VAR run data remove storage main bag2[0]
execute if score C VAR <= A VAR if score C VAR <= B VAR run data remove storage main bag3[0]

execute if score A VAR = B VAR if score A VAR = C VAR run scoreboard players operation DUP VAR = A VAR

#Unsafe exit condition, but the problem should guarenteed that there is one common element in each set
#Uncomment the following part for a safe test :

#execute store result score LEN1 VAR run data get storage main bag1
#execute store result score LEN2 VAR run data get storage main bag2
#execute store result score LEN3 VAR run data get storage main bag3
#scoreboard players operation LEN1 VAR *= LEN2 VAR
#scoreboard players operation LEN1 VAR *= LEN3 VAR
#execute if score LEN1 VAR matches 0 run scoreboard players set DUP VAR 99

execute if score DUP VAR matches -1 run function aoc:sol/day3/find_duplicate3

