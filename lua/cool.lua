-- literally just start putting mods here
local cool_intro = {
	{0.000,0,1},
	{0.250,1,1},
	{0.500,2,1},
	{0.750,3,1},
	{1.000,2,1},
	{1.250,1,1},
	{1.500,0,1},
	{1.750,1,1},
	{2.000,0,1},
	{2.250,1,1},
	{2.500,0,1},
	{2.750,1,1},
	{3.000,2,1},
	{3.250,3,1},
	{3.500,2,1},
	{3.750,1,1},
	{4.000,0,1},
	{4.250,1,1},
	{4.500,0,1},
	{4.750,1,1},
	{5.000,2,1},
	{5.250,3,1},
	{5.500,2,1},
	{5.750,1,1},
	{6.000,0,1},
	{6.250,1,1},
	{6.500,0,1},
	{6.750,1,1},
	{7.000,0,1},
	{7.250,1,1},
	{7.500,0,1},
	{7.750,1,1},
	{8.000,2,1},
	{8.250,3,1},
	{8.500,2,1},
	{8.750,1,1},
	{9.000,0,1},
	{9.250,1,1},
	{9.500,0,1},
	{9.750,1,1},
	{10.000,2,1},
	{10.250,3,1},
	{10.500,2,1},
	{10.750,1,1},
	{11.000,0,1},
	{11.250,1,1},
	{11.500,0,1},
	{11.750,1,1},
	{12.000,2,1},
	{12.250,3,1},
	{12.500,2,1},
	{12.750,1,1},
	{13.000,0,1},
	{13.250,1,1},
	{13.500,0,1},
	{13.750,1,1},
	{14.000,2,1},
	{14.250,3,1},
	{14.500,2,1},
	{14.750,1,1},
	{15.000,0,1},
	{15.250,1,1},
	{15.500,0,1},
	{15.750,1,1},
}

aux 'xpos'
node {'xpos', function(x, pn)
    P[pn]:x(x)
end}
aux 'ypos'
node {'ypos', function(y, pn)
    P[pn]:y(y)
end}

definemod{'offset','amt','eccentricityx','eccentricityz',function(offset,amt,ex,ez,plr)
    local pi=math.pi/4
    local movex0, movex1, movex2, movex3 =
        math.cos(pi*(offset+0+(plr+1)*4))*(amt*ex/100),
        math.cos(pi*(offset+1+(plr+1)*4))*(amt*ex/100),
        math.cos(pi*(offset+2+(plr+1)*4))*(amt*ex/100),
        math.cos(pi*(offset+3+(plr+1)*4))*(amt*ex/100)

    local movez0, movez1, movez2, movez3 =
        math.sin(pi*(offset+0+(plr+1)*4))*(amt*ez/100),
        math.sin(pi*(offset+1+(plr+1)*4))*(amt*ez/100),
        math.sin(pi*(offset+2+(plr+1)*4))*(amt*ez/100),
        math.sin(pi*(offset+3+(plr+1)*4))*(amt*ez/100)

    return movex0, movex1, movex2, movex3, movez0, movez1, movez2, movez3
end,
'movex0','movex1','movex2','movex3',
'movez0','movez1','movez2','movez3',
}
--TO USE: 
--flip should be at 50%, and both players should be centered
--amt is the size of the circle
--offset is the rotation offset, in pi radians / 4 (4 offset should be 1 rotation)
--eccentricity is how much of an oval it is, 100 is circular, anything else is an oval
setdefault{90,'eccentricityx',320,'eccentricityz'}
    
set {0, scx, 'xpos',1000,'tipsy',3000,'drunk',720,'rotationz',-1256,'confusionoffset', plr = 1}
set {0, scx, 'xpos',-1000,'tipsy',-3000,'drunk',-720,'rotationz',1256,'confusionoffset', plr = 2}
set {0, scy, 'ypos', plr = 1}
set {0, scy, 'ypos', plr = 2}
set {0, 50, 'reverse'}

for i,v in ipairs(cool_intro) do
    ease{v[1],0.1,outExpo,-100,'tiny'..v[2]}
    ease{v[1]+0.1,0.4,outExpo,0,'tiny'..v[2]}
