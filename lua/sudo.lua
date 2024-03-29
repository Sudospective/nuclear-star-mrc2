-- intro funnies
set
    {0, 1500, 'z', 800, 'zoomz', -20000, 'tinyz', 100, 'stealth', 100, 'dark', 0, 'xmod', 100, 'warpspeed', 10, 'warprotation', 1600, 'warpdilation'}
    {16, -100, 'warpspeed'}
ease
    {0, 16, linear, 100, 'zoomz', 0, 'tinyz'}
    {0, 16, linear, 0, 'dark'}
    {0, 16, outExpo, 0, 'z'}
    {0, 16, inCubic, 1.5, 'xmod'}
    {0, 16, inExpo, 0, 'stealth'}
    {16, 2, outExpo, 10, 'warpspeed', 1, 'warprotation', 100, 'warpdilation'}
    {32, 3, inSine, 50, 'stealth'}
    {35, 1, outSine, 0, 'stealth'}
    {64, 3, inSine, 50, 'stealth'}
    {67, 1, outSine, 0, 'stealth'}
    {96, 3, inSine, 50, 'stealth'}
    {99, 1, outSine, 0, 'stealth'}

func {0, function()
    AFTSprite:linear(0.1)
    AFTSprite:diffusealpha(0.9 * nukestar_aftMult)
end, persist = false}
func {12, function()
    AFTSprite:accelerate(4 * spb)
    AFTSprite:zoom(1.1)
end, persist = false}
func {16, function()
    AFTSprite:zoom(1.2)
    AFTSprite:decelerate(4 * spb)
    AFTSprite:zoom(1.005)
    AFTSprite:diffusealpha(0.85 * nukestar_aftMult)
end, persist = false}

-- its time to fucikgn S P E E D
func {76, function()
    AFTSprite:zoom(1.05)
    AFTSprite:diffusealpha(0.9 * nukestar_aftMult)
    AFTSprite:decelerate(2 * spb)
    AFTSprite:zoom(1.005)
    AFTSprite:diffusealpha(0.85 * nukestar_aftMult)
    AFTSprite:accelerate(2 * spb)
    AFTSprite:zoom(1.05)
    AFTSprite:diffusealpha(0.9 * nukestar_aftMult)
end, persist = false}
func {80, function()
    AFTSprite:zoom(1.2)
    AFTSprite:decelerate(2 * spb)
    AFTSprite:zoom(1.005)
    AFTSprite:diffusealpha(0.85 * nukestar_aftMult)
end, persist = false}

func {136, function()
    AFTSprite:zoom(1.2)
    AFTSprite:diffusealpha(0.9 * nukestar_aftMult)
    AFTSprite:decelerate(8 * spb)
    AFTSprite:zoom(1.005)
    AFTSprite:diffusealpha(0 * nukestar_aftMult)
end, persist = false}

ease
    {112, 24, inSine, 100, 'warpspeed', 100, 'warprotation'}
    {128, 8, inExpo, 1600, 'warpdilation', 50, 'flip', 95, 'stealth', -2000, 'tiny', 2, 'xmod', 7500, 'longholds', -150, 'holdgirth', 200, 'zoomy'}
func {136, function()
    for pn = 1, 2 do
        P[pn]:x(scx)
    end
end}
set
    {136, 0, 'xmod', 100, 'dizzyholds', 100, 'holdstealth', -100, 'warpspeed'}
    {136, 100, 'stealth2', 100, 'stealth3', plr = 1}
    {136, 100, 'stealth0', 100, 'stealth1', plr = 2}
