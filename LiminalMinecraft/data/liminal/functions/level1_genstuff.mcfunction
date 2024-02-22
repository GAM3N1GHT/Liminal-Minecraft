execute if entity @e[tag=level1_gen_selected] as @e[tag=level1_gen_selected] run tag @s remove level1_gen_selected
execute if entity @e[tag=level1_gen,tag=!generated1] unless entity @e[tag=level1_gen_selected] at @r[gamemode=!survival] as @e[tag=level1_gen,limit=1,tag=!generated1,sort=nearest] run tag @s add level1_gen_selected
execute if entity @e[tag=level1_gen_selected] as @e[tag=level1_gen_selected] run tag @s add generated1
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
# Numbers key for each structure: First number indicates level number, Second number represents if it is transition (0) or special (1), Third number represents number of openings (Non-special: straight(2),T-block(3),ect.  Special: ), For Non-Special if needed: (Fourth, Fifth, Sixth, and Seventh are showing North, South, East, and West), For Special: (Just seperates each structure from one another)
execute as @e[tag=level1_gen_selected] run data modify entity @s ArmorItems[0] set value {id:"minecraft:paper",Count:1b,tag:{StructureList:{Array:[1011000,1010100,1010010,1010001,1021100,1020011,1021010,1021001,1020110,1020101,11,1031110,1031101,1031011,1030111,104]}}}
data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[10] set value 0
# Everything with East as false goes away (East is green/true)
execute if score @r level1_+Xcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[4] set value 0
execute if score @r level1_+Xcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[7] set value 0
execute if score @r level1_+Xcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[9] set value 0
execute if score @r level1_+Xcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[12] set value 0
# Everything with East as true goes away (East is red/false)
execute if score @r level1_+Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[5] set value 0
execute if score @r level1_+Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[6] set value 0
execute if score @r level1_+Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[8] set value 0
execute if score @r level1_+Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[11] set value 0
execute if score @r level1_+Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[13] set value 0
execute if score @r level1_+Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[14] set value 0
execute if score @r level1_+Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[15] set value 0
# Everything with West as false goes away (West is green/true)
execute if score @r level1_-Xcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[4] set value 0
execute if score @r level1_-Xcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[6] set value 0
execute if score @r level1_-Xcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[8] set value 0
execute if score @r level1_-Xcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[11] set value 0
# Everything with West as true goes away (West is red/false)
execute if score @r level1_-Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[5] set value 0
execute if score @r level1_-Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[7] set value 0
execute if score @r level1_-Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[9] set value 0
execute if score @r level1_-Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[12] set value 0
execute if score @r level1_-Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[13] set value 0
execute if score @r level1_-Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[14] set value 0
execute if score @r level1_-Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[15] set value 0
# Everything with South as false goes away (South is green/true)
execute if score @r level1_+Zcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[5] set value 0
execute if score @r level1_+Zcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[6] set value 0
execute if score @r level1_+Zcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[7] set value 0
execute if score @r level1_+Zcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[13] set value 0
# Everything with South as true goes away (South is red/false)
execute if score @r level1_+Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[4] set value 0
execute if score @r level1_+Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[8] set value 0
execute if score @r level1_+Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[9] set value 0
execute if score @r level1_+Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[11] set value 0
execute if score @r level1_+Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[12] set value 0
execute if score @r level1_+Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[14] set value 0
execute if score @r level1_+Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[15] set value 0
# Everything with North as false goes away (North is green/true)
execute if score @r level1_-Zcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[5] set value 0
execute if score @r level1_-Zcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[8] set value 0
execute if score @r level1_-Zcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[9] set value 0
execute if score @r level1_-Zcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[14] set value 0
# Everything with North as true goes away (North is red/false)
execute if score @r level1_-Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[4] set value 0
execute if score @r level1_-Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[6] set value 0
execute if score @r level1_-Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[7] set value 0
execute if score @r level1_-Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[11] set value 0
execute if score @r level1_-Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[12] set value 0
execute if score @r level1_-Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[13] set value 0
execute if score @r level1_-Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[15] set value 0
# Every Dead End and Intersection is more rare
# North/ -Z
execute if score @r level1_+Xcheck matches 0 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[0] set value 0
execute if score @r level1_-Xcheck matches 0 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[0] set value 0
execute if score @r level1_-Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[0] set value 0
execute if score @r level1_+Zcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[0] set value 0
execute if score @r level1_-Xcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[0] set value 0
execute if score @r level1_+Xcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[0] set value 0
# South/ +Z
execute if score @r level1_+Xcheck matches 0 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[1] set value 0
execute if score @r level1_-Zcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[1] set value 0
execute if score @r level1_+Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[1] set value 0
execute if score @r level1_-Xcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[1] set value 0
execute if score @r level1_+Xcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[1] set value 0
# East/ +X
execute if score @r level1_+Zcheck matches 0 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[2] set value 0
execute if score @r level1_-Zcheck matches 0 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[2] set value 0
execute if score @r level1_-Zcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[2] set value 0
execute if score @r level1_+Zcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[2] set value 0
execute if score @r level1_-Xcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[2] set value 0
execute if score @r level1_+Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[2] set value 0
# West/ -X
execute if score @r level1_+Zcheck matches 0 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[3] set value 0
execute if score @r level1_-Zcheck matches 0 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[3] set value 0
execute if score @r level1_-Zcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[3] set value 0
execute if score @r level1_+Zcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[3] set value 0
execute if score @r level1_-Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[3] set value 0
execute if score @r level1_+Xcheck matches 1 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[3] set value 0
# Intersection
execute if score @r level1_+Xcheck matches 0 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[15] set value 0
execute if score @r level1_-Xcheck matches 0 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[15] set value 0
execute if score @r level1_+Zcheck matches 0 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[15] set value 0
execute if score @r level1_-Zcheck matches 0 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[15] set value 0
execute if score @r level1_+Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[15] set value 0
execute if score @r level1_-Xcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[15] set value 0
execute if score @r level1_+Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[15] set value 0
execute if score @r level1_-Zcheck matches 2 run data modify entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[15] set value 0
# Getting rid of anything that can't be used from the list
execute store result score @a level1_gen_array_check run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[15] 1
execute if score @r level1_gen_array_check matches 0 run scoreboard players remove @a RNG_l1_max 1
execute if score @r level1_gen_array_check matches 0 run data remove entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[15]
execute store result score @a level1_gen_array_check run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[14] 1
execute if score @r level1_gen_array_check matches 0 run scoreboard players remove @a RNG_l1_max 1
execute if score @r level1_gen_array_check matches 0 run data remove entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[14]
execute store result score @a level1_gen_array_check run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[13] 1
execute if score @r level1_gen_array_check matches 0 run scoreboard players remove @a RNG_l1_max 1
execute if score @r level1_gen_array_check matches 0 run data remove entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[13]
execute store result score @a level1_gen_array_check run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[12] 1
execute if score @r level1_gen_array_check matches 0 run scoreboard players remove @a RNG_l1_max 1
execute if score @r level1_gen_array_check matches 0 run data remove entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[12]
execute store result score @a level1_gen_array_check run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[11] 1
execute if score @r level1_gen_array_check matches 0 run scoreboard players remove @a RNG_l1_max 1
execute if score @r level1_gen_array_check matches 0 run data remove entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[11]
execute store result score @a level1_gen_array_check run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[10] 1
execute if score @r level1_gen_array_check matches 0 run scoreboard players remove @a RNG_l1_max 1
execute if score @r level1_gen_array_check matches 0 run data remove entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[10]
execute store result score @a level1_gen_array_check run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[9] 1
execute if score @r level1_gen_array_check matches 0 run scoreboard players remove @a RNG_l1_max 1
execute if score @r level1_gen_array_check matches 0 run data remove entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[9]
execute store result score @a level1_gen_array_check run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[8] 1
execute if score @r level1_gen_array_check matches 0 run scoreboard players remove @a RNG_l1_max 1
execute if score @r level1_gen_array_check matches 0 run data remove entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[8]
execute store result score @a level1_gen_array_check run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[7] 1
execute if score @r level1_gen_array_check matches 0 run scoreboard players remove @a RNG_l1_max 1
execute if score @r level1_gen_array_check matches 0 run data remove entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[7]
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
# Picking random number
execute if score @r RNG_l1_max matches 16 store result score @a RNG_l1 run random value 0..15
execute if score @r RNG_l1_max matches 15 store result score @a RNG_l1 run random value 0..14
execute if score @r RNG_l1_max matches 14 store result score @a RNG_l1 run random value 0..13
execute if score @r RNG_l1_max matches 13 store result score @a RNG_l1 run random value 0..12
execute if score @r RNG_l1_max matches 12 store result score @a RNG_l1 run random value 0..11
execute if score @r RNG_l1_max matches 11 store result score @a RNG_l1 run random value 0..10
execute if score @r RNG_l1_max matches 10 store result score @a RNG_l1 run random value 0..9
execute if score @r RNG_l1_max matches 9 store result score @a RNG_l1 run random value 0..8
execute if score @r RNG_l1_max matches 8 store result score @a RNG_l1 run random value 0..7
execute if score @r RNG_l1_max matches 7 store result score @a RNG_l1 run random value 0..6
execute if score @r RNG_l1_max matches 6 store result score @a RNG_l1 run random value 0..5
execute if score @r RNG_l1_max matches 5 store result score @a RNG_l1 run random value 0..4
execute if score @r RNG_l1_max matches 4 store result score @a RNG_l1 run random value 0..3
execute if score @r RNG_l1_max matches 3 store result score @a RNG_l1 run random value 0..2
execute if score @r RNG_l1_max matches 2 store result score @a RNG_l1 run random value 0..1
execute if score @r RNG_l1_max matches 1 run scoreboard players set @a RNG_l1 0
execute if score @r RNG_l1_max matches 0 run scoreboard players set @a RNG_l1 0
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
execute if score @r RNG_l1 matches 12 store result score @a level1_save run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[12] 1
execute if score @r RNG_l1 matches 13 store result score @a level1_save run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[13] 1
execute if score @r RNG_l1 matches 14 store result score @a level1_save run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[14] 1
execute if score @r RNG_l1 matches 15 store result score @a level1_save run data get entity @e[tag=level1_gen_selected,limit=1] ArmorItems[0].tag.StructureList.Array[15] 1
# Placing the structures
execute if score @r level1_save matches 0 at @e[tag=level1_gen_selected] run place template liminal:test_chunk ~ ~ ~
execute if score @r level1_save matches 1011000 at @e[tag=level1_gen_selected] run place template liminal:level1_food_n ~ ~ ~
execute if score @r level1_save matches 1010100 at @e[tag=level1_gen_selected] run place template liminal:level1_food_s ~ ~ ~
execute if score @r level1_save matches 1010010 at @e[tag=level1_gen_selected] run place template liminal:level1_food_e ~ ~ ~
execute if score @r level1_save matches 1010001 at @e[tag=level1_gen_selected] run place template liminal:level1_food_w ~ ~ ~
execute if score @r level1_save matches 1021100 at @e[tag=level1_gen_selected] run place template liminal:level1_tunnel_ns ~ ~ ~
execute if score @r level1_save matches 1020011 at @e[tag=level1_gen_selected] run place template liminal:level1_tunnel_ew ~ ~ ~
execute if score @r level1_save matches 1021010 at @e[tag=level1_gen_selected] run place template liminal:level1_turn_ne ~ ~ ~
execute if score @r level1_save matches 1021001 at @e[tag=level1_gen_selected] run place template liminal:level1_turn_nw ~ ~ ~
execute if score @r level1_save matches 1020110 at @e[tag=level1_gen_selected] run place template liminal:level1_turn_se ~ ~ ~
execute if score @r level1_save matches 1020101 at @e[tag=level1_gen_selected] run place template liminal:level1_turn_sw ~ ~ ~
execute if score @r level1_save matches 1031110 at @e[tag=level1_gen_selected] run place template liminal:level1_tblock_nse ~ ~ ~
execute if score @r level1_save matches 1031101 at @e[tag=level1_gen_selected] run place template liminal:level1_tblock_nsw ~ ~ ~
execute if score @r level1_save matches 1031011 at @e[tag=level1_gen_selected] run place template liminal:level1_tblock_new ~ ~ ~
execute if score @r level1_save matches 1030111 at @e[tag=level1_gen_selected] run place template liminal:level1_tblock_sew ~ ~ ~
execute if score @r level1_save matches 104 at @e[tag=level1_gen_selected] run place template liminal:level1_nsew ~ ~ ~
# execute if score @r level1_save matches 11 at @e[tag=level1_gen_selected] run place template liminal:level1_nsew ~ ~ ~
# Finishing everything up
scoreboard players set @a RNG_l1_max 16
scoreboard players set @a level1_+Xcheck 0
scoreboard players set @a level1_-Xcheck 0
scoreboard players set @a level1_+Zcheck 0
scoreboard players set @a level1_-Zcheck 0
scoreboard players set @a level1_save 0
execute if entity @e[tag=level1_gen_selected] run tag @e[tag=level1_gen_selected] remove level1_gen_selected