scoreboard players add @s cancel 1
execute if score @s[predicate=ldmc:using_item/ringed_knight_straight_sword] cancel matches 1.. run item modify entity @s weapon.mainhand ldmc:rkss_ignite
execute if score @s cancel matches 1.. at @s run particle flame ^-0.6 ^1 ^0.75 0 0 0 0.05 5
execute if score @s cancel matches 1.. run attribute @s generic.attack_speed base set 32767
execute if score @s cancel matches 15.. run attribute @s generic.attack_speed base set 4
execute if score @s[predicate=ldmc:using_item/ringed_knight_straight_sword] cancel matches 10.. run item modify entity @s weapon.mainhand ldmc:rkss
execute if score @s cancel matches 15.. run tag @s remove cancel
execute if score @s cancel matches 15.. run scoreboard players set @s cancel 0