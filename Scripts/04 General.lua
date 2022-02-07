--Function to remove endless mode from arcade coin mode
function play_mode_styles()
	if GAMESTATE:GetCoinMode() == "CoinMode_Pay" then
		return "Tut,Nor,Rav,Non";
	else
		return "Tut,Nor,Rav,Non,End";
	end;
end;

--Function to determine selected song
function SelSong()
local s = SONGMAN:FindSong("DDR X/On The Break");
local cur_stage = GAMESTATE:GetCurrentStageIndex() +1;
local max_stages = PREFSMAN:GetPreference("SongsPerPlay");

	--Final stage
	if cur_stage == max_stages then
		GAMESTATE:SetPreferredSong(s);
	elseif cur_stage == (max_stages+1) then
	--Extra stage
		s = SONGMAN:FindSong("DDR X/SABER WING");
		GAMESTATE:SetPreferredSong(s);
	elseif cur_stage == (max_stages+2) then
	--Encore extra stage
		s = SONGMAN:FindSong("DDR X/Horatio");
		GAMESTATE:SetPreferredSong(s);
	end;

end;

--Function to determine the serial number
function GetSerial()
	--Japan HDX:J:A:A:2008071600
	--HDX:J:A:A:2009021600
	--HDX:J:A:A:2009031600
	--HDX:J:A:A:2009061000
	--HDX:J:A:A:2009063000
	--Europe HDX:E:A:A:2009042300
	--HDX:E:A:A:2009050700
	--HDX:E:A:A:2009091100
	--HDX:A:A:A:2209031600
	--A fixed placeholder meanwhile
	return "HDX:E:A:A:2009091100";
end;

--Enable/disable options
function AllowOptionsMenu()
  if GAMESTATE:GetPlayMode() == "PlayMode_Oni" then 
    return false
  else
    return true
  end
end

--Set Oni Mods
function SetOniOptions()
	for player in ivalues(GAMESTATE:GetHumanPlayers()) do
		-- local batlives = 4;
		-- -- GAMESTATE:ResetPlayerOptions(player);
		-- GAMESTATE:GetPlayerState(player):GetPlayerOptions('ModsLevel_Stage'):NoteSkin("cyber")
		-- GAMESTATE:GetPlayerState(player):GetPlayerOptions('ModsLevel_Stage'):LifeSetting('LifeType_Battery');
		-- GAMESTATE:GetPlayerState(player):GetPlayerOptions('ModsLevel_Stage'):BatteryLives(batLives);
		-- GAMESTATE:GetPlayerState(player):GetPlayerOptions('ModsLevel_Stage'):FailSetting('FailType_Immediate');
	end
end

--Retrieve configured sort
function GetSortName()
	local sortList ={
		[0] = "Preferred",
		[1] = "Group",
		[2] = "Title",
		[3] = "BPM",
		[4] = "Popularity",
		[5] = "TopGrades",
		[6] = "Artist",
		[7] = "Genre"
	}
	local name = sortList[ThemePrefs.Get("DefSort")] or "Preferred";
	return name;
end

--Mute announcer in certain conditions
function MuteAnnouncer()
	setenv("tmpAnnouncer",ANNOUNCER:GetCurrentAnnouncer());
	ANNOUNCER:SetCurrentAnnouncer("");
end

--Restore announcer
function RestoreAnnouncer()
	if getenv("tmpAnnouncer") then
		ANNOUNCER:SetCurrentAnnouncer(getenv("tmpAnnouncer"));
	end
end

--Check if the song has a dedicated video
function HasDedicatedVideo()
	local song = GAMESTATE:GetCurrentSong();
	if song:HasBGChanges() then
		local bgs = song:GetBGChanges();
		if #bgs == 1 then
			return true;
		else
			return false;
		end
	else
		return false;
	end
end