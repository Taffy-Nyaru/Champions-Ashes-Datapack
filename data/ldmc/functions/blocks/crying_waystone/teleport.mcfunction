teleport 5f1775a7-0c39-4e17-b666-e0d795300563 @s
execute store result entity 5f1775a7-0c39-4e17-b666-e0d795300563 Pos[0] double 1 run scoreboard players get @s lode.pos.x
execute store result entity 5f1775a7-0c39-4e17-b666-e0d795300563 Pos[1] double 1 run scoreboard players get @s lode.pos.y
execute store result entity 5f1775a7-0c39-4e17-b666-e0d795300563 Pos[2] double 1 run scoreboard players get @s lode.pos.z
teleport @s[tag=teleport] 5f1775a7-0c39-4e17-b666-e0d795300563
teleport 5f1775a7-0c39-4e17-b666-e0d795300563 @s