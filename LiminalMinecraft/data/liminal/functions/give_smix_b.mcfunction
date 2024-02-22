recipe take @s liminal:smix_b
advancement revoke @s only liminal:smix_b_adv
clear @s knowledge_book 1
give @s potion{custom_potion_effects:[{id:"minecraft:poison",amplifier:50b,duration:1200},{id:"minecraft:wither",amplifier:50b,duration:1200},{id:"minecraft:haste",amplifier:2b,duration:600},{id:"minecraft:speed",amplifier:3b,duration:600}],display:{Name:'{"text":"Outlandish Sewage Mixture"}',Lore:['{"text":"An attempt at an enjoyable beverage"}']},HideFlags:32,CustomPotionColor:8826684} 1
execute at @s unless dimension liminal:nowhere run give @s potion{Potion:"minecraft:water"} 1
execute at @s unless dimension liminal:nowhere run give @s bone_meal 1