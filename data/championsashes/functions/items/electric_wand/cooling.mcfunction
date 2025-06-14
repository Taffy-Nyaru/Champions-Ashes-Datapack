scoreboard players add @s ca.players.electric_beacon_cooling_timer 1
scoreboard players operation #min championsashesValue = @s ca.players.electric_beacon_cooling_timer
scoreboard players operation #min championsashesValue /= #20 championsashesValue
scoreboard players operation #sec championsashesValue = #min championsashesValue
scoreboard players operation #min championsashesValue /= #60 championsashesValue
scoreboard players operation #sec championsashesValue %= #60 championsashesValue
execute as @s[scores={ca.players.electric_beacon_cooling_timer=1..}] if score #sec championsashesValue matches 10.. run title @s actionbar [{"translate":"title.special.wand_skill_cooling","font":"minecraft:default"},{"score":{"name":"#min","objective":"championsashesValue"},"color":"gray","font":"minecraft:default"},{"text":":","font":"minecraft:default"},{"score":{"name":"#sec","objective":"championsashesValue"},"font":"minecraft:default","color":"gray"}]
execute as @s[scores={ca.players.electric_beacon_cooling_timer=1..}] if score #sec championsashesValue matches ..9 run title @s actionbar [{"translate":"title.special.wand_skill_cooling","font":"minecraft:default"},{"score":{"name":"#min","objective":"championsashesValue"},"color":"gray","font":"minecraft:default"},{"text":":","font":"minecraft:default"},{"text":"0","color":"gray","font":"minecraft:default"},{"score":{"name":"#sec","objective":"championsashesValue"},"font":"minecraft:default","color":"gray"}]
execute if score @s ca.players.electric_beacon_cooling_timer matches 700.. run title @s clear
execute if score @s ca.players.electric_beacon_cooling_timer matches 700.. run tag @s remove electric_beacon_skill_cooling
execute if score @s ca.players.electric_beacon_cooling_timer matches 700.. run scoreboard players set @s ca.players.electric_beacon_cooling_timer 0