ease
    {136, 8, outQuad, 5, 'warpspeed', 0, 'warprotation', 100, 'warpdilation'}
    {136, 1.5, outExpo, 100, 'dark', 100, 'invert', -314.15, 'confusionzoffset'}
    {136, 1, outExpo, 0, 'holdgirth', 400, 'zoomz', 0, 'drunk', 0, 'tipsy', 0, 'flip', 0.15, 'xmod', 0, 'rotationx', -314.15 / 6, 'confusionxoffset', -10000, 'tinyz', 0, 'tiny', 0, 'longholds'}
    {136, 7, inOutQuad, 100, 'zoomz', 0.5, 'xmod', 0, 'rotationx', 0, 'confusionxoffset', 100, 'zoomy', 0, 'tinyz', 0, 'stealth', 0, 'confusionzoffset'}
    {142, 2, spike, 50, 'stealth'}
    {142.5, 1, inOutExpo, 0, 'stealth2', 0, 'stealth3', plr = 1}
    {142.5, 1, inOutExpo, 0, 'stealth0', 0, 'stealth1', plr = 2}
    {142, 2, inExpo, 1.5, 'xmod', 100, 'wave', 15, 'tornado', -150, 'holdgirth', 200, 'bumpyperiod', 100, 'bumpyxperiod', 100, 'bumpyxoffset', 50, 'drunk', 50, 'tipsy', 50, 'warpspeed', 25, 'warprotation'}
    {143, 1, inOutExpo, 100, 'dark', 50, 'beat',  0, 'holdstealth'}
    {142.5, 1, outBack, 0, 'invert'}
mirror
    {136, 6, outBack, 10, 'rotationy', -314.15 / 18, 'confusionyoffset'}
    {140, 4, inExpo, 0, 'rotationy', 0, 'confusionyoffset'}
    {142, 2, inExpo, 50, 'bumpy', 50, 'bumpyx'}

-- squinshies
for beat = 144, 190, 2 do
    mirror
        {beat, 1, pop, 50, 'noteskewx', -50, 'noteskewy'}
        {beat + 1, 1, pop, -50, 'noteskewx', 50, 'noteskewy'}
        {beat - 0.5, 1, inOutQuad, 100, 'tinyy', -100, 'tinyx'}
        {beat + 0.5, 1, inOutQuad, -100, 'tinyy', 100, 'tinyx'}
    ease
        {beat - 0.5, 1, inOutQuad, 5000, 'tinyz', plr = 1}
        {beat - 0.5, 1, inOutQuad, -2500, 'tinyz', plr = 2}
        {beat + 0.5, 1, inOutQuad, -2500, 'tinyz', plr = 1}
        {beat + 0.5, 1, inOutQuad, 5000, 'tinyz', plr = 2}
        {beat, 1, bounce, 0, 'wave'}
        {beat + 1, 1, bounce, 0, 'wave'}
end

set {175, 0, 'dark', 100, 'dark0', 100, 'dark1', 100, 'dark2', 100, 'dark3'}
ease
    {175.5, 2, bell, 0, 'noteskewx', 0, 'noteskewy', 0, 'tinyx', 0, 'tinyy', 0, 'tinyz', 0, 'beat', 0, 'drunk', 0, 'tipsy', 0, 'wave', 0, 'tornado', 0, 'bumpy', 0, 'bumpyx', -50, 'warpspeed', -1, 'warprotation'}
    {176, 1, bounce, -400, 'tiny', 25, 'flip', 70, 'dark', 25, 'warpdilation'}
    {177, 1, outExpo, -50, 'flip', -50, 'invert', 75, 'warpspeed', -35, 'warprotation'}
    {176, 1, inBack, -25, 'cross', 100, 'movey1', 100, 'movey2', 1.75, 'xmod'}
    {177, 1, outSine, 0, 'dark1', 0, 'dark2', plr = 1}
swap
    {177, 0.5, outQuad, 'ludr'}
    {178, 0.5, outQuad, 'ldur'}
    {178.5, 0.5, outQuad, 'ludr'}
    {179, 0.5, outQuad, 'ldur'}
    {180, 0.5, outQuad, 'ludr'}
    {181, 0.5, outQuad, 'ldur'}
    {181.5, 0.5, outQuad, 'ludr'}
    {182.5, 0.5, outQuad, 'ldur'}
    {183, 0.5, outQuad, 'ludr'}
    {183.5, 0.5, outQuad, 'ldur'}
    {184, 0.5, outQuad, 'ludr'}
    {185, 0.5, outQuad, 'ldur'}
    {186, 0.5, outQuad, 'ludr'}
    {186.5, 0.5, outQuad, 'ldur'}
    {187, 0.5, outQuad, 'ludr'}
    {188, 0.5, outQuad, 'ldur'}
    {188.5, 0.5, outQuad, 'ludr'}
    {189, 0.5, outQuad, 'ldur'}
