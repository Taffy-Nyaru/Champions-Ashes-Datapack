execute if entity @a[distance=..10] at @s run loot spawn ~ ~ ~ loot championsashes:items/alumopper
setblock ~ ~ ~ air replace
kill @e[type=item,sort=nearest,nbt={Item:{id:"minecraft:end_rod",}},nbt=!{Item:{tag:{id:"championsashes:alumopper"}}},limit=1,distance=..5]
kill @e[tag=fumo_clicker,limit=1,distance=..0.2]
function animated_java:alumopper/remove/this