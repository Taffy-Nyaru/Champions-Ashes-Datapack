tag @s[tag=animated_got_gamemode] remove animated_got_gamemode
execute store result score @s gamemode run data get entity @s playerGameType

function animated_java:favor_incantations/summon
kill @e[tag=aj.favor_incantations.locator.blackhole0,limit=1,sort=nearest]
kill @e[tag=aj.favor_incantations.locator.blackhole1,limit=1,sort=nearest]
kill @e[tag=aj.favor_incantations.locator.blackhole2,limit=1,sort=nearest]
kill @e[tag=aj.favor_incantations.locator.blackhole3,limit=1,sort=nearest]
kill @e[tag=aj.favor_incantations.locator.twinaxe_right0,limit=1,sort=nearest]
kill @e[tag=aj.favor_incantations.locator.twinaxe_right1,limit=1,sort=nearest]
kill @e[tag=aj.favor_incantations.locator.twinaxe_left0,limit=1,sort=nearest]
kill @e[tag=aj.favor_incantations.locator.twinaxe_left1,limit=1,sort=nearest]
kill @e[tag=aj.favor_incantations.locator.twinaxe_left0,limit=1,sort=nearest]
kill @e[tag=aj.favor_incantations.locator.messermers_orb,limit=1,sort=nearest]
execute as @e[tag=aj.favor_incantations.root,limit=1,sort=nearest] run function animated_java:favor_incantations/animations/knight_lightning_spear/play
tag @s add riding_display
tag @s add favor_incantations_user
tag @s remove remove_spacebar
execute as @s[gamemode=survival] run function championsashes:items/item_durability