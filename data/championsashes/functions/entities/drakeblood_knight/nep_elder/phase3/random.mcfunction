#LCG
scoreboard players add increasing_num math_temp 1
execute store result score random math_temp run scoreboard players get increasing_num math_temp
scoreboard players operation random math_temp *= a math_const
scoreboard players operation random math_temp += c math_const

#Spreading
scoreboard players operation random math_temp *= flight_marker_x_2 math_const
scoreboard players operation random math_temp += flight_marker_x_1 math_const
execute store result score rand_output_x math_output run scoreboard players get random math_temp
scoreboard players operation rand_output_x math_output %= flight_marker_m_1 math_const
scoreboard players operation rand_output_x math_output -= 2flight_marker_m_1 math_const

scoreboard players operation random math_temp *= flight_marker_y_2 math_const
scoreboard players operation random math_temp += flight_marker_y_1 math_const
execute store result score rand_output_y math_output run scoreboard players get random math_temp
scoreboard players operation rand_output_y math_output %= flight_marker_m_2 math_const
scoreboard players operation rand_output_y math_output -= 2flight_marker_m_2 math_const

scoreboard players operation random math_temp *= flight_marker_z_2 math_const
scoreboard players operation random math_temp += flight_marker_z_1 math_const
execute store result score rand_output_z math_output run scoreboard players get random math_temp
scoreboard players operation rand_output_z math_output %= flight_marker_m_3 math_const
scoreboard players operation rand_output_z math_output -= 2flight_marker_m_3 math_const