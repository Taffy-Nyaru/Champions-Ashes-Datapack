#CMD 1440012
#CMD 1390065
advancement grant @s[advancements={ldmc:func/ldmc=false}] only ldmc:func/ldmc
execute store result score @s damage run data get entity @s SelectedItem.tag.Damage
execute store result score @s xpLevel run data get entity @s XpLevel

#define storage ldmc:player_data
#define storage generic:main
#define storage math:io
data modify storage ldmc:player_data Inventory set from entity @s Inventory
data modify storage ldmc:player_data SelectedItem set from entity @s SelectedItem
execute store result score @s falldistance run data get entity @s FallDistance

#Dimension of each player
execute store success score @s dimension_changed run data modify storage ldmc:player_data now_dimension set from entity @s Dimension
execute if score @s dimension_changed matches 1 as @s[tag=!buffer.temp] run tag @s add buffer.temp
execute as @s[tag=buffer.temp] run scoreboard players add @s buffer.temp 1
execute as @s[tag=buffer.temp,scores={buffer.temp=20..}] run function ldmc:dimension_switch
execute as @s[tag=buffer.temp,scores={buffer.temp=20..}] run tag @s remove buffer.temp
execute as @s[scores={buffer.temp=20..}] run scoreboard players set @s buffer.temp 0

#execute unless entity @s[nbt={SelectedItem:[{}]}] run scoreboard players set #custom_model_data ldmcValue 0
#execute unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run scoreboard players set #left_custom_model_data ldmcValue 0
#execute unless data entity @s SelectedItem run data modify storage ldmc:player_data SelectedItem set value []
#execute unless data entity @s Inventory run data modify storage ldmc:player_data Inventory set value []
#execute unless data entity @s Inventory[{Slot:103b}] run data modify storage ldmc:player_data Head set value []

execute if entity @s[predicate=!ldmc:noninteraction_rclick] run function ldmc:items/not_using
execute as @s store result score @s Y_value run data get entity @s Pos[1]

#Multiplayer rclick
execute as @s run function ldmc:item_thrower
execute as @s run function ldmc:multinteraction
execute if data storage ldmc:player_data {Inventory:[{tag:{id:"ldmc:steel_ingot"}}]} run advancement grant @s[advancements={ldmc:func/steel_ingot=false}] only ldmc:func/steel_ingot

#Medals
execute if score @s usedAnvil matches 1.. if data storage ldmc:player_data {Inventory:[{tag:{}}]} as @s run function ldmc:check/anvil
execute if score @s usedmedal matches 1.. if data storage ldmc:player_data {SelectedItem:{tag:{}}} as @s run function ldmc:check/medal
execute if data storage ldmc:player_data {Head:{tag:{id:"ldmc:vampire_hat"}}} as @s run function ldmc:items/vampire_hat/effects
execute if data storage ldmc:player_data {Inventory:[{tag:{id:"ldmc:vampire_hat"}}]} run advancement grant @s[advancements={ldmc:func/vampire_hat=false}] only ldmc:func/vampire_hat

#Ringed Knight Straight Sword
execute if data storage ldmc:player_data {Inventory:[{tag:{id:"ldmc:ringed_knight_straight_sword"}}]} run advancement grant @s[advancements={ldmc:func/rkss=false}] only ldmc:func/rkss
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:ringed_knight_straight_sword"}}} run function ldmc:items/ringed_knight_straight_sword/rkss
#execute unless score @s shift matches 1.. if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:ringed_knight_straight_sword"}}} run tag @s remove needclicker
execute as @s[tag=cancel] run function ldmc:items/ringed_knight_straight_sword/cancel

#Enchanted Berries
execute at @s if score @s ateberries matches 1.. if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:enchanted_berries"}}} as @s run function ldmc:medal/enchanted_berries

#Heart of Echo
execute if data storage ldmc:player_data {Inventory:[{tag:{id:"ldmc:sonic_boom_shard"}}]} run advancement grant @s[advancements={ldmc:func/get_echo_heart=false}] only ldmc:func/get_echo_heart
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:sonic_boom_shard"}}} as @s run function ldmc:items/sonic_boom_shard/shard

