gamerule mobGriefing false
execute at @e[type=marker,tag=nep_rkss_locator,limit=1,sort=nearest] run particle flame ~ ~ ~ 0 0 0 0.5 1000
data modify entity @e[tag=nep_elder,limit=1,sort=nearest,type=wither_skeleton] Invulnerable set value 1b
execute at @e[type=marker,tag=nep_rkss_locator,limit=1,sort=nearest] run summon creeper ~ ~ ~ {Invulnerable:1b,Tags:["bomb"],Fuse:0,powered:1b}