ease
    {177, 1, linear, 0, 'cross', 0, 'movey1', 0, 'movey2', 1.5, 'xmod'}
    {189, 1, linear, 100, 'dark1', 100, 'dark2', plr = 1}
    {189, 1, inBack, 0, 'flip', 0, 'invert'}
    {190, 0.5, outBack, 100, 'reverse0', 0, 'dark0'}
    {190.25, 0.5, outBack, 100, 'reverse1', 0, 'dark1'}
    {190.5, 0.5, outBack, 100, 'reverse2', 0, 'dark2'}
    {190.75, 0.5, outBack, 100, 'reverse3', 0, 'dark3'}

    {191, 1, outBack, 0, 'reverse0', 0, 'reverse1', 0, 'reverse2', 0, 'reverse3'}
    {191, 1, inOutSine, 0, 'wave', 0, 'tornado', 0, 'tinyz', 0, 'tinyy', 0, 'tinyx', 0, 'holdgirth', 0, 'bumpy', 0, 'bumpyx', 0, 'drunk', 0, 'tipsy', 0, 'dark', 0, 'beat'}

-- A DRIVEN DROP???? BY SUDO??????????
set {192, 150, 'movey'}
ease {192, 8, linear, 1200, 'centered2'}
for beat = 192, 199 do
    mirroradd
        {beat, 1, bounce, -350, 'movez'}
        {beat, 0.5, pop, 150, 'drunk', 150, 'tipsy'}
    add
        {beat, 1, bounce, -20, 'flip'}
        {beat, 0, instant, -150, 'movey'}
        {beat, 1, pop, 100, 'stealth', plr = 1}
        {beat, 1, pop, 20, 'stealth', plr = 2}
end
swap
    {192, 0.5, outExpo, 'dlru'}
    {193, 0.5, outExpo, 'rudl'}
    {194, 0.5, outExpo, 'ldur'}
    {195, 0.5, outExpo, 'drul'}
    {196, 0.5, outExpo, 'udrl'}
    {197, 0.5, outExpo, 'ldur'}
    {198, 0.5, outExpo, 'urld'}
    {199, 0.5, outExpo, 'ldur'}
ease
    {200, 6, outQuad, 100, 'warpspeed', 200, 'warpdilation'}
    {200, 1, outExpo, 0, 'movey', 0, 'centered2'}
    {200, 1, outExpo, 10, 'rotationz', -360, 'rotationy', 314.15 * 2, 'confusionyoffset'}
    {200.75, 1, outExpo, 100, 'reverse'}
    {201.5, 1, pop, 100, 'flip', 0, 'rotationz', 800, 'zoomz', 30, 'rotationx', 750, 'parabolaz'}
    {202, 1, outExpo, -10, 'rotationz', 0, 'rotationy', 0, 'confusionyoffset'}
    {202.75, 1, outExpo, 0, 'reverse'}
    {203.5, 1, pop, 100, 'flip', 0, 'rotationz', 800, 'zoomz', 30, 'rotationx', 750, 'parabolaz'}
    {204, 1, outExpo, 10, 'rotationz', -360, 'rotationy', 314.15 * 2, 'confusionyoffset'}
    {204.75, 1, outExpo, 100, 'reverse'}
    {205.25, 1, pop, 100, 'flip', 0, 'rotationz', 800, 'zoomz', 30, 'rotationx', 750, 'parabolaz'}
    {206, 1, outExpo, 0, 'rotationz', 0, 'reverse'}


