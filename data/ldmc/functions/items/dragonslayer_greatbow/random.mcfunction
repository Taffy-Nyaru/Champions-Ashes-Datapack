scoreboard players operation random math_temp *= x_2 math_const
scoreboard players operation random math_temp += x_1 math_const
execute store result score rand_output_x math_output run scoreboard players get random math_temp
scoreboard players operation rand_output_x math_output %= m_1 math_const
scoreboard players operation rand_output_x math_output -= 2m_1 math_const

scoreboard players operation random math_temp *= z_2 math_const
scoreboard players operation random math_temp += z_1 math_const
execute store result score rand_output_z math_output run scoreboard players get random math_temp
scoreboard players operation rand_output_z math_output %= m_2 math_const
scoreboard players operation rand_output_z math_output -= 2m_2 math_const