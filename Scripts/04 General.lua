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