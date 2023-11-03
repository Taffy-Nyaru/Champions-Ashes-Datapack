#CMD 1440012
#CMD 1390044
advancement grant @s[advancements={ldmc:func/ldmc=false}] only ldmc:func/ldmc

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
#execute as @s run function ldmc:summon_interaction
execute as @s run function ldmc:multinteraction

#Medals
execute if score @s usedAnvil matches 1.. if data storage ldmc:player_data {Inventory:[{tag:{}}]} as @s run function ldmc:check/anvil
execute if score @s usedmedal matches 1.. if data storage ldmc:player_data {SelectedItem:{tag:{}}} as @s run function ldmc:check/medal
execute if data storage ldmc:player_data {Head:{tag:{id:"ldmc:vampire_hat"}}} as @s run function ldmc:items/vampire_hat/effects
execute if data storage ldmc:player_data {Inventory:[{tag:{id:"ldmc:vampire_hat"}}]} run advancement grant @s[advancements={ldmc:func/vampire_hat=false}] only ldmc:func/vampire_hat

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
execute at @s as @e[type=item,distance=..100] at @s if entity @e[tag=Thunder,distance=..5] run data modify entity @s Health set value 100f
execute at @s as @e[type=experience_orb,distance=..100] at @s if entity @e[tag=Thunder,distance=..5] run data modify entity @s Health set value 100f
execute if entity @e[tag=head_projectile] as @s[tag=shot] run function ldmc:projectiles/dragon_bomb/dragon_head

#Untouchable
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:holy_bible"}}} run function ldmc:items/holy_bible/bible

#Witherite Armor
execute as @s[nbt={Inventory:[{Slot:103b,tag:{id:"ldmc:witherite_helmet"}}]}] run function ldmc:items/armor/witherite_helmet
execute as @s[nbt={Inventory:[{Slot:102b,tag:{id:"ldmc:witherite_chestplate"}}]}] run function ldmc:items/armor/witherite_chestplate
execute as @s[nbt={Inventory:[{Slot:101b,tag:{id:"ldmc:witherite_leggings"}}]}] run function ldmc:items/armor/witherite_leggings
execute as @s[nbt={Inventory:[{Slot:100b,tag:{id:"ldmc:witherite_boots"}}]}] run function ldmc:items/armor/witherite_boots
execute if entity @s[nbt={Inventory:[{tag:{id:"ldmc:witherite_helmet"}},{tag:{id:"ldmc:witherite_chestplate"}},{tag:{id:"ldmc:witherite_leggings"}},{tag:{id:"ldmc:witherite_boots"}}]}] run advancement grant @s[advancements={ldmc:func/wither_armor=false}] only ldmc:func/wither_armor

#Eternal Crystal
execute if data storage ldmc:player_data {Inventory:[{tag:{id:"ldmc:eternal_crystal"}}]} run advancement grant @s[advancements={ldmc:func/eternal_crystal=false}] only ldmc:func/eternal_crystal
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:eternal_crystal"}}} as @s run function ldmc:items/eternal_crystal/eternal_crystal

#Bomber
execute if data storage ldmc:player_data {Inventory:[{tag:{id:"ldmc:gtx690"}}]} run advancement grant @s[advancements={ldmc:func/gtx690=false}] only ldmc:func/gtx690
execute as @s[nbt={Inventory:[{Slot:102b,tag:{id:"ldmc:bomber"}}]}] run function ldmc:items/bomber/bomber
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:gtx690"}}} as @s run function ldmc:items/bomber/gtx690
execute unless entity @e[tag=bomb] as @s if score @s shift matches 1.. at @s if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:gtx690"}}} run function ldmc:items/bomber/bomb
execute as @s unless score @s shift matches 1.. if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:gtx690"}}} run tag @s remove needclicker
execute as @e[tag=bomb,nbt={OnGround:1b}] at @s run function ldmc:items/bomber/explode

#Shadow Pearl
execute if data storage ldmc:player_data {Inventory:[{tag:{id:"ldmc:shadow_pearl"}}]} run advancement grant @s[advancements={ldmc:func/shadow_pearl=false}] only ldmc:func/shadow_pearl
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:shadow_pearl"}}} as @s if score @s usedmedal matches 1.. if score @s shift matches 1.. run function ldmc:items/shadow_pearl/close_undead
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:shadow_pearl",CustomModelData:1390015,Damage:0}}} as @s if score @s usedmedal matches 1.. unless score @s shift matches 1.. run function ldmc:items/shadow_pearl/shadow_pearl1
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:shadow_pearl",CustomModelData:1390016,Damage:25}}} as @s if score @s usedmedal matches 1.. unless score @s shift matches 1.. run function ldmc:items/shadow_pearl/shadow_pearl2
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:shadow_pearl",CustomModelData:1390017,Damage:50}}} as @s if score @s usedmedal matches 1.. unless score @s shift matches 1.. run function ldmc:items/shadow_pearl/shadow_pearl3
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:shadow_pearl",CustomModelData:1390018,Damage:75}}} as @s if score @s usedmedal matches 1.. unless score @s shift matches 1.. run function ldmc:items/shadow_pearl/shadow_pearl4
execute as @s run function ldmc:items/shadow_pearl/recursion
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"ldmc:void_totem"}}]}] run function ldmc:items/shadow_pearl/void_totem

