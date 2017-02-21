local t = Def.ActorFrame {};

--New Record decorations

--New Record definition
if (STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetPersonalHighScoreIndex() == 0) then
	NewRec1 = 1
end

if (STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetPersonalHighScoreIndex() == 0) then
	NewRec2 = 1
end

if (STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_1):GetMachineHighScoreIndex() == 0) then
	NewRec1 = 1
end

if (STATSMAN:GetCurStageStats():GetPlayerStageStats(PLAYER_2):GetMachineHighScoreIndex() == 0) then
	NewRec2 = 1
end

--New record Sounds and Graphic
if ((NewRec1 == 1) and (GAMESTATE:IsHumanPlayer(PLAYER_1))) then

t[#t+1] = Def.ActorFrame {

	LoadActor( "Newrecord" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-230;y,SCREEN_CENTER_Y+101;glowblink;effectperiod,0.258;effectcolor1,color("1,1,1,0");effectcolor2,color("1,1,1,0.25");diffusealpha,0;zoomy,0;draworder,1;sleep,2.416;linear,0.15;diffusealpha,1;zoomy,1);
		OffCommand=cmd(linear,0.3;zoomy,0);
	};
	LoadActor( "RecSound" )..{
		OnCommand=cmd(play);
	};
}
end

if ((NewRec2 == 1) and (GAMESTATE:IsHumanPlayer(PLAYER_2))) then

t[#t+1] = Def.ActorFrame {

	LoadActor( "Newrecord" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+232;y,SCREEN_CENTER_Y+101;glowblink;effectperiod,0.258;effectcolor1,color("1,1,1,0");effectcolor2,color("1,1,1,0.25");diffusealpha,0;zoomy,0;draworder,1;sleep,2.416;linear,0.15;diffusealpha,1;zoomy,1);
		OffCommand=cmd(linear,0.3;zoomy,0);
	};
		LoadActor( "RecSound" )..{
		OnCommand=cmd(play);
	};
}
end

return t;