-- WUBWUBWUBWUB
swap
    {206.5, 0.5, outExpo, 'dlru'}
    {207, 0.5, outExpo, 'urld'}
    {207.5, 0.5, outExpo, 'rudl'}
    {208, 0.5, outExpo, 'ldur'}
add
    {206, 4, inverse, -100, 'zoomx', 45, 'rotationx', 10000, 'parabolaz', 50, 'reverse', 5000, 'tinyz', 800, 'zoomz', 100, 'stealth'}
    {210, 5, spike, 40000, 'tinyz', 1000, 'longholds', 100, 'tornado'}
    {211.5, 2, bounce, 95, 'stealth'}
    {211, 3, bell, 800, 'tornadoperiod'}
    {211, 3, inverse, 30, 'rotationx', -314.15 / 6, 'confusionxoffset', 1500, 'parabolaz', 100, 'invert', 100, 'bumpy', -100, 'reverse'}
    {211, 3, spike, 45, 'rotationy', -314.15 / 4, 'confusionyoffset', -800, 'zoomz'}
    {216, 1, outExpo, 400, 'zoomz'}
    {217, 1, inExpo, 100, 'zoomz'}
mirror
    {216, 1, outExpo, 15, 'rotationz', 60, 'rotationy', 50, 'spiralx'}
    {217, 1, inExpo, 0, 'rotationz', 0, 'rotationy', 0, 'spiralx'}
mirroradd
    {214, 7, spike, -30, 'rotationz', -120, 'rotationy'}
ease
    {218.5, 1, bell, 100, 'reverse'}
mirror
    {219.5, 0.5, inOutQuad, 30, 'tinyy', -30, 'tinyx', -50, 'drunk', 50, 'tipsy'}
    {220, 0.5, inOutQuad, -30, 'tinyy', 30, 'tinyx', 50, 'drunk', -50, 'tipsy'}
    {220.5, 0.5, inOutQuad, 30, 'tinyy', -30, 'tinyx', -50, 'drunk', 50, 'tipsy'}
    {221, 0.5, inOutQuad, -30, 'tinyy', 30, 'tinyx', 50, 'drunk', -50, 'tipsy'}
    {221.5, 0.5, inOutQuad, 0, 'tinyy', 0, 'tinyx', 0, 'drunk', 0, 'tipsy'}
ease
    {219.5, 0.5, outExpo, 100, 'invert', -10, 'rotationy', 800, 'zoomz'}
    {220, 0.5, outExpo, 100, 'reverse'}
    {220.5, 0.5, outExpo, 0, 'invert', 100, 'flip', 10, 'rotationy'}
    {221, 0.5, outExpo, 0, 'reverse'}
    {221.5, 0.5, outExpo, 0, 'flip', 0, 'rotationy', 100, 'zoomz'}
ease
    {222, 2, pop, 50, 'reverse', 50, 'flip', 200, 'drunk', 200, 'tipsy'}
add
    {222, 2, outExpo, 360, 'rotationz', -314.15 * 2, 'confusionzoffset'}
    {226, 5, spike, 40000, 'tinyz', 1000, 'longholds', 100, 'tornado'}
    {227.5, 2, bounce, 95, 'stealth'}
    {227, 3, bell, 800, 'tornadoperiod'}
    {227, 3, inverse, 30, 'rotationx', -314.15 / 6, 'confusionxoffset', 1500, 'parabolaz', 100, 'invert', 100, 'bumpy', -100, 'reverse'}
    {227, 3, spike, -45, 'rotationy', 314.15 / 4, 'confusionyoffset', -800, 'zoomz'}
    {238, 4, inverse, -100, 'zoomx', 45, 'rotationx', 10000, 'parabolaz', 50, 'reverse', 5000, 'tinyz', 800, 'zoomz', 100, 'stealth'}
    {238, 2, bounce, 0.1, 'xmod', 100, 'brake'}
    {242, 5, spike, 40000, 'tinyz', 1000, 'longholds', 100, 'tornado'}
    {243.5, 2, bounce, 95, 'stealth'}
    {243, 3, bell, 800, 'tornadoperiod'}
    {243, 3, inverse, 30, 'rotationx', -314.15 / 6, 'confusionxoffset', 1500, 'parabolaz', 100, 'invert', 100, 'bumpy', -100, 'reverse'}
    {243, 3, spike, 45, 'rotationy', -314.15 / 4, 'confusionyoffset', -800, 'zoomz'}
