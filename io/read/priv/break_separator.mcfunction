#Break if the character is a space
scoreboard players set CONTINUE REG 1
execute if data storage iobuf {"char":" "} run scoreboard players set CONTINUE REG 0
execute if data storage iobuf {"char":"-"} run scoreboard players set CONTINUE REG 0
execute if data storage iobuf {"char":"="} run scoreboard players set CONTINUE REG 0