-- Generic Conversion
alias
{'targetrotationx1', 'confusionxoffset'..sm_fix}			-- Column ConfusionX
{'targetrotationx2', 'confusionxoffset'..sm_fix + 1}
{'targetrotationx3', 'confusionxoffset'..sm_fix + 2}
{'targetrotationx4', 'confusionxoffset'..sm_fix + 3}

{'targetrotationy1', 'confusionyoffset'..sm_fix}				-- Column ConfuionY
{'targetrotationy2', 'confusionyoffset'..sm_fix + 1}
{'targetrotationy3', 'confusionyoffset'..sm_fix + 2}
{'targetrotationy4', 'confusionyoffset'..sm_fix + 3}

{'targetrotationz1', 'confusionoffset'..sm_fix}					-- Column ConfusionZ
{'targetrotationz2', 'confusionoffset'..sm_fix + 1}
{'targetrotationz3', 'confusionoffset'..sm_fix + 2}
{'targetrotationz4', 'confusionoffset'..sm_fix + 3}

{'confusionzoffset', 'confusionoffset'}							-- no i like the z in there

-- SM Specific Conversion
if not FUCK_EXE then
	aux
	{'x', 'y', 'z'}													-- X, Y, and Z position tweenmods
	{'rotationx', 'rotationy', 'rotationz'}							-- X, Y, and Z rotation tweenmods
    {'tiny'}														-- Non-column to column tiny

	node
	{
	    'x',
	    function(x)
			P[get_plr()]:GetChild('NoteField'):x(x)
	    end
	}
	{
	    'y',
	    function(y)
			P[get_plr()]:GetChild('NoteField'):y(y)
	    end
	}
	{
	    'z',
	    function(z)
			P[get_plr()]:GetChild('NoteField'):z(z)
	    end
	}
	{
	    'rotationx',
	    function(rotationx)
	        P[get_plr()]:GetChild('NoteField'):rotationx(rotationx)
	    end
	}
	{
	    'rotationy',
	    function(rotationy)
	        P[get_plr()]:GetChild('NoteField'):rotationy(rotationy)
	    end
	}
	{
	    'rotationz',
	    function(rotationz)
	        P[get_plr()]:GetChild('NoteField'):rotationz(rotationz)
	    end
	}
    {
        'tiny',
        function(tiny)
            return tiny
        end,
        'tiny1', 'tiny2', 'tiny3', 'tiny4'
    }
end