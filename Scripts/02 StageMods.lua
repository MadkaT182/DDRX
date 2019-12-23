function AreStagePlayerModsForced()
	return GAMESTATE:GetPlayMode() == "PlayMode_Oni"
end

function AreStageSongModsForced()
	local pm = GAMESTATE:GetPlayMode()
	local bOni = pm == "PlayMode_Oni"
	local bBattle = pm == "PlayMode_Battle"
	local bRave = pm == "PlayMode_Rave"
	return bOni or bBattle or bRave
end

function ScreenSelectMusic:setupcoursestagemods()
	local mode = GAMESTATE:GetPlayMode()

	if mode == "PlayMode_Oni" then
		--local po = "clearall,default"
		local po = ""
		-- Let SSMusic set battery.
		-- local so = "failimmediate,battery"
		local so = "failimmediate"
		local Reverse = PlayerNumber:Reverse()

		for pn in ivalues(GAMESTATE:GetHumanPlayers()) do
			GAMESTATE:GetPlayerState(pn):SetPlayerOptions( "ModsLevel_Stage", po )
			MESSAGEMAN:Broadcast( "PlayerOptionsChanged", {PlayerNumber = pn} )
		end

		GAMESTATE:SetSongOptions( "ModsLevel_Stage", so )
		MESSAGEMAN:Broadcast( "SongOptionsChanged" )
	end
	return self
end