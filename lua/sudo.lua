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

func {108, function()
    AFTSprite:accelerate(4 * spb)
    AFTSprite:diffusealpha(0 * aftMult)
end, persist = false}

-- squinshies
func {136, function()
    for pn = 1, 2 do
        P[pn]:x(scx)
    end
end}
set
    {136, 0, 'xmod'}
    {136, 100, 'stealth2', 100, 'stealth3', plr = 1}
    {136, 100, 'stealth0', 100, 'stealth1', plr = 2}
ease
    {136, 1.5, outExpo, 100, 'dark'}
    {136, 4, outExpo, 0, 'drunk', 0, 'tipsy'}
    {136, 4, outExpo, 0.15, 'xmod', 0, 'rotationx', -314.15 / 4, 'confusionxoffset', -10000, 'tinyz'}
    {136, 6, inOutQuad, 0.5, 'xmod', 0, 'rotationx', 0, 'confusionxoffset', 0, 'tinyz'}
    {142, 2, spike, 50, 'stealth'}
    {142.5, 1, inOutExpo, 0, 'stealth2', 0, 'stealth3', plr = 1}
    {142.5, 1, inOutExpo, 0, 'stealth0', 0, 'stealth1', plr = 2}
    {142, 2, inExpo, 1.5, 'xmod', 100, 'wave', 15, 'tornado', -150, 'holdgirth', 200, 'bumpyperiod', 100, 'bumpyxperiod', 100, 'bumpyxoffset', 50, 'drunk', 50, 'tipsy'}
    {143, 1, inOutExpo, 100, 'dark', 50, 'beat'}
mirror
    {136, 6, outBack, 10, 'rotationy', -314.15 / 18, 'confusionyoffset'}
    {140, 4, inExpo, 0, 'rotationy', 0, 'confusionyoffset'}
    {142, 2, inExpo, 50, 'bumpy', 50, 'bumpyx'}
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
ease {191, 1, inOutSine, 0, 'wave', 0, 'tornado', 0, 'tinyz', 0, 'tinyy', 0, 'tinyx', 0, 'holdgirth', 0, 'bumpy', 0, 'bumpyx', 0, 'drunk', 0, 'tipsy', 0, 'dark', 0, 'beat'}

-- A DRIVEN DROP???? BY SUDO??????????
ease {192, 6, linear, 900, 'centered2'}
for beat = 193, 197 do
    add {beat, 0, instant, -150, 'movey'}
end
set {198, 0, 'centered2', 0, 'movey'}

-- WUBWUBWUBWUB
swap
    {206.5, 0.5, outExpo, 'dlru'}
    {207, 0.5, outExpo, 'urld'}
    {207.5, 0.5, outExpo, 'rudl'}
    {208, 0.5, outExpo, 'ldur'}
add 
    {206, 4, inverse, -100, 'zoomx', -45, 'rotationx', -10000, 'parabolaz', 50, 'reverse', 5000, 'tinyz'}
    {210, 5, spike, 40000, 'tinyz'}
    {211, 3, inverse, 10, 'rotationx', -314.15 / 18, 'confusionxoffset', 100, 'invert', 200, 'bumpy'}
    {211, 3, spike, 90, 'rotationy', -314.15 / 2, 'confusionyoffset'}
--[[ -- not sure about this part???
mirror
    {214, 0.5, inOutQuad, 30, 'tinyy', -30, 'tinyx', -100, 'drunk', 100, 'tipsy'}
    {214.5, 0.5, inOutQuad, -30, 'tinyy', 30, 'tinyx', 100, 'drunk', -100, 'tipsy'}
    {215, 0.5, inOutQuad, 30, 'tinyy', -30, 'tinyx', -100, 'drunk', 100, 'tipsy'}
    {215.5, 0.5, inOutQuad, -30, 'tinyy', 30, 'tinyx', 100, 'drunk', -100, 'tipsy'}
    {216, 0.5, inOutQuad, 0, 'tinyy', 0, 'tinyx', 0, 'drunk', 0, 'tipsy'}
]]--
ease
    {219.5, 0.5, outExpo, 100, 'invert'}
    {220, 0.5, outExpo, 100, 'reverse'}
    {220.6, 0.5, outExpo, 0, 'invert', 100, 'flip'}
    {221, 0.5, outExpo, 0, 'reverse'}
    {221.5, 0.5, outExpo, 0, 'flip'}
add
    {226, 5, spike, 40000, 'tinyz'}
    {227, 3, inverse, 10, 'rotationx', -314.15 / 18, 'confusionxoffset', 100, 'invert', 200, 'bumpy'}
    {227, 3, spike, -90, 'rotationy', 314.15 / 2, 'confusionyoffset'}

-- actually tornado
for beat = 256, 266, 2 do
    add
    {beat, 0.5, pop, 100, 'noteskewx', -100, 'noteskewy'}
    {beat + 1, 0.5, pop, -100, 'noteskewx', 100, 'noteskewy'}
end
add
{256, 4, inQuad, 300, 'wave'}
{256, 12, inQuad, 15, 'rotationz', 360 * 8, 'rotationy', -(314.15 * 16), 'confusionyoffset', -100, 'flip', -500, 'tiny', 210, 'tinyy'}
{260, 8, inExpo, -5000, 'tinyz', 50, 'reverse'}
{264, 4, inQuad, 0, 'zoomy'}
set {268, 100, 'zoomy', 0, 'wave', 0, 'rotationz', 0, 'rotationy', 0, 'tinyy', 0, 'tinyz', 0, 'reverse', 2000, 'z'}
ease {268, 2, outExpo, 0, 'tiny', 0, 'z', 0, 'flip'}