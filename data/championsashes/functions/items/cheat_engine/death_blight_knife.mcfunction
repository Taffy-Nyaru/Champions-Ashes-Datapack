#Get owner
function championsashes:projectiles/snowball_detect/snowball_thrower
execute as 942429eb-9233-4105-a36e-8fec8f4ce862 on origin unless entity @s[tag=death_blighter] run tag @s add death_blighter

execute as @e[limit=1,sort=nearest,distance=..4,type=!#championsashes:special_entities,tag=!death_blighter] run scoreboard players set @s death_blight_Timer 7600