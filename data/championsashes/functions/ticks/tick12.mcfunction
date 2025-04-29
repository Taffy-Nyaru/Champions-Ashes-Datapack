#Initialize Entity Params
execute as @e[type=!#championsashes:special_entities,distance=..20,tag=!got_max_health] run function championsashes:items/zweihander/black_blade/got_max_health

execute as @e[scores={onFire=1..},type=!#championsashes:special_entities,distance=..15] store result score @s onFire run data get entity @s Fire 1

#Special Advancments
execute as @s[advancements={championsashes:estus_flask/estus_cancel=true}] run advancement revoke @s only championsashes:estus_flask/estus_cancel
execute as @s[advancements={championsashes:estus_flask/used_estus_flask=true}] run advancement revoke @s only championsashes:estus_flask/used_estus_flask
execute as @s[advancements={championsashes:hurt_players=true}] run advancement revoke @s only championsashes:hurt_players

scoreboard players set #12ticks ca.tick12_schedule 0