#Ender Ring
execute if data storage ldmc:player_data {Inventory:[{tag:{id:"ldmc:ender_ring"}}]} run advancement grant @s[advancements={ldmc:func/ender_ring=false}] only ldmc:func/ender_ring
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:ender_ring"}}} as @s run function ldmc:items/ender_ring/ender_ring
execute as @a[tag=remote_gateway] if score rand_output math_output matches 99999.. run function ldmc:items/ender_ring/teleport
execute unless entity @s[nbt={SelectedItem:{tag:{id:"ldmc:ender_ring"}}}] run tag @s remove omen_king
function ldmc:entities/night_cavalry/powers

#DragonSlayer Great bow
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:dragonslayer_greatbow"}}} as @s at @s if score @s usedBow matches 1.. run function ldmc:items/dragonslayer_greatbow/dragonslayer_greatbow
execute as @s[tag=loop_start] at @s positioned ^ ^1 ^2 if score @s arrow_rain.temp matches 1.. run function ldmc:items/dragonslayer_greatbow/loop_summon_arrow
execute if score @s arrow_rain.temp matches 0 run tag @s remove loop_start
execute if score @s[tag=!loop_start] arrow_rain.temp matches 0 run scoreboard players set @s[tag=!loop_start] arrow_rain.temp 12
execute as @s at @s run function ldmc:items/dragonslayer_greatbow/golem_arrow

#Arbalest
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:arbalest"}}} as @s at @s if score @s usedCrossbow matches 1.. run function ldmc:items/dragonslayer_greatbow/arbalest/arbalest
execute as @s at @s run function ldmc:items/dragonslayer_greatbow/arbalest/lightning_arrow
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{id:"ldmc:dragonslayer_greatbow"}}]}] if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:arbalest"}}} at @s run function ldmc:items/dragonslayer_greatbow/glitch

#Steel Tools
execute as @s run function ldmc:items/steel_tools

#Nightrider Glaive
execute if data storage ldmc:player_data {Inventory:[{tag:{id:"ldmc:night_cavalry_halberd"}}]} run advancement grant @s[advancements={ldmc:func/nightrider_glaive=false}] only ldmc:func/nightrider_glaive
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:night_cavalry_halberd"}}} at @s[advancements={ldmc:hurt_entities=true}] run scoreboard players add @e[nbt={HurtTime:10s},tag=raycast.target,distance=..5] frostbite_Timer 720
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:night_cavalry_halberd"}}} if score @s shift matches 1.. run function ldmc:items/nightrider_glaive/magicblade_phanalax
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:night_cavalry_halberd"}}} if score @s damage matches ..-1 run item replace entity @s weapon.mainhand with air
execute if score @s damage matches 2031.. run scoreboard players set @s damage -1
execute if score @s damage matches ..-1 run scoreboard players set @s damage 1
execute as @s unless score @s shift matches 1.. if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:night_cavalry_halberd"}}} run tag @s remove needclicker

#Drakeblood Greatsword
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:drakeblood_greatsword"}}} at @s[advancements={ldmc:hurt_entities=true}] run scoreboard players add @e[nbt={HurtTime:10s},tag=raycast.target,distance=..5] bleeding_Timer 320

#Soul of Elder
execute if data storage ldmc:player_data {Inventory:[{tag:{id:"ldmc:soul_of_nep"}}]} run advancement grant @s[advancements={ldmc:func/elder=false}] only ldmc:func/elder
execute if data storage ldmc:player_data {SelectedItem:{tag:{id:"ldmc:soul_of_nep"}}} if score @s usedmedal matches 1.. run function ldmc:items/soul_of_elder/spectator
execute as @s[tag=spectator] run function ldmc:items/soul_of_elder/noumenon
execute as @s[tag=spectator,gamemode=!spectator] run tag @s remove spectator

#Blocks
function ldmc:blocks/block

#Effects
execute as @e[scores={bleeding_Timer=1..}] at @s run function ldmc:effects/bleeding/bleed
execute as @e[scores={frostbite_Timer=0}] run tag @s remove blood_loss
execute as @e[scores={frostbite_Timer=1..}] at @s run function ldmc:effects/frostbite/frostbite
execute as @e[scores={frostbite_Timer=0}] run tag @s remove frostburst

#Phanalax
execute as @s[tag=with_phanalax] run function ldmc:projectiles/phanalax/phanalax
execute as @e[tag=phanalax0] run function ldmc:projectiles/phanalax/rotation
execute as @e[tag=phanalax1] run function ldmc:projectiles/phanalax/rotation
execute as @e[tag=phanalax2] run function ldmc:projectiles/phanalax/rotation

execute if score @s usedAnvil matches 1.. run scoreboard players set @s usedAnvil 0
execute if score @s usedmedal matches 1.. run scoreboard players set @s usedmedal 0
execute if score @s usedTotem matches 1.. run scoreboard players set @s usedTotem 0
execute if score @s usedBow matches 1.. run scoreboard players set @s usedBow 0

data modify storage ldmc:player_data SelectedItem set value {}
data modify storage ldmc:player_data Inventory set value {}
execute as @s[advancements={ldmc:hurt_entities=true}] run advancement revoke @s only ldmc:hurt_entities