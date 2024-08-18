gamemode spectator
execute if entity @s[predicate=championsashes:using_item/ringed_knight_paired_greatsword] run ride @s mount @e[tag=player_camera,limit=1,sort=nearest]
execute if entity @s[predicate=championsashes:using_item/greatsword] run ride @s mount @e[tag=player_camera,limit=1,sort=nearest]
execute if entity @s[predicate=championsashes:using_item/moonveil] run ride @s mount @e[tag=player_camera,limit=1,sort=nearest]
execute if entity @s[predicate=championsashes:using_item/meteorite_staff,tag=starscaller_user] run ride @s mount @e[tag=player_camera,limit=1,sort=nearest]
execute if entity @s[predicate=championsashes:using_item/meteorite_staff,tag=gravity_soul_stream_user] run ride @s mount @e[tag=player_camera,limit=1,sort=nearest]