#Digestive Juice
execute as @e[type=potion,nbt={Item:{tag:{Potion:"minecraft:water"}}}] at @s if block ~ ~-1 ~ minecraft:mycelium run function ldmc:items/digestive_juice
execute as @e[type=item,nbt={Item:{tag:{Potion:"minecraft:water"}}}] at @s if block ~ ~-1 ~ minecraft:mycelium run function ldmc:items/digestive_juice

#Zweihander
execute if data storage ldmc:player_data {Inventory:[{tag:{id:"ldmc:zweihander"}}]} run advancement grant @s[advancements={ldmc:func/zwei=false}] only ldmc:func/zwei
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:zweihander"}}} as @s run function ldmc:items/zweihander/zweihander
execute if entity @e[tag=head_projectile] as @s[tag=shot] run function ldmc:projectiles/dragon_bomb/dragon_head

#Black Blade
execute if data storage ldmc:player_data {Inventory:[{tag:{id:"ldmc:black_blade"}}]} run advancement grant @s[advancements={ldmc:func/black_blade=false}] only ldmc:func/black_blade
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:black_blade"}}} as @s run function ldmc:items/zweihander/black_blade/black_blade

#CT
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:cheat_engine"}}} run function ldmc:items/cheat_engine/cheat_engine
execute unless data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:cheat_engine"}}} as @s[tag=!got_gamemode] run function ldmc:items/cheat_engine/get_gamemode
execute as @e[type=snowball,nbt={Item:{tag:{id:"ldmc:thunder_knife"}}}] at @s run function ldmc:items/cheat_engine/thunder_knife

#Witherite Armor
execute if data storage ldmc:player_data {Inventory:[{Slot:103b,tag:{id:"ldmc:witherite_helmet"}}]} run function ldmc:items/armor/witherite_helmet
execute if data storage ldmc:player_data {Inventory:[{Slot:102b,tag:{id:"ldmc:witherite_chestplate"}}]} run function ldmc:items/armor/witherite_chestplate
execute if data storage ldmc:player_data {Inventory:[{Slot:101b,tag:{id:"ldmc:witherite_leggings"}}]} run function ldmc:items/armor/witherite_leggings
execute if data storage ldmc:player_data {Inventory:[{Slot:100b,tag:{id:"ldmc:witherite_boots"}}]} run function ldmc:items/armor/witherite_boots
execute if entity @s[predicate=ldmc:using_item/witherite_armor_advancement] run advancement grant @s[advancements={ldmc:func/wither_armor=false}] only ldmc:func/wither_armor

#Eternal Crystal
execute if data storage ldmc:player_data {Inventory:[{tag:{id:"ldmc:eternal_crystal"}}]} run advancement grant @s[advancements={ldmc:func/eternal_crystal=false}] only ldmc:func/eternal_crystal
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:eternal_crystal"}}} as @s run function ldmc:items/eternal_crystal/eternal_crystal
execute if data storage ldmc:player_data {Inventory:[{Slot:-106b,tag:{id:"ldmc:eternal_crystal"}}]} run function ldmc:items/eternal_crystal/eternal_crystal

#Bomber
execute if data storage ldmc:player_data {Inventory:[{tag:{id:"ldmc:gtx690"}}]} run advancement grant @s[advancements={ldmc:func/gtx690=false}] only ldmc:func/gtx690
execute if data storage ldmc:player_data {Inventory:[{Slot:102b,tag:{id:"ldmc:bomber"}}]} run function ldmc:items/bomber/bomber
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:gtx690"}}} as @s run function ldmc:items/bomber/gtx690
execute unless entity @e[tag=bomb] as @s if score @s shift matches 1.. at @s if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:gtx690"}}} run function ldmc:items/bomber/bomb
execute as @s unless score @s shift matches 1.. if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:gtx690"}}} run tag @s remove needclicker
execute as @e[tag=bomb,nbt={OnGround:1b}] at @s run function ldmc:items/bomber/explode

