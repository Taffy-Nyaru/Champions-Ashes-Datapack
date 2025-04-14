tag @s add anchor_skill2
effect give @s resistance 114514 3
effect give @s regeneration 114514 5
effect give @s dolphins_grace 114514 9
effect give @s water_breathing 114514 1
attribute @s minecraft:generic.max_health modifier add c4a21ec2-2dc0-447c-955a-15fa6fe0bd8e max_health 0.6 multiply_base
attribute @s minecraft:generic.attack_damage modifier add c9a21ec2-2dc0-447c-955a-15fa6fe0bd7e damage 1.6 multiply_base
function animated_java:water_vfx/summon

item replace entity @s weapon.mainhand from entity @s weapon.offhand
item replace entity @s weapon.offhand with air