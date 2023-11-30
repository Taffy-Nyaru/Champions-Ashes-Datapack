execute at @s unless entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s add needclicker
execute at @s unless entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s add needclicker

tag @s add teleport
execute store result score @s lode.pos.x run data get entity @s SelectedItem.tag.LodestonePos{}.X
execute store result score @s lode.pos.y run data get entity @s SelectedItem.tag.LodestonePos{}.Y
execute store result score @s lode.pos.z run data get entity @s SelectedItem.tag.LodestonePos{}.Z
execute if entity @e[tag=clicker,scores={rClick=1..}] at @s positioned 0 0 0 as e370442d-c2f2-4495-9ceb-50b614118d0f run function ldmc:blocks/crying_waystone/teleport
tag @s remove teleport

execute at @s if entity @e[tag=raycast.target,type=glow_item_frame,distance=..2] run tag @s remove needclicker
execute at @s if entity @e[tag=raycast.target,type=item_frame,distance=..2] run tag @s remove needclicker