function aoc:io/str/special_to_int
function aoc:io/read/next/char

function aoc:io/str/special_to_int

execute if score CHAR REG matches -2 run function aoc:io/read/next/char
execute unless score CHAR REG matches -2 run function aoc:sol/day13/parse_arr