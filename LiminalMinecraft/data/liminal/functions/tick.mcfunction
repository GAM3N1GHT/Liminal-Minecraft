execute as @a at @s if dimension liminal:nowhere store result score @s Ypos run data get entity @s Pos[1] 100000
# Sewer water check
execute if entity @a[nbt={Inventory:[{id:"minecraft:potion",tag:{Potion:"minecraft:water"}}]}] as @a[nbt={Inventory:[{id:"minecraft:potion",tag:{Potion:"minecraft:water"}}]}] at @s if dimension liminal:nowhere run give @s potion{custom_potion_effects:[{id:"minecraft:wither",amplifier:50b,duration:1200},{id:"minecraft:blindness",amplifier:50b,duration:1200}],display:{Name:'{"text":"Outlandish Sewage"}',Lore:['{"text":"Funny"}']},HideFlags:32,CustomPotionColor:910516} 1
execute if entity @a[nbt={Inventory:[{id:"minecraft:potion",tag:{Potion:"minecraft:water"}}]}] as @a[nbt={Inventory:[{id:"minecraft:potion",tag:{Potion:"minecraft:water"}}]}] at @s if dimension liminal:nowhere run clear @s minecraft:potion{Potion:"minecraft:water"} 1
# Player Y position specifications for creating new armor stands
execute as @a at @s if dimension liminal:nowhere if score @s enter_end matches 0 if score @s Ypos <= @s level1_ceiling if score @s Ypos >= @s level1-2 run scoreboard players set @s level1_cangen 1
execute as @a at @s if dimension liminal:nowhere if score @s Ypos > @s level1_ceiling run scoreboard players set @s level1_cangen 0
execute as @a at @s if dimension liminal:nowhere if score @s Ypos < @s level1-2 run scoreboard players set @s level1_cangen 0
# Picking the specific player and armor stand
execute if entity @e[tag=selected_l1] run tag @e[tag=selected_l1] remove selected_l1
execute as @a at @s if dimension liminal:nowhere store result score @s level1_Xdif run data get entity @e[tag=level1_gen,sort=nearest,limit=1] Pos[0] 1
execute as @a at @s if dimension liminal:nowhere store result score @s level1_Zdif run data get entity @e[tag=level1_gen,sort=nearest,limit=1] Pos[2] 1
execute as @a at @s if dimension liminal:nowhere store result score @s Xpos run data get entity @s Pos[0] 1
execute as @a at @s if dimension liminal:nowhere store result score @s Zpos run data get entity @s Pos[2] 1
execute as @a at @s if dimension liminal:nowhere if score @s level1_Xdif < @s enter run scoreboard players operation @s level1_Xdif *= @s multiply-1
execute as @a at @s if dimension liminal:nowhere if score @s level1_Zdif < @s enter run scoreboard players operation @s level1_Zdif *= @s multiply-1
execute as @a at @s if dimension liminal:nowhere if score @s Xpos < @s enter run scoreboard players operation @s Xpos *= @s multiply-1
execute as @a at @s if dimension liminal:nowhere if score @s Zpos < @s enter run scoreboard players operation @s Zpos *= @s multiply-1
execute as @a at @s if dimension liminal:nowhere run scoreboard players operation @s level1_Xdif -= @s Xpos
execute as @a at @s if dimension liminal:nowhere run scoreboard players operation @s level1_Zdif -= @s Zpos
execute as @a at @s if dimension liminal:nowhere if score @s level1_Xdif < @s enter run scoreboard players operation @s level1_Xdif *= @s multiply-1
execute as @a at @s if dimension liminal:nowhere if score @s level1_Zdif < @s enter run scoreboard players operation @s level1_Zdif *= @s multiply-1
execute as @a at @s if dimension liminal:nowhere run scoreboard players operation @s level1_Xdif += @s level1_Zdif
execute as @a at @s unless dimension liminal:nowhere run scoreboard players set @s level1_Xdif 100000000
scoreboard players set #MIN level1_Xdif 2147483647
execute as @a at @s if dimension liminal:nowhere run scoreboard players operation #MIN level1_Xdif < @s level1_Xdif
execute as @a at @s if dimension liminal:nowhere if score @s level1_Xdif = #MIN level1_Xdif store result score @a SelectedUUID run scoreboard players get @s UUID
execute as @a at @s if dimension liminal:nowhere if score @s UUID = @s SelectedUUID run tag @e[tag=level1_gen,sort=nearest,limit=1] add selected_l1
# Check for total distance between selected armor stand and selected player
execute as @a at @s if dimension liminal:nowhere if score @s level1_Xdif = #MIN level1_Xdif store result score @s level1_totaldif run scoreboard players get @s level1_totaldif
# Put it all together to decide if a new set of armor stands should be created
execute if entity @e[tag=selected_l1,tag=generated1] as @a if score @s SelectedUUID = @s UUID if score @s level1_cangen matches 1 if score @s level1_totaldif <= @s distanceCheck run tag @e[tag=selected_l1] add new1
# if there is an armor stand that can generate then do it
execute if entity @e[tag=new1] run function liminal:level1_createnew
execute as @e[tag=level1_gen,tag=!generated1] at @s if block ~1 ~ ~1 blue_concrete run kill @s
# If there is an armor stand that hasn't already generated something it makes it do so
execute if entity @e[tag=level1_gen,tag=!generated1] run function liminal:level1_genstuff 
# Checks for if the player is trying to enter the liminal space and if so teleports them in after getting them ready
execute at @r[nbt={Inventory:[{id:"minecraft:nether_star"}]}] if block ~ ~1 ~ #concrete_powder as @r[nbt={Inventory:[{id:"minecraft:nether_star"}]}] run function liminal:begin_enter
# If a player just entered, start generation
execute if entity @a[scores={enter=1}] as @a[scores={enter=1}] at @s if dimension liminal:nowhere run fill ~ ~-1 ~ ~ ~-1 ~ yellow_concrete
execute if entity @a[scores={enter=1}] as @a[scores={enter=1}] at @s if dimension liminal:nowhere if block ~ ~-1 ~ yellow_concrete run scoreboard players set @s enterTest 1
execute if entity @a[scores={enterTest=1}] at @a[scores={enterTest=1}] if dimension liminal:nowhere run function liminal:end_enter