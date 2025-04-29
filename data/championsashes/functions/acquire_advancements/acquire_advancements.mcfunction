advancement grant @s[advancements={championsashes:func/championsashes=false}] only championsashes:func/championsashes
execute as @s[tag=!got_armor_advancement] run function championsashes:items/armor/armor_advancement
execute if predicate championsashes:got_item/steel_ingot run advancement grant @s[advancements={championsashes:func/steel_ingot=false}] only championsashes:func/steel_ingot
execute if predicate championsashes:got_item/vampire_hat run advancement grant @s[advancements={championsashes:func/vampire_hat=false}] only championsashes:func/vampire_hat
execute if predicate championsashes:got_item/ringed_knight_straight_sword run advancement grant @s[advancements={championsashes:func/rkss=false}] only championsashes:func/rkss
execute if predicate championsashes:got_item/sonic_boom_shard run advancement grant @s[advancements={championsashes:func/get_echo_heart=false}] only championsashes:func/get_echo_heart
execute if predicate championsashes:got_item/zweihander run advancement grant @s[advancements={championsashes:func/zwei=false}] only championsashes:func/zwei
execute if predicate championsashes:got_item/black_blade run advancement grant @s[advancements={championsashes:func/black_blade=false}] only championsashes:func/black_blade
execute if predicate championsashes:got_item/eternal_crystal run advancement grant @s[advancements={championsashes:func/eternal_crystal=false}] only championsashes:func/eternal_crystal
execute if predicate championsashes:got_item/gtx690 run advancement grant @s[advancements={championsashes:func/gtx690=false}] only championsashes:func/gtx690
execute if predicate championsashes:got_item/shadow_pearl run advancement grant @s[advancements={championsashes:func/shadow_pearl=false}] only championsashes:func/shadow_pearl
execute if predicate championsashes:got_item/ender_ring run advancement grant @s[advancements={championsashes:func/ender_ring=false}] only championsashes:func/ender_ring
execute if predicate championsashes:got_item/irithyll_straight_sword run advancement grant @s[advancements={championsashes:func/irithyll_straight_sword=false}] only championsashes:func/irithyll_straight_sword
execute if predicate championsashes:got_item/dragonslayer_greatbow run advancement grant @s[advancements={championsashes:func/dragonslayer_greatbow=false}] only championsashes:func/dragonslayer_greatbow
execute if predicate championsashes:got_item/arbalest run advancement grant @s[advancements={championsashes:func/arbalest=false}] only championsashes:func/arbalest
execute if predicate championsashes:got_item/nightrider_glaive run advancement grant @s[advancements={championsashes:func/nightrider_glaive=false}] only championsashes:func/nightrider_glaive
execute if predicate championsashes:got_item/soul_of_nep run advancement grant @s[advancements={championsashes:func/elder=false}] only championsashes:func/elder
execute if predicate championsashes:got_item/aquamarine_dagger run advancement grant @s[advancements={championsashes:func/aquamarine_dagger=false}] only championsashes:func/aquamarine_dagger
execute if predicate championsashes:got_item/antspur_rapier run advancement grant @s[advancements={championsashes:func/antspur_rapier=false}] only championsashes:func/antspur_rapier
execute if predicate championsashes:got_item/gundyr_halberd run advancement grant @s[advancements={championsashes:func/gundyr_halberd=false}] only championsashes:func/gundyr_halberd
execute if predicate championsashes:got_item/ringed_knight_paired_greatsword run advancement grant @s[advancements={championsashes:func/ringed_knight_paired_greatsword=false}] only championsashes:func/ringed_knight_paired_greatsword
execute if predicate championsashes:got_item/lorian_greatsword run advancement grant @s[advancements={championsashes:func/lorian_greatsword=false}] only championsashes:func/lorian_greatsword
execute if predicate championsashes:got_item/gael_greatsword run advancement grant @s[advancements={championsashes:func/gael_greatsword=false}] only championsashes:func/gael_greatsword
execute if predicate championsashes:got_item/black_knight_greataxe run advancement grant @s[advancements={championsashes:func/black_knight_greataxe=false}] only championsashes:func/black_knight_greataxe
execute if predicate championsashes:got_item/murky_hand_scythe run advancement grant @s[advancements={championsashes:func/murky_hand_scythe=false}] only championsashes:func/murky_hand_scythe
execute if predicate championsashes:got_item/pontiff_knight_curved_sword run advancement grant @s[advancements={championsashes:func/pkcs=false}] only championsashes:func/pkcs
execute if predicate championsashes:got_item/crafting_table run advancement grant @s[advancements={championsashes:func/make_energy_crafter=false}] only championsashes:func/make_energy_crafter
execute as @s[advancements={championsashes:func/parry=false}] at @s if entity @e[tag=parry_success,distance=..5] run advancement grant @s only championsashes:func/parry