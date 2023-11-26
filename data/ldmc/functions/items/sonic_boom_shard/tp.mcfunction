execute at @s unless entity @e[tag=WARDEN] run item replace entity @s weapon.mainhand with air
execute at @s unless entity @e[tag=WARDEN] run function ldmc:entities/warden/summon
execute at @s run tp 0001bf52-001d-4b42-0000-001d0000005c ^ ^2 ^3
execute at @s run tp 608b1f41-bcc5-4617-96f9-a839c6c09b21 ^ ^ ^3
execute as @e[tag=WARDEN] at @s if entity @s[advancements={ldmc:enter_block=true}] run function ldmc:entities/search_air