----------------------------------------------------------------------
-- Creates a new file with the selected preset
----------------------------------------------------------------------

local consolePresets = {
	{160, 144, "GB/GBC"},
	{240, 160, "GBA"}, -- these values are presets for x and y, you can add all you want here in this format
	{256, 192, "NDS"},
	
}

local onebyonePresets1 = {
	{8,8,"8"},
	{16,16, "16"},
	{32,32,"32"},		
	{64,64,"64"},

}

local onebyonePresets2 = {
	{48,48,"48"},
	{80,80, "80"},
	{144,144,"144"},		
	{320,320,"320"},

}

local fourbythreePresets = {
	{160,120,"4:3-1"},
	{200,150,"4:3-2"},
	{320,240,"4:3-3"},
	{400,300,"4:3-4"}

}

local sixteenbyninePresets = {
	{192,108,"16:9-1"},
	{240,135,"16:9-2"},
	{320,180,"16:9-3"},
	{480,270,"16:9-4"}

}

local paperPresets = {
	{298,421, "A4-Portrait"},
	{210,297, "A5-Portrait"},
}


local dlg = Dialog("Canvas Presets")

dlg:separator{ text="Console Presets :"}
for i, consolePresets in ipairs(consolePresets) do	
	dlg:button{ id="buttonPreset"..i,		
		text=consolePresets[3],
		selected=false,
		onclick=function() 
			app.command.NewFile {
				ui=false,
				width=consolePresets[1],
				height=consolePresets[2],
				colorMode=ColorMode.RGB,
				fromClipboard=false
			}
		end
	}
end

dlg:separator{ text="Tile-Maps/1:1 Presets :"}
for i, onebyonePresets1 in ipairs(onebyonePresets1) do	
	dlg:button{ id="buttonPreset"..i,		
		text=onebyonePresets1[1].."x"..onebyonePresets1[2],
		selected=false,
		onclick=function() 
			app.command.NewFile {
				ui=false,
				width=onebyonePresets1[1],
				height=onebyonePresets1[2],
				colorMode=ColorMode.RGB,
				fromClipboard=false
			}
		end
	}
end

dlg:newrow()
for i, onebyonePresets2 in ipairs(onebyonePresets2) do	
	dlg:button{ id="buttonPreset"..i,		
		text=onebyonePresets2[1].."x"..onebyonePresets2[2],
		selected=false,
		onclick=function() 
			app.command.NewFile {
				ui=false,
				width=onebyonePresets2[1],
				height=onebyonePresets2[2],
				colorMode=ColorMode.RGB,
				fromClipboard=false
			}
		end
	}
end

dlg:separator{ text="4:3 Presets :"}
for i, fourbythreePresets in ipairs(fourbythreePresets) do	
	dlg:button{ id="buttonPreset"..i,		
		text=fourbythreePresets[1].."x"..fourbythreePresets[2],
		selected=false,
		onclick=function() 
			app.command.NewFile {
				ui=false,
				width=fourbythreePresets[1],
				height=fourbythreePresets[2],
				colorMode=ColorMode.RGB,
				fromClipboard=false
			}
		end
	}
end

dlg:separator{ text="16:9 Presets :"}
for i, sixteenbyninePresets in ipairs(sixteenbyninePresets) do	
	dlg:button{ id="buttonPreset"..i,		
		text=sixteenbyninePresets[1].."x"..sixteenbyninePresets[2],
		selected=false,
		onclick=function() 
			app.command.NewFile {
				ui=false,
				width=sixteenbyninePresets[1],
				height=sixteenbyninePresets[2],
				colorMode=ColorMode.RGB,
				fromClipboard=false
			}
		end
	}
end

dlg:separator{ text="Paper Presets :"}
for i, paperPresets in ipairs(paperPresets) do	
	dlg:button{ id="buttonPreset"..i,		
		text=paperPresets[3],
		selected=false,
		onclick=function() 
			app.command.NewFile {
				ui=false,
				width=paperPresets[1],
				height=paperPresets[2],
				colorMode=ColorMode.RGB,
				fromClipboard=false
			}
		end
	}
end

dlg:show()
