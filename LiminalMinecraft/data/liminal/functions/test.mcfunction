execute at @a run summon armor_stand ~ ~5 ~ {Tags:["test"],Invisible:false,Invulnerable:true,NoGravity:true}
execute at @a if entity @e[dy=5,tag=test] run tellraw @a {"text":"yep"}
kill @e[tag=test]

This summons an armor stand, checks if it is there and then deletes it:
The output was yep so it recognized it was there.