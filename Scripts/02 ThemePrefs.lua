local function OptionNameString(str)
	return THEME:GetString('OptionNames',str)
end

local Prefs =
{
	DefSort =
	{
		Default = 0,
		Choices = { "Original", "Group", "Title", "BPM", "Popularity", "TopGrades", "Artist", "Genre" },
		Values = { 0, 1, 2, 3, 4, 5, 6, 7 }
	},
	CboUnder =
	{
		Default = true,
		Choices = { OptionNameString('Off'), OptionNameString('On') },
		Values = { false, true }
	},
	BossLevel =
	{
		Default = 13,
		Choices = { "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "9999" },
		Values = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 9999 }
	},
	StormBG =
	{
		Default = 2,
		Choices = { "Never", "Always", "CS Mode" },
		Values = { 0, 1, 2 }
	},
	FlashyCombo =
	{
		Default = true,
		Choices = { "Off", "On" },
		Values = { false, true }
	},
}

ThemePrefs.InitAll(Prefs)

function OptionRowDummySound()
	return {
		Name="DummySound",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = true,
		ExportOnChange = false,
		Choices = { 'STEREO', 'MONO', },
		LoadSelections = function(self, list, pn)
			list[1] = true
		end,
		SaveSelections = function(self, list, pn)
		end,
	}
end

function OptionRowDummyAttractSnd()
	return {
		Name="DummyAttractSnd",
		LayoutType = "ShowAllInRow",
		SelectType = "SelectOne",
		OneChoiceForAllPlayers = true,
		ExportOnChange = false,
		Choices = { 'ALL THE TIME', 'NEVER', },
		LoadSelections = function(self, list, pn)
			list[1] = true
		end,
		SaveSelections = function(self, list, pn)
		end,
	}
end