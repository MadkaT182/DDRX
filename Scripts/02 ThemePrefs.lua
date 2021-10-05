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
	DancerType =
	{
		Default = 0,
		Choices = { "Fallback", "Old with stage", "New with stage" },
		Values = { 0, 1, 2 }
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