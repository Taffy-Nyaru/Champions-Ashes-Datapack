summon minecraft:marker ~ ~ ~ {Tags:["aj.destined_death.locator","aj.destined_death.locator.destined_death2","aj.new"],CustomName:"[{\"text\":\"[\",\"color\":\"gray\"},{\"text\":\"AJ\",\"color\":\"aqua\"},\"] \",[\"\",{\"text\":\"destined_death\",\"color\":\"light_purple\"},\".\",{\"text\":\"locatorEntity\",\"color\":\"white\"},\"[\",{\"text\":\"destined_death2\",\"color\":\"yellow\"},\"]\"]]"}
execute as @e[type=minecraft:marker,tag=aj.destined_death.locator.destined_death2,tag=aj.new,limit=1,distance=..1] run function animated_java:destined_death/zzzzzzzz/summon/locator_destined_death2/as_entity
data modify entity @s Owner set from storage animated_java Owner
data remove storage animated_java Owner