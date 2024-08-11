tag @s add chainsaw
execute if entity @s[gamemode=survival,type=player,predicate=championsashes:using_item/serpent_hunter] run function championsashes:items/item_durability
effect give @s hunger 1 255 true
fill ^4 ^4 ^10 ^-4 ^ ^-2 air destroy
summon creeper ^ ^1 ^12 {Tags:["bomb"],Fuse:0,powered:1b,Invulnerable:1b}
summon creeper ^ ^1 ^20 {Tags:["bomb"],Fuse:0,powered:1b,Invulnerable:1b}
summon creeper ^ ^1 ^28 {Tags:["bomb"],Fuse:0,powered:1b,Invulnerable:1b}
summon creeper ^ ^1 ^36 {Tags:["bomb"],Fuse:0,powered:1b,Invulnerable:1b}
summon creeper ^ ^1 ^44 {Tags:["bomb"],Fuse:0,powered:1b,Invulnerable:1b}
summon creeper ^ ^1 ^52 {Tags:["bomb"],Fuse:0,powered:1b,Invulnerable:1b}
summon creeper ^ ^1 ^60 {Tags:["bomb"],Fuse:0,powered:1b,Invulnerable:1b}
execute positioned ^ ^ ^5 as @e[tag=!chainsaw,distance=..5] run damage @s 40 championsashes:gtx690 by @a[limit=1,sort=nearest]
item modify entity @s weapon.mainhand championsashes:remove_one_item
tag @s[tag=chainsaw] remove chainsaw