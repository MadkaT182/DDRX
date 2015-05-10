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

-- t[#t+1] = LoadActor( "../Common ScreenStages/1.png" )..{
-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
-- 	--Condition=PlayModeName() == "Nonstop" or PlayModeName() == "Oni";
-- };

-- t[#t+1] = LoadActor( "../Common ScreenStages/1.png" )..{
-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
-- 	--Condition=not IsCourseMode() and not IsFinalStage() and not IsExtraStage() and not IsExtraStage2() and StageIndex() == 0;
-- };

return t