setblock ~ ~ ~ end_rod
execute positioned ~ ~-0.5 ~ run function animated_java:alumopper/summon
summon interaction ~ ~-0.5 ~ {Tags:["fumo_clicker"],response:1b}
item replace entity @s weapon.mainhand with air