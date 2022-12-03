
#Acculate the chars into an array until a delimiter is found

function aoc:io/str/char_to_int
function aoc:io/read/priv/break_separator


execute if score CONTINUE REG matches 1 run data modify storage iobuf word append value -1
execute if score CONTINUE REG matches 1 store result storage iobuf word[-1] int 1 run scoreboard players get CHAR REG


execute if score CONTINUE REG matches 1 run function aoc:io/read/next/char
execute if score CONTINUE REG matches 1 run function aoc:io/read/priv/word_bint_loop
