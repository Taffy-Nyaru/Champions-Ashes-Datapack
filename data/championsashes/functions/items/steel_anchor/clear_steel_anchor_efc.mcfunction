effect clear @s[tag=anchorProtect] regeneration
effect clear @s[tag=anchorProtect] resistance
effect clear @s[tag=!anchor_skill2] dolphins_grace
effect clear @s[tag=!anchor_skill2] water_breathing
attribute @s minecraft:generic.attack_damage modifier remove c9a21ec2-2dc0-447c-955a-15fa6fe0bd60
attribute @s minecraft:generic.max_health modifier remove c4a21ec2-2dc0-447c-955a-15fa6fe0bd6e
attribute @s minecraft:generic.max_health modifier remove c4a21ec2-2dc0-447c-955a-15fa6fe0bd8e
attribute @s minecraft:generic.attack_damage modifier remove c9a21ec2-2dc0-447c-955a-15fa6fe0bd7e
tag @s[tag=anchorProtect] remove anchorProtect
tag @s[tag=anchor_skill1] remove anchor_skill1
function animated_java:water_vfx/remove/all
tag @s[tag=anchor_skill2] remove anchor_skill2
tag @s[tag=anchor_skill3] remove anchor_skill3
tag @s[tag=anchorProtect] remove anchorProtect
function championsashes:animated_effects/ride_off