execute if score @s aj.chainsaw.animation.chainsaw.loop_mode = $aj.loop_mode.loop aj.i run function animated_java:chainsaw/zzzzzzzz/animations/chainsaw/end_loop
execute if score @s aj.chainsaw.animation.chainsaw.loop_mode = $aj.loop_mode.once aj.i run function animated_java:chainsaw/animations/chainsaw/stop
execute if score @s aj.chainsaw.animation.chainsaw.loop_mode = $aj.loop_mode.hold aj.i run function animated_java:chainsaw/animations/chainsaw/pause