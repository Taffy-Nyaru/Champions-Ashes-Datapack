execute as @e[type=!#championsashes:special_entities,tag=gravity_impaled,limit=1,sort=nearest] run damage @s 50 magic by @a[limit=1,sort=nearest,tag=gravity_impaling_user]
summon creeper ~ ~2 ~ {UUID:[I;8,9,66,44],Tags:["bomb"],Fuse:0,ExplosionRadius:3b}
