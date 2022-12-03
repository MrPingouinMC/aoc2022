


function aoc:io/read/word_to_bint

data modify storage buf3 data set from storage buf data[0].word
data remove storage buf data[0]

data modify storage main bag1 set value []
data modify storage main bag2 set value []

function aoc:io/init/buffer3
function aoc:sol/day3/split

data modify storage sort arr set from storage main bag1
function aoc:sort/quick_sort
data modify storage main bag1 set from storage sort arr

data modify storage sort arr set from storage main bag2
function aoc:sort/quick_sort
data modify storage main bag2 set from storage sort arr

scoreboard players set DUP VAR -1
function aoc:sol/day3/find_duplicate

#Swap between upper and lowercase
scoreboard players remove DUP VAR 31
execute if score DUP VAR matches ..0 run scoreboard players add DUP VAR 57

scoreboard players operation SOL VAR += DUP VAR

function aoc:io/read/next/line
execute if score CONTINUE REG matches 1 run function aoc:sol/day3/solve1

