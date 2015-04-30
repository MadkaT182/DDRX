local t = Def.ActorFrame{
	InitCommand=cmd(sleep,3.5);
};

if (GAMESTATE:GetCurrentStage() == "Stage_Final") then

t[#t+1] = Def.ActorFrame {

	LoadActor( "Final" )..{
		OnCommand=cmd(play);
	};
}

elseif (GAMESTATE:GetCurrentStage() == "Stage_Extra1") then

t[#t+1] = Def.ActorFrame {

	LoadActor( "Extra" )..{
		OnCommand=cmd(play);
	};
}

elseif (GAMESTATE:GetCurrentStage() == "Stage_Extra2") then

t[#t+1] = Def.ActorFrame {

	LoadActor( "EncExtra" )..{
		OnCommand=cmd(play);
	};
}

elseif (GAMESTATE:GetCurrentStageIndex() == 0) then

t[#t+1] = Def.ActorFrame {

	LoadActor( "First" )..{
		OnCommand=cmd(play);
	};
}

elseif (GAMESTATE:GetCurrentStageIndex() == 1) then

t[#t+1] = Def.ActorFrame {

	LoadActor( "Second" )..{
		OnCommand=cmd(play);
	};
}

elseif (GAMESTATE:GetCurrentStageIndex() == 2) then

t[#t+1] = Def.ActorFrame {

	LoadActor( "Third" )..{
		OnCommand=cmd(play);
	};
}

elseif (GAMESTATE:GetCurrentStageIndex() == 3) then

t[#t+1] = Def.ActorFrame {

	LoadActor( "Fourth" )..{
		OnCommand=cmd(play);
	};
}

end


--[[
t[#t+1] = Def.ActorFrame {
	LoadFont( "Adams" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;settext,GAMESTATE:GetCurrentStage());
	};
}

t[#t+1] = Def.ActorFrame {
	LoadFont( "Adams" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;settext,GAMESTATE:GetCurrentStageIndex());
	};
}
--]]


return t