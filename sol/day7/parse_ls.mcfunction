
scoreboard players set BREAK REG 0
function aoc:io/str/special_to_int

execute if score CHAR REG matches 8 run scoreboard players set BREAK REG 1

execute if score BREAK REG matches 0 run function aoc:sol/day7/parse_ls_content

execute if score BREAK REG matches 0 run function aoc:io/read/next/line
execute if score BREAK REG matches 0 if score CONTINUE REG matches 1 run function aoc:sol/day7/parse_ls