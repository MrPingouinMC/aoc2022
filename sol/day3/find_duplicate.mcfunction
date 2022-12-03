



execute store result score A VAR run data get storage main bag1[0]
execute store result score B VAR run data get storage main bag2[0]

execute if score A VAR < B VAR run data remove storage main bag1[0]
execute if score A VAR > B VAR run data remove storage main bag2[0]

execute if score A VAR = B VAR run scoreboard players operation DUP VAR = A VAR


#Unsafe exit condition, but the problem should guarenteed that there is one common element in each set
#Uncomment the following part for a safe test :

#execute store result score LEN1 VAR run data get storage main bag1
#execute store result score LEN2 VAR run data get storage main bag2
#scoreboard players operation LEN1 VAR *= LEN2 VAR
#execute if score LEN1 VAR matches 0 run scoreboard players operation A VAR = B VAR

execute unless score A VAR = B VAR run function aoc:sol/day3/find_duplicate

