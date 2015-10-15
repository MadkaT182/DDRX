return Def.Sprite {
	InitCommand=function(self)
		local pm = GAMESTATE:GetPlayMode()
		if pm == "PlayMode_Rave" then
			self:Load(THEME:GetPathG("ScreenGameplay","StageFrame/RaveFrame"));
		elseif (pm == 'PlayMode_Oni') or (pm == 'PlayMode_Nonstop') then
			self:Load(THEME:GetPathG("ScreenGameplay","StageFrame/CourseFrame"));
		else
			self:Load(THEME:GetPathG("ScreenGameplay","StageFrame/StageFrame"));
		end;
	end;

};