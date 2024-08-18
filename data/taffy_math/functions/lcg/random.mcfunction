#LCG random
execute store result score random math_temp run time query gametime
scoreboard players operation random math_temp *= a math_const
scoreboard players operation random math_temp += c math_const
scoreboard players add rand_taffy_timer taffy_timer 1
execute if score rand_taffy_timer taffy_timer matches 20.. store result score rand_output math_output run scoreboard players get random math_temp
execute if score rand_taffy_timer taffy_timer matches 20.. run scoreboard players operation rand_output math_output %= m math_const

#Boss random
scoreboard players operation random math_temp *= weapon_z_2 math_const
scoreboard players operation random math_temp += weapon_z_1 math_const
execute if score rand_taffy_timer taffy_timer matches 20.. store result score weapon_inventory math_output run scoreboard players get random math_temp
execute if score rand_taffy_timer taffy_timer matches 20.. run scoreboard players operation weapon_inventory math_output %= weapon_m math_const
execute if score rand_taffy_timer taffy_timer matches 20.. run scoreboard players operation weapon_inventory math_output -= weapon_2m2 math_const

scoreboard players operation random math_temp *= change_weapon_z_2 math_const
scoreboard players operation random math_temp += change_weapon_z_1 math_const
execute if score rand_taffy_timer taffy_timer matches 20.. store result score change_weapon_inventory math_output run scoreboard players get random math_temp
execute if score rand_taffy_timer taffy_timer matches 20.. run scoreboard players operation change_weapon_inventory math_output %= change_weapon_m math_const
execute if score rand_taffy_timer taffy_timer matches 20.. run scoreboard players operation change_weapon_inventory math_output -= change_weapon_2m2 math_const

scoreboard players operation random math_temp *= parry_z_2 math_const
scoreboard players operation random math_temp += parry_z_1 math_const
execute if score rand_taffy_timer taffy_timer matches 20.. store result score parry_random math_output run scoreboard players get random math_temp
execute if score rand_taffy_timer taffy_timer matches 20.. run scoreboard players operation parry_random math_output %= parry_m math_const
execute if score rand_taffy_timer taffy_timer matches 20.. run scoreboard players operation parry_random math_output -= parry_2m2 math_const

execute if score rand_taffy_timer taffy_timer matches 20.. run scoreboard players set rand_taffy_timer taffy_timer 0