end
ease{0,16,outSine,30,'tipsy',30,'drunk',0,'rotationz',0,'confusionoffset', plr = 1}
ease{0,16,outSine,-30,'tipsy',-30,'drunk',0,'rotationz',0,'confusionoffset', plr = 2}
ease{12,4,inQuad,0,'reverse'}
local plonky_synth = {
	{16.000,3,1},
	{17.500,3,1},
	{19.500,2,1},
	{19.750,1,1},
	{20.000,0,1},
	{21.500,0,1},
	{23.500,2,1},
	{23.750,1,1},
	{24.000,3,1},
	{25.500,3,1},
	{27.333,1,1},
	{27.667,2,1},
	{28.000,0,1},
	{29.500,0,1},
	{31.000,1,1},
	{32.000,2,1},
	{33.500,2,1},
	{35.000,3,1},
	{35.500,1,1},
	{36.000,2,1},
	{37.500,2,1},
	{39.000,0,1},
	{39.500,1,1},
	{40.000,2,1},
	{41.500,2,1},
	{43.000,2,1},
    {44.000,3,1},
    {48.000,3,1},
	{49.500,3,1},
	{51.500,1,1},
	{51.750,2,1},
	{52.000,0,1},
	{53.500,0,1},
	{55.500,1,1},
	{55.750,2,1},
	{56.000,3,1},
	{57.500,3,1},
	{59.500,2,1},
	{59.750,1,1},
    {60.000,0,1},
    {80.000,3,1},
	{81.500,3,1},
	{83.500,1,1},
	{83.750,2,1},
	{84.000,0,1},
	{85.500,0,1},
	{87.500,1,1},
	{87.750,2,1},
	{88.000,3,1},
	{89.500,3,1},
	{91.333,2,1},
	{91.667,1,1},
	{92.000,0,1},
	{93.500,0,1},
	{95.000,2,1},
	{96.000,1,1},
	{97.500,1,1},
	{99.000,3,1},
	{99.500,2,1},
	{100.000,1,1},
	{101.500,1,1},
	{103.000,0,1},
	{103.500,2,1},
	{104.000,1,1},
	{105.500,1,1},
	{107.000,1,1},
	{108.500,1,1},
	{110.000,1,1},
	{272.000,3,1},
	{273.000,1,1},
	{273.500,2,1},
	{274.500,0,1},
	{275.000,1,1},
	{278.667,0,1},
	{279.333,3,1},
	{280.000,2,1},
	{281.000,1,1},
	{281.500,2,1},
	{282.500,3,1},
	{283.000,1,1},
	{286.667,2,1},
	{287.333,0,1},
	{288.000,3,1},
	{289.000,2,1},
	{289.500,1,1},
	{290.500,0,1},
	{291.000,2,1},
	{294.667,0,1},
	{295.333,3,1},
	{296.000,1,1},
	{297.000,2,1},
	{297.500,1,1},
	{298.500,3,1},
	{299.000,0,1},
	{300.000,3,1},
	{300.500,2,1},
	{301.000,1,1},
	{301.500,0,1},
	{302.000,3,1},
	{302.500,1,1},
	{303.000,2,1},
	{303.500,0,1},
	{304.000,3,1},
	{305.000,2,1},
	{305.500,1,1},
	{306.500,0,1},
	{307.000,2,1},
	{310.667,0,1},
	{311.333,3,1},
	{312.000,1,1},
	{313.000,2,1},
	{313.500,1,1},
	{314.500,3,1},
	{315.000,2,1},
	{318.667,1,1},
	{319.333,0,1},
	{320.000,3,1},
	{321.000,1,1},
	{321.500,2,1},
	{322.500,0,1},
	{323.000,1,1},
	{326.667,0,1},
	{327.333,3,1},
	{328.000,2,1},
	{329.000,1,1},
	{329.500,2,1},
	{330.500,3,1},
	{331.000,0,1},
	{332.000,3,1},
	{332.500,2,1},
	{333.000,1,1},
	{333.500,0,1},
	{334.000,3,1},
	{334.500,1,1},
	{335.000,2,1},
	{335.500,0,1},
	{336.000,3,1},
	{337.500,3,1},
	{339.500,2,1},
	{339.750,1,1},
	{340.000,0,1},
	{341.500,0,1},
	{343.500,2,1},
	{343.750,1,1},
	{344.000,3,1},
	{345.500,3,1},
	{347.333,1,1},
	{347.667,2,1},
	{348.000,0,1},
	{349.500,0,1},
	{351.000,1,1},
	{352.000,2,1},
	{353.500,2,1},
	{355.000,3,1},
	{355.500,1,1},
	{356.000,2,1},
	{357.500,2,1},
	{359.000,0,1},
	{359.500,1,1},
	{360.000,2,1},
	{361.500,2,1},
	{363.000,2,1},
	{364.500,2,1},
}
local arrowpath = {
	{44.000,3,1},
	{44.250,1,1},
	{44.500,2,1},
	{44.750,0,1},
	{45.000,3,1},
	{45.250,1,1},
	{45.500,2,1},
	{45.750,0,1},
	{46.000,3,1},
	{46.250,1,1},
	{46.500,2,1},
	{46.750,0,1},
	{47.000,3,1},
	{47.250,1,1},
	{47.500,2,1},
	{47.750,0,1},
}
for i,v in ipairs(plonky_synth) do
    ease{v[1],0.25,outSine,-100,'tiny'..v[2], rand.float(-75,75),'confusionoffset'..v[2]}
    ease{v[1]+0.25,2.5,inOutSine,0,'tiny'..v[2],0,'confusionoffset'..v[2]}
