local t = Def.ActorFrame{};

-- Full combo
for pn in ivalues(GAMESTATE:GetHumanPlayers()) do
	t[#t+1] = LoadActor("FullCombo", pn) .. {
	};
end;

t[#t+1] = LoadActor( "../../Graphics/ScreenGameplay song info" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-42;zoom,1);
};

t[#t+1] = StandardDecorationFromFileOptional("StageFrame","StageFrame");
t[#t+1] = StandardDecorationFromFileOptional("StageDisplay","StageDisplay");
t[#t+1] = StandardDecorationFromFileOptional("SongTitle","SongTitle");

return t;