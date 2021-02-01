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
ease{76,4,inSine,0,'beat'}
mirror{76,4,inSine,60,'tipsy',50,'drunk'}

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

ease{225.75,0.25,outCubic,25,'flip'}
ease{226,0.25,outQuad,-100,'flip',400,'drunk',100,'tipsy'}
ease{226.25,0.75,inCubic,0,'flip',0,'drunk',0,'tipsy'}
mirror{226,0.25,outQuad,-500,'movez'}
mirror{226.25,0.75,inQuad,0,'movez'}



--second half--


ease{364,4,outSine,2.5,'xmod',50,'flip'}
ease{368,16,inSine,400,'amt',1.75,'xmod'}
ease{368,24,inCubic,55,'offset'}
ease{392,8,outCubic,45,'offset'}
local offset_speen = 45
for i = 400,447 do
    ease{i,1,outBack,offset_speen+1,'offset'}
    offset_speen = offset_speen + 1
end