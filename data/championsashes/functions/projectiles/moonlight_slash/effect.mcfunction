damage @s 10 championsashes:frostbite by @a[limit=1,sort=nearest]
scoreboard players add @s frostbite_Timer 620
particle block diamond_block ~ ~1 ~ 0.5 0.5 0.5 0 250
particle sculk_soul ~ ~1 ~ 0.5 0.5 0.5 0 100
kill @e[tag=moonlight_slash,limit=1,sort=nearest]