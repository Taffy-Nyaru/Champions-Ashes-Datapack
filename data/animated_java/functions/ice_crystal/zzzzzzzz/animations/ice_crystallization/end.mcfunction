execute if score @s aj.ice_crystal.animation.ice_crystallization.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:ice_crystal/zzzzzzzz/animations/ice_crystallization/end_loop
execute if score @s aj.ice_crystal.animation.ice_crystallization.loop_mode = $aj.loop_mode.once aj.i run function animated_java:ice_crystal/animations/ice_crystallization/stop
execute if score @s aj.ice_crystal.animation.ice_crystallization.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:ice_crystal/animations/ice_crystallization/pause