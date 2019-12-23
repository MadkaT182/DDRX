local t = Def.ActorFrame {
	Name="Banner";
	InitCommand=function(self) c = self:GetChildren(); end;
	--Banner
	LoadActor(THEME:GetPathG("","BNFrameCS"))..{
		InitCommand=cmd(x,-4;y,9);
		Condition=GAMESTATE:GetCoinMode() == 'CoinMode_Home';
	};
	LoadActor(THEME:GetPathG("","BNFrameAC"))..{
		InitCommand=cmd(x,-4;y,9);
		Condition=GAMESTATE:GetCoinMode() ~= 'CoinMode_Home';
	};
	Def.Sprite{
		Name="SBanner";
		InitCommand=cmd(setsize,256,80;diffusealpha,0);
	};
	-- Def.BPMDisplay {
	-- 	File=THEME:GetPathF("BPMDisplay", "bpm");
	-- 	Name="BPMDisplay";
	-- 	InitCommand=cmd(horizalign,right;y,55;x,163);
	-- 	OffCommand=cmd(diffusealpha,0);
	-- 	SetCommand=function(self) self:SetFromGameState() end;
	-- 	CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
	-- 	CurrentCourseChangedMessageCommand=cmd(playcommand,"Set");
	-- };
	LoadActor("BPMDisplay")..{
		Name="BPMDisplay";
		OnCommand=cmd(horizalign,right;y,55;x,163);
	};
	LoadActor("../_playmode")..{
		InitCommand=cmd(x,-108;y,54);
	};
	SetMessageCommand=function(self)
		local song = GAMESTATE:GetCurrentSong();
		local group = "";
		local Path = THEME:GetPathG("Common","fallback banner");
		if song then
			Path = song:GetBannerPath();
			if not Path then
				Path = THEME:GetPathG("Common","fallback banner");
			end
			c.SBanner:LoadBanner(Path);
			c.SBanner:setsize(256,80);
			c.SBanner:diffusealpha(1);
		else
			c.SBanner:LoadBanner(THEME:GetPathG("Common","fallback banner"));
			local topscreen = SCREENMAN:GetTopScreen();
			local MusicWheel = topscreen:GetMusicWheel();
			if MusicWheel:GetCurrentIndex() ~= 0 then
				local mType = MusicWheel:GetSelectedType();
				if mType == "WheelItemDataType_Song" then

				elseif mType == "WheelItemDataType_Roulette" then
					c.SBanner:LoadBanner(THEME:GetPathG("Banner","roulette"));
				elseif mType == "WheelItemDataType_Random" then
					c.SBanner:LoadBanner(THEME:GetPathG("Banner","random"));
				elseif mType == "WheelItemDataType_Section" then
					group = THEME:GetCurrentThemeDirectory().."Graphics/Group/"..MusicWheel:GetSelectedSection().."-bn.png"
					if FILEMAN:DoesFileExist(group) then
						Path = group;
					-- else
					-- 	group = GetSongGroupBannerPath();
					-- 	if group == nil then
					-- 		Path = THEME:GetPathG("Common","fallback banner");
					-- 	end
					end
					c.SBanner:LoadBanner(Path);
				elseif mType == "WheelItemDataType_Course" then
					local coursebn = GAMESTATE:GetCurrentCourse():GetBannerPath();
					--SCREENMAN:SystemMessage(coursebn);
					if not coursebn then
						coursebn = THEME:GetPathG("Common","fallback banner");
					end
					c.SBanner:LoadBanner(coursebn);
					c.SBanner:setsize(256,80);
					c.SBanner:diffusealpha(1);
				else
					c.SBanner:LoadBanner(THEME:GetPathG("Common","fallback banner"));
				end
			end
			-- local topscreen = SCREENMAN:GetTopScreen();
			-- local MusicWheel = topscreen:GetMusicWheel();
			-- if MusicWheel:GetCurrentIndex() ~= 0 then
			-- 	local mType = MusicWheel:GetSelectedType();
			-- 	Path = THEME:GetPathG("Common","fallback banner");
			-- 	if mType == "WheelItemDataType_Roulette" then
			-- 		c.SBanner:diffusealpha(0);
			-- 		c.SRoulette:diffusealpha(1);
			-- 	else
			-- 		c.SRoulette:diffusealpha(0);
			-- 		c.SBanner:LoadBanner(Path);
			-- 	end
			-- end
		end
	end;
	CurrentSongChangedMessageCommand=cmd(playcommand,"Set");
	CurrentCourseChangedMessageCommand=cmd(playcommand,"Set");
};

return t;