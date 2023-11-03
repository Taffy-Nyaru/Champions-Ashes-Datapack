#LCG random
execute store result score random math_temp run time query gametime
scoreboard players operation random math_temp *= a math_const
scoreboard players operation random math_temp += c math_const
scoreboard players add rand_timer timer 1
execute if score rand_timer timer matches 20.. run execute store result score rand_output math_output run scoreboard players get random math_temp
execute if score rand_timer timer matches 20.. run scoreboard players operation rand_output math_output %= m math_const
execute if score rand_timer timer matches 20.. run scoreboard players set rand_timer timer 0