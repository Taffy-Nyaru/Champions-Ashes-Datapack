scoreboard objectives remove aj.i
scoreboard objectives remove aj.id
scoreboard objectives remove aj.tween_time
scoreboard objectives remove aj.anim_time
scoreboard objectives remove aj.life_time
scoreboard objectives remove aj.write.export_version
scoreboard objectives remove aj.write.rig_loaded
scoreboard objectives remove aj.write.animation.nep.local_anim_time
scoreboard objectives remove aj.write.animation.cin.local_anim_time
scoreboard objectives remove aj.write.animation.nep.loop_mode
scoreboard objectives remove aj.write.animation.cin.loop_mode
tellraw @a ["",{"text":"["},{"text":"Animated Java","color":"aqua"},{"text":"] "},[{"text":"INFO ℹ","color":"green"},{"text":" > ","color":"gray"},{"text":"The write Rig has been uninstalled successfully.\n"},{"text":"Please remove the Rig's functions from the datapack before reloading.","color":"gray"}]]