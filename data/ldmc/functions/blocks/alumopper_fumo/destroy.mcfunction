execute if entity @a[sort=nearest,distance=..10,gamemode=!creative] at @s run loot spawn ~ ~ ~ loot ldmc:items/alumopper
setblock ~ ~ ~ air replace
kill @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:end_rod",}},nbt=!{Item:{tag:{id:"ldmc:alumopper"}}},limit=1,distance=..5]
kill @e[tag=fumo_clicker,limit=1,distance=..0.2]
function animated_java:alumopper/remove/this