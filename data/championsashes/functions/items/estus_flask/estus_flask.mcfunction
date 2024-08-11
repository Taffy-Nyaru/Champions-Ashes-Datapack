execute store result score @s itemCount run data get entity @s SelectedItem.Count
execute if entity @s[advancements={championsashes:estus_flask/used_estus_flask=true}] run effect give @s instant_health 4 2 true
execute at @s if entity @e[tag=raycast.target,type=!#championsashes:special_entities,distance=..6.5] run tag @s add estus_cancel