end
local arrowpathb = 20
for i,v in ipairs(arrowpath) do
    ease{v[1],0.25,outSine,arrowpathb,'arrowpath'..v[2]}
    ease{v[1]+0.25,1,inOutSine,0,'arrowpath'..v[2]}
    arrowpathb = arrowpathb + 5
end
local kickykicks = 20
for i = 60,76 do
    ease{i,0.25,outSine,kickykicks,'beat',}
   -- ease{i+0.25,2,inOutSine,0,'mini'}
    kickykicks = kickykicks + 20
end
ease{76,1,outCubic,0,'beat'}
mirror{76,4,inOutSine,70,'tipsy',70,'drunk'}

ease{112,24,inQuad,360*8,'rotationy',-628*8,'confusionyoffset'}
set{136,0,'rotationy',0,'confusionyoffset'}

--BRING IT BACK--
set{209,-40,'tornadoperiod'}
ease{209.75,0.25,outCubic,25,'flip'}
ease{210,0.25,outQuad,-100,'flip',400,'tornado',100,'tipsy'}
ease{210.25,0.75,inCubic,0,'flip',0,'tornado',0,'tipsy'}
mirror{210,0.25,outQuad,-100,'movey'}
mirror{210.25,0.75,inQuad,0,'movey'}

set {214, 75, 'movey'} -- 150 for 1.5x
ease {214, 2, linear, 300, 'centered2'} -- Multiple of previous number
for beat = 214, 216, 0.5 do
    add {beat, 0, instant, -75, 'movey'} -- Same number as first
    mirroradd{beat, 0.5, outCubic, -100,'drunk'}
end
set{216,0,'centered2',0,'movey',0,'drunk'}

ease{224,1,outCubic,250,'amt',50,'flip'}
ease{224,2,inCubic,0,'amt',0,'flip'}
ease{224,1.75,outCubic,10,'offset'}

ease{225.75,0.25,outCubic,25,'flip'}
ease{226,0.25,outQuad,-100,'flip',400,'drunk',100,'tipsy'}
ease{226.25,0.75,inCubic,0,'flip',0,'drunk',0,'tipsy'}
mirror{226,0.25,outQuad,-500,'movez'}
mirror{226.25,0.75,inQuad,0,'movez'}

set {230, 75, 'movey'} -- 150 for 1.5x
ease {230, 2, linear, 300, 'centered2'} -- Multiple of previous number
for beat = 230, 232, 0.5 do
    add {beat, 0, instant, -75, 'movey'} -- Same number as first
    mirroradd{beat, 0.5, outCubic, -100,'bumpyx'}