#Shadow Pearl
execute if data storage ldmc:player_data {Inventory:[{tag:{id:"ldmc:shadow_pearl"}}]} run advancement grant @s[advancements={ldmc:func/shadow_pearl=false}] only ldmc:func/shadow_pearl
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:shadow_pearl"}}} as @s if score @s usedmedal matches 1.. if score @s shift matches 1.. run function ldmc:items/shadow_pearl/close_undead
execute unless data storage ldmc:player_data {Inventory:[{Slot:-106b,tag:{id:"ldmc:void_totem"}}]} if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:shadow_pearl",CustomModelData:1390015,Damage:0}}} as @s if score @s usedmedal matches 1.. unless score @s shift matches 1.. run function ldmc:items/shadow_pearl/shadow_pearl1
execute unless data storage ldmc:player_data {Inventory:[{Slot:-106b,tag:{id:"ldmc:void_totem"}}]} if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:shadow_pearl",CustomModelData:1390016,Damage:25}}} as @s if score @s usedmedal matches 1.. unless score @s shift matches 1.. run function ldmc:items/shadow_pearl/shadow_pearl2
execute unless data storage ldmc:player_data {Inventory:[{Slot:-106b,tag:{id:"ldmc:void_totem"}}]} if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:shadow_pearl",CustomModelData:1390017,Damage:50}}} as @s if score @s usedmedal matches 1.. unless score @s shift matches 1.. run function ldmc:items/shadow_pearl/shadow_pearl3
execute unless data storage ldmc:player_data {Inventory:[{Slot:-106b,tag:{id:"ldmc:void_totem"}}]} if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:shadow_pearl",CustomModelData:1390018,Damage:75}}} as @s if score @s usedmedal matches 1.. unless score @s shift matches 1.. run function ldmc:items/shadow_pearl/shadow_pearl4
execute as @s run function ldmc:items/shadow_pearl/recursion
execute if data storage ldmc:player_data {Inventory:[{Slot:-106b,tag:{id:"ldmc:void_totem"}}]} run function ldmc:items/shadow_pearl/void_totem

#Ender Ring
execute if data storage ldmc:player_data {Inventory:[{tag:{id:"ldmc:ender_ring"}}]} run advancement grant @s[advancements={ldmc:func/ender_ring=false}] only ldmc:func/ender_ring
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:ender_ring"}}} as @s run function ldmc:items/ender_ring/ender_ring
execute as @a[tag=remote_gateway] if score rand_output math_output matches 99999.. run function ldmc:items/ender_ring/teleport
execute unless data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:ender_ring"}}} unless data storage ldmc:player_data {Inventory:[{Slot:-106b,tag:{id:"ldmc:ender_ring"}}]} run tag @s remove omen_king
function ldmc:entities/night_cavalry/powers

#DragonSlayer Great bow
execute if data storage ldmc:player_data {Inventory:[{tag:{id:"ldmc:dragonslayer_greatbow"}}]} run advancement grant @s[advancements={ldmc:func/dragonslayer_greatbow=false}] only ldmc:func/dragonslayer_greatbow
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:dragonslayer_greatbow"}}} as @s at @s if score @s usedBow matches 1.. run function ldmc:items/dragonslayer_greatbow/dragonslayer_greatbow
execute as @s[tag=loop_start] at @s positioned ^ ^2 ^2 if score @s arrow_rain.temp matches 1.. run function ldmc:items/dragonslayer_greatbow/loop_summon_arrow
execute if score @s arrow_rain.temp matches 0 run tag @s remove loop_start
execute if score @s[tag=!loop_start] arrow_rain.temp matches 0 run scoreboard players set @s[tag=!loop_start] arrow_rain.temp 12
execute as @s at @s run function ldmc:items/dragonslayer_greatbow/golem_arrow

#Arbalest
execute if data storage ldmc:player_data {Inventory:[{tag:{id:"ldmc:arbalest"}}]} run advancement grant @s[advancements={ldmc:func/arbalest=false}] only ldmc:func/arbalest
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:arbalest"}}} at @s if score @s usedCrossbow matches 1.. run function ldmc:items/dragonslayer_greatbow/arbalest/arbalest
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{id:"ldmc:arbalest"}}]}] at @s if score @s usedCrossbow matches 1.. run function ldmc:items/dragonslayer_greatbow/arbalest/arbalest
execute as @s at @s run function ldmc:items/dragonslayer_greatbow/arbalest/lightning_arrow
execute if data storage ldmc:player_data {Inventory:[{Slot:-106b,tag:{id:"ldmc:dragonslayer_greatbow"}}]} if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:arbalest"}}} at @s run function ldmc:items/dragonslayer_greatbow/glitch

