scoreboard players set @a[scores={enter=1}] enter_end 1
execute at @a[scores={enterTest=1}] run fill ~ ~5 ~ ~ ~5 ~ air replace yellow_concrete
scoreboard players set @a[scores={enter=1}] enterTest 0
scoreboard players set @a[scores={enter_end=1}] enter 0
execute as @a[scores={enter_end=1}] store result score @s XposStart run data get entity @s Pos[0]
execute as @a[scores={enter_end=1}] store result score @s ZposStart run data get entity @s Pos[2]
execute as @a[scores={enter_end=1}] run scoreboard players operation @s XposStart %= @r mod16
execute as @a[scores={enter_end=1}] run scoreboard players operation @s chunk_finderX = @r XposStart
execute as @a[scores={enter_end=1}] store result score @s XposStart run data get entity @s Pos[0]
execute as @a[scores={enter_end=1}] run scoreboard players operation @s XposStart -= @s chunk_finderX
execute as @a[scores={enter_end=1}] run scoreboard players operation @s ZposStart %= @r mod16
execute as @a[scores={enter_end=1}] run scoreboard players operation @s chunk_finderZ = @s ZposStart
execute as @a[scores={enter_end=1}] store result score @s ZposStart run data get entity @s Pos[2]
execute as @a[scores={enter_end=1}] run scoreboard players operation @s ZposStart -= @s chunk_finderZ
execute at @a[scores={enter_end=1}] unless block ~1 ~ ~1 blue_concrete run summon armor_stand ~ 50 ~ {Invisible:false,Invulnerable:true,NoGravity:true,Tags:["gen_start"]}
execute store result entity @e[tag=gen_start,limit=1] Pos[0] double 1 run scoreboard players get @p[scores={enter_end=1}] XposStart
execute store result entity @e[tag=gen_start,limit=1] Pos[2] double 1 run scoreboard players get @p[scores={enter_end=1}] ZposStart
execute at @e[tag=gen_start,limit=1] unless block ~1 ~ ~1 blue_concrete as @a[scores={enter_end=1}] at @s run summon armor_stand ~ 75 ~ {Invisible:false,Invulnerable:true,NoGravity:true,Tags:["player_spawn"]}
execute at @e[tag=gen_start,limit=1] if block ~1 ~ ~1 blue_concrete as @a[scores={enter_end=1}] at @s run summon armor_stand ~ 56 ~ {Invisible:false,Invulnerable:true,NoGravity:true,Tags:["player_spawn"]}
execute at @e[tag=gen_start,limit=1] if block ~1 ~1 ~1 yellow_concrete as @e[tag=player_spawn] run tp @s ~ 75 ~
execute at @e[tag=gen_start,limit=1] unless block ~1 ~ ~1 blue_concrete run place template liminal:level1_start ~ ~ ~
execute as @a[scores={enter_end=1}] run scoreboard players operation @s XposStart += @r add8
execute store result entity @e[tag=player_spawn,limit=1] Pos[0] double 1 run scoreboard players get @p[scores={enter_end=1}] XposStart
execute as @a[scores={enter_end=1}] run scoreboard players operation @s ZposStart += @r add8
execute store result entity @e[tag=player_spawn,limit=1] Pos[2] double 1 run scoreboard players get @p[scores={enter_end=1}] ZposStart
execute as @a[scores={enter_end=1}] run tp @s @e[tag=player_spawn,limit=1]
execute at @e[tag=player_spawn] run spawnpoint @p ~ ~ ~
execute at @e[tag=player_spawn] run gamemode adventure @p
kill @e[tag=player_spawn]
execute as @r[scores={enter_end=1}] run scoreboard players set @s enter_end 0
tag @e[tag=gen_start] add new1