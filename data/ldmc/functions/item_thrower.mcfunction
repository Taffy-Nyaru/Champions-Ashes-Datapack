#Get the hostility of the warden
execute at @s unless entity 00000001-0000-0005-0000-000100000004 run summon item ~ ~1024 ~ {UUID:[I;1,5,1,4],Tags:["power_source"],Item:{id:"sculk",Count:1b,tag:{Enchantments:[{id:"infinity",lvl:1}]}},NoGravity:1b,Invulnerable:1b,Age:-32768,PickupDelay:32767}
#Get the related interaction for each player
execute at @s unless entity 00000008-0000-0005-0000-000900000003 run summon item ~ ~1024 ~ {UUID:[I;8,5,9,3],Invulnerable:1b,Age:-32768,NoGravity:1b,PickupDelay:32767,Item:{id:"dragon_head",Count:1b}}
#Get 
execute at @s unless entity 00041459-ffff-330c-ffff-b82800017722 run summon item ~ ~1024 ~ {UUID:[I;267353,-52468,-18392,96034],Invulnerable:1b,Age:-32768,NoGravity:1b,PickupDelay:32767,Item:{id:"command_block",Count:1b}}
#Get lClicker
execute at @s unless entity a346a606-7102-4c7f-b48d-14038f3a5e56 run summon item ~ ~1024 ~ {UUID:[I;-1555651066,1895976063,-1265822717,-1892000170],Invulnerable:1b,Age:-32768,NoGravity:1b,PickupDelay:32767,Item:{id:"wither_skeleton_skull",Count:1b}}
#Get rClicker
execute at @s unless entity 2094fd65-93de-4a69-9ea2-a74c7f35bc75 run summon item ~ ~1024 ~ {UUID:[I;546635109,-1814148503,-1633507508,2134228085],Invulnerable:1b,Age:-32768,NoGravity:1b,PickupDelay:32767,Item:{id:"skeleton_skull",Count:1b}}
#Get Golem_arrowOwner
execute at @s unless entity 5ff8eb59-2069-4c4f-bfbb-b49b8c613a04 run summon item ~ ~1024 ~ {UUID:[I;1610148697,543771727,-1078217573,-1939785212],Invulnerable:1b,Age:-32768,NoGravity:1b,PickupDelay:32767,Item:{id:"arrow",Count:1b}}
#Get Lightning_arrowOwner
execute at @s unless entity bf7920bc-0684-4846-b9cc-b2ef4137b85c run summon item ~ ~1024 ~ {UUID:[I;-1082580804,109332550,-1177767185,1094170716],Invulnerable:1b,Age:-32768,NoGravity:1b,PickupDelay:32767,Item:{id:"spectral_arrow",Count:1b}}
#Get phanalax0 owner
execute at @s unless entity 942429eb-9233-4105-a36e-8fec8f4ce862 run summon item ~ ~1024 ~ {UUID:[I;-1809569301,-1842134779,-1553035284,-1890785182],Invulnerable:1b,Age:-32768,NoGravity:1b,PickupDelay:32767,Item:{id:"diamond_sword",Count:1b}}
#Get phanalax1 owner
execute at @s unless entity 5100af9e-e223-424b-bfd7-6ce806d33213 run summon item ~ ~1024 ~ {UUID:[I;1358999454,-501005749,-1076400920,114504211],Invulnerable:1b,Age:-32768,NoGravity:1b,PickupDelay:32767,Item:{id:"golden_sword",Count:1b}}
#Get phanalax2 owner
execute at @s unless entity 9bf0d198-816f-4084-8c37-27d0f958bba1 run summon item ~ ~1024 ~ {UUID:[I;-1678716520,-2123415420,-1942542384,-111625311],Invulnerable:1b,Age:-32768,NoGravity:1b,PickupDelay:32767,Item:{id:"iron_sword",Count:1b}}
#Get noumenon uuid
execute at @s unless entity 849fb73c-4a74-4a27-b935-ddfa1976b4e0 run summon item ~ ~1024 ~ {UUID:[I;-2069907652,1249135143,-1187652102,427209952],Invulnerable:1b,Age:-32768,NoGravity:1b,PickupDelay:32767,Item:{id:"iron_block",Count:1b}}

execute at @s run tp 00000001-0000-0005-0000-000100000004 ~ ~1024 ~
execute at @s run tp 00000008-0000-0005-0000-000900000003 ~ ~1024 ~
execute at @s run tp 00041459-ffff-330c-ffff-b82800017722 ~ ~1024 ~
execute at @s run tp a346a606-7102-4c7f-b48d-14038f3a5e56 ~ ~1024 ~
execute at @s run tp 2094fd65-93de-4a69-9ea2-a74c7f35bc75 ~ ~1024 ~
execute at @s run tp 5ff8eb59-2069-4c4f-bfbb-b49b8c613a04 ~ ~1024 ~
execute at @s run tp bf7920bc-0684-4846-b9cc-b2ef4137b85c ~ ~1024 ~
execute at @s run tp 942429eb-9233-4105-a36e-8fec8f4ce862 ~ ~1024 ~
execute at @s run tp 5100af9e-e223-424b-bfd7-6ce806d33213 ~ ~1024 ~
execute at @s run tp 9bf0d198-816f-4084-8c37-27d0f958bba1 ~ ~1024 ~
execute at @s run tp 849fb73c-4a74-4a27-b935-ddfa1976b4e0 ~ ~1024 ~