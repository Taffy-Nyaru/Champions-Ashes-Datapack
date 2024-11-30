damage @s 30 championsashes:frostbite by @a[limit=1,sort=nearest]
scoreboard players add @s frostbite_Timer 1024
particle block diamond_block ~ ~1 ~ 0.5 0.5 0.5 0 250
particle snowflake ~ ~1 ~ 0.5 0.5 0.5 0 100
particle soul_fire_flame ~ ~1 ~ 1 1 1 0 100
kill @e[tag=moonlight_slash,limit=1,sort=nearest]