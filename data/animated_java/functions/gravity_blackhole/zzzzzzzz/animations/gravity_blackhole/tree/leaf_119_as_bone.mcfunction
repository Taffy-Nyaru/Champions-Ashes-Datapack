execute if entity @s[tag=aj.gravity_blackhole.bone.right_arm2] run data modify entity @s {} merge value {transformation:[-0.9421435185593232f,0.32295573154217055f,-0.08980638006689569f,-0.3932389328855426f,0.30337079122367433f,0.9354489238250943f,0.18138763449252773f,1.1411377690437265f,0.1425894577764431f,0.14364855160611434f,-0.9793024763332754f,-0.035912137901528626f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.gravity_blackhole.bone.right_arm] run data modify entity @s {} merge value {transformation:[-0.9421435185593232f,0.32295573154217055f,-0.08980638006689569f,-0.3125f,0.30337079122367433f,0.9354489238250943f,0.18138763449252773f,1.375f,0.1425894577764431f,0.14364855160611434f,-0.9793024763332754f,-3.827021247335479e-17f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.gravity_blackhole.bone.meteorite_staff_effects] run data modify entity @s {} merge value {transformation:[0.000009875818799830598f,-5.85417208687229e-7f,0.000001457905938215936f,0.3452046938369971f,5.693817147263265e-7f,0.000009982627328595597f,1.5151264406505395e-7f,2.040619397934925f,-0.0000014642429770525625f,-6.662064356585785e-8f,0.000009891994449755979f,-1.4409556118934976f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.gravity_blackhole.bone.meteorite_staff] run data modify entity @s {} merge value {transformation:[1.2355153494993911f,-0.09025181967261445f,-0.9176560037989657f,0.39707562500000015f,0.07858634881649575f,1.5389883798251542f,-0.04555286658320889f,1.1558909034532947f,0.9187285333776226f,-0.010270682549736416f,1.2379695093777048f,-1.4211566907726203f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.gravity_blackhole.bone.left_arm2] run data modify entity @s {} merge value {transformation:[-1f,-1.1741755260577608e-16f,-3.479534691145329e-17f,0.4375f,0f,-0.28412556939420547f,0.958787077935669f,1.364095153158666f,-1.2246467991473532e-16f,0.958787077935669f,0.28412556939420547f,-0.2497620553954644f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.gravity_blackhole.bone.head] run data modify entity @s {} merge value {transformation:[-1f,-2.2354054765951837e-17f,1.2040720103938718e-16f,0f,0f,0.9831994100112732f,0.18253470944859856f,1.51875f,-1.2246467991473532e-16f,0.18253470944859856f,-0.9831994100112732f,0f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.gravity_blackhole.bone.right_leg2] run data modify entity @s {} merge value {transformation:[-0.9826606026497228f,0.18395574709577847f,0.02320394601178201f,-0.1906824369024229f,0.18460554861052525f,0.9823569970508154f,0.02992526971492955f,0.41339556491563617f,-0.017289633376410884f,0.03368996075596219f,-0.9992827703518015f,-0.027760280396803484f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.gravity_blackhole.bone.right_leg] run data modify entity @s {} merge value {transformation:[-0.9826606026497228f,0.18276852007630723f,0.031205897987402798f,-0.12499999999999999f,0.18460554861052525f,0.9801166889304037f,0.07274659787446554f,0.765625f,-0.017289633376410884f,0.07724599762588792f,-0.9968621391288218f,-1.3877787807814457e-17f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.gravity_blackhole.bone.left_leg2] run data modify entity @s {} merge value {transformation:[-0.9850017441808161f,-0.16875580966920034f,0.03595887461591152f,0.18696926756015653f,-0.1721746466849453f,0.9749454796960699f,-0.14084460465035334f,0.41178751015132925f,-0.011289596966431895f,-0.14492338777123834f,-0.9893784698876577f,-0.010451376973851284f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.gravity_blackhole.bone.left_leg] run data modify entity @s {} merge value {transformation:[-0.9850017441808161f,-0.17243622277608772f,0.0061084396915795725f,0.125f,-0.1721746466849453f,0.9845912761006491f,0.03059264724422651f,0.765625f,-0.011289596966431895f,0.029082092448977543f,-0.9995132699965141f,2.0816681711721685e-17f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.gravity_blackhole.locator_origin.player_camera] at @s on origin run tp @s ^0 ^0.0625 ^-0.125 ~0 ~0
execute if entity @s[tag=aj.gravity_blackhole.bone.vortex] run data modify entity @s {} merge value {transformation:[-1.965015451941911e-15f,-17.331321387079377f,-0.2760954870641554f,-1.003069053546959f,-8.849642857142856f,3.848814690990579e-15f,6.01377295467278e-17f,4.434573979591837f,-2.4064498834957516e-31f,0.2760954870641554f,-17.33132138707938f,-15.517467095685566f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.gravity_blackhole.locator_origin.gravity_tornado] at @s on origin run tp @s ^-0.5 ^1.96932 ^-15.03017 ~-0.91267 ~0
execute if entity @s[tag=aj.gravity_blackhole.locator_origin.gravity_tornado2] at @s on origin run tp @s ^-0.5 ^4.49779 ^-15.03017 ~-0.91267 ~0
execute if entity @s[tag=aj.gravity_blackhole.locator_origin.gravity_tornado3] at @s on origin run tp @s ^-0.5 ^7.02626 ^-15.03017 ~-0.91267 ~0
execute if entity @s[tag=aj.gravity_blackhole.locator_origin.gravity_tornado4] at @s on origin run tp @s ^-0.5 ^9.55472 ^-15.03017 ~-0.91267 ~0
execute if entity @s[tag=aj.gravity_blackhole.locator_origin.gravity_tornado5] at @s on origin run tp @s ^-0.5 ^12.08319 ^-15.03017 ~-0.91267 ~0
execute if entity @s[tag=aj.gravity_blackhole.locator_origin.gravity_tornado6] at @s on origin run tp @s ^-0.5 ^14.61166 ^-15.03017 ~-0.91267 ~0
execute if entity @s[tag=aj.gravity_blackhole.bone.tornado] run data modify entity @s {} merge value {transformation:[-2.5451628710866658e-15f,-22.448187701359956f,-0.35760939276881076f,-0.49999999999999817f,-11.462394557823126f,4.9851314092830354e-15f,7.789267827004743e-17f,17.392979591836735f,-3.116925563384973e-31f,0.35760939276881076f,-22.44818770135996f,-15.030174927113702f,0f,0f,0f,1f],start_interpolation:0}