#Steel Tools
execute as @s run function ldmc:items/steel_tools

#Nightrider Glaive
execute if data storage ldmc:player_data {Inventory:[{tag:{id:"ldmc:night_cavalry_halberd"}}]} run advancement grant @s[advancements={ldmc:func/nightrider_glaive=false}] only ldmc:func/nightrider_glaive
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:night_cavalry_halberd"}}} at @s[advancements={ldmc:hurt_entities=true}] run scoreboard players add @e[tag=raycast.target,type=!#ldmc:special_entities,distance=..5] frostbite_Timer 520
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:night_cavalry_halberd"}}} if score @s shift matches 1.. run function ldmc:items/nightrider_glaive/magicblade_phanalax
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:night_cavalry_halberd"}}} if score @s glaive_damage matches ..-1 run item replace entity @s weapon.mainhand with air
execute if score @s glaive_damage matches 2031.. run scoreboard players set @s glaive_damage -1
execute if score @s glaive_damage matches ..-1 run scoreboard players set @s glaive_damage 1
execute as @s unless score @s shift matches 1.. if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:night_cavalry_halberd"}}} run tag @s remove needclicker

#Drakeblood Greatsword
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:drakeblood_greatsword"}}} at @s[advancements={ldmc:hurt_entities=true}] run scoreboard players add @e[tag=raycast.target,type=!#ldmc:special_entities,distance=..5] bleeding_Timer 120

#Soul of Elder
execute if data storage ldmc:player_data {Inventory:[{tag:{id:"ldmc:soul_of_nep"}}]} run advancement grant @s[advancements={ldmc:func/elder=false}] only ldmc:func/elder
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:soul_of_nep"}}} if score @s usedmedal matches 1.. run function ldmc:items/soul_of_elder/spectator
execute as @s[tag=spectator] run function ldmc:items/soul_of_elder/noumenon
execute as @s[tag=spectator,gamemode=!spectator] run tag @s remove spectator

#Bewitching Branch
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:bewitching_branch"}}} if score @s usedmedal matches 1.. run tag @s add used_charm
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:bewitching_branch"}}} if score @s usedmedal matches 1.. store result score @s branch_playerHotbar run data get entity @s SelectedItemSlot
execute as @s[tag=used_charm] run function ldmc:items/bewitching_branch/used
execute if data storage ldmc:player_data {SelectedItem:{tag:{CustomModelData:1390062,id:"ldmc:bewitching_branch"}}} if score @s usedmedal matches 1.. at @s as @e[tag=raycast.target,team=!friendly,limit=1,distance=..6] run tag @s add charmed
execute as @e[tag=charmed] at @s run function ldmc:items/bewitching_branch/charm

#Splitleaf
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:splitleaf"}}} run function ldmc:items/splitleaf/splitleaf
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:splitleaf"}}} if score @s splitleaf_damage matches ..-1 run item replace entity @s weapon.mainhand with air
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:splitleaf"}}} if score @s splitleaf_damage matches 2031.. run scoreboard players set @s splitleaf_damage -1
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:splitleaf"}}} if score @s splitleaf_damage matches ..-1 run scoreboard players set @s splitleaf_damage 1
execute as @e[tag=splitleaf_skill] run function ldmc:items/splitleaf/rotation
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:splitleaf"}}} as @e[tag=helicopter] at @s run function ldmc:items/splitleaf/skill
execute unless data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:splitleaf"}}} at @s run kill @e[tag=splitleaf_skill,distance=..5]
execute unless data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:splitleaf"}}} run effect clear @s levitation
execute unless data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:splitleaf"}}} run tag @s[tag=helicopter] remove helicopter
execute unless score @s[tag=helicopter] shift matches 1 at @s run kill @e[tag=splitleaf_skill,distance=..5]
execute unless score @s[tag=helicopter] shift matches 1 run effect clear @s levitation
execute unless score @s[tag=helicopter] shift matches 1 run tag @s remove helicopter
execute as @e[tag=splitleaf_stiff] run function ldmc:items/splitleaf/damage

#Blocks
function ldmc:blocks/block

