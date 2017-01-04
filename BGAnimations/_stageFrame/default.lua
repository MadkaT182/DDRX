local t = Def.ActorFrame {};

if GAMESTATE:GetPlayMode() == 'PlayMode_Rave' then
	t[#t+1] = LoadActor("RaveFrame")..{
		OnCommand=cmd(x,SCREEN_CENTER_X);
	};
elseif GAMESTATE:GetPlayMode() == 'PlayMode_Oni' or GAMESTATE:GetPlayMode() == 'PlayMode_Nonstop' then
	t[#t+1] = LoadActor("CourseFrame")..{
		OnCommand=cmd(x,SCREEN_CENTER_X);
	};
else
	t[#t+1] = LoadActor("StageFrame")..{
		OnCommand=cmd(x,SCREEN_CENTER_X);
	};
end;

t[#t+1] = LoadActor("../_gpstg")..{
	OnCommand=cmd(x,SCREEN_CENTER_X+8;y,SCREEN_TOP+6);
};

return t;