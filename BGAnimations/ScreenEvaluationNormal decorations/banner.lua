return Def.ActorFrame {
	Def.Sprite {
		OnCommand = function (self)
			local course = GAMESTATE:GetCurrentCourse();
			if course:GetBannerPath() then
				self:Load(course:GetBannerPath())
				self:setsize(256,80);
			else
				self:Load(THEME:GetPathG("","Common fallback banner"));
			end;
		end;
		Condition=GAMESTATE:IsCourseMode()
	};
	Def.Sprite {
		BeginCommand=cmd(LoadFromCurrentSongBanner);
		OnCommand=cmd(diffusealpha,0;scaletoclipped,256,80;linear,0.2;diffusealpha,1);
		Condition=not GAMESTATE:IsCourseMode()
	};
};