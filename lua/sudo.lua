-- squinshies
func {136, function()
    for pn = 1, 2 do
        P[pn]:x(scx)
    end
end}
ease {142, 2, inExpo, 100, 'wave', 25, 'tornado', -150, 'holdgirth', 200, 'bumpyperiod', 100, 'bumpyxperiod', 100, 'bumpyxoffset'}
mirror {142, 2, inExpo, 50, 'bumpy', 50, 'bumpyx', 30, 'drunk', 60, 'tipsy'}
for beat = 144, 190, 2 do
    mirror
    {beat - 0.5, 1, inOutQuad, 100, 'tinyy', -100, 'tinyx'}
    {beat + 0.5, 1, inOutQuad, -100, 'tinyy', 100, 'tinyx'}
    ease
    {beat - 0.5, 1, inOutQuad, 5000, 'tinyz', plr = 1}
    {beat - 0.5, 1, inOutQuad, -2500, 'tinyz', plr = 2}
    {beat + 0.5, 1, inOutQuad, -2500, 'tinyz', plr = 1}
    {beat + 0.5, 1, inOutQuad, 5000, 'tinyz', plr = 2}
end
ease {191, 1, inOutSine, 0, 'wave', 0, 'tornado', 0, 'tinyz', 0, 'tinyy', 0, 'tinyx', 0, 'holdgirth', 0, 'bumpy', 0, 'bumpyx', 0, 'drunk', 0, 'tipsy'}

-- WUBWUBWUBWUB
add 
{208, 2, pop, 1000, 'zoomx'}
{210, 5, spike, 40000, 'tinyz'}
{211, 3, inverse, 10, 'rotationx', -314.15 / 18, 'confusionxoffset', 100, 'invert', 200, 'bumpy'}
{211, 3, spike, 90, 'rotationy', -314.15 / 2, 'confusionyoffset'}
mirror
{214, 0.5, inOutQuad, 30, 'tinyy', -30, 'tinyx', -100, 'drunk', 100, 'tipsy'}
{214.5, 0.5, inOutQuad, -30, 'tinyy', 30, 'tinyx', 100, 'drunk', -100, 'tipsy'}
{215, 0.5, inOutQuad, 30, 'tinyy', -30, 'tinyx', -100, 'drunk', 100, 'tipsy'}
{215.5, 0.5, inOutQuad, -30, 'tinyy', 30, 'tinyx', 100, 'drunk', -100, 'tipsy'}
{216, 0.5, inOutQuad, 0, 'tinyy', 0, 'tinyx', 0, 'drunk', 0, 'tipsy'}
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

-- S P E E N
add
{256, 4, inQuad, 300, 'wave'}
{256, 12, inQuad, 15, 'rotationz', 360 * 8, 'rotationy', -(314.15 * 16), 'confusionyoffset', -100, 'flip', -200, 'tiny', 210, 'tinyy'}
{260, 8, inExpo, -5000, 'tinyz', 50, 'reverse'}
set {268, 0, 'wave', 0, 'rotationz', 0, 'rotationy', 0, 'tinyy', 0, 'tinyz', 0, 'reverse', 2000, 'z'}
ease {268, 2, outExpo, 0, 'tiny', 0, 'z', 0, 'flip'}