

execute store result score A VAR run data get storage main a[0].v
execute store result score B VAR run data get storage main b[0].v

execute if score A VAR > B VAR run scoreboard players set VALID VAR 0
execute if score A VAR < B VAR run scoreboard players set VALID VAR 1