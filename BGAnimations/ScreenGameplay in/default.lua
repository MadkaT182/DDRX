local t = Def.ActorFrame {};
t[#t+1] = Def.Sprite {
	InitCommand=cmd(Center;diffusealpha,1);
	BeginCommand=cmd(LoadFromCurrentSongBackground);
	OnCommand=function(self)
		if PREFSMAN:GetPreference("StretchBackgrounds") then
			self:SetSize(SCREEN_WIDTH,SCREEN_HEIGHT)
		else
			self:scale_or_crop_background()
		end
		self:linear(1)
		self:diffusealpha(0)
	end;
};

t[#t+1] = LoadActor( "../door1" )..{
		OnCommand=cmd(zoomx,1.34;x,SCREEN_CENTER_X-214;y,SCREEN_CENTER_Y;sleep,0.0000;linear,0.2;addx,-999);
};

t[#t+1] = LoadActor( "../door2" )..{
		OnCommand=cmd(zoomx,1.34;x,SCREEN_CENTER_X+214;y,SCREEN_CENTER_Y;sleep,0.0000;linear,0.2;addx,999);
};

return t;