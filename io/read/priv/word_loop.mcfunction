
#Acculate the chars into an array until a delimiter is found

function aoc:io/str/to_char
function aoc:io/read/priv/break_separator

execute if score CONTINUE REG matches 1 run data modify storage iobuf word append from storage iobuf char

#tellraw @a ["word  ", {"nbt":"word","storage":"iobuf"}]

execute if score CONTINUE REG matches 1 run function aoc:io/read/next/char
execute if score CONTINUE REG matches 1 run function aoc:io/read/priv/word_loop
