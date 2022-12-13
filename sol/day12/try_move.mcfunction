

execute store result score H2 VAR run data get block ~ 4 ~ RecordItem.tag.h
scoreboard players operation H2 VAR -= H VAR

execute if score H2 VAR matches ..1 run data modify storage main q append value [-1, -1, 0]
execute if score H2 VAR matches ..1 run execute store result storage main q[-1][0] int 1 run scoreboard players get X VAR
execute if score H2 VAR matches ..1 run execute store result storage main q[-1][1] int 1 run scoreboard players get Y VAR
execute if score H2 VAR matches ..1 run execute store result storage main q[-1][2] int 1 run scoreboard players get STEP VAR