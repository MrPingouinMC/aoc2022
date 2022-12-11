

scoreboard players set M VAR 0
function aoc:sol/day11/iter_monkey

scoreboard players add ITER VAR 1
execute if score ITER VAR <= MAX VAR run function aoc:sol/day11/iterate