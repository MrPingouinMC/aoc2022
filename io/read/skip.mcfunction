

function aoc:io/read/next/char

scoreboard players remove SKIP VAR 1
execute if score SKIP VAR matches 1.. run function aoc:io/read/skip