ease
    {250.5, 1, bell, 100, 'reverse'}
mirror
    {251.5, 0.5, inOutQuad, 30, 'tinyy', -30, 'tinyx', -50, 'drunk', 50, 'tipsy'}
    {252, 0.5, inOutQuad, -30, 'tinyy', 30, 'tinyx', 50, 'drunk', -50, 'tipsy'}
    {252.5, 0.5, inOutQuad, 30, 'tinyy', -30, 'tinyx', -50, 'drunk', 50, 'tipsy'}
    {253, 0.5, inOutQuad, -30, 'tinyy', 30, 'tinyx', 50, 'drunk', -50, 'tipsy'}
    {253.5, 0.5, inOutQuad, 0, 'tinyy', 0, 'tinyx', 0, 'drunk', 0, 'tipsy'}
ease
    {251.5, 0.5, outExpo, 100, 'invert', -10, 'rotationy', 800, 'zoomz'}
    {252, 0.5, outExpo, 100, 'reverse'}
    {252.5, 0.5, outExpo, 0, 'invert', 100, 'flip', 10, 'rotationy'}
    {253, 0.5, outExpo, 0, 'reverse'}
    {253.5, 0.5, outExpo, 0, 'flip', 0, 'rotationy', 100, 'zoomz'}
for beat = 240, 255, 2 do
    add
        {beat, 0.5, pop, -100, 'holdgirth', -100, 'drunk', 100, 'tipsy'}
        {beat + 1, 0.5, pop, -100, 'holdgirth', 100, 'drunk', -100, 'tipsy'}
end

-- This part's for the starfield
ease
    {206, 2, outExpo, -10, 'warpspeed', 100, 'warpdilation'}
    {207, 2, inOutExpo, 200, 'warpspeed', -50, 'warprotation'}
    {208, 2, inExpo, 20, 'warpspeed', -10, 'warprotation'}
    {208, 8, spike, -100, 'warpspeed', 400, 'warpdilation'}
    {222, 2, pop, 50, 'warpspeed'}
    {224, 2, bounce, 200, 'warpspeed', 50, 'warpdilation'}
    {224, 8, spike, -100, 'warpspeed', 400, 'warpdilation'}
    {238, 2, pop, 5, 'warpspeed', 10, 'warpdilation'}
    {239, 1, inExpo, 100, 'warpspeed', 100, 'warprotation'}

-- Actually Tornado
for beat = 256, 266, 2 do
    add
        {beat, 0.5, pop, -100, 'holdgirth', 100, 'noteskewx', -100, 'noteskewy', 15, 'zoom', -100, 'drunk', 100, 'tipsy'}
        {beat + 1, 0.5, pop, -100, 'holdgirth', -100, 'noteskewx', 100, 'noteskewy', 15, 'zoom', 100, 'drunk', -100, 'tipsy'}
end
add
    {256, 4, inQuad, 300, 'wave'}
    {256, 12, inQuad, 15, 'rotationz', 360 * 8, 'rotationy', -(314.15 * 16), 'confusionyoffset', -100, 'flip', -500, 'tiny', 210, 'tinyy', 1500, 'warprotation'}
    {256, 12, inExpo, 1000, 'warpspeed', 3200, 'warpdilation'}
    {260, 8, inExpo, -5000, 'tinyz', 50, 'reverse'}
    {264, 4, inQuad, 0, 'zoomy'}
