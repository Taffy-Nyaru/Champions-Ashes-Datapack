scoreboard players add @s skill3_anchor_invtimer 1
execute if score @s skill3_anchor_invtimer matches 30.. as @s[tag=anchor_skill3] run function championsashes:animated_effects/animation_effects_handle/ride_off
execute if score @s skill3_anchor_invtimer matches 30.. run tag @s remove skill3_anchor_invTimer
execute if score @s skill3_anchor_invtimer matches 30.. run scoreboard players set @s skill3_anchor_invtimer 0