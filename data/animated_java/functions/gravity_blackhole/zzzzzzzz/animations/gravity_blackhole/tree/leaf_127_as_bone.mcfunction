execute if entity @s[tag=aj.gravity_blackhole.bone.right_arm2] run data modify entity @s {} merge value {transformation:[-0.959796354982262f,0.2659908368092886f,-0.0896651085777403f,-0.3789977092023221f,0.24691291073808708f,0.9519790463090971f,0.18102461130815134f,1.1370052384227258f,0.13351019239597026f,0.15160728914506796f,-0.9793825904132025f,-0.03790182228626703f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.gravity_blackhole.bone.right_arm] run data modify entity @s {} merge value {transformation:[-0.959796354982262f,0.2659908368092886f,-0.0896651085777403f,-0.3125f,0.24691291073808708f,0.9519790463090971f,0.18102461130815134f,1.375f,0.13351019239597026f,0.15160728914506796f,-0.9793825904132025f,-3.827021247335479e-17f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.gravity_blackhole.bone.meteorite_staff_effects] run data modify entity @s {} merge value {transformation:[0.000005775164242883495f,-0.000001416806401758063f,0.000008039909053444408f,0.26162884997580993f,0.0000018075523227134956f,0.000009825739675266471f,4.331217317884823e-7f,1.984457867338568f,-0.000007961170301430124f,0.0000012031207145718058f,0.0000059306212134813716f,-1.1394264968501995f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.gravity_blackhole.bone.meteorite_staff] run data modify entity @s {} merge value {transformation:[1.506012851606825f,-0.21842432027103467f,0.24688503036905227f,0.3970756250000001f,0.24426102199826188f,1.5148015332702474f,-0.1498298336299687f,1.1137688088715607f,-0.2213548170665279f,0.18548111016315338f,1.5143760807161475f,-1.2362863663854364f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.gravity_blackhole.bone.left_arm2] run data modify entity @s {} merge value {transformation:[-1f,-1.1864306423196619e-16f,-3.035491947391933e-17f,0.4375f,0f,-0.24786672773777388f,0.968794139784386f,1.364095153158666f,-1.2246467991473532e-16f,0.968794139784386f,0.24786672773777388f,-0.2497620553954644f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.gravity_blackhole.bone.head] run data modify entity @s {} merge value {transformation:[-1f,-2.7954966439258044e-17f,1.1923136197325992e-16f,0f,0f,0.9735979553963922f,0.22826962401503342f,1.51875f,-1.2246467991473532e-16f,0.22826962401503342f,-0.9735979553963922f,0f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.gravity_blackhole.bone.right_leg2] run data modify entity @s {} merge value {transformation:[-0.983041167342898f,0.18210115525441548f,0.02166177656886757f,-0.19004075192625272f,0.18253276991623704f,0.9829972095815319f,0.01995679988445094f,0.413009444603822f,-0.017659309607635735f,0.0235723399332613f,-0.9995661526753757f,-0.024132163320195178f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.gravity_blackhole.bone.right_leg] run data modify entity @s {} merge value {transformation:[-0.983041167342898f,0.18098296188174676f,0.029584300188148237f,-0.12499999999999999f,0.18253276991623704f,0.9811911106676258f,0.06281554149680695f,0.765625f,-0.017659309607635735f,0.0671503674996735f,-0.9975865761570974f,-1.3877787807814457e-17f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.gravity_blackhole.bone.left_leg2] run data modify entity @s {} merge value {transformation:[-0.9850017441808161f,-0.16827903432752428f,0.038127818801317534f,0.18693588203677491f,-0.17217464668494528f,0.9730520308276481f,-0.15338069090046486f,0.4116753185207413f,-0.011289596966431894f,-0.15764489179160096f,-0.9874313308237438f,-0.005827531386275312f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.gravity_blackhole.bone.left_leg] run data modify entity @s {} merge value {transformation:[-0.9850017441808161f,-0.17234332392841714f,0.008327223910456736f,0.125f,-0.17217464668494528f,0.9849034615075024f,0.017918218367179987f,0.765625f,-0.011289596966431894f,0.01621573950963571f,-0.9998047783404974f,2.0816681711721685e-17f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.gravity_blackhole.locator_origin.player_camera] at @s on origin run tp @s ^0 ^0.0625 ^-0.125 ~0 ~0
execute if entity @s[tag=aj.gravity_blackhole.bone.vortex] run data modify entity @s {} merge value {transformation:[-1.0179555611143444e-15f,14.658622638614279f,-6.098146158359392f,-0.25541495770700284f,-9.168928571428571f,-3.5252866385697107e-15f,1.3219824894636414e-15f,4.525334183673468f,2.54488890278586e-16f,6.098146158359392f,14.658622638614283f,-14.61963167868705f,0f,0f,0f,1f],start_interpolation:0}
execute if entity @s[tag=aj.gravity_blackhole.locator_origin.gravity_tornado] at @s on origin run tp @s ^-0.5 ^1.97113 ^-15.21268 ~-157.41216 ~0
execute if entity @s[tag=aj.gravity_blackhole.locator_origin.gravity_tornado2] at @s on origin run tp @s ^-0.5 ^4.59083 ^-15.21268 ~-157.41216 ~0
execute if entity @s[tag=aj.gravity_blackhole.locator_origin.gravity_tornado3] at @s on origin run tp @s ^-0.5 ^7.21052 ^-15.21268 ~-157.41216 ~0
execute if entity @s[tag=aj.gravity_blackhole.locator_origin.gravity_tornado4] at @s on origin run tp @s ^-0.5 ^9.83021 ^-15.21268 ~-157.41216 ~0
execute if entity @s[tag=aj.gravity_blackhole.locator_origin.gravity_tornado5] at @s on origin run tp @s ^-0.5 ^12.44991 ^-15.21268 ~-157.41216 ~0
execute if entity @s[tag=aj.gravity_blackhole.locator_origin.gravity_tornado6] at @s on origin run tp @s ^-0.5 ^15.0696 ^-15.21268 ~-157.41216 ~0
execute if entity @s[tag=aj.gravity_blackhole.bone.tornado] run data modify entity @s {} merge value {transformation:[-1.3184948220147697e-15f,18.986406465252777f,-7.898551214636926f,-0.4999999999999981f,-11.87594557823129f,-4.566085550909339e-15f,1.712282081591002e-15f,17.951265306122448f,3.296237055036923e-16f,7.898551214636926f,18.986406465252784f,-15.21268221574344f,0f,0f,0f,1f],start_interpolation:0}