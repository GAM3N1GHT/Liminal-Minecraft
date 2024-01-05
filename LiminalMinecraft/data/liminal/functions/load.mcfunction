tellraw @a {"text":"Liminal online"}
scoreboard objectives add enter dummy
scoreboard objectives add enter_end dummy
scoreboard objectives add Xpos dummy
scoreboard objectives add Ypos dummy
scoreboard objectives add Zpos dummy
scoreboard objectives add mod16 dummy
scoreboard players set @a mod16 16
scoreboard objectives add add8 dummy
scoreboard players set @a add8 8
scoreboard objectives add chunk_finderX dummy
scoreboard objectives add chunk_finderZ dummy
scoreboard players set @a Xpos 0
scoreboard players set @a Ypos 0
scoreboard players set @a chunk_finderX 0
scoreboard players set @a chunk_finderZ 0
scoreboard objectives add XRespawn dummy
scoreboard objectives add YRespawn dummy
scoreboard objectives add ZRespawn dummy
scoreboard players set @a XRespawn 0
scoreboard players set @a YRespawn 0
scoreboard players set @a ZRespawn 0
scoreboard players set @a enter 0
scoreboard players set @a enter_end 0
scoreboard objectives add level1_ceiling dummy
scoreboard objectives add level1-2 dummy
scoreboard objectives add level2-3 dummy
scoreboard objectives add level3_floor dummy
scoreboard players set @a level1_ceiling 6600000
scoreboard players set @a level1-2 5000000
scoreboard players set @a level2-3 3400000
scoreboard players set @a level3_floor 1800000
scoreboard objectives add level1_cangen dummy
scoreboard players set @a level1_cangen 0
scoreboard objectives add UUID dummy
execute as @a store result score @s UUID run data get entity @s UUID[0] 1
scoreboard objectives add SelectedUUID dummy
scoreboard players set @a SelectedUUID 0
scoreboard objectives add level1_totaldif dummy
scoreboard players set @a level1_totaldif 0
scoreboard objectives add level1_selectedX dummy
scoreboard objectives add level1_selectedZ dummy
scoreboard players set @a level1_selectedX 0
scoreboard players set @a level1_selectedZ 0
scoreboard objectives add multiply-1 dummy
scoreboard players set @a multiply-1 -1
scoreboard objectives add distanceCheck dummy
scoreboard players set @a distanceCheck 64
scoreboard objectives add level1_+Xcheck dummy
scoreboard objectives add level1_-Xcheck dummy
scoreboard objectives add level1_+Zcheck dummy
scoreboard objectives add level1_-Zcheck dummy
scoreboard players set @a level1_+Xcheck 0
scoreboard players set @a level1_-Xcheck 0
scoreboard players set @a level1_+Zcheck 0
scoreboard players set @a level1_-Zcheck 0
scoreboard objectives add level1_gen_array_check dummy
scoreboard players set @a level1_gen_array_check 0
scoreboard objectives add RNG_l1 dummy
scoreboard objectives add RNG_l1_max dummy
scoreboard players set @a RNG_l1 0
scoreboard players set @a RNG_l1_max 16
scoreboard objectives add level1_save dummy
scoreboard players set @a level1_save 0