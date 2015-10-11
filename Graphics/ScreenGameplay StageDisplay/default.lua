local StageDisplay = Def.ActorFrame{
	BeginCommand=cmd(y,SCREEN_TOP+31;playcommand,"Set";);
	CurrentSongChangedMessageCommand=cmd(finishtweening;playcommand,"Set";);
};

for s in ivalues(Stage) do

if s ~= 'Stage_Next' and s ~= 'Stage_Nonstop' and s ~= 'Stage_Oni' and s ~= 'Stage_Endless' then
	StageDisplay[#StageDisplay+1] = LoadActor( THEME:GetPathG("ScreenGameplay","StageDisplay/"..s) ) .. {
		SetCommand=function(self, params)
			local Stage = GAMESTATE:GetCurrentStage();
			local StageIndex = GAMESTATE:GetCurrentStageIndex();
			local screen = SCREENMAN:GetTopScreen();
			if screen and screen.GetStageStats then
				local ss = screen:GetStageStats();
				Stage = ss:GetStage();
				StageIndex = ss:GetStageIndex();
			end
			self:visible( Stage == s );
		end;
	};
end

end

return StageDisplay;