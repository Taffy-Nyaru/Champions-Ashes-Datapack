execute as @e[tag=void_inflict] run ride @s dismount
tag @a[limit=1,sort=nearest,tag=void_slash_user] remove void_slash_user
function animated_java:void_slash/remove/all
kill @e[tag=aj.void_slash.root]
tag @e[tag=void_inflict] remove void_inflict