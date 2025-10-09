scoreboard players add #nep_ice_crystal_during_time championsashes_Timer 1
execute if score #nep_ice_crystal_during_time championsashes_Timer matches 200.. run function animated_java:ice_crystal/remove/all
execute if score #nep_ice_crystal_during_time championsashes_Timer matches 200.. run scoreboard players set #nep_ice_crystal_during_time championsashes_Timer 0