
function aoc:io/read/next/char
function aoc:io/read/next/char
function aoc:io/read/word_to_int

execute if score R REG matches 2211 run function aoc:sol/day7/parse_cd

execute if score R REG matches 2802 run function aoc:io/read/next/line
execute if score R REG matches 2802 run function aoc:sol/day7/parse_ls


execute if score CONTINUE REG matches 1 run function aoc:sol/day7/solve1