#Phanalax
execute as @s[tag=with_phanalax] run function ldmc:projectiles/phanalax/phanalax
execute as @e[tag=phanalax0] run function ldmc:projectiles/phanalax/rotation
execute as @e[tag=phanalax1] run function ldmc:projectiles/phanalax/rotation
execute as @e[tag=phanalax2] run function ldmc:projectiles/phanalax/rotation

#Parry
execute as @s[advancements={ldmc:parry=true},tag=!parry_used] run tag @s add parry
execute as @e[tag=parry_target] at @s unless entity @a[tag=parry,distance=..5] run tag @s remove parry_target
execute as @s[tag=parry] at @s run function ldmc:parry/parry_tick
execute as @s[advancements={ldmc:parry=false}] run tag @s remove parry_used
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:brass_shield"}}} at @s run teleport @e[tag=shield_breaker] ^ ^ ^127
execute if data storage ldmc:player_data {Inventory:[{Slot:-106b,tag:{id:"ldmc:brass_shield"}}]} at @s run teleport @e[tag=shield_breaker] ^ ^ ^127
execute unless data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:brass_shield"}}} unless data storage ldmc:player_data {Inventory:[{Slot:-106b,tag:{id:"ldmc:brass_shield"}}]} run teleport @e[tag=shield_breaker] 0 -70 0
#Black Knight Great Axe
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:black_knight_greataxe"}}} at @s if entity @e[tag=parry_success,distance=..5] run effect give @s strength 5 4
execute if data storage ldmc:player_data {Inventory:[{tag:{id:"ldmc:black_knight_greataxe"}}]} run advancement grant @s[advancements={ldmc:func/black_knight_greataxe=false}] only ldmc:func/black_knight_greataxe
execute as @s[advancements={ldmc:func/parry=false}] at @s if entity @e[tag=parry_success,distance=..5] run advancement grant @s only ldmc:func/parry

#Murky Hand Scythe
execute if data storage ldmc:player_data {Inventory:[{tag:{id:"ldmc:murky_hand_scythe"}}]} run advancement grant @s[advancements={ldmc:func/murky_hand_scythe=false}] only ldmc:func/murky_hand_scythe
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:murky_hand_scythe"}}} run function ldmc:items/murky/murky
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:murky_hand_scythe"}}} if score @s damage matches ..-1 run item replace entity @s weapon.mainhand with air
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:murky_hand_scythe"}}} if score @s damage matches 465.. run scoreboard players set @s damage -1
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:murky_hand_scythe"}}} if score @s damage matches ..-1 run scoreboard players set @s damage 1
execute as @s[tag=quickstep] at @s run function ldmc:items/murky/quickstep

#Pontiff Knight Curved Sword
execute if data storage ldmc:player_data {Inventory:[{tag:{id:"ldmc:pontiff_knight_curved_sword"}}]} run advancement grant @s[advancements={ldmc:func/pkcs=false}] only ldmc:func/pkcs
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:pontiff_knight_curved_sword"}}} run function ldmc:items/pkcs/pkcs
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:pontiff_knight_curved_sword"}}} if score @s pkcs_damage matches ..-1 run item replace entity @s weapon.mainhand with air
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:pontiff_knight_curved_sword"}}} if score @s pkcs_damage matches 465.. run scoreboard players set @s pkcs_damage -1
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:pontiff_knight_curved_sword"}}} if score @s pkcs_damage matches ..-1 run scoreboard players set @s pkcs_damage 1
execute as @e[tag=pkcs_skill] run function ldmc:items/pkcs/rotation
execute as @s[tag=using_skill] at @s run function ldmc:items/pkcs/skill

#Clear effects after death
execute as @a[scores={player_death=1..}] run scoreboard players set @s bleeding_Timer 0
execute as @a[scores={player_death=1..}] run scoreboard players set @s frostbite_Timer 0
execute as @a[scores={player_death=1..}] run scoreboard players set @s player_death 0

#Using Items
execute if score @s usedAnvil matches 1.. run scoreboard players set @s usedAnvil 0
execute if score @s usedmedal matches 1.. run scoreboard players set @s usedmedal 0
execute if score @s usedTotem matches 1.. run scoreboard players set @s usedTotem 0
execute if score @s usedBow matches 1.. run scoreboard players set @s usedBow 0
execute if score @s usedFirework matches 1.. run scoreboard players set @s usedFirework 0

