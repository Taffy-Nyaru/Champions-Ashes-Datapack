execute unless block ^ ^ ^1 air run scoreboard players add @s nep_block_destroy_timer 1
execute unless block ^ ^-1 ^1 air run scoreboard players add @s nep_block_destroy_timer 1

execute if block ^ ^ ^1 air run scoreboard players set @s nep_block_destroy_timer 0
execute if block ^ ^-1 ^1 air run scoreboard players set @s nep_block_destroy_timer 0