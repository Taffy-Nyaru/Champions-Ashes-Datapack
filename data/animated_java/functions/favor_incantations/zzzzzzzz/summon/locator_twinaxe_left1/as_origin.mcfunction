summon minecraft:marker ~ ~ ~ {Tags:["aj.favor_incantations.locator","aj.favor_incantations.locator.twinaxe_left1","aj.new"],CustomName:"[{\"text\":\"[\",\"color\":\"gray\"},{\"text\":\"AJ\",\"color\":\"aqua\"},\"] \",[\"\",{\"text\":\"favor_incantations\",\"color\":\"light_purple\"},\".\",{\"text\":\"locatorEntity\",\"color\":\"white\"},\"[\",{\"text\":\"twinaxe_left1\",\"color\":\"yellow\"},\"]\"]]"}
execute as @e[type=minecraft:marker,tag=aj.favor_incantations.locator.twinaxe_left1,tag=aj.new,limit=1,distance=..1] run function animated_java:favor_incantations/zzzzzzzz/summon/locator_twinaxe_left1/as_entity
data modify entity @s Owner set from storage animated_java Owner
data remove storage animated_java Owner