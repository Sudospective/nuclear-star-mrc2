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
    {136, 6, inOutQuad, 0.5, 'xmod', 0, 'rotationx', 0, 'confusionxoffset', 100, 'zoomy', 0, 'tinyz', 0, 'stealth', 0, 'confusionzoffset'}
    {142, 2, spike, 50, 'stealth'}
    {142.5, 1, inOutExpo, 0, 'stealth2', 0, 'stealth3', plr = 1}
    {142.5, 1, inOutExpo, 0, 'stealth0', 0, 'stealth1', plr = 2}
    {142, 2, inExpo, 1.5, 'xmod', 100, 'wave', 15, 'tornado', -150, 'holdgirth', 200, 'bumpyperiod', 100, 'bumpyxperiod', 100, 'bumpyxoffset', 50, 'drunk', 50, 'tipsy'}
    {143, 1, inOutExpo, 100, 'dark', 50, 'beat',  0, 'holdstealth'}
    {143, 0.5, outExpo, 0, 'invert'}
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
ease
    {175.5, 2, bell, 0, 'noteskewx', 0, 'noteskewy', 0, 'tinyx', 0, 'tinyy', 0, 'tinyz', 0, 'beat', 0, 'drunk', 0, 'tipsy', 0, 'wave', 0, 'tornado', 0, 'bumpy', 0, 'bumpyx'}
    {176, 1, bounce, 20, 'flip', 70, 'dark'}
    {177, 1, outExpo, -25, 'flip', -25, 'invert'}
swap
    {177, 0.5, outExpo, 'ludr'}
    {178, 0.5, outExpo, 'ldur'}
    {178.5, 0.5, outExpo, 'ludr'}
    {179, 0.5, outExpo, 'ldur'}
    {180, 0.5, outExpo, 'ludr'}
    {181, 0.5, outExpo, 'ldur'}
    {181.5, 0.5, outExpo, 'ludr'}
    {182.5, 0.5, outExpo, 'ldur'}
    {183, 0.5, outExpo, 'ludr'}
    {183.5, 0.5, outExpo, 'ldur'}
    {184, 0.5, outExpo, 'ludr'}
    {185, 0.5, outExpo, 'ldur'}
    {186, 0.5, outExpo, 'ludr'}
    {186.5, 0.5, outExpo, 'ldur'}
    {187, 0.5, outExpo, 'ludr'}
    {188, 0.5, outExpo, 'ldur'}
    {188.5, 0.5, outExpo, 'ludr'}
    {189, 0.5, outExpo, 'ldur'}

set {190, 0, 'dark', 100, 'dark0', 100, 'dark1', 100, 'dark2', 100, 'dark3'}
ease
    {190, 0.5, outBack, 100, 'reverse0', 0, 'dark0'}
    {190.25, 0.5, outBack, 100, 'reverse1', 0, 'dark1'}
    {190.5, 0.5, outBack, 100, 'reverse2', 0, 'dark2'}
    {190.75, 0.5, outBack, 100, 'reverse3', 0, 'dark3'}

    {191, 1, outBack, 0, 'reverse0', 0, 'reverse1', 0, 'reverse2', 0, 'reverse3'}
    {191, 1, inExpo, 0, 'flip', 0, 'invert'}
    {191, 1, inOutSine, 0, 'wave', 0, 'tornado', 0, 'tinyz', 0, 'tinyy', 0, 'tinyx', 0, 'holdgirth', 0, 'bumpy', 0, 'bumpyx', 0, 'drunk', 0, 'tipsy', 0, 'dark', 0, 'beat'}

-- A DRIVEN DROP???? BY SUDO??????????
set {192, 150, 'movey'}
ease {192, 8, linear, 1200, 'centered2'}
for beat = 192, 199 do
    mirroradd {beat, 1, bounce, -350, 'movez'}
    add {beat, 1, bounce, -20, 'flip'}
    add {beat, 0, instant, -150, 'movey'}
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


-- WUBWUBWUBWUB
set {206, 200, 'tornadoperiod'}
swap
    {206.5, 0.5, outExpo, 'dlru'}
    {207, 0.5, outExpo, 'urld'}
    {207.5, 0.5, outExpo, 'rudl'}
    {208, 0.5, outExpo, 'ldur'}
