recipe take @s liminal:smix_gbf
advancement revoke @s only liminal:smix_gbf_adv
clear @s knowledge_book 1
give @s potion{custom_potion_effects:[{id:"minecraft:hunger",amplifier:50b,duration:600},{id:"minecraft:speed",amplifier:3b,duration:1200},{id:"minecraft:glowing",duration:600}],display:{Name:'{"text":"Outlandish Sewage Mixture"}',Lore:['{"text":"An attempt at an enjoyable beverage"}']},HideFlags:32,CustomPotionColor:8826684} 1
execute at @s unless dimension liminal:nowhere run give @s potion{Potion:"minecraft:water"} 1
execute at @s unless dimension liminal:nowhere run give @s glow_berries 1
execute at @s unless dimension liminal:nowhere run give @s bone_meal 1
execute at @s unless dimension liminal:nowhere run give @s tropical_fish 1