#NEP
#execute unless entity @e[type=item,nbt={Item:{id:"minecraft:written_book",tag:{CustomModelData:1390005}}}] if entity @e[type=wither_skeleton,tag=nep_elder,distance=..50] run bossbar set nep_elder players @s
execute at @s unless entity @e[type=wither_skeleton,tag=nep_elder,distance=..50] run bossbar set nep_elder players
execute if entity @e[type=item,nbt={Item:{id:"minecraft:written_book",tag:{CustomModelData:1390005}}}] run function ldmc:entities/drakeblood_knight/nep_elder/killed_nep
execute as @e[type=item,nbt={Item:{id:"minecraft:written_book",tag:{CustomModelData:1390005}}}] run kill @s
#execute at @s[tag=start_fight] unless entity @e[type=wither_skeleton,tag=nep_elder,distance=..50] run tags add boss_killed
#execute at @s[tag=boss_killed] if entity @e[type=wither_skeleton,tag=nep_elder,distance=..50] run tag @s remove boss_killed
execute if data storage ldmc:player_data {SelectedItem:{tag:{resolved:1b,author:"并非NEP"}}} run loot replace entity @e[type=wither_skeleton,tag=nep_elder,tag=!hat] armor.head loot ldmc:armor/old_sorcerer_hat_nep
execute if data storage ldmc:player_data {SelectedItem:{tag:{resolved:1b,author:"并非NEP"}}} run tag @e[type=wither_skeleton,tag=nep_elder] add hat
execute if data storage ldmc:player_data {Inventory:[{Slot:-106b,tag:{resolved:1b,author:"并非NEP"}}]} run loot replace entity @e[type=wither_skeleton,tag=nep_elder,tag=!hat] armor.head loot ldmc:armor/old_sorcerer_hat_nep
execute if data storage ldmc:player_data {Inventory:[{Slot:-106b,tag:{resolved:1b,author:"并非NEP"}}]} run tag @e[type=wither_skeleton,tag=nep_elder] add hat
tag @e[tag=hat,type=wither_skeleton] remove helmet
execute unless data storage ldmc:player_data {SelectedItem:{tag:{resolved:1b,author:"并非NEP"}}} run loot replace entity @e[type=wither_skeleton,tag=nep_elder,tag=!helmet] armor.head loot ldmc:armor/drakeblood_helmet
execute unless data storage ldmc:player_data {SelectedItem:{tag:{resolved:1b,author:"并非NEP"}}} run tag @e[type=wither_skeleton,tag=nep_elder] add helmet
execute if data storage ldmc:player_data {Inventory:[{Slot:-106b,tag:{resolved:1b,author:"并非NEP"}}]} run loot replace entity @e[type=wither_skeleton,tag=nep_elder,tag=!helmet] armor.head loot ldmc:armor/drakeblood_helmet
execute if data storage ldmc:player_data {Inventory:[{Slot:-106b,tag:{resolved:1b,author:"并非NEP"}}]} run tag @e[type=wither_skeleton,tag=nep_elder] add helmet
tag @e[tag=helmet,type=wither_skeleton] remove hat
execute at @s unless entity @e[tag=nep_elder,distance=..50] run tag @s remove start_fight

#Reload Advancements
data modify storage ldmc:player_data SelectedItem set value {}
data modify storage ldmc:player_data Inventory set value {}
execute as @s[advancements={ldmc:parry=true}] run advancement revoke @s only ldmc:parry
execute as @s[advancements={ldmc:hurt_entities=true}] run advancement revoke @s only ldmc:hurt_entities
execute as @s[advancements={ldmc:hurt_players_blocked=true}] run advancement revoke @s only ldmc:hurt_players_blocked
execute as @s[advancements={ldmc:clear_effects=true}] run advancement revoke @s only ldmc:clear_effects
execute as @s[advancements={ldmc:killed_nep=true}] run advancement revoke @s only ldmc:killed_nep
#execute as @s[advancements={ldmc:func/killed_nep=false},tag=start_fight] at @s unless entity @e[type=wither_skeleton,tag=nep_elder,distance=..50] run advancement grant @s only ldmc:func/killed_nep