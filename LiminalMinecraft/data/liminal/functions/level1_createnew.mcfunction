execute as @e[tag=new1] at @s unless block ~17 ~ ~1 minecraft:blue_concrete run summon armor_stand ~16 ~ ~ {Tags:["level1_gen"],Invisible:false,Invulnerable:true,NoGravity:true}
execute as @e[tag=new1] at @s unless block ~-15 ~ ~1 minecraft:blue_concrete run summon armor_stand ~-16 ~ ~ {Tags:["level1_gen"],Invisible:false,Invulnerable:true,NoGravity:true}
execute as @e[tag=new1] at @s unless block ~1 ~ ~17 minecraft:blue_concrete run summon armor_stand ~ ~ ~16 {Tags:["level1_gen"],Invisible:false,Invulnerable:true,NoGravity:true}
execute as @e[tag=new1] at @s unless block ~1 ~ ~-15 minecraft:blue_concrete run summon armor_stand ~ ~ ~-16 {Tags:["level1_gen"],Invisible:false,Invulnerable:true,NoGravity:true}
kill @e[tag=new1]