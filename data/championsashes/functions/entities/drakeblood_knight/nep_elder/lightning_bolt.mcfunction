#Lightning
scoreboard players add #nep_use_lightning_strike_skill championsashes_Timer 1
execute if score #nep_use_lightning_strike_skill championsashes_Timer matches 256.. run function championsashes:entities/drakeblood_knight/nep_elder/weapon_abilities/drakeblood_greatsword_abilities
execute if score #nep_use_lightning_strike_skill championsashes_Timer matches 256.. as @e[tag=aj.ancient_lightning_strike.root,type=item_display,distance=..10] run function animated_java:ancient_lightning_strike/animations/ancient_lightning_strike/play
execute if score #nep_use_lightning_strike_skill championsashes_Timer matches 256.. run scoreboard players set #nep_use_lightning_strike_skill championsashes_Timer 0
