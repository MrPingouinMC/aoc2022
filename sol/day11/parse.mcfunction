

data modify storage main cm set value {ins:0}
function aoc:io/read/next/line


scoreboard players set SKIP VAR 18
function aoc:io/read/skip

data modify storage main arr set value []
function aoc:sol/day11/parse_array
function aoc:io/read/next/line


scoreboard players set SKIP VAR 23
function aoc:io/read/skip

function aoc:io/str/special_to_int
scoreboard players operation OP VAR = CHAR REG
function aoc:io/read/next/char
function aoc:io/read/next/char
scoreboard players set OP_V VAR 1
scoreboard players set OP_SELF VAR 1
function aoc:io/read/int
execute if score VALID REG matches 1 run scoreboard players operation OP_V VAR = R REG
execute if score VALID REG matches 1 run scoreboard players set OP_SELF VAR 0
function aoc:io/read/next/line


scoreboard players set SKIP VAR 21
function aoc:io/read/skip

function aoc:io/read/int
scoreboard players operation DIV VAR = R REG
function aoc:io/read/next/line


scoreboard players set SKIP VAR 29
function aoc:io/read/skip

function aoc:io/read/int
scoreboard players operation MT VAR = R REG
function aoc:io/read/next/line


scoreboard players set SKIP VAR 30
function aoc:io/read/skip

function aoc:io/read/int
scoreboard players operation MF VAR = R REG
function aoc:io/read/next/line



data modify storage main cm.items set from storage main arr
execute store result storage main cm.op int 1 run scoreboard players get OP VAR
execute store result storage main cm.op_v int 1 run scoreboard players get OP_V VAR
execute store result storage main cm.op_self int 1 run scoreboard players get OP_SELF VAR
execute store result storage main cm.div int 1 run scoreboard players get DIV VAR
execute store result storage main cm.mt int 1 run scoreboard players get MT VAR
execute store result storage main cm.mf int 1 run scoreboard players get MF VAR

scoreboard players operation PROD VAR *= DIV VAR
data modify storage main monkey append from storage main cm

function aoc:io/read/next/line
execute if score CONTINUE REG matches 1 run function aoc:sol/day11/parse

