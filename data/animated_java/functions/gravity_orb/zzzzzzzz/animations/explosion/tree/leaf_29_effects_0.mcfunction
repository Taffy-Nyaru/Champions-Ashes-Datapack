summon creeper ~ ~ ~ {UUID:[I;8,9,6,44],Tags:["bomb"],Fuse:0,powered:1b,ExplosionRadius:10b}
particle explosion_emitter ~ ~ ~ 1.5 1.5 1.5 0 5 force
execute at @e[tag=aj.gravity_orb.locator] as @e[type=!#championsashes:special_entities,tag=!shot_gravity_orb,distance=..21] run damage @s 10 championsashes:cheat_engine by @a[limit=1,sort=nearest]
fill ~-12 ~-12 ~-12 ~12 ~12 ~12 air replace water
fill ~-12 ~-12 ~-12 ~12 ~12 ~12 air replace lava