set {268, 90, 'rotationx', 2400, 'parabolaz', 6400, 'zoomz', 100, 'zoomy', 0, 'wave', 0, 'rotationz', 0, 'rotationy', 0, 'tinyy', 0, 'tinyz', 0, 'reverse', 200, 'z', -1000, 'warpspeed', 200, 'warprotation', 3200, 'warpdilation'}
ease {268, 4, outExpo, 0, 'rotationx', 0, 'parabolaz', 100, 'zoomz', 0, 'tiny', 0, 'z', 0, 'flip', 5, 'warpspeed', 1, 'warprotation', 100, 'warpdilation'}

-- i am not floating again in space
func {272, function()
    AFTSprite:zoom(1.2)
    AFTSprite:diffusealpha(0.9 * nukestar_aftMult)
    AFTSprite:decelerate(2 * spb)
    AFTSprite:zoom(1.005)
    AFTSprite:diffusealpha(0.85 * nukestar_aftMult)
end, persist = false}

ease
    {271, 2, inOutExpo, 1, 'warpspeed', -2, 'warprotation', 25, 'warpdilation', 0.45, 'xmod', 100, 'drunk', 25, 'drunkperiod', 100, 'drunkz', 25, 'tipsyperiod', -100, 'attenuatex', -100, 'attenuatez', 100, 'tornado', 400, 'tornadoperiod', 100, 'tornadoz', 800, 'tornadozperiod', 100, 'dark', -75, 'flip', -25, 'targetx1', 25, 'targetx4', 25, 'targetz2', -25, 'targetz3', 200, 'wave', -70, 'reverse', 100, 'dark', 1300, 'z', 314.15 * 2, 'confusionzoffset', 800, 'zoomz', -90, 'rotationx', 314.15 / 2, 'confusionxoffset'}
    {270, 4, spike, 100, 'warpspeed'}
    {332, 4, inOutQuad, 25, 'warpspeed', -10, 'warprotation', 1.5, 'xmod', 0, 'drunk', 0, 'drunkperiod', 0, 'drunkz', 0, 'tipsyperiod', 0, 'attenuatex', 0, 'attenuatez', 0, 'tornado', 0, 'tornadoperiod', 0, 'tornadoz', 0, 'tornadozperiod', 0, 'dark', 0, 'flip', 0, 'targetx1', 0, 'targetx4', 0, 'targetz2', 0, 'targetz3', 0, 'wave', 0, 'reverse', 0, 'z', 0, 'confusionzoffset', 100, 'zoomz', 0, 'rotationx', 0, 'confusionxoffset'}
    {328, 16, inOutQuad, 100, 'warpdilation'}
mirror {332, 4, inExpo, 30, 'drunk', 30, 'tipsy'}
-- it may be a halo but this is definitely not holy
func {392, function()
    AFTSprite:diffusealpha(0.98 * nukestar_aftMult)
    AFTSprite:accelerate(8 * spb)
    AFTSprite:diffusealpha(0 * nukestar_aftMult)
end, persist = false}
set {391, 100, 'halgun'}
ease
    {384, 8, inExpo, 95, 'stealth', -1000, 'tiny', 2, 'xmod', 7500, 'longholds', 200, 'zoomy'}
    {392, 4, outExpo, 200, 'drawsize', 0, 'drunk', 0, 'tipsy'}
    {392, 1.5, outExpo, 100, 'dark', 100, 'invert'}
    {392, 1, outExpo, 0.15, 'xmod', 0, 'rotationx', -314.15 / 4, 'confusionxoffset', -10000, 'tinyz', 0, 'tiny', 0, 'longholds'}
    {392, 7, inOutQuad, 0.5, 'xmod', 0, 'dark', 0, 'confusionzoffset', 0, 'rotationx', 0, 'confusionxoffset', 100, 'zoomy', 0, 'tinyz', 0, 'stealth', 0, 'confusionzoffset'}
    {398, 2, inExpo, 1.5, 'xmod'}
    {398.5, 1, outBack, 0, 'invert'}
    {448, 12, inSine, 200, 'warpspeed', 400, 'warprotation', 400, 'warpdilation'}
mirror
    {398, 2, inExpo, 200, 'beat'}
    {446, 2, inExpo, 0, 'beat'}
