summon minecraft:marker ~ ~ ~ {Tags:["aj.chainsaw.locator","aj.chainsaw.locator.shunter29","aj.new"],CustomName:"[{\"text\":\"[\",\"color\":\"gray\"},{\"text\":\"AJ\",\"color\":\"aqua\"},\"] \",[\"\",{\"text\":\"chainsaw\",\"color\":\"light_purple\"},\".\",{\"text\":\"locatorEntity\",\"color\":\"white\"},\"[\",{\"text\":\"shunter29\",\"color\":\"yellow\"},\"]\"]]"}
execute as @e[type=minecraft:marker,tag=aj.chainsaw.locator.shunter29,tag=aj.new,limit=1,distance=..1] run function animated_java:chainsaw/zzzzzzzz/summon/locator_shunter29/as_entity
data modify entity @s Owner set from storage animated_java Owner
data remove storage animated_java Owner