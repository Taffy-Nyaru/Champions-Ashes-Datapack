scoreboard objectives remove aj.i
scoreboard objectives remove aj.id
scoreboard objectives remove aj.tween_time
scoreboard objectives remove aj.anim_time
scoreboard objectives remove aj.life_time
scoreboard objectives remove aj.electric_beacon.export_version
scoreboard objectives remove aj.electric_beacon.rig_loaded
scoreboard objectives remove aj.electric_beacon.animation.electric_blast.local_anim_time
scoreboard objectives remove aj.electric_beacon.animation.electric_void.local_anim_time
scoreboard objectives remove aj.electric_beacon.animation.electric_blast.loop_mode
scoreboard objectives remove aj.electric_beacon.animation.electric_void.loop_mode
tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},[{"text":"INFO ℹ","color":"green"},{"text":" > ","color":"gray"},{"text":"The electric_beacon Rig has been uninstalled successfully.\n"},{"text":"Please remove the Rig's functions from the datapack before reloading.","color":"gray"}]]