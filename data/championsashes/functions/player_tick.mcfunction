#CMD 1440012
#CMD 1390107
#Reload load.json tick.json if aj is not responding
function championsashes:raycast/ray

execute at @s as @e[type=!#championsashes:special_entities,distance=..127,tag=!got_max_health] run data modify entity @s Attributes[{Name:"minecraft:generic.max_health"}].Base set from entity @s Health
execute at @s as @e[type=!#championsashes:special_entities,distance=..127,tag=!got_max_health] run tag @s add got_max_health

advancement grant @s[advancements={championsashes:func/championsashes=false}] only championsashes:func/championsashes
execute store result score @s damage run data get entity @s SelectedItem.tag.Damage
execute store result score @s xpLevel run data get entity @s XpLevel

#Save the items and xp orbs in special lightning bolts
execute at @e[type=lightning_bolt,tag=Thunder] as @e[type=item,distance=..5] run data modify entity @s Invulnerable set value 1b
execute at @e[type=lightning_bolt,tag=Thunder] as @e[type=experience_orb,distance=..5] run data modify entity @s Invulnerable set value 1b

#define storage championsashes:player_data
#define storage generic:main
#define storage math:io
data modify storage championsashes:player_data Inventory set from entity @s Inventory
data modify storage championsashes:player_data SelectedItem set from entity @s SelectedItem
execute store result score @s falldistance run data get entity @s FallDistance

#Dimension of each player
execute store success score @s dimension_changed run data modify storage championsashes:player_data now_dimension set from entity @s Dimension
execute if score @s dimension_changed matches 1 as @s[tag=!buffer.temp] run tag @s add buffer.temp
execute as @s[tag=buffer.temp] run scoreboard players add @s buffer.temp 1
execute as @s[tag=buffer.temp,scores={buffer.temp=20..}] at @s run function championsashes:dimension_switch
execute as @s[tag=buffer.temp,scores={buffer.temp=20..}] run tag @s remove buffer.temp
execute as @s[scores={buffer.temp=20..}] run scoreboard players set @s buffer.temp 0

execute as @s[tag=riding_display] at @s run function championsashes:animated_effects/ride

execute if entity @s[predicate=!championsashes:noninteraction_rclick] run function championsashes:items/not_using
execute store result score @s Y_value run data get entity @s Pos[1]

#Multiplayer rclick
function championsashes:item_thrower
function championsashes:multinteraction
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:steel_ingot"}}]} run advancement grant @s[advancements={championsashes:func/steel_ingot=false}] only championsashes:func/steel_ingot

#Medals
execute if score @s usedAnvil matches 1.. if data storage championsashes:player_data {Inventory:[{tag:{}}]} as @s run function championsashes:check/anvil
execute if score @s usedmedal matches 1.. if data storage championsashes:player_data {SelectedItem:{tag:{}}} as @s run function championsashes:check/medal
execute if data storage championsashes:player_data {Inventory:[{Slot:103b,tag:{id:"championsashes:vampire_hat"}}]} as @s run function championsashes:items/vampire_hat/effects
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:vampire_hat"}}]} run advancement grant @s[advancements={championsashes:func/vampire_hat=false}] only championsashes:func/vampire_hat

#Snowball Detect
execute if score @s usedSnowball matches 1.. if entity @e[type=snowball,predicate=championsashes:misc/shadow_vortex] run function championsashes:projectiles/snowball_detect/snowball_detect
execute if score @s usedSnowball matches 1.. if entity @e[type=snowball,predicate=championsashes:misc/thunder_knife] run function championsashes:projectiles/snowball_detect/snowball_detect
execute if score @s usedSnowball matches 1.. if entity @e[type=snowball,predicate=championsashes:misc/death_blight_knife] run function championsashes:projectiles/snowball_detect/snowball_detect
execute if score @s usedSnowball matches 1.. if entity @e[type=snowball,predicate=championsashes:misc/stalk_dung_pie] run function championsashes:projectiles/snowball_detect/snowball_detect
#Get owner
execute as @e[type=snowball,predicate=championsashes:misc/shadow_vortex] run function championsashes:projectiles/snowball_detect/snowball_thrower
execute as @e[type=snowball,predicate=championsashes:misc/thunder_knife] run function championsashes:projectiles/snowball_detect/snowball_thrower
execute as @e[type=snowball,predicate=championsashes:misc/death_blight_knife] run function championsashes:projectiles/snowball_detect/snowball_thrower
execute as @e[type=snowball,predicate=championsashes:misc/stalk_dung_pie] run function championsashes:projectiles/snowball_detect/snowball_thrower

#Ringed Knight Straight Sword
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:ringed_knight_straight_sword"}}]} run advancement grant @s[advancements={championsashes:func/rkss=false}] only championsashes:func/rkss
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:ringed_knight_straight_sword"}}} if entity @s[predicate=championsashes:using_item/black_knight_shield] run function championsashes:items/ringed_knight_straight_sword/rkss
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:ringed_knight_straight_sword"}}} unless entity @s[predicate=championsashes:using_item/black_knight_shield] run tag @s[tag=needclicker] remove needclicker

#Enchanted Berries
execute at @s if score @s ateberries matches 1.. if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:enchanted_berries"}}} as @s run function championsashes:medal/enchanted_berries

#Heart of Echo
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:sonic_boom_shard"}}]} run advancement grant @s[advancements={championsashes:func/get_echo_heart=false}] only championsashes:func/get_echo_heart
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:sonic_boom_shard"}}} as @s run function championsashes:items/sonic_boom_shard/shard

#Zweihander
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:zweihander"}}]} run advancement grant @s[advancements={championsashes:func/zwei=false}] only championsashes:func/zwei
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:zweihander"}}} as @s run function championsashes:items/zweihander/zweihander
execute if entity @e[tag=head_projectile] as @s[tag=shot] run function championsashes:projectiles/dragon_bomb/dragon_head

#Black Blade
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:black_blade"}}]} run advancement grant @s[advancements={championsashes:func/black_blade=false}] only championsashes:func/black_blade
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:black_blade"}}} as @s run function championsashes:items/zweihander/black_blade/black_blade

#CE
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:cheat_engine"}}} run function championsashes:items/cheat_engine/cheat_engine
execute unless data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:cheat_engine"}}} as @s[tag=!got_gamemode] run function championsashes:items/cheat_engine/get_gamemode
#execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:thunder_knife"}}} run tag @s[tag=!killer] add killer
execute if entity @e[predicate=championsashes:misc/thunder_knife] as @e[predicate=championsashes:misc/thunder_knife] at @s run function championsashes:items/cheat_engine/thunder_knife

#Witherite Armor
execute if data storage championsashes:player_data {Inventory:[{Slot:103b,tag:{id:"championsashes:witherite_helmet"}}]} run function championsashes:items/armor/witherite_helmet
execute if data storage championsashes:player_data {Inventory:[{Slot:102b,tag:{id:"championsashes:witherite_chestplate"}}]} run function championsashes:items/armor/witherite_chestplate
execute if data storage championsashes:player_data {Inventory:[{Slot:101b,tag:{id:"championsashes:witherite_leggings"}}]} run function championsashes:items/armor/witherite_leggings
execute if data storage championsashes:player_data {Inventory:[{Slot:100b,tag:{id:"championsashes:witherite_boots"}}]} run function championsashes:items/armor/witherite_boots

#Eternal Crystal
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:eternal_crystal"}}]} run advancement grant @s[advancements={championsashes:func/eternal_crystal=false}] only championsashes:func/eternal_crystal
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:eternal_crystal"}}} run function championsashes:items/eternal_crystal/eternal_crystal
execute if data storage championsashes:player_data {Inventory:[{Slot:-106b,tag:{id:"championsashes:eternal_crystal"}}]} run function championsashes:items/eternal_crystal/eternal_crystal

#Bomber
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:gtx690"}}]} run advancement grant @s[advancements={championsashes:func/gtx690=false}] only championsashes:func/gtx690
execute if data storage championsashes:player_data {Inventory:[{Slot:102b,tag:{id:"championsashes:bomber"}}]} run function championsashes:items/bomber/bomber
execute if entity @s[tag=disableFallDamage] run function championsashes:items/bomber/disablefalldamage

#GTX690
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:gtx690"}}} run function championsashes:items/bomber/gtx690
execute unless entity @e[tag=bomb,limit=1] if score @s shift matches 1.. at @s if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:gtx690"}}} run function championsashes:items/bomber/bomb
execute unless score @s shift matches 1.. if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:gtx690"}}} run tag @s remove needclicker
execute if entity @e[predicate=championsashes:misc/bomb_creeper] as @e[predicate=championsashes:misc/bomb_creeper] at @s run function championsashes:items/bomber/explode
execute at @s[tag=chain_mining] positioned ^ ^ ^1 run function championsashes:items/bomber/chain_mining

#Shadow Pearl
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:shadow_pearl"}}]} run advancement grant @s[advancements={championsashes:func/shadow_pearl=false}] only championsashes:func/shadow_pearl
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:shadow_pearl"}}} as @s if score @s usedmedal matches 1.. if score @s shift matches 1.. run function championsashes:items/shadow_pearl/close_undead
execute unless data storage championsashes:player_data {Inventory:[{Slot:-106b,tag:{id:"championsashes:void_totem"}}]} if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:shadow_pearl",CustomModelData:1390015,Damage:0}}} as @s if score @s usedmedal matches 1.. unless score @s shift matches 1.. run function championsashes:items/shadow_pearl/shadow_pearl1
execute unless data storage championsashes:player_data {Inventory:[{Slot:-106b,tag:{id:"championsashes:void_totem"}}]} if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:shadow_pearl",CustomModelData:1390016,Damage:25}}} as @s if score @s usedmedal matches 1.. unless score @s shift matches 1.. run function championsashes:items/shadow_pearl/shadow_pearl2
execute unless data storage championsashes:player_data {Inventory:[{Slot:-106b,tag:{id:"championsashes:void_totem"}}]} if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:shadow_pearl",CustomModelData:1390017,Damage:50}}} as @s if score @s usedmedal matches 1.. unless score @s shift matches 1.. run function championsashes:items/shadow_pearl/shadow_pearl3
execute unless data storage championsashes:player_data {Inventory:[{Slot:-106b,tag:{id:"championsashes:void_totem"}}]} if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:shadow_pearl",CustomModelData:1390018,Damage:75}}} as @s if score @s usedmedal matches 1.. unless score @s shift matches 1.. run function championsashes:items/shadow_pearl/shadow_pearl4
function championsashes:items/shadow_pearl/recursion
execute if data storage championsashes:player_data {Inventory:[{Slot:-106b,tag:{id:"championsashes:void_totem"}}]} run function championsashes:items/shadow_pearl/void_totem

#Void Eye
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:void_eye"}}]} at @s run function championsashes:items/void_eye/void_eye
execute unless data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:void_eye"}}]} run function championsashes:items/void_eye/cancel

#Meteorite Staff
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:meteorite_staff"}}} if score @s[tag=!stiff] usedmedal matches 1.. at @s run function championsashes:items/meteorite_staff/meteorite_staff
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:meteorite_staff"}}} if entity @s[tag=!stiff] run function championsashes:items/meteorite_staff/durability
execute as @e[tag=aj.gravity_orb_projectile.root] at @s run function championsashes:projectiles/gravity_orb_projectile/gravity_orb_projectile
execute as @s[tag=shot_gravity_orb] unless entity @e[tag=aj.gravity_orb_projectile.root] run tag @s remove shot_gravity_orb

#Ring of Favor
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:ring_of_favor"}}} if score @s[tag=!stiff] usedmedal matches 1.. at @s run function championsashes:items/ring_of_favor/ring_of_favor
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:ring_of_favor"}}} if entity @s[tag=!stiff] run function championsashes:items/ring_of_favor/durability

#Ender Ring
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:ender_ring"}}]} run advancement grant @s[advancements={championsashes:func/ender_ring=false}] only championsashes:func/ender_ring
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:ender_ring"}}} run function championsashes:items/ender_ring/ender_ring
execute as @a[tag=remote_gateway] if score rand_output math_output matches 99999.. run function championsashes:items/ender_ring/teleport
execute unless data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:ender_ring"}}} unless data storage championsashes:player_data {Inventory:[{Slot:-106b,tag:{id:"championsashes:ender_ring"}}]} run tag @s remove omen_king
function championsashes:entities/night_cavalry/powers

#Serpent Hunter
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:serpent_hunter"}}} run function championsashes:items/serpent_hunter/serpent_hunter

#Moonlight Greatsword
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:moonlight_greatsword"}}} if score @s shift matches 1.. run function championsashes:items/moonlight_greatsword/moonlight_greatsword
execute unless score @s shift matches 1.. if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:moonlight_greatsword"}}} run tag @s remove needclicker
function championsashes:projectiles/moonlight_slash/moonlight_slash

#Irithyll Straight Sword
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:irithyll_straight_sword"}}} if score @s shift matches 1.. run function championsashes:items/irithyll_straight_sword/sword_dance
execute unless score @s shift matches 1.. if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:irithyll_straight_sword"}}} run tag @s remove needclicker
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:irithyll_straight_sword"}}]} run advancement grant @s[advancements={championsashes:func/irithyll_straight_sword=false}] only championsashes:func/irithyll_straight_sword
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:irithyll_straight_sword"}}} at @s[advancements={championsashes:hurt_entities=true}] run scoreboard players add @e[tag=raycast.target,type=!#championsashes:special_entities,distance=..5] frostbite_Timer 600

#Ledo's Great Hammer
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:ledo_great_hammer"}}} if score @s shift matches 1.. run function championsashes:items/ledo_great_hammer/steel_caller
execute unless score @s shift matches 1.. if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:ledo_great_hammer"}}} run tag @s remove needclicker

#Greatsword
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:greatsword"}}} if score @s shift matches 1.. run function championsashes:items/greatsword/spinning_gravity_thrust
execute unless score @s shift matches 1.. if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:greatsword"}}} run tag @s remove needclicker

#Moonveil
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:moonveil"}}} if score @s shift matches 1.. run function championsashes:items/moonveil/dimension_slash
execute unless score @s shift matches 1.. if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:moonveil"}}} run tag @s remove needclicker

#Rakshasa's Great Katana
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:rakshasa_great_katana"}}} run function championsashes:items/rakshasa_great_katana/attack_types
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:rakshasa_great_katana"}}} at @s[advancements={championsashes:hurt_entities=true}] run scoreboard players add @e[tag=raycast.target,type=!#championsashes:special_entities,distance=..5] bleeding_Timer 500

#Spear of the Impaler
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:spear_of_the_impaler"}}} if score @s shift matches 1.. run function championsashes:items/spear_of_the_impaler/messemers_assault
execute unless score @s shift matches 1.. if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:spear_of_the_impaler"}}} run tag @s remove needclicker

#DragonSlayer Great bow
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:dragonslayer_greatbow"}}]} run advancement grant @s[advancements={championsashes:func/dragonslayer_greatbow=false}] only championsashes:func/dragonslayer_greatbow
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:dragonslayer_greatbow"}}} at @s if score @s usedBow matches 1.. run function championsashes:items/dragonslayer_greatbow/dragonslayer_greatbow
execute as @s[tag=loop_start] at @s positioned ^ ^2 ^2 if score @s arrow_rain.temp matches 1.. run function championsashes:items/dragonslayer_greatbow/loop_summon_arrow
execute at @s run function championsashes:items/dragonslayer_greatbow/golem_arrow
execute if score @s arrow_rain.temp matches 0 run tag @s remove loop_start
execute if score @s[tag=!loop_start] arrow_rain.temp matches 0 run scoreboard players set @s[tag=!loop_start] arrow_rain.temp 12

#Thunder Slayer
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:thunder_slayer"}}} at @s if score @s usedBow matches 1.. run function championsashes:items/thunder_slayer/get_owner
execute at @s run function championsashes:items/thunder_slayer/thunder_arrow

#Arbalest
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:arbalest"}}]} run advancement grant @s[advancements={championsashes:func/arbalest=false}] only championsashes:func/arbalest
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:arbalest"}}} at @s if score @s usedCrossbow matches 1.. run function championsashes:items/dragonslayer_greatbow/arbalest/arbalest
execute if data storage championsashes:player_data {Inventory:[{Slot:-106b,tag:{id:"championsashes:arbalest"}}]} at @s if score @s usedCrossbow matches 1.. run function championsashes:items/dragonslayer_greatbow/arbalest/arbalest
execute if data storage championsashes:player_data {Inventory:[{Slot:-106b,tag:{id:"championsashes:dragonslayer_greatbow"}}]} if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:arbalest"}}} at @s run function championsashes:items/dragonslayer_greatbow/glitch
execute at @s run function championsashes:items/dragonslayer_greatbow/arbalest/blast_arrow

#Steel Tools
function championsashes:items/armors

#Nightrider Glaive
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:night_cavalry_halberd"}}]} run advancement grant @s[advancements={championsashes:func/nightrider_glaive=false}] only championsashes:func/nightrider_glaive
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:night_cavalry_halberd"}}} at @s[advancements={championsashes:hurt_entities=true}] run scoreboard players add @e[tag=raycast.target,type=!#championsashes:special_entities] frostbite_Timer 520
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:night_cavalry_halberd"}}} if score @s shift matches 1.. run function championsashes:items/nightrider_glaive/magicblade_phanalax
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:night_cavalry_halberd"}}} if score @s glaive_damage matches ..-1 run item replace entity @s weapon.mainhand with air
execute if score @s glaive_damage matches 2031.. run scoreboard players set @s glaive_damage -1
execute if score @s glaive_damage matches ..-1 run scoreboard players set @s glaive_damage 1
execute unless score @s shift matches 1.. if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:night_cavalry_halberd"}}} run tag @s remove needclicker

#Drakeblood Greatsword
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:drakeblood_greatsword"}}} if score @s shift matches 1.. at @s run function championsashes:items/drakeblood_greatsword/drakeblood_greatsword
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:drakeblood_greatsword"}}} at @s[tag=!used_drakeblood_skill,advancements={championsashes:hurt_entities=true}] run scoreboard players add @e[tag=raycast.target,type=!#championsashes:special_entities] bleeding_Timer 400
execute as @s[tag=loop_lightning_bolt] at @s positioned ~-3 ~ ~-3 if score @s lightning_bolt_rain matches 1.. run function championsashes:items/drakeblood_greatsword/throne_judgement
execute as @e[tag=!aj.ancient_lightning_strike.locator,tag=bolt_marker_unused] at @s run function championsashes:items/drakeblood_greatsword/summon_lightning_bolt
execute as @s[tag=animate_lightning_bolt] run function championsashes:items/drakeblood_greatsword/animate_lightning_bolt
execute if score @s lightning_bolt_rain matches 0 run tag @s remove loop_lightning_bolt
execute if score @s[tag=!loop_lightning_bolt] lightning_bolt_rain matches 0 run scoreboard players set @s[tag=!loop_lightning_bolt] lightning_bolt_rain 20
execute unless score @s shift matches 1.. if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:drakeblood_greatsword"}}} run tag @s remove needclicker

#Soul of Elder
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:soul_of_nep"}}]} run advancement grant @s[advancements={championsashes:func/elder=false}] only championsashes:func/elder
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:soul_of_nep"}}} if score @s usedmedal matches 1.. run function championsashes:items/soul_of_elder/spectator
execute as @s[tag=spectator] run function championsashes:items/soul_of_elder/noumenon
execute as @s[tag=spectator,gamemode=!spectator] run tag @s remove spectator

#Bewitching Branch
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:bewitching_branch"}}} if score @s usedmedal matches 1.. run tag @s add used_charm
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:bewitching_branch"}}} if score @s usedmedal matches 1.. store result score @s branch_playerHotbar run data get entity @s SelectedItemSlot
execute as @s[tag=used_charm] run function championsashes:items/bewitching_branch/used
execute if data storage championsashes:player_data {SelectedItem:{tag:{CustomModelData:1390062,id:"championsashes:bewitching_branch"}}} if score @s usedmedal matches 1.. at @s as @e[tag=raycast.target,team=!friendly,type=!wither,type=!ender_dragon,tag=!drakeblood_knight,limit=1,distance=..6] run tag @s add charmed
execute if entity @e[tag=charmed] as @e[tag=charmed] at @s run function championsashes:items/bewitching_branch/charm

#Splitleaf
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:splitleaf"}}} run function championsashes:items/splitleaf/splitleaf
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:splitleaf"}}} if score @s splitleaf_damage matches ..-1 run item replace entity @s weapon.mainhand with air
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:splitleaf"}}} if score @s splitleaf_damage matches 2031.. run scoreboard players set @s splitleaf_damage -1
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:splitleaf"}}} if score @s splitleaf_damage matches ..-1 run scoreboard players set @s splitleaf_damage 1
execute if entity @e[tag=splitleaf_skill] at @s as @e[tag=splitleaf_skill,distance=..6] run function championsashes:items/splitleaf/rotation
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:splitleaf"}}} as @a[tag=helicopter] at @s run function championsashes:items/splitleaf/skill
execute unless data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:splitleaf"}}} at @s run kill @e[tag=splitleaf_skill,distance=..5]
execute unless data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:splitleaf"}}} run effect clear @s[tag=helicopter] levitation
execute unless data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:splitleaf"}}} run tag @s[tag=helicopter] remove helicopter
execute unless data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:splitleaf"}}} run tag @s[tag=infinite_true_combo] remove infinite_true_combo
execute unless score @s[tag=helicopter] shift matches 1 at @s run kill @e[tag=splitleaf_skill,distance=..5]
execute unless score @s[tag=helicopter] shift matches 1 run effect clear @s levitation
execute unless score @s[tag=helicopter] shift matches 1 run tag @s remove helicopter
execute unless score @s[tag=infinite_true_combo] shift matches 1 run tag @s remove infinite_true_combo
execute at @s as @e[tag=splitleaf_stiff,distance=..20] run function championsashes:items/splitleaf/damage

#Death Blight Knife
execute as @e[type=snowball,predicate=championsashes:misc/death_blight_knife] at @s run function championsashes:items/cheat_engine/death_blight_knife

#Stalk Dung Pie
#execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:stalk_dung_pie"}}} run tag @s[tag=!csg] add csg
execute as @e[type=snowball,predicate=championsashes:misc/stalk_dung_pie] at @s run function championsashes:items/stalk_dung_pie

#Shadow Vortex
#execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:shadow_vortex"}}} run tag @s[tag=!used_vortex] add used_vortex
execute as @e[type=snowball,predicate=championsashes:misc/shadow_vortex] at @s run function championsashes:projectiles/shadow_vortex/shadow_vortex
execute as @e[tag=shadow_vortex] run function championsashes:projectiles/shadow_vortex/vortex_timer
execute unless entity @e[tag=shadow_vortex] run tag @a[tag=used_vortex] remove used_vortex

#Estus Flask
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:estus_flask"}}} run function championsashes:items/estus_flask/estus_flask
execute as @s[tag=estus_cancel] at @s run function championsashes:items/estus_flask/cancel

#Aquamarine Dagger
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:aquamarine_dagger"}}]} run advancement grant @s[advancements={championsashes:func/aquamarine_dagger=false}] only championsashes:func/aquamarine_dagger
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:aquamarine_dagger"}}} at @s run function championsashes:items/aquamarine_dagger/crystal_blade

#Antspur Rapier
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:antspur_rapier"}}]} run advancement grant @s[advancements={championsashes:func/antspur_rapier=false}] only championsashes:func/antspur_rapier
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:antspur_rapier"}}} at @s run function championsashes:items/antspur_rapier/antspur_rapier
execute as @s[tag=bloodhound_step] at @s run function championsashes:items/antspur_rapier/bloodhound_steps
execute if score #bloodhound_step_enter_block championsashes_Timer matches 40.. run tag @s[tag=bloodhound_step_enter_block] remove bloodhound_step_enter_block
execute if score #bloodhound_step_enter_block championsashes_Timer matches 40.. run scoreboard players set #bloodhound_step_enter_block championsashes_Timer 0

#Gundyr Halberd
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:gundyr_halberd"}}]} run advancement grant @s[advancements={championsashes:func/gundyr_halberd=false}] only championsashes:func/gundyr_halberd
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:gundyr_halberd"}}} if score @s shift matches 1.. at @s run function championsashes:items/gundyr_halberd/gundyr_halberd
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:gundyr_halberd"}}} unless score @s shift matches 1.. run tag @s remove needclicker

#Caestus
execute if data storage championsashes:player_data {Inventory:[{Slot:-106b,tag:{id:"championsashes:caestus"}}]} if score @s usedmedal matches 1.. run tag @s add endure
execute as @s[tag=endure] at @s run function championsashes:items/caestus/caestus

#Ringed Knight Paired Greatsword
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:ringed_knight_paired_greatsword_right"}},{tag:{id:"championsashes:ringed_knight_paired_greatsword_left"}}]} run advancement grant @s[advancements={championsashes:func/ringed_knight_paired_greatsword=false}] only championsashes:func/ringed_knight_paired_greatsword
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:ringed_knight_paired_greatsword_right"}}} if data storage championsashes:player_data {Inventory:[{Slot:-106b,tag:{id:"championsashes:ringed_knight_paired_greatsword_left"}}]} at @s run function championsashes:items/ringed_knight_paired_greatsword/ringed_knight_paired_greatsword

#Lorian Greatsword
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:lorian_greatsword"}}]} run advancement grant @s[advancements={championsashes:func/lorian_greatsword=false}] only championsashes:func/lorian_greatsword
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:lorian_greatsword"}}} if score @s shift matches 1.. at @s run function championsashes:items/lorians_greatsword/lorians_flame
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:lorian_greatsword"}}} unless score @s shift matches 1.. run tag @s remove needclicker

#Gael Greatsword
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:gael_greatsword"}}]} run advancement grant @s[advancements={championsashes:func/gael_greatsword=false}] only championsashes:func/gael_greatsword
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:gael_greatsword"}}} if score @s shift matches 1.. at @s run function championsashes:items/gaels_greatsword/blade_of_peril
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:gael_greatsword"}}} unless score @s shift matches 1.. run tag @s remove needclicker

#Dark Sword+22
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:darksword22"}}} if score @s shift matches 1.. at @s run function championsashes:items/dark_sword22/feather
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:darksword22"}}} unless score @s shift matches 1.. run tag @s remove needclicker

#Fume Ultra Greatsword
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:fume_ultra_greatsword"}}} if score @s shift matches 1.. at @s run function championsashes:items/fume_ultra_greatsword/wave_of_destruction
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:fume_ultra_greatsword"}}} unless score @s shift matches 1.. run tag @s remove needclicker

#Corvian Greatknife
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:corvian_greatknife"}}} at @s run function championsashes:items/corvian_greatknife/blind_spot

#Carian Knight's Sword
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:carian_knights_sword"}}} if score @s shift matches 1.. at @s run function championsashes:items/carian_knights_sword/carian_grandeur
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:carian_knights_sword"}}} unless score @s shift matches 1.. run tag @s remove needclicker

#Obsidian lamina
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:obsidian_lamina"}}} if score @s shift matches 1.. at @s run function championsashes:items/obsidian_lamina/dynastic_sickleplay
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:obsidian_lamina"}}} unless score @s shift matches 1.. run tag @s remove needclicker
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:obsidian_lamina"}}} at @s[tag=!dynastic_sickleplay_user,tag=!dynastic_throw_user,advancements={championsashes:hurt_entities=true}] run scoreboard players add @e[tag=raycast.target,type=!#championsashes:special_entities] bleeding_Timer 300

#Lothric Holy Sword
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:lothric_holy_sword"}}} at @s as @e[type=!player,type=!#championsashes:special_entities,distance=..50] store result score @s Y_value run data get entity @s Pos[1]
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:lothric_holy_sword"}}} at @s run function championsashes:items/lothric_holy_sword/lothric_holy_sword
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:lothric_holy_sword"}}} unless score @s shift matches 1.. run tag @s remove needclicker
execute as @e[tag=lazer_animate] at @s run function championsashes:projectiles/lazer_beam/lazer_beam_animate
execute as @e[tag=lazer_fading] run function championsashes:projectiles/lazer_beam/lazer_faded
execute unless entity @e[tag=lazer_beam] run function championsashes:projectiles/lazer_beam/remove_tags

#Blocks
function championsashes:blocks/block

#Phanalax
execute as @s[tag=with_phanalax] run function championsashes:projectiles/phanalax/phanalax
execute if entity @e[tag=phanalax0] as @e[tag=phanalax0] run function championsashes:projectiles/phanalax/rotation
execute if entity @e[tag=phanalax1] as @e[tag=phanalax1] run function championsashes:projectiles/phanalax/rotation
execute if entity @e[tag=phanalax2] as @e[tag=phanalax2] run function championsashes:projectiles/phanalax/rotation

#Brass Shield
execute as @s[advancements={championsashes:parry/brass_parry=true},tag=!parry_used] run tag @s add parry
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:brass_shield"}}} at @s run teleport @e[tag=shield_breaker,limit=1] ^ ^ ^127
execute if data storage championsashes:player_data {Inventory:[{Slot:-106b,tag:{id:"championsashes:brass_shield"}}]} at @s run teleport @e[tag=shield_breaker,limit=1] ^ ^ ^127
execute unless data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:brass_shield"}}} unless data storage championsashes:player_data {Inventory:[{Slot:-106b,tag:{id:"championsashes:brass_shield"}}]} run teleport @e[tag=shield_breaker,limit=1] 0 -70 0

#Red White Shield
execute as @s[advancements={championsashes:parry/red_white_parry=true},tag=!parry_used] run tag @s add parry
execute if data storage championsashes:player_data {Inventory:[{Slot:-106b,tag:{id:"championsashes:red_white_shield"}}]} at @s run effect give @s regeneration 1 0 true
execute if data storage championsashes:player_data {Inventory:[{Slot:-106b,tag:{id:"championsashes:red_white_shield"}}]} if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:splitleaf"}}} run tag @s add infinite_true_combo
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:red_white_shield"}}} at @s run teleport @e[tag=shield_breaker,limit=1] ^ ^ ^127
execute if data storage championsashes:player_data {Inventory:[{Slot:-106b,tag:{id:"championsashes:red_white_shield"}}]} at @s run teleport @e[tag=shield_breaker,limit=1] ^ ^ ^127
execute unless data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:red_white_shield"}}} unless data storage championsashes:player_data {Inventory:[{Slot:-106b,tag:{id:"championsashes:red_white_shield"}}]} run teleport @e[tag=shield_breaker,limit=1] 0 -70 0

#Warrior Round Shield
execute if data storage championsashes:player_data {Inventory:[{Slot:-106b,tag:{id:"championsashes:warrior_round_shield"}}]} if entity @s[advancements={championsashes:magic_damage=true}] run effect give @s instant_health 4 1 true
execute if data storage championsashes:player_data {Inventory:[{Slot:-106b,tag:{id:"championsashes:warrior_round_shield"}}]} if entity @s[advancements={championsashes:magic_damage=true}] run effect give @s resistance 1 3 true

#Parry
execute if entity @e[tag=parry_target] as @e[tag=parry_target] at @s unless entity @a[tag=parry,distance=..5] run tag @s remove parry_target
execute as @s[tag=parry] at @s run function championsashes:parry/parry_tick
execute as @s[advancements={championsashes:parry/brass_parry=false}] run tag @s remove parry_used
execute as @s[advancements={championsashes:parry/red_white_parry=false}] run tag @s remove parry_used

#Black Knight Great Axe
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:black_knight_greataxe"}}} at @s if entity @e[tag=parry_success,distance=..5] run effect give @s strength 5 4
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:black_knight_greataxe"}}]} run advancement grant @s[advancements={championsashes:func/black_knight_greataxe=false}] only championsashes:func/black_knight_greataxe
execute as @s[advancements={championsashes:func/parry=false}] at @s if entity @e[tag=parry_success,distance=..5] run advancement grant @s only championsashes:func/parry
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:black_knight_greataxe"}}} run function championsashes:items/black_knight_greataxe/stamp_upward_cut
execute unless score @s shift matches 1.. if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:black_knight_greataxe"}}} run tag @s[tag=needclicker] remove needclicker

#Murky Hand Scythe
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:murky_hand_scythe"}}]} run advancement grant @s[advancements={championsashes:func/murky_hand_scythe=false}] only championsashes:func/murky_hand_scythe
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:murky_hand_scythe"}}} run function championsashes:items/murky/murky
execute if data storage championsashes:player_data {Inventory:[{Slot:-106b,tag:{id:"championsashes:murky_hand_scythe"}}]} at @s unless entity @e[tag=aj.murky_hand_scythe.root,distance=..2] run function championsashes:items/murky/soul_five
execute as @s[tag=quickstep] at @s run function championsashes:items/murky/quickstep
execute if score #quickstep_enter_block championsashes_Timer matches 20.. run tag @s[tag=quickstep_enter_block] remove quickstep_enter_block
execute if score #quickstep_enter_block championsashes_Timer matches 20.. run scoreboard players set #quickstep_enter_block championsashes_Timer 0

#Pontiff Knight Curved Sword
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:pontiff_knight_curved_sword"}}]} run advancement grant @s[advancements={championsashes:func/pkcs=false}] only championsashes:func/pkcs
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:pontiff_knight_curved_sword"}}} run function championsashes:items/pkcs/pkcs
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:pontiff_knight_curved_sword"}}} if score @s pkcs_damage matches ..-1 run item replace entity @s weapon.mainhand with air
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:pontiff_knight_curved_sword"}}} if score @s pkcs_damage matches 465.. run scoreboard players set @s pkcs_damage -1
execute if data storage championsashes:player_data {SelectedItem:{tag:{id:"championsashes:pontiff_knight_curved_sword"}}} if score @s pkcs_damage matches ..-1 run scoreboard players set @s pkcs_damage 1
execute at @s as @e[tag=pkcs_skill] run function championsashes:items/pkcs/rotation
execute as @s[tag=using_skill] at @s run function championsashes:items/pkcs/skill

#Clear effects after death
execute as @a[scores={player_death=1..}] run scoreboard players set @s bleeding_Timer 0
execute as @a[scores={player_death=1..}] run scoreboard players set @s frostbite_Timer 0
execute as @a[scores={player_death=1..}] run scoreboard players set @s scarlet_rot_Timer 0
execute as @a[scores={player_death=1..}] run scoreboard players set @s player_death 0

#Using Items
execute if entity @s[predicate=championsashes:using_item/two_years_ago,scores={usedCE=1..}] run playsound championsashes:sounds.championsashes.two_years_ago voice @s ~ ~ ~ 100 1 1
execute if score @s usedAnvil matches 1.. run scoreboard players set @s usedAnvil 0
execute if score @s usedmedal matches 1.. run scoreboard players set @s usedmedal 0
execute if score @s usedBow matches 1.. run scoreboard players set @s usedBow 0
execute if score @s usedFirework matches 1.. run scoreboard players set @s usedFirework 0
execute if score @s usedSnowball matches 1.. run scoreboard players set @s usedSnowball 0
execute if score @s usedCE matches 1.. run scoreboard players set @s usedCE 0

#NEP
execute at @s unless entity @e[type=wither_skeleton,tag=nep_elder,distance=..50] run bossbar set nep_elder players
execute if entity @e[type=item,predicate=championsashes:misc/cheat_engine] run function championsashes:entities/drakeblood_knight/nep_elder/killed_nep
execute if entity @e[type=item,predicate=championsashes:misc/cheat_engine] run kill @e[type=item,predicate=championsashes:misc/cheat_engine]
#execute at @s[tag=start_fight] unless entity @e[type=wither_skeleton,tag=nep_elder,distance=..50] run tags add boss_killed
#execute at @s[tag=boss_killed] if entity @e[type=wither_skeleton,tag=nep_elder,distance=..50] run tag @s remove boss_killed
execute if data storage championsashes:player_data {SelectedItem:{tag:{resolved:1b,author:"并非NEP"}}} run loot replace entity @e[type=wither_skeleton,tag=nep_elder,tag=!hat] armor.head loot championsashes:armor/drakeblood_helmet
execute if data storage championsashes:player_data {Inventory:[{Slot:-106b,tag:{resolved:1b,author:"并非NEP"}}]} run loot replace entity @e[type=wither_skeleton,tag=nep_elder,tag=!hat] armor.head loot championsashes:armor/drakeblood_helmet
execute if data storage championsashes:player_data {SelectedItem:{tag:{resolved:1b,author:"并非NEP"}}} run tag @e[type=wither_skeleton,tag=nep_elder] add hat
#execute if data storage championsashes:player_data {Inventory:[{Slot:-106b,tag:{resolved:1b,author:"并非NEP"}}]} run tag @e[type=wither_skeleton,tag=nep_elder] add hat
tag @e[tag=hat,type=wither_skeleton] remove helmet
execute unless data storage championsashes:player_data {SelectedItem:{tag:{resolved:1b,author:"并非NEP"}}} run loot replace entity @e[type=wither_skeleton,tag=nep_elder,tag=!helmet] armor.head loot championsashes:armor/old_sorcerer_hat_nep
execute if data storage championsashes:player_data {Inventory:[{Slot:-106b,tag:{resolved:1b,author:"并非NEP"}}]} run loot replace entity @e[type=wither_skeleton,tag=nep_elder,tag=!helmet] armor.head loot championsashes:armor/old_sorcerer_hat_nep
execute unless data storage championsashes:player_data {SelectedItem:{tag:{resolved:1b,author:"并非NEP"}}} run tag @e[type=wither_skeleton,tag=nep_elder] add helmet
#xecute if data storage championsashes:player_data {Inventory:[{Slot:-106b,tag:{resolved:1b,author:"并非NEP"}}]} run tag @e[type=wither_skeleton,tag=nep_elder] add helmet
tag @e[tag=helmet,type=wither_skeleton] remove hat
execute at @s unless entity @e[tag=nep_elder,distance=..50] run tag @s remove start_fight

execute as @s[predicate=championsashes:elytra_recipe] run recipe give @s championsashes:elytra_recipe

#Reload Advancements
data modify storage championsashes:player_data SelectedItem set value {}
data modify storage championsashes:player_data Inventory set value {}
execute as @s[advancements={championsashes:parry/brass_parry=true}] run advancement revoke @s only championsashes:parry/brass_parry
execute as @s[advancements={championsashes:parry/red_white_parry=true}] run advancement revoke @s only championsashes:parry/red_white_parry
execute as @s[advancements={championsashes:hurt_entities=true}] run advancement revoke @s only championsashes:hurt_entities
execute as @s[advancements={championsashes:hurt_players_blocked=true}] run advancement revoke @s only championsashes:hurt_players_blocked
execute as @s[advancements={championsashes:clear_effects=true}] run advancement revoke @s only championsashes:clear_effects
execute as @s[advancements={championsashes:killed_nep=true}] run advancement revoke @s only championsashes:killed_nep
execute as @s[advancements={championsashes:estus_flask/estus_cancel=true}] run advancement revoke @s only championsashes:estus_flask/estus_cancel
execute as @s[advancements={championsashes:estus_flask/used_estus_flask=true}] run advancement revoke @s only championsashes:estus_flask/used_estus_flask
execute as @s[advancements={championsashes:item_durability=true}] run advancement revoke @s only championsashes:item_durability
execute as @s[advancements={championsashes:enter_block=true}] run advancement revoke @s only championsashes:enter_block
execute as @s[advancements={championsashes:magic_damage=true}] run advancement revoke @s only championsashes:magic_damage

#Spacebar qwuery
function championsashes:items/spacebar_query

#execute as @s[advancements={championsashes:func/killed_nep=false},tag=start_fight] at @s unless entity @e[type=wither_skeleton,tag=nep_elder,distance=..50] run advancement grant @s only championsashes:func/killed_nep