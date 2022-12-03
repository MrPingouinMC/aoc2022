

data modify storage main bag1 append from storage buf3 data[0]
data modify storage main bag2 append from storage buf3 data[-1]

function aoc:io/read/next/buffer3
function aoc:io/read/next/buffer3_reverse
execute if score CONTINUE REG matches 1 run function aoc:sol/day3/split