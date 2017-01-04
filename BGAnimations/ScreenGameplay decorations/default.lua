local t = Def.ActorFrame {};

t[#t+1] = LoadActor("../_stageFrame")..{
	OnCommand=cmd(y,SCREEN_TOP+24,addx,2);
};

t[#t+1] = LoadActor("../_songinfo")..{
	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-37;draworder,2);
};

--Option icons
for player in ivalues(GAMESTATE:GetHumanPlayers()) do

	t[#t+1] = LoadActor( "../OptionIcons", player )..{
		InitCommand=function(self)
			self:x(player == PLAYER_1 and SCREEN_LEFT+108 or SCREEN_RIGHT-84)
				:y(_screen.cy+165)
				:draworder(1)
		end
	}
end

return t;