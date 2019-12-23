function Sprite:LoadFromCurrentSongBanner()
	local song = GAMESTATE:GetCurrentSong()
	local Path = song:GetBannerPath()
	if not song then
		local trail = GAMESTATE:GetCurrentTrail(GAMESTATE:GetMasterPlayerNumber())
		local e = trail:GetTrailEntries()
		if #e > 0 then
			song = e[1]:GetSong()
		end
	end
	if not Path then
		Path = THEME:GetPathG("Common","fallback banner")
	end

	self:LoadBanner( Path )
end

function Sprite:LoadFromSongBanner(song)
	if song then
		local Path = song:GetBannerPath()
		if not Path then
			Path = THEME:GetPathG("Common","fallback banner")
		end

		self:LoadBanner( Path )
	else
		self:LoadBanner( THEME:GetPathG("Common","fallback banner") )
	end
end

function DiffToColor(difficulty)

local DifCol = {
	["Difficulty_Beginner"] = "#60BEE3",
	["Difficulty_Easy"] = "#FFFE01",
	["Difficulty_Medium"] = "#F16C7C",
	["Difficulty_Hard"] = "#01FD00",
	["Difficulty_Challenge"] = "#C666FF",
	["Difficulty_Edit"] = "#FFFFFF"
}

local ColString = DifCol[difficulty] or "#FFFFFF"

return ColString;

end

function GetSongDisc(songtit)

local DiscImg = {
	["Pluto"] = "01",
	["Pluto Relinquish"] = "02",
	["SABER WING"] = "03",
	["On The Break"] = "04",
	["SABER WING (AKIRA ISHIHARA Headshot mix)"] = "05",
	["On The Bounce"] = "06",
	["Horatio"] = "07",
	["Trigger"] = "08",
	["TRIP MACHINE(X-Special)"] = "09",
	["PARANOiA(X-Special)"] = "10",
	["SP-TRIP MACHINE~JUNGLE MIX~(X-Special)"] = "11",
	["PARANOiA MAX~DIRTY MIX~in roulette(X-Special)"] = "12",
	["PARANOiA MAX~DIRTY MIX~ (X-Special)"] = "13",
	["PARANOiA Rebirth (X-Special)"] = "14",
	["AFRONOVA (X-Special)"] = "15",
	["PARANOiA ETERNAL (X-Special)"] = "16",
	["TRIP MACHINE CLIMAX (X-Special)"] = "17",
	["PARANOiA EVOLUTION (X-Special)"] = "18",
	["Healing Vision (X-Special)"] = "19",
	["MAX 300 (X-Special)"] = "20",
	["CANDY (X-Special)"] = "21",
	["MAXX UNLIMITED (X-Special)"] = "22",
	["KAKUMEI (X-Special)"] = "23",
	["The legend of MAX (X-Special)"] = "24",
	["Dance Dance Revolution (X-Special)"] = "25"
}

local DiscNumber = DiscImg[songtit] or "fallback"
return DiscNumber;
end

function GetSortItemBG(sort)

	local ItemImg = {
		--ABC
		['A'] = "Pink",
		['B'] = "Red",
		['C'] = "Green",
		['D'] = "Cyan",
		['E'] = "Purple",
		['F'] = "Blue",
		['G'] = "Pink",
		['H'] = "Red",
		['I'] = "Green",
		['J'] = "Cyan",
		['K'] = "Purple",
		['L'] = "Blue",
		['M'] = "Pink",
		['N'] = "Red",
		['O'] = "Green",
		['P'] = "Cyan",
		['Q'] = "Purple",
		['R'] = "Blue",
		['S'] = "Pink",
		['T'] = "Red",
		['U'] = "Green",
		['V'] = "Cyan",
		['W'] = "Purple",
		['X'] = "Blue",
		['Y'] = "Pink",
		['Z'] = "Red",
		['0-9'] = "Red",
		--Difficulty lvl
		['01'] = "Blue",
		['02'] = "Blue",
		['03'] = "Blue",
		['04'] = "Blue",
		['05'] = "Blue",
		['06'] = "Blue",
		['07'] = "Blue",
		['08'] = "Blue",
		['09'] = "Blue",
		['10'] = "Blue",
		['11'] = "Blue",
		['12'] = "Blue",
		['13'] = "Blue",
		['14'] = "Blue",
		['15'] = "Blue",
		['16'] = "Blue",
		['17'] = "Blue",
		['18'] = "Blue",
		['19'] = "Blue",
		['20'] = "Blue",
		['N/A'] = "Red",
		['N/D'] = "Red",
		--DDR Series
		['DDR 1st'] = "Blue",
		['DDR 2nd MIX'] = "Pink",
		['DDR 3rd MIX'] = "Blue",
		['DDR 4th MIX'] = "Blue",
		['DDR 5th MIX'] = "Green",
		['DDR EXTREME'] = "Green",
		['DDR SuperNOVA'] = "Red",
		['DDR SuperNOVA2'] = "Blue",
		['DDR X'] = "Pink",
		['DDRMAX'] = "Blue",
		['DDRMAX2'] = "Red",
	}

	local Section = ItemImg[sort] or "Red"
	return Section;
end

function GetGroupItemFG(group)

	local ItemImg = {
		--Difficulty lvl
		['01'] = "1",
		['02'] = "2",
		['03'] = "3",
		['04'] = "4",
		['05'] = "5",
		['06'] = "6",
		['07'] = "7",
		['08'] = "8",
		['09'] = "9",
		['10'] = "ten",
		['11'] = "eleven",
		['12'] = "twelve",
		['13'] = "thirteen",
		['14'] = "fourteen",
		['15'] = "fifteen",
		['16'] = "sixteen",
		['17'] = "seventeen",
		['18'] = "eighteen",
		['19'] = "nineteen",
		['20'] = "twenty"
	}

	local Section = ItemImg[group] or "clear"
	return Section;
end

function GetGroupFont(group)

local ItemImg = {
	['DDR EXTREME'] = "#42D200",
	['DDR SuperNOVA'] = "#FF2222",
	['DDR 1st'] = "#00F07D",
	['DDR 4th MIX'] = "#5DC4FF",
	['DDR 2nd MIX'] = "#FFF1DD",
	['DDR 5th MIX'] = "#427EFF",
	['DDR SuperNOVA2'] = "#427EFF"
}

local Section = ItemImg[group] or "#FF9F39"
return Section;
end

function GetGroupVisibility(group)
	local ItemImg = {
		--Difficulty lvl
		['01'] = 0,
		['02'] = 0,
		['03'] = 0,
		['04'] = 0,
		['05'] = 0,
		['06'] = 0,
		['07'] = 0,
		['08'] = 0,
		['09'] = 0,
		['10'] = 0,
		['11'] = 0,
		['12'] = 0,
		['13'] = 0,
		['14'] = 0,
		['15'] = 0,
		['16'] = 0,
		['17'] = 0,
		['18'] = 0,
		['19'] = 0,
		['20'] = 0
	}

	local Section = ItemImg[group] or 1
	return Section;
end
