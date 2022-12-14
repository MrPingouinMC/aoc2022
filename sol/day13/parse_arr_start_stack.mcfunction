


data modify storage main stack append from storage main a
data modify storage main a set value []

function aoc:sol/day13/parse_arr_start

data modify storage main stack[-1] append value {v:-1}
data modify storage main stack[-1][-1].v set from storage main a
data modify storage main a set from storage main stack[-1]
data remove storage main stack[-1]