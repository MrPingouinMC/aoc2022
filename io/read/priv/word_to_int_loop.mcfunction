
#Acculate the chars into a score until a non number is found.

function aoc:io/str/char_to_int

execute if score CHAR REG matches 1..64 run scoreboard players operation R REG *= 64 CONST
execute if score CHAR REG matches 1..64 run scoreboard players operation R REG += CHAR REG

function aoc:io/read/priv/break_separator

execute if score CONTINUE REG matches 1 run function aoc:io/read/next/char
execute if score CONTINUE REG matches 1 run function aoc:io/read/priv/word_to_int_loop
