function championsashes:clicker/summon_interaction
kill 00000001-0000-0005-0000-000100000004
kill 00000008-0000-0005-0000-000900000003
kill 00041459-ffff-330c-ffff-b82800017722
kill a346a606-7102-4c7f-b48d-14038f3a5e56
kill 2094fd65-93de-4a69-9ea2-a74c7f35bc75
kill 5ff8eb59-2069-4c4f-bfbb-b49b8c613a04
kill 942429eb-9233-4105-a36e-8fec8f4ce862
kill 5100af9e-e223-424b-bfd7-6ce806d33213
kill 9bf0d198-816f-4084-8c37-27d0f958bba1
kill 849fb73c-4a74-4a27-b935-ddfa1976b4e0
kill 3367665c-ead2-4cc7-847e-b5cb6dc5fe8d

#Waystone Marker
kill e370442d-c2f2-4495-9ceb-50b614118d0f
execute at @s run summon marker 0 0 0 {UUID:[I;-479181779,-1024310123,-1662299978,336694543]}
execute at @s run forceload add 0 0 0 0

#Initialize the clicker interaction's owner
function championsashes:clicker/item_thrower

tag @s[tag=dimension_switch_buffer] remove dimension_switch_buffer