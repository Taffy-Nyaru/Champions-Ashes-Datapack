advancement grant @s[advancements={championsashes:func/championsashes=false}] only championsashes:func/championsashes
data modify storage championsashes:player_data Inventory set from entity @s Inventory

function championsashes:items/armor/armor_advancement
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:steel_ingot"}}]} run advancement grant @s[advancements={championsashes:func/steel_ingot=false}] only championsashes:func/steel_ingot
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:vampire_hat"}}]} run advancement grant @s[advancements={championsashes:func/vampire_hat=false}] only championsashes:func/vampire_hat
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:ringed_knight_straight_sword"}}]} run advancement grant @s[advancements={championsashes:func/rkss=false}] only championsashes:func/rkss
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:sonic_boom_shard"}}]} run advancement grant @s[advancements={championsashes:func/get_echo_heart=false}] only championsashes:func/get_echo_heart
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:zweihander"}}]} run advancement grant @s[advancements={championsashes:func/zwei=false}] only championsashes:func/zwei
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:black_blade"}}]} run advancement grant @s[advancements={championsashes:func/black_blade=false}] only championsashes:func/black_blade
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:eternal_crystal"}}]} run advancement grant @s[advancements={championsashes:func/eternal_crystal=false}] only championsashes:func/eternal_crystal
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:gtx690"}}]} run advancement grant @s[advancements={championsashes:func/gtx690=false}] only championsashes:func/gtx690
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:shadow_pearl"}}]} run advancement grant @s[advancements={championsashes:func/shadow_pearl=false}] only championsashes:func/shadow_pearl
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:ender_ring"}}]} run advancement grant @s[advancements={championsashes:func/ender_ring=false}] only championsashes:func/ender_ring
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:irithyll_straight_sword"}}]} run advancement grant @s[advancements={championsashes:func/irithyll_straight_sword=false}] only championsashes:func/irithyll_straight_sword
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:dragonslayer_greatbow"}}]} run advancement grant @s[advancements={championsashes:func/dragonslayer_greatbow=false}] only championsashes:func/dragonslayer_greatbow
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:arbalest"}}]} run advancement grant @s[advancements={championsashes:func/arbalest=false}] only championsashes:func/arbalest
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:nightrider_glaive"}}]} run advancement grant @s[advancements={championsashes:func/nightrider_glaive=false}] only championsashes:func/nightrider_glaive
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:soul_of_nep"}}]} run advancement grant @s[advancements={championsashes:func/elder=false}] only championsashes:func/elder
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:aquamarine_dagger"}}]} run advancement grant @s[advancements={championsashes:func/aquamarine_dagger=false}] only championsashes:func/aquamarine_dagger
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:antspur_rapier"}}]} run advancement grant @s[advancements={championsashes:func/antspur_rapier=false}] only championsashes:func/antspur_rapier
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:gundyr_halberd"}}]} run advancement grant @s[advancements={championsashes:func/gundyr_halberd=false}] only championsashes:func/gundyr_halberd
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:ringed_knight_paired_greatsword"}}]} run advancement grant @s[advancements={championsashes:func/ringed_knight_paired_greatsword=false}] only championsashes:func/ringed_knight_paired_greatsword
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:lorian_greatsword"}}]} run advancement grant @s[advancements={championsashes:func/lorian_greatsword=false}] only championsashes:func/lorian_greatsword
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:gael_greatsword"}}]} run advancement grant @s[advancements={championsashes:func/gael_greatsword=false}] only championsashes:func/gael_greatsword
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:black_knight_greataxe"}}]} run advancement grant @s[advancements={championsashes:func/black_knight_greataxe=false}] only championsashes:func/black_knight_greataxe
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:murky_hand_scythe"}}]} run advancement grant @s[advancements={championsashes:func/murky_hand_scythe=false}] only championsashes:func/murky_hand_scythe
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:pontiff_knight_curved_sword"}}]} run advancement grant @s[advancements={championsashes:func/pkcs=false}] only championsashes:func/pkcs
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:crafting_table"}}]} run advancement grant @s[advancements={championsashes:func/make_energy_crafter=false}] only championsashes:func/make_energy_crafter
execute if entity @s[advancements={championsashes:func/parry=false}] at @s if entity @e[tag=parry_success,distance=..5] run advancement grant @s only championsashes:func/parry

#Void Eye
execute if data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:void_eye"}}]} run function championsashes:items/void_eye/void_eye
execute unless data storage championsashes:player_data {Inventory:[{tag:{id:"championsashes:void_eye"}}]} as @e[distance=..15,type=marker,tag=void_marker] at @s run function championsashes:items/void_eye/cancel

data modify storage championsashes:player_data Inventory set value {}