execute at @e[tag=aj.favor_incantations.locator,tag=!player_camera] as @e[distance=..8,type=!#championsashes:special_entities,tag=!messemers_orb_user] run damage @s 10 minecraft:explosion by @a[limit=1,sort=nearest]
summon creeper ~ ~ ~ {UUID:[I;8,9,6,44],Tags:["bomb"],Fuse:0,ExplosionRadius:5b}