end
set{232,0,'centered2',0,'movey',0,'bumpyx'}
ease{232,1,outExpo,90,'zoomx',200,'zoomy'}
ease{233,1,outExpo,150,'zoomx',80,'zoomy',100,'distant',2,'xmod'}
ease{234,1,outExpo,100,'zoomx',100,'zoomy'}
local bewahh = {
	{234.000,1,1},
	{234.750,2,1},
	{235.000,1,1},
	{235.500,0,1},
	{236.000,3,1},
	{236.750,1,1},
	{237.500,2,1},
}
for i,v in ipairs(bewahh) do
    add{v[1],0.5,outQuad,20,'distant'}
end

ease {234, 4, linear, 800, 'centered2'} -- Multiple of previous number
ease {238, 4, outElastic, 0, 'centered2', 0, 'distant', 1.5, 'xmod'}

set {246, 75, 'movey'} -- 150 for 1.5x
ease {246, 2, linear, 300, 'centered2'} -- Multiple of previous number
for beat = 246, 248, 0.5 do
    add {beat, 0, instant, -75, 'movey'} -- Same number as first
    mirroradd{beat, 0.5, outCubic, -100,'tipsy',100,'drunk'}
end
set{248,0,'centered2',0,'movey',0,'tipsy',0,'drunk',0,'offset'}
ease{248,1,outExpo,200,'amt',50,'flip',-10,'offset'}

local e_offset = -10
for i = 249,250.5,0.5 do
	ease{i,1,outBack,e_offset+1,'offset'}
	e_offset = e_offset + 1
end
ease{251,1,outExpo,0,'amt',0,'flip',0,'offset'}

ease{254,0.5,outExpo,100,'reverse',-50,'flip'}
set{254.5,-628,'confusionyoffset',360,'rotationy'}
ease{254.5,1.5,outCubic,0,'reverse',0,'flip',0,'confusionyoffset',0,'rotationy'}

--second half--


local blips = {
	{298.000,3,1},
	{298.250,1,1},
	{298.500,2,1},
	{298.750,0,1},
	{299.000,3,1},
	{299.250,1,1},
	{299.500,2,1},
	{299.750,0,1},
	{300.000,3,1},
	{300.250,1,1},
	{300.500,2,1},
	{300.750,0,1},
	{301.000,3,1},
	{301.250,1,1},
	{301.500,2,1},
	{301.750,0,1},
	{302.000,3,1},
	{302.250,1,1},
	{302.500,2,1},
	{302.750,0,1},
	{303.000,3,1},
	{303.250,1,1},
	{303.500,2,1},
	{303.750,0,1},
}
arrowpathb = 0
for i,v in ipairs(blips) do
    ease{v[1],0.25,outSine,arrowpathb,'arrowpath'..v[2]}
    ease{v[1]+0.25,1,inOutSine,0,'arrowpath'..v[2]}
    arrowpathb = arrowpathb + 5
end


--ease{364,4,outSine,2.5,'xmod',50,'flip'}
ease{368,16,inSine,400,'amt',50,'flip'}
ease{368,24,inCubic,55,'offset'}
ease{392,8,outCubic,45,'offset'}
local offset_speen = 45
for i = 400,447 do
    ease{i,1,outBack,offset_speen+1,'offset'}
    offset_speen = offset_speen + 1
end
for i = 448,449.5,0.5 do
	ease{i,1,outBack,offset_speen+1,'offset'}
	offset_speen = offset_speen + 1
end
for i = 450,451.5,0.5 do
	ease{i,1,outBack,offset_speen-1,'offset'}
	offset_speen = offset_speen - 1
end
for i = 452,453.5,0.5 do
	ease{i,1,outBack,offset_speen+1,'offset'}
	offset_speen = offset_speen + 1
end
for i = 454,455.5,0.5 do
	ease{i,1,outBack,offset_speen-1,'offset'}
	offset_speen = offset_speen - 1
end
ease{456,4,inExpo,offset_speen+20,'offset'}

ease{460,4,instant,0,'amt'}



--background bs--
ease{368,24,inCubic,200,'warpspeed'}
ease{392,8,outCubic,0,'warpspeed'}
for i = 400,447 do
	ease{i,0.25,outExpo,70,'warpspeed'}
	ease{i+0.25,0.75,outExpo,30,'warpspeed'}
end