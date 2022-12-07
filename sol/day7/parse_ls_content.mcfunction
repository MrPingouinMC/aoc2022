
scoreboard players set DEFAULT REG -1
function aoc:io/read/int_default

function aoc:io/read/next/char

scoreboard players set FSIZE VAR -1
execute unless score R REG matches -1 run scoreboard players operation FSIZE VAR = R REG
execute if score R REG matches -1 run function aoc:io/read/next/char
execute if score R REG matches -1 run function aoc:io/read/next/char
execute if score R REG matches -1 run function aoc:io/read/next/char
execute if score R REG matches -1 run function aoc:io/read/word_to_int



execute if score FSIZE VAR matches 1.. run data modify storage main fs[0].files append value {file:-1}
execute if score FSIZE VAR matches 1.. run execute store result storage main fs[0].files[-1].file int 1 run scoreboard players get R REG

execute if score FSIZE VAR matches -1 run function aoc:sol/day7/create_folder
