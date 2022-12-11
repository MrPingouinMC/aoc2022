
scoreboard players operation W2 MATH = B MATH
scoreboard players operation W2 MATH %= BASE MATH

scoreboard players operation W2 MATH *= A MATH
scoreboard players operation R MATH -= MOD MATH
scoreboard players operation R MATH += W2 MATH
scoreboard players operation R MATH %= MOD MATH

scoreboard players operation A MATH *= BASE MATH
scoreboard players operation A MATH %= MOD MATH

scoreboard players operation B MATH /= BASE MATH

execute if score B MATH matches 1.. run function aoc:math/priv/mult_safe