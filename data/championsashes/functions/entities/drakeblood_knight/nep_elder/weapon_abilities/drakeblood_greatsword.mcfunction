loot replace entity @s weapon.mainhand loot championsashes:armor/tools/drakeblood_greatsword
tag @s add loop_lightning_bolt
tag @s add used_drakeblood_skill
tag @s[tag=!nep_drakeblood_greatsword] add nep_drakeblood_greatsword
tag @s[tag=nep_ringed_knight_straight_sword] remove nep_ringed_knight_straight_sword
tag @s[tag=nep_black_knight_greataxe] remove nep_black_knight_greataxe
execute as @e[tag=aj.ancient_lightning_strike.root] run function animated_java:ancient_lightning_strike/animations/ancient_lightning_strike/play