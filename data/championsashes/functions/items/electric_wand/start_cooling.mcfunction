function animated_java:electric_beacon/remove/all
tag @s remove electric_wand_skill
tag @s[gamemode=!creative] add electric_beacon_skill_cooling
scoreboard players set @s ca.players.electric_beacon_timer 0