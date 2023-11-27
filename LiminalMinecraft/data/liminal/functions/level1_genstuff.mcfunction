execute if entity @e[tag=level1_gen,tag=!generated] as @e[tag=level1_gen,limit=1,tag=!generated] run tag @s add level1_gen_selected
execute at @e[tag=level1_gen_selected] if block ~16 ~ ~1 lime_concrete run scoreboard players set @a level1_+Xcheck 1
execute at @e[tag=level1_gen_selected] if block ~16 ~ ~1 red_concrete run scoreboard players set @a level1_+Xcheck 2
execute at @e[tag=level1_gen_selected] if block ~16 ~ ~1 air run scoreboard players set @a level1_+Xcheck 0
execute at @e[tag=level1_gen_selected] if block ~-14 ~ ~1 lime_concrete run scoreboard players set @a level1_-Xcheck 1
execute at @e[tag=level1_gen_selected] if block ~-14 ~ ~1 red_concrete run scoreboard players set @a level1_-Xcheck 2
execute at @e[tag=level1_gen_selected] if block ~-14 ~ ~1 air run scoreboard players set @a level1_-Xcheck 0
execute at @e[tag=level1_gen_selected] if block ~1 ~ ~16 lime_concrete run scoreboard players set @a level1_+Zcheck 1
execute at @e[tag=level1_gen_selected] if block ~1 ~ ~16 red_concrete run scoreboard players set @a level1_+Zcheck 2
execute at @e[tag=level1_gen_selected] if block ~1 ~ ~16 air run scoreboard players set @a level1_+Zcheck 0
execute at @e[tag=level1_gen_selected] if block ~1 ~ ~-14 lime_concrete run scoreboard players set @a level1_-Zcheck 1
execute at @e[tag=level1_gen_selected] if block ~1 ~ ~-14 red_concrete run scoreboard players set @a level1_-Zcheck 2
execute at @e[tag=level1_gen_selected] if block ~1 ~ ~-14 air run scoreboard players set @a level1_-Zcheck 0
execute as @e[tag=level1_gen_selected] run data modify entity @s ArmorItems[0] set value {id:"minecraft:paper",Count:1b,tag:{StructureList:{Array:[10,11,12,13,14,15,16,17,18,19,110,111]}}}
execute as @e[tag=level1_gen_selected] run data modify entity @s ArmorItems[0].tag.StructureList.Array[1] set value 0
# Everything with East as false goes away (East is green/true)
execute if score @r level1_+Xcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[5] set value 0
execute if score @r level1_+Xcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[7] set value 0
execute if score @r level1_+Xcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[9] set value 0
execute if score @r level1_+Xcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[11] set value 0
# Everything with East as true goes away (East is red/false)
execute if score @r level1_+Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[0] set value 0
execute if score @r level1_+Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[2] set value 0
execute if score @r level1_+Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[3] set value 0
execute if score @r level1_+Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[4] set value 0
execute if score @r level1_+Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[6] set value 0
execute if score @r level1_+Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[8] set value 0
execute if score @r level1_+Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[10] set value 0
# Everything with West as false goes away (West is green/true)
execute if score @r level1_-Xcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[4] set value 0
execute if score @r level1_-Xcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[7] set value 0
execute if score @r level1_-Xcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[8] set value 0
execute if score @r level1_-Xcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[10] set value 0
# Everything with West as true goes away (West is red/false)
execute if score @r level1_-Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[0] set value 0
execute if score @r level1_-Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[2] set value 0
execute if score @r level1_-Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[3] set value 0
execute if score @r level1_-Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[5] set value 0
execute if score @r level1_-Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[6] set value 0
execute if score @r level1_-Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[9] set value 0
execute if score @r level1_-Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[11] set value 0
# Everything with South as false goes away (South is green/true)
execute if score @r level1_+Zcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[3] set value 0
execute if score @r level1_+Zcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[6] set value 0
execute if score @r level1_+Zcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[8] set value 0
execute if score @r level1_+Zcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[9] set value 0
# Everything with South as true goes away (South is red/false)
execute if score @r level1_+Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[0] set value 0
execute if score @r level1_+Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[2] set value 0
execute if score @r level1_+Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[4] set value 0
execute if score @r level1_+Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[5] set value 0
execute if score @r level1_+Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[7] set value 0
execute if score @r level1_+Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[10] set value 0
execute if score @r level1_+Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[11] set value 0
# Everything with North as false goes away (North is green/true)
execute if score @r level1_-Zcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[2] set value 0
execute if score @r level1_-Zcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[6] set value 0
execute if score @r level1_-Zcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[10] set value 0
execute if score @r level1_-Zcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[11] set value 0
# Everything with North as true goes away (North is red/false)
execute if score @r level1_-Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[0] set value 0
execute if score @r level1_-Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[3] set value 0
execute if score @r level1_-Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[4] set value 0
execute if score @r level1_-Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[5] set value 0
execute if score @r level1_-Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[7] set value 0
execute if score @r level1_-Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[8] set value 0
execute if score @r level1_-Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[9] set value 0
# Getting rid of anything that can't be used from the list
execute store result score @a level1_gen_array_check run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[6] 1
execute if score @r level1_gen_array_check matches 0 run scoreboard players remove @a RNG_l1_max 1
execute if score @r level1_gen_array_check matches 0 run data remove entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[6]
execute store result score @a level1_gen_array_check run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[5] 1
execute if score @r level1_gen_array_check matches 0 run scoreboard players remove @a RNG_l1_max 1
execute if score @r level1_gen_array_check matches 0 run data remove entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[5]
execute store result score @a level1_gen_array_check run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[4] 1
execute if score @r level1_gen_array_check matches 0 run scoreboard players remove @a RNG_l1_max 1
execute if score @r level1_gen_array_check matches 0 run data remove entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[4]
execute store result score @a level1_gen_array_check run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[3] 1
execute if score @r level1_gen_array_check matches 0 run scoreboard players remove @a RNG_l1_max 1
execute if score @r level1_gen_array_check matches 0 run data remove entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[3]
execute store result score @a level1_gen_array_check run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[2] 1
execute if score @r level1_gen_array_check matches 0 run scoreboard players remove @a RNG_l1_max 1
execute if score @r level1_gen_array_check matches 0 run data remove entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[2]
execute store result score @a level1_gen_array_check run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[1] 1
execute if score @r level1_gen_array_check matches 0 run scoreboard players remove @a RNG_l1_max 1
execute if score @r level1_gen_array_check matches 0 run data remove entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[1]
execute store result score @a level1_gen_array_check run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[0] 1
execute if score @r level1_gen_array_check matches 0 run scoreboard players remove @a RNG_l1_max 1
execute if score @r level1_gen_array_check matches 0 run data remove entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[0]
# Selecting a random structure from available structures
execute if score @r RNG_l1 matches 0 store result score @a level1_save run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[0] 1
execute if score @r RNG_l1 matches 1 store result score @a level1_save run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[1] 1
execute if score @r RNG_l1 matches 2 store result score @a level1_save run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[2] 1
execute if score @r RNG_l1 matches 3 store result score @a level1_save run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[3] 1
execute if score @r RNG_l1 matches 4 store result score @a level1_save run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[4] 1
execute if score @r RNG_l1 matches 5 store result score @a level1_save run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[5] 1
execute if score @r RNG_l1 matches 6 store result score @a level1_save run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[6] 1
execute if score @r RNG_l1 matches 7 store result score @a level1_save run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[7] 1
execute if score @r RNG_l1 matches 8 store result score @a level1_save run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[8] 1
execute if score @r RNG_l1 matches 9 store result score @a level1_save run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[9] 1
execute if score @r RNG_l1 matches 10 store result score @a level1_save run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[10] 1
execute if score @r RNG_l1 matches 11 store result score @a level1_save run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[11] 1
# Placing the structures
execute if score @r level1_save matches 0 at @e[tag=level1_gen_selected] run place template liminal:test_chunk ~ ~ ~
execute if score @r level1_save matches 10 at @e[tag=level1_gen_selected] run place template liminal:level1_nsew ~ ~ ~
execute if score @r level1_save matches 11 at @e[tag=level1_gen_selected] run place template liminal:level1_start ~ ~ ~
execute if score @r level1_save matches 12 at @e[tag=level1_gen_selected] run place template liminal:level1_tblock_esw ~ ~ ~
execute if score @r level1_save matches 13 at @e[tag=level1_gen_selected] run place template liminal:level1_tblock_new ~ ~ ~
execute if score @r level1_save matches 14 at @e[tag=level1_gen_selected] run place template liminal:level1_tblock_nse ~ ~ ~
execute if score @r level1_save matches 15 at @e[tag=level1_gen_selected] run place template liminal:level1_tblock_nsw ~ ~ ~
execute if score @r level1_save matches 16 at @e[tag=level1_gen_selected] run place template liminal:level1_tunnel_ew ~ ~ ~
execute if score @r level1_save matches 17 at @e[tag=level1_gen_selected] run place template liminal:level1_tunnel_ns ~ ~ ~
execute if score @r level1_save matches 18 at @e[tag=level1_gen_selected] run place template liminal:level1_turn_ne ~ ~ ~
execute if score @r level1_save matches 19 at @e[tag=level1_gen_selected] run place template liminal:level1_turn_nw ~ ~ ~
execute if score @r level1_save matches 110 at @e[tag=level1_gen_selected] run place template liminal:level1_turn_se ~ ~ ~
execute if score @r level1_save matches 111 at @e[tag=level1_gen_selected] run place template liminal:level1_turn_sw ~ ~ ~
# Finishing everything up
scoreboard players set @a RNG_l1_max 12
scoreboard players set @a level1_+Xcheck 0
scoreboard players set @a level1_-Xcheck 0
scoreboard players set @a level1_+Zcheck 0
scoreboard players set @a level1_-Zcheck 0
scoreboard players set @a level1_save 0
execute if entity @e[tag=level1_gen_selected] as @e[tag=level1_gen_selected,limit=1] run tag @s add generated
execute if entity @e[tag=level1_gen_selected] run tag @e[tag=level1_gen_selected,limit=1] remove level1_gen_selected