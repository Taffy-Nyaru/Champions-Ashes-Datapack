execute if entity @s[tag=aj.gravity_orb.locator_origin.gravity_orb] at @s on origin run tp @s ^0 ^0 ^0 ~-136.06481 ~-37.75041
execute if entity @s[tag=aj.gravity_orb.bone.core] run data modify entity @s {} merge value {transformation:[-1.5877899892203442f,-2.134488029084654f,-1.745611436795261f,0f,2.5015674279121702f,-0.2677419404834901f,-1.9480118432287497f,0f,1.1598960462838876f,-2.344472348193702f,1.8117301274788582f,0f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.gravity_orb.bone.outside] run data modify entity @s {} merge value {transformation:[7.877118504286117f,-1.8876303373246794f,7.1088603600749405f,0f,3.629338760440322f,10.0573711957124f,-1.3510087466852323f,0f,-6.39741698433038f,3.3814458714085625f,7.9866713709364054f,0f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.gravity_orb.bone.inside] run data modify entity @s {} merge value {transformation:[-3.32882474827786f,-4.474985120424383f,-3.659699702814127f,0f,5.244572405705107f,-0.5613248626608485f,-4.084035091355108f,0f,2.4317388889669016f,-4.91522029191813f,3.7983184970914246f,0f,0f,0f,0f,1f],start_interpolation:0}