
scoreboard players operation BASE MATH = MAX_INT CONST
scoreboard players operation BASE MATH /= A MATH

execute if score BASE MATH matches ..2 run function aoc:math/priv/mult_safe_base2
execute if score BASE MATH matches 3.. run function aoc:math/priv/mult_safe_base_n