-- intro funnies
set {0, 100, 'stealth', 100, 'dark'}
ease
{0, 16, linear, 0, 'dark'}
{12, 4, linear, 0, 'stealth'}

func {0, function()
    AFTSprite:linear(0.1)
    AFTSprite:diffusealpha(0.9 * aftMult)
end, persist = false}
func {12, function()
    AFTSprite:accelerate(4 * spb)
    AFTSprite:zoom(1.1)
end, persist = false}
func {16, function()
    AFTSprite:zoom(1.2)
    AFTSprite:decelerate(2 * spb)
    AFTSprite:zoom(1.005)
    AFTSprite:diffusealpha(0.85 * aftMult)
end, persist = false}

func {136, function()
    AFTSprite:diffusealpha(0.98 * aftMult)
    AFTSprite:accelerate(8 * spb)
    AFTSprite:diffusealpha(0 * aftMult)
end, persist = false}

ease
{128, 8, inExpo, 50, 'flip', 95, 'stealth', -1000, 'tiny', 2, 'xmod', 7500, 'longholds', 200, 'zoomy'}
func {136, function()
    for pn = 1, 2 do
        P[pn]:x(scx)
    end
end}
set
    {136, 0, 'xmod', 100, 'dizzyholds', 100, 'holdstealth'}
    {136, 100, 'stealth2', 100, 'stealth3', plr = 1}
    {136, 100, 'stealth0', 100, 'stealth1', plr = 2}
ease
    {136, 1.5, outExpo, 100, 'dark', 100, 'invert', -314.15, 'confusionzoffset'}
    {136, 1, outExpo, 0, 'drunk', 0, 'tipsy', 0, 'flip', 0.15, 'xmod', 0, 'rotationx', -314.15 / 4, 'confusionxoffset', -10000, 'tinyz', 0, 'tiny', 0, 'longholds'}
    {136, 7, inOutQuad, 0.5, 'xmod', 0, 'rotationx', 0, 'confusionxoffset', 100, 'zoomy', 0, 'tinyz', 0, 'stealth', 0, 'confusionzoffset'}
    {142, 2, spike, 50, 'stealth'}
    {142.5, 1, inOutExpo, 0, 'stealth2', 0, 'stealth3', plr = 1}
    {142.5, 1, inOutExpo, 0, 'stealth0', 0, 'stealth1', plr = 2}
    {142, 2, inExpo, 1.5, 'xmod', 100, 'wave', 15, 'tornado', -150, 'holdgirth', 200, 'bumpyperiod', 100, 'bumpyxperiod', 100, 'bumpyxoffset', 50, 'drunk', 50, 'tipsy'}
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
    {175.5, 2, bell, 0, 'noteskewx', 0, 'noteskewy', 0, 'tinyx', 0, 'tinyy', 0, 'tinyz', 0, 'beat', 0, 'drunk', 0, 'tipsy', 0, 'wave', 0, 'tornado', 0, 'bumpy', 0, 'bumpyx'}
    {176, 1, bounce, 20, 'flip', 70, 'dark'}
    {177, 1, outExpo, -50, 'flip', -50, 'invert'}
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
ease {200, 6, outQuad, 0, 'movey', 0, 'centered2'}


-- i ate some wubby bagels and now im wubby
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
    {211, 3, inverse, 10, 'rotationx', -314.15 / 18, 'confusionxoffset', 100, 'invert', 100, 'bumpy', -100, 'reverse'}
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
    {227, 3, inverse, 10, 'rotationx', -314.15 / 18, 'confusionxoffset', 100, 'invert', 100, 'bumpy', -100, 'reverse'}
    {227, 3, spike, -45, 'rotationy', 314.15 / 4, 'confusionyoffset', -800, 'zoomz'}

--[[ --goddammit shut up sudo
ease
    {234, 4, bounce, -400, 'bumpy', 400, 'bumpyperiod'}
]]--
add 
    {238, 4, inverse, -100, 'zoomx', 45, 'rotationx', 10000, 'parabolaz', 50, 'reverse', 5000, 'tinyz', 800, 'zoomz', 100, 'stealth'}
    {238, 2, bounce, 0.1, 'xmod', 100, 'brake'}
    {242, 5, spike, 40000, 'tinyz', 1000, 'longholds', 100, 'tornado'}
    {243.5, 2, bounce, 95, 'stealth'}
    {243, 3, bell, 800, 'tornadoperiod'}
    {243, 3, inverse, 10, 'rotationx', -314.15 / 18, 'confusionxoffset', 100, 'invert', 100, 'bumpy', -100, 'reverse'}
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

-- actually tornado
for beat = 256, 266, 2 do
    add
        {beat, 0.5, pop, -100, 'holdgirth', 100, 'noteskewx', -100, 'noteskewy', 15, 'zoom', -100, 'drunk', 100, 'tipsy'}
        {beat + 1, 0.5, pop, -100, 'holdgirth', -100, 'noteskewx', 100, 'noteskewy', 15, 'zoom', 100, 'drunk', -100, 'tipsy'}
end
add
    {256, 4, inQuad, 300, 'wave'}
    {256, 12, inQuad, 15, 'rotationz', 360 * 8, 'rotationy', -(314.15 * 16), 'confusionyoffset', -100, 'flip', -500, 'tiny', 210, 'tinyy'}
    {260, 8, inExpo, -5000, 'tinyz', 50, 'reverse'}
    {264, 4, inQuad, 0, 'zoomy'}
set {268, 100, 'zoomy', 0, 'wave', 0, 'rotationz', 0, 'rotationy', 0, 'tinyy', 0, 'tinyz', 0, 'reverse', 2000, 'z'}
ease {268, 4, outExpo, 0, 'tiny', 0, 'z', 0, 'flip'}

-- i am not floating again in space
func {272, function()
    AFTSprite:zoom(1.2)
    AFTSprite:diffusealpha(0.9 * aftMult)
    AFTSprite:decelerate(2 * spb)
    AFTSprite:zoom(1.005)
    AFTSprite:diffusealpha(0.85 * aftMult)
end, persist = false}

-- it may be a halo but this is definitely not holy
func {392, function()
    AFTSprite:diffusealpha(0.98 * aftMult)
    AFTSprite:accelerate(8 * spb)
    AFTSprite:diffusealpha(0 * aftMult)
end, persist = false}
ease {392, 4, outExpo, 200, 'drawsize'}
for beat = 432, 446, 4 do
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

set {460, 50, 'flip', 50, 'reverse'}
set {468, 30, 'targetx1', 0, 'targetx4', 0, 'targety2', 0, 'targety3', 0, 'rotationz', 0, 'xmod'}
ease
    {458, 2, inExpo, 400, 'z', 1000, 'zoomz', 60, 'rotationx', 1000, 'parabolaz'}
    {460, 3, outExpo, 0, 'z', 100, 'zoomz', 75, 'tiny', 50, 'reverse', -50, 'targetx1', 50, 'targetx4', 50, 'targety2', -50, 'targety3', 0, 'rotationx', 0, 'parabolaz', -360, 'rotationz'}
    {464, 1, outQuad, 100, 'stealth', 100, 'dark'}
    {468, 26, linear, 800, 'zoomz', -20000, 'tinyz'}
    {468, 26, inExpo, 1500, 'z'}
    {468, 26, inExpo, 50, 'stealth'}
    {494, 0.25, outExpo, 100, 'stealth'}