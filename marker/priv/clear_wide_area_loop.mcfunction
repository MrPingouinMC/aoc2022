
fill ~-1 ~-1 ~-1 ~1 ~15 ~1 air

function aoc:marker/move
execute if score DONE MARKER matches 0 at @s run function aoc:marker/priv/clear_wide_area_loop