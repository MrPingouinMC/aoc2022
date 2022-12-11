
scoreboard players operation W2 MATH = B MATH
scoreboard players operation W2 MATH %= 2 CONST
execute if score W2 MATH matches 1.. run scoreboard players operation R MATH -= MOD MATH
execute if score W2 MATH matches 1.. run scoreboard players operation R MATH += A MATH
scoreboard players operation R MATH %= MOD MATH

#(s1 + s1) % input =>
execute if score A MATH matches 1073741824.. run scoreboard players operation A MATH -= MOD MATH
scoreboard players operation A MATH += A MATH
scoreboard players operation A MATH %= MOD MATH

scoreboard players operation B MATH /= 2 CONST

execute if score B MATH matches 1.. run function aoc:math/priv/mult_safe