add
    {456, 8, inQuad, 90, 'offset'}
for beat = 432, 444, 4 do
    mirroradd
        {beat, 1, outExpo, -200, 'movex'}
        {beat + 1, 1, outExpo, 200, 'movex'}
        {beat + 2, 1, outExpo, -200, 'movex'}
        {beat + 3, 1, outExpo, 200, 'movex'}
    ease
        {beat, 1, outExpo, 100, 'invert', -100, 'flip', 0, 'eccentricityx', 0, 'eccentricityz', 200, 'amt'}
        {beat + 1, 1, outExpo, 0, 'invert', 50, 'flip', 90, 'eccentricityx', 320, 'eccentricityz', 400, 'amt'}
        {beat + 2, 1, outExpo, 225, 'invert', -75, 'flip', 0, 'eccentricityx', 0, 'eccentricityz', 200, 'amt'}
        {beat + 3, 1, outExpo, 0, 'invert', 50, 'flip', 90, 'eccentricityx', 320, 'eccentricityz', 400, 'amt'}
end

for beat = 432, 447 do
    ease {beat, 1, pop, -200, 'warprotation'}
end

-- Just use your imagination.
func {460, function()
    StarFrame:hidden(1)
    ImagineText:hidden(0)
    ImagineText:decelerate(spb)
    ImagineText:z(10)
    ImagineText:decelerate(spb)
    ImagineText:z(0)
end, persist = false}
func {464, function()
    StarFrame:hidden(0)
    ImagineText:hidden(1)
    AFTSprite:zoom(1.01)
    AFTSprite:diffusealpha(0.9 * nukestar_aftMult)
    AFTSprite:decelerate(2 * spb)
    AFTSprite:zoom(1.005)
    AFTSprite:diffusealpha(0.85 * nukestar_aftMult)
end, persist = false}
func {492, function()
    for pn = 1, 2 do
        P[pn]:xy(scx, scy)
    end
    AFTSprite:accelerate(2 * spb)
    AFTSprite:diffusealpha(0 * nukestar_aftMult)
end, persist = false}
func {494, function()
    for pn = 1, 2 do
        PJ[pn]:hidden(1)
        PC[pn]:hidden(1)
    end
    StarFrame:hidden(1)
    ImagineScore1:hidden(0)
    ImagineScore1:sleep(4 * spb)
    ImagineScore1:decelerate(4 * spb)
    ImagineScore1:diffusealpha(0)
    ImagineScore2:hidden(0)
    ImagineScore2:sleep(4 * spb)
    ImagineScore2:decelerate(4 * spb)
    ImagineScore2:diffusealpha(0)
end, persist = false}

set
    {460, 50, 'flip', 50, 'reverse', 100, 'disablemines'}
    {465, 0, 'targetx1', 0, 'targetx4', 0, 'targety2', 0, 'targety3', 0, 'rotationz', 0, 'xmod'}
ease
    {458, 2, inExpo, 400, 'z', 1000, 'zoomz', 60, 'rotationx', 1000, 'parabolaz'}
    {460, 3, outExpo, 1, 'warpspeed', 1, 'warprotation', 50, 'warpdilation', 100, 'z', 100, 'zoomz', 75, 'tiny', 50, 'reverse', -50, 'targetx1', 50, 'targetx4', 50, 'targety2', -50, 'targety3', 0, 'rotationx', 0, 'parabolaz', 360, 'rotationz'}
    {464, 1, outQuart, 100, 'stealth', 100, 'dark'}
    {464, 1.5, tap, 50, 'z', 1000, 'zoomz'}
    {468, 26, linear, 800, 'zoomz', -20000, 'tinyz'}
    {468, 26, inExpo, 1500, 'z', 100, 'stealth'}
    {488, 6, inExpo, 200, 'warpspeed', 800, 'warpdilation'}
    {492, 2, inExpo, 50, 'stealth'}
    {494, 0.25, outExpo, 100, 'stealth'}