scoreboard players set #anchorSkill3 championsashes_Timer 0
effect clear @s[tag=noanchorProtect] regeneration
effect clear @s[tag=noanchorProtect] resistance
effect clear @s[tag=!anchor_skill2] dolphins_grace
effect clear @s[tag=!anchor_skill2] water_breathing
effect clear @s[tag=!anchor_skill2] fire_resistance
attribute @s minecraft:generic.attack_damage modifier remove c9a21ec2-2dc0-447c-955a-15fa6fe0bd60
attribute @s minecraft:generic.max_health modifier remove c4a21ec2-2dc0-447c-955a-15fa6fe0bd6e
attribute @s minecraft:generic.max_health modifier remove c4a21ec2-2dc0-447c-955a-15fa6fe0bd8e
attribute @s minecraft:generic.attack_damage modifier remove c9a21ec2-2dc0-447c-955a-15fa6fe0bd7e
tag @s[tag=anchor_skill1] remove anchor_skill1
execute as @e[limit=1,sort=nearest,tag=aj.water_vfx.root,type=item_display] at @s unless entity @p[tag=anchor_skill2,distance=..70] unless entity @p[tag=anchor_skill3,distance=..70] run function animated_java:water_vfx/remove/this
tag @s[tag=anchor_skill2] remove anchor_skill2
tag @s[tag=anchor_skill3] remove anchor_skill3
tag @s[tag=noanchorProtect] remove noanchorProtect
tag @s[tag=skill3_anchor_hit] remove skill3_anchor_hit