scoreboard players remove @s itemCount 1
execute at @s unless entity 0001bf52-001d-4b42-0000-001d0000005c run item modify entity @s weapon.mainhand championsashes:remove_one_item
execute at @s unless entity 0001bf52-001d-4b42-0000-001d0000005c run function championsashes:entities/warden/summon
execute at @s run tp 0001bf52-001d-4b42-0000-001d0000005c ^ ^2 ^3
execute at @s run tp 608b1f41-bcc5-4617-96f9-a839c6c09b21 ^ ^ ^3
execute as 0001bf52-001d-4b42-0000-001d0000005c at @s if entity @s[advancements={championsashes:enter_block=true}] run function championsashes:entities/search_air