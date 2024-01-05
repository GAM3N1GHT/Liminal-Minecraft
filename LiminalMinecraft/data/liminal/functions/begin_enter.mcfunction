execute if entity @r[nbt={Inventory:[{id:"minecraft:nether_star"}]}] as @r[nbt={Inventory:[{id:"minecraft:nether_star"}]}] at @s if block ~ ~1 ~ #concrete_powder run scoreboard players set @s enter 1
execute at @r[scores={enter=1}] run summon armor_stand ~ ~3 ~ {Invisible:true,Invulnerable:true,NoGravity:true,Tags:["item_storage"]}
execute at @e[tag=item_storage] run fill ~ ~ ~ ~ ~1 ~ minecraft:chest
execute at @e[tag=item_storage] run item replace block ~ ~1 ~ container.0 from entity @r[scores={enter=1}] container.0
execute at @e[tag=item_storage] run item replace block ~ ~1 ~ container.1 from entity @r[scores={enter=1}] container.1
execute at @e[tag=item_storage] run item replace block ~ ~1 ~ container.2 from entity @r[scores={enter=1}] container.2
execute at @e[tag=item_storage] run item replace block ~ ~1 ~ container.3 from entity @r[scores={enter=1}] container.3
execute at @e[tag=item_storage] run item replace block ~ ~1 ~ container.4 from entity @r[scores={enter=1}] container.4
execute at @e[tag=item_storage] run item replace block ~ ~1 ~ container.5 from entity @r[scores={enter=1}] container.5
execute at @e[tag=item_storage] run item replace block ~ ~1 ~ container.6 from entity @r[scores={enter=1}] container.6
execute at @e[tag=item_storage] run item replace block ~ ~1 ~ container.7 from entity @r[scores={enter=1}] container.7
execute at @e[tag=item_storage] run item replace block ~ ~1 ~ container.8 from entity @r[scores={enter=1}] container.8
execute at @e[tag=item_storage] run item replace block ~ ~1 ~ container.9 from entity @r[scores={enter=1}] armor.head
execute at @e[tag=item_storage] run item replace block ~ ~1 ~ container.10 from entity @r[scores={enter=1}] armor.chest
execute at @e[tag=item_storage] run item replace block ~ ~1 ~ container.11 from entity @r[scores={enter=1}] armor.legs
execute at @e[tag=item_storage] run item replace block ~ ~1 ~ container.12 from entity @r[scores={enter=1}] armor.feet
execute at @e[tag=item_storage] run item replace block ~ ~1 ~ container.13 from entity @r[scores={enter=1}] weapon.offhand
execute at @e[tag=item_storage] run item replace block ~ ~ ~ container.0 from entity @r[scores={enter=1}] container.9
execute at @e[tag=item_storage] run item replace block ~ ~ ~ container.1 from entity @r[scores={enter=1}] container.10
execute at @e[tag=item_storage] run item replace block ~ ~ ~ container.2 from entity @r[scores={enter=1}] container.11
execute at @e[tag=item_storage] run item replace block ~ ~ ~ container.3 from entity @r[scores={enter=1}] container.12
execute at @e[tag=item_storage] run item replace block ~ ~ ~ container.4 from entity @r[scores={enter=1}] container.13
execute at @e[tag=item_storage] run item replace block ~ ~ ~ container.5 from entity @r[scores={enter=1}] container.14
execute at @e[tag=item_storage] run item replace block ~ ~ ~ container.6 from entity @r[scores={enter=1}] container.15
execute at @e[tag=item_storage] run item replace block ~ ~ ~ container.7 from entity @r[scores={enter=1}] container.16
execute at @e[tag=item_storage] run item replace block ~ ~ ~ container.8 from entity @r[scores={enter=1}] container.17
execute at @e[tag=item_storage] run item replace block ~ ~ ~ container.9 from entity @r[scores={enter=1}] container.18
execute at @e[tag=item_storage] run item replace block ~ ~ ~ container.10 from entity @r[scores={enter=1}] container.19
execute at @e[tag=item_storage] run item replace block ~ ~ ~ container.11 from entity @r[scores={enter=1}] container.20
execute at @e[tag=item_storage] run item replace block ~ ~ ~ container.12 from entity @r[scores={enter=1}] container.21
execute at @e[tag=item_storage] run item replace block ~ ~ ~ container.13 from entity @r[scores={enter=1}] container.22
execute at @e[tag=item_storage] run item replace block ~ ~ ~ container.14 from entity @r[scores={enter=1}] container.23
execute at @e[tag=item_storage] run item replace block ~ ~ ~ container.15 from entity @r[scores={enter=1}] container.24
execute at @e[tag=item_storage] run item replace block ~ ~ ~ container.16 from entity @r[scores={enter=1}] container.25
execute at @e[tag=item_storage] run item replace block ~ ~ ~ container.17 from entity @r[scores={enter=1}] container.26
execute at @e[tag=item_storage] run item replace block ~ ~ ~ container.18 from entity @r[scores={enter=1}] container.27
execute at @e[tag=item_storage] run item replace block ~ ~ ~ container.19 from entity @r[scores={enter=1}] container.28
execute at @e[tag=item_storage] run item replace block ~ ~ ~ container.20 from entity @r[scores={enter=1}] container.29
execute at @e[tag=item_storage] run item replace block ~ ~ ~ container.21 from entity @r[scores={enter=1}] container.30
execute at @e[tag=item_storage] run item replace block ~ ~ ~ container.22 from entity @r[scores={enter=1}] container.31
execute at @e[tag=item_storage] run item replace block ~ ~ ~ container.23 from entity @r[scores={enter=1}] container.32
execute at @e[tag=item_storage] run item replace block ~ ~ ~ container.24 from entity @r[scores={enter=1}] container.33
execute at @e[tag=item_storage] run item replace block ~ ~ ~ container.25 from entity @r[scores={enter=1}] container.34
execute at @e[tag=item_storage] run item replace block ~ ~ ~ container.26 from entity @r[scores={enter=1}] container.35
give @r[scores={enter=1}] sea_pickle
clear @r[scores={enter=1}]
execute as @e[tag=item_storage] run tp ~ ~2 ~
execute store result score @r[scores={enter=1},limit=1] XRespawn run data get entity @e[tag=item_storage,limit=1] Pos[0] 1
execute store result score @r[scores={enter=1},limit=1] YRespawn run data get entity @e[tag=item_storage,limit=1] Pos[1] 1
execute store result score @r[scores={enter=1},limit=1] ZRespawn run data get entity @e[tag=item_storage,limit=1] Pos[2] 1
kill @e[tag=item_storage]
execute as @r[scores={enter=1}] in liminal:nowhere run tp ~ ~ ~