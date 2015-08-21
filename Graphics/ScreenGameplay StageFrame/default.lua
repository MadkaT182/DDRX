return Def.Sprite {
	InitCommand=function(self)
		local pm = GAMESTATE:GetPlayMode()
		if pm == "PlayMode_Rave" then
			self:Load(THEME:GetPathG("ScreenGameplay","StageFrame/RaveFrame"));
		else
			self:Load(THEME:GetPathG("ScreenGameplay","StageFrame/StageFrame"));
		end;
	end;

};