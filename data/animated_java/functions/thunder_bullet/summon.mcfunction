summon minecraft:item_display ~ ~ ~ {brightness:{block:15,sky:15},Passengers:[{id:"minecraft:item_display",Tags:["aj.new","aj.thunder_bullet.rig_entity","aj.thunder_bullet.bone","aj.thunder_bullet.bone.bone2"],transformation:[-1f,0f,1.2246467991473532e-16f,0f,0f,1f,0f,-0.3125f,-1.2246467991473532e-16f,0f,-1f,0f,0f,0f,0f,1f],interpolation_duration:1,item_display:"head",item:{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:43}},CustomName:"[{\"text\":\"[\",\"color\":\"gray\"},{\"text\":\"AJ\",\"color\":\"aqua\"},\"] \",[\"\",{\"text\":\"thunder_bullet\",\"color\":\"light_purple\"},\".\",{\"text\":\"bone\",\"color\":\"white\"},\"[\",{\"text\":\"bone2\",\"color\":\"yellow\"},\"]\"]]",height:10f,width:5f},{id:"minecraft:item_display",Tags:["aj.new","aj.thunder_bullet.rig_entity","aj.thunder_bullet.bone","aj.thunder_bullet.bone.bone1"],transformation:[-1f,0f,1.2246467991473532e-16f,0f,0f,1f,0f,-0.3125f,-1.2246467991473532e-16f,0f,-1f,0f,0f,0f,0f,1f],interpolation_duration:1,item_display:"head",item:{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:44}},CustomName:"[{\"text\":\"[\",\"color\":\"gray\"},{\"text\":\"AJ\",\"color\":\"aqua\"},\"] \",[\"\",{\"text\":\"thunder_bullet\",\"color\":\"light_purple\"},\".\",{\"text\":\"bone\",\"color\":\"white\"},\"[\",{\"text\":\"bone1\",\"color\":\"yellow\"},\"]\"]]",height:10f,width:5f},{id:"minecraft:item_display",Tags:["aj.new","aj.thunder_bullet.rig_entity","aj.thunder_bullet.bone","aj.thunder_bullet.bone.bone4"],transformation:[-1f,0f,1.2246467991473532e-16f,0f,0f,1f,0f,-0.3125f,-1.2246467991473532e-16f,0f,-1f,0f,0f,0f,0f,1f],interpolation_duration:1,item_display:"head",item:{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:45}},CustomName:"[{\"text\":\"[\",\"color\":\"gray\"},{\"text\":\"AJ\",\"color\":\"aqua\"},\"] \",[\"\",{\"text\":\"thunder_bullet\",\"color\":\"light_purple\"},\".\",{\"text\":\"bone\",\"color\":\"white\"},\"[\",{\"text\":\"bone4\",\"color\":\"yellow\"},\"]\"]]",height:6.5f,width:1.5f},{id:"minecraft:item_display",Tags:["aj.new","aj.thunder_bullet.rig_entity","aj.thunder_bullet.bone","aj.thunder_bullet.bone.bone3"],transformation:[-1f,0f,1.2246467991473532e-16f,0f,0f,1f,0f,-0.3125f,-1.2246467991473532e-16f,0f,-1f,0f,0f,0f,0f,1f],interpolation_duration:1,item_display:"head",item:{id:"minecraft:white_dye",Count:1b,tag:{CustomModelData:46}},CustomName:"[{\"text\":\"[\",\"color\":\"gray\"},{\"text\":\"AJ\",\"color\":\"aqua\"},\"] \",[\"\",{\"text\":\"thunder_bullet\",\"color\":\"light_purple\"},\".\",{\"text\":\"bone\",\"color\":\"white\"},\"[\",{\"text\":\"bone3\",\"color\":\"yellow\"},\"]\"]]",height:10f,width:5f}],Tags:["aj.new","aj.thunder_bullet.rig_entity","aj.thunder_bullet.root","aj.rig_root"],CustomName:"[{\"text\":\"[\",\"color\":\"gray\"},{\"text\":\"AJ\",\"color\":\"aqua\"},\"] \",[\"\",{\"text\":\"thunder_bullet\",\"color\":\"light_purple\"},\".\",{\"text\":\"root\",\"color\":\"white\"}]]"}
execute as @e[type=minecraft:item_display,tag=aj.thunder_bullet.root,tag=aj.new,limit=1,distance=..0.1] run function animated_java:thunder_bullet/zzzzzzzz/summon/as_root