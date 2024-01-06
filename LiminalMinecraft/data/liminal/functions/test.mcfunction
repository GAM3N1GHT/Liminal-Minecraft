execute if entity @e[tag=selected_l1] run tag @e[tag=selected_l1] remove selectZposed_l1
execute as @a at @s store result score @s level1_Xdif run data get entity @e[tag=level1_gen,sort=nearest,limit=1] Pos[0] 1
execute as @a at @s store result score @s level1_Zdif run data get entity @e[tag=level1_gen,sort=nearest,limit=1] Pos[2] 1
execute as @a at @s store result score @s Xpos run data get entity @s Pos[0] 1
execute as @a at @s store result score @s Zpos run data get entity @s Pos[2] 1
execute as @a if score @s level1_Xdif < @s enter run scoreboard players operation @s level1_Xdif *= @s multiply-1
execute as @a if score @s level1_Zdif < @s enter run scoreboard players operation @s level1_Zdif *= @s multiply-1
execute as @a if score @s Xpos < @s enter run scoreboard players operation @s Xpos *= @s multiply-1
execute as @a if score @s Zpos < @s enter run scoreboard players operation @s Zpos *= @s multiply-1
execute as @a run scoreboard players operation @s level1_Xdif -= @s Xpos
execute as @a run scoreboard players operation @s level1_Zdif -= @s Zpos
execute as @a if score @s level1_Xdif < @s enter run scoreboard players operation @s level1_Xdif *= @s multiply-1
execute as @a if score @s level1_Zdif < @s enter run scoreboard players operation @s level1_Zdif *= @s multiply-1
execute as @a run scoreboard players operation @s level1_Xdif += @s level1_Zdif
scoreboard players set #MIN level1_Xdif 2147483647
execute as @a run scoreboard players operation #MIN level1_Xdif < @s level1_Xdif
execute as @a if score @s level1_Xdif = #MIN level1_Xdif store result score @a SelectedUUID run scoreboard players get @s UUID
execute as @a if score @s UUID = @s SelectedUUID run tag @e[tag=level1_gen,sort=nearest,limit=1] add selected_l1