add
    {206, 4, inverse, -100, 'zoomx', 45, 'rotationx', 10000, 'parabolaz', 50, 'reverse', 5000, 'tinyz', 800, 'zoomz', 100, 'stealth'}
    {210, 5, spike, 40000, 'tinyz', 1000, 'longholds', 100, 'tornado'}
    {211.5, 2, bounce, 95, 'stealth'}
    {211, 3, inverse, 10, 'rotationx', -314.15 / 18, 'confusionxoffset', 100, 'invert', 100, 'bumpy'}
    {211, 3, spike, 45, 'rotationy', -314.15 / 4, 'confusionyoffset', -800, 'zoomz'}
--[[ -- not sure about this part???
mirror
    {214, 0.5, inOutQuad, 30, 'tinyy', -30, 'tinyx', -100, 'drunk', 100, 'tipsy'}
    {214.5, 0.5, inOutQuad, -30, 'tinyy', 30, 'tinyx', 100, 'drunk', -100, 'tipsy'}
    {215, 0.5, inOutQuad, 30, 'tinyy', -30, 'tinyx', -100, 'drunk', 100, 'tipsy'}
    {215.5, 0.5, inOutQuad, -30, 'tinyy', 30, 'tinyx', 100, 'drunk', -100, 'tipsy'}
    {216, 0.5, inOutQuad, 0, 'tinyy', 0, 'tinyx', 0, 'drunk', 0, 'tipsy'}
]]--
ease
    {219.5, 0.5, outExpo, 100, 'invert', -10, 'rotationy', 800, 'zoomz'}
    {220, 0.5, outExpo, 100, 'reverse'}
    {220.5, 0.5, outExpo, 0, 'invert', 100, 'flip', 10, 'rotationy'}
    {221, 0.5, outExpo, 0, 'reverse'}
    {221.5, 0.5, outExpo, 0, 'flip', 0, 'rotationy', 100, 'zoomz'}
add
    {226, 5, spike, 40000, 'tinyz', 1000, 'longholds', 100, 'tornado'}
    {227.5, 2, bounce, 95, 'stealth'}
    {227, 3, inverse, 10, 'rotationx', -314.15 / 18, 'confusionxoffset', 100, 'invert', 200, 'bumpy'}
    {227, 3, spike, -45, 'rotationy', 314.15 / 4, 'confusionyoffset', -800, 'zoomz'}

add 
    --{238, 4, inverse, -100, 'zoomx', -45, 'rotationx', -10000, 'parabolaz', 50, 'reverse', 5000, 'tinyz'} -- maybe something else a second time
    {242, 5, spike, 40000, 'tinyz', 1000, 'longholds', 100, 'tornado'}
    {243.5, 2, bounce, 95, 'stealth'}
    {243, 3, inverse, 10, 'rotationx', -314.15 / 18, 'confusionxoffset', 100, 'invert', 200, 'bumpy'}
    {243, 3, spike, 45, 'rotationy', -314.15 / 4, 'confusionyoffset', -800, 'zoomz'}
ease
    {251.5, 0.5, outExpo, 100, 'invert', -10, 'rotationy', 800, 'zoomz'}
    {252, 0.5, outExpo, 100, 'reverse'}
    {252.5, 0.5, outExpo, 0, 'invert', 100, 'flip', 10, 'rotationy'}
    {253, 0.5, outExpo, 0, 'reverse'}
    {253.5, 0.5, outExpo, 0, 'flip', 0, 'rotationy', 100, 'zoomz'}
set {256, 100, 'tornadoperiod'}

-- actually tornado
for beat = 256, 266, 2 do
    add
    {beat, 1, pop, 100, 'noteskewx', -100, 'noteskewy', 15, 'zoom'}
    {beat + 1, 1, pop, -100, 'noteskewx', 100, 'noteskewy', 15, 'zoom'}
end
add
    {256, 4, inQuad, 300, 'wave'}
    {256, 12, inQuad, 15, 'rotationz', 360 * 8, 'rotationy', -(314.15 * 16), 'confusionyoffset', -100, 'flip', -500, 'tiny', 210, 'tinyy'}
    {260, 8, inExpo, -5000, 'tinyz', 50, 'reverse'}
    {264, 4, inQuad, 0, 'zoomy'}
set {268, 100, 'zoomy', 0, 'wave', 0, 'rotationz', 0, 'rotationy', 0, 'tinyy', 0, 'tinyz', 0, 'reverse', 2000, 'z'}
ease {268, 4, outExpo, 0, 'tiny', 0, 'z', 0, 'flip'}