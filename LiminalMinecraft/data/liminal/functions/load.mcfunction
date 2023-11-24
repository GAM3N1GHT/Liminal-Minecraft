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