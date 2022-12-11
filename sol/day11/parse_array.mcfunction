


function aoc:io/read/int
data modify storage main arr append value -1
execute store result storage main arr[-1] int 1 run scoreboard players get R REG

function aoc:io/read/next/char
function aoc:io/read/next/char
execute if score CONTINUE REG matches 1 run function aoc:sol/day11/parse_array


