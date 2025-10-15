tp @s @e[tag=summon_shrine,limit=1,sort=nearest,type=marker]
execute unless entity @e[tag=summon_shrine,limit=1,sort=nearest,type=marker,distance=..60] run fill ~-1 ~ ~-1 ~1 ~2 ~4 air replace #mineable/axe
execute unless entity @e[tag=summon_shrine,limit=1,sort=nearest,type=marker,distance=..60] run fill ~-1 ~ ~-1 ~1 ~2 ~4 air replace #mineable/pickaxe
execute unless entity @e[tag=summon_shrine,limit=1,sort=nearest,type=marker,distance=..60] run fill ~-1 ~ ~-1 ~1 ~2 ~4 air replace #mineable/hoe
execute unless entity @e[tag=summon_shrine,limit=1,sort=nearest,type=marker,distance=..60] run fill ~-1 ~ ~-1 ~1 ~2 ~4 air replace #mineable/shovel