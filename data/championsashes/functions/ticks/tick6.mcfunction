execute as @s[advancements={championsashes:hurt_entities=true}] run advancement revoke @s only championsashes:hurt_entities
execute as @s[advancements={championsashes:item_durability=true}] run advancement revoke @s only championsashes:item_durability
execute as @s[advancements={championsashes:enter_block=true}] run advancement revoke @s only championsashes:enter_block

#NEP
execute unless entity @e[type=wither_skeleton,tag=nep_elder,distance=..27] run bossbar set nep_elder players
execute unless entity @e[tag=nep_elder,distance=..27] run tag @s remove start_fight
execute as @s[predicate=championsashes:elytra_recipe] run recipe give @s championsashes:elytra_recipe

#Kill unnecessary interactions
function championsashes:clicker/interaction_clicker_count
#Initialize the clicker interaction's owner
function championsashes:clicker/item_thrower

scoreboard players set #6ticks ca.tick6_schedule 0