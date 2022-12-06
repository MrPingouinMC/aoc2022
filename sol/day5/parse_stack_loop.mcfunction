
execute if score FIRST VAR matches 1 run data modify storage main stacks append value []

execute if score FIRST VAR matches 0 run data modify storage main stacks append from storage main stacks[0] 
execute if score FIRST VAR matches 0 run data remove storage main stacks[0]

function aoc:io/str/special_to_int

execute unless score CHAR REG matches 7 run data modify storage main stacks[-1] append from storage iobuf data[0]

function aoc:io/read/next/char
function aoc:io/read/next/char
function aoc:io/read/next/char
function aoc:io/read/next/char

execute if score CONTINUE REG matches 1 run function aoc:sol/day5/parse_stack_loop