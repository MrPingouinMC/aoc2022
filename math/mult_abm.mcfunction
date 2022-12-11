
#Compute A MATH * B MATH % M MATH => R MATH

#Safely compute a*b % m with no overflow
#It's recommanded to have a < b to lower the number of operation



scoreboard players set R MATH 0

function aoc:math/priv/mult_safe