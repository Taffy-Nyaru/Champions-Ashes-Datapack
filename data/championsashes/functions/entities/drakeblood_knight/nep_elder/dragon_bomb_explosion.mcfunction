gamerule mobGriefing false
summon creeper ~ ~ ~ {UUID:[I;88,99,66,4],Tags:["dragon_bomb"],Fuse:0,powered:1b}
execute at @e[type=creeper,tag=dragon_bomb] run summon lightning_bolt ~ ~ ~ {Tags:["Thunder"]}
gamerule mobGriefing true