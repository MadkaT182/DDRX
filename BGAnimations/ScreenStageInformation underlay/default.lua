
local playMode = GAMESTATE:GetPlayMode()
if playMode ~= 'PlayMode_Regular' and playMode ~= 'PlayMode_Rave' and playMode ~= 'PlayMode_Battle' then
curStage = playMode;
end;
local sStage = GAMESTATE:GetCurrentStage();
local tRemap = {
Stage_1st = 1,
Stage_2nd = 2,
Stage_3rd = 3,
Stage_4th = 4,
Stage_5th = 5,
Stage_6th = 6,
};

local stageGraphicToLoad = GAMESTATE:GetCurrentStageIndex() + 1

if tRemap[sStage] == PREFSMAN:GetPreference("SongsPerPlay") then
sStage = "Stage_Final";
else
sStage = sStage;
end;


local t = Def.ActorFrame {};

t[#t+1] =Def.ActorFrame{
LoadActor("../door1.png")..{
	InitCommand=cmd(zoomx,1.34;x,SCREEN_CENTER_X-SCREEN_CENTER_X/2;y,SCREEN_CENTER_Y;);
	--InitCommand=cmd(zoomx,1.34;x,SCREEN_CENTER_X-214;y,SCREEN_CENTER_Y;);
	OnCommand=cmd(linear,0.25;x,SCREEN_CENTER_X/2);
	};
};

t[#t+1] =Def.ActorFrame{
	LoadActor("../door2.png")..{
	InitCommand=cmd(zoomx,1.34;x,SCREEN_CENTER_X+SCREEN_CENTER_X/2;y,SCREEN_CENTER_Y;);
	--InitCommand=cmd(zoomx,1.34;x,SCREEN_CENTER_X+214;y,SCREEN_CENTER_Y;);
	OnCommand=cmd(linear,0.25;x,SCREEN_CENTER_X*3/2);
	};
};

t[#t+1] =Def.ActorFrame{

	LoadActor( "../Common ScreenStages/01" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X-148;y,115;diffusealpha,0;addx,20;sleep,0.000;sleep,1.033;diffusealpha,1;accelerate,0.133;addx,-23;decelerate,0.05;addx,3);
	};

	LoadActor( "../Common ScreenStages/02" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X+148;y,115;diffusealpha,0;addx,-20;sleep,0.000;sleep,1.033;diffusealpha,1;accelerate,0.133;addx,23;decelerate,0.05;addx,-3);
	};

	LoadActor( "../Common ScreenStages/c1" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X-159;y,90;diffusealpha,0;addx,30;sleep,0.000;sleep,1.2;diffusealpha,1;accelerate,0.116;addx,-35;decelerate,0.033;addx,5);
	};

	LoadActor( "../Common ScreenStages/c1" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X-159;y,100;diffusealpha,0;addx,30;sleep,0.000;sleep,1.2;diffusealpha,1;sleep,0.133;accelerate,0.116;addx,-35;decelerate,0.033;addx,5);
	};

	LoadActor( "../Common ScreenStages/c1" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X-159;y,110;diffusealpha,0;addx,30;sleep,0.000;sleep,1.2;diffusealpha,1;sleep,0.266;accelerate,0.116;addx,-35;decelerate,0.033;addx,5);
	};

	LoadActor( "../Common ScreenStages/c1" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X-159;y,120;diffusealpha,0;addx,30;sleep,0.000;sleep,1.2;diffusealpha,1;sleep,0.399;accelerate,0.116;addx,-35;decelerate,0.033;addx,5);
	};

	LoadActor( "../Common ScreenStages/c1" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X-159;y,130;diffusealpha,0;addx,30;sleep,0.000;sleep,1.2;diffusealpha,1;sleep,0.532;accelerate,0.116;addx,-35;decelerate,0.033;addx,5);
	};

	LoadActor( "../Common ScreenStages/c1" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X-159;y,140;diffusealpha,0;addx,30;sleep,0.000;sleep,1.2;diffusealpha,1;sleep,0.665;accelerate,0.116;addx,-35;decelerate,0.033;addx,5);
	};

	LoadActor( "../Common ScreenStages/c1" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X+159;y,90;diffusealpha,0;addx,-30;sleep,0.000;sleep,1.2;diffusealpha,1;accelerate,0.116;addx,35;decelerate,0.033;addx,-5);
	};

	LoadActor( "../Common ScreenStages/c1" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X+159;y,100;diffusealpha,0;addx,-30;sleep,0.000;sleep,1.2;diffusealpha,1;sleep,0.133;accelerate,0.116;addx,35;decelerate,0.033;addx,-5);
	};

	LoadActor( "../Common ScreenStages/c1" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X+159;y,110;diffusealpha,0;addx,-30;sleep,0.000;sleep,1.2;diffusealpha,1;sleep,0.266;accelerate,0.116;addx,35;decelerate,0.033;addx,-5);
	};

	LoadActor( "../Common ScreenStages/c1" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X+159;y,120;diffusealpha,0;addx,-30;sleep,0.000;sleep,1.2;diffusealpha,1;sleep,0.399;accelerate,0.116;addx,35;decelerate,0.033;addx,-5);
	};

	LoadActor( "../Common ScreenStages/c1" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X+159;y,130;diffusealpha,0;addx,-30;sleep,0.000;sleep,1.2;diffusealpha,1;sleep,0.532;accelerate,0.116;addx,35;decelerate,0.033;addx,-5);
	};

	LoadActor( "../Common ScreenStages/c1" )..{
	InitCommand=cmd(x,SCREEN_CENTER_X+159;y,140;diffusealpha,0;addx,-30;sleep,0.000;sleep,1.2;diffusealpha,1;sleep,0.665;accelerate,0.116;addx,35;decelerate,0.033;addx,-5);
	};

	LoadActor( "../banner frame" )..{
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+107;zoomy,0;diffusealpha,0.8;sleep,0.000;sleep,0.816;decelerate,0.15;zoomy,1;diffusealpha,1;accelerate,0.033;zoomx,1.06;decelerate,0.033;zoomx,1);
	};

};

if GAMESTATE:IsCourseMode() then
	t[#t+1] = LoadActor("CourseDisplay");
else
	t[#t+1] = Def.Quad {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+106;zoomto,254,78;diffuse,Color("Black"));
		OnCommand=cmd(diffusealpha,0;scaletoclipped,254,78);
	};

	t[#t+1] = Def.Sprite {
		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+106);
		BeginCommand=cmd(LoadFromCurrentSongBanner);
		OnCommand=cmd(diffusealpha,0;scaletoclipped,254,78;linear,0.2;diffusealpha,1);
		OffCommand=cmd(linear,0.2;zoomy,0);
	};
end;

local songtitl = GAMESTATE:GetCurrentSong():GetTranslitMainTitle()

local discimg = "xx"

if songtitl == "Pluto" then
discimg = "01"
end

if songtitl == "Pluto Relinquish" then
discimg = "02"
end

if songtitl == "SABER WING" then
discimg = "03"
end

if songtitl == "On The Break" then
discimg = "04"
end

if songtitl == "SABER WING (AKIRA ISHIHARA Headshot mix)" then
discimg = "05"
end

if songtitl == "On The Bounce" then
discimg = "06"
end

if songtitl == "Horatio" then
discimg = "07"
end

if songtitl == "Trigger" then
discimg = "08"
end

if songtitl == "TRIP MACHINE(X-Special)" then
discimg = "09"
end

if songtitl == "PARANOiA(X-Special)" then
discimg = "10"
end

if songtitl == "SP-TRIP MACHINE~JUNGLE MIX~(X-Special)" then
discimg = "11"
end

if songtitl == "PARANOiA MAX~DIRTY MIX~in roulette(X-Special)" then
discimg = "12"
end

if songtitl == "PARANOiA MAX~DIRTY MIX~ (X-Special)" then
discimg = "13"
end

if songtitl == "PARANOiA Rebirth (X-Special)" then
discimg = "14"
end

if songtitl == "AFRONOVA (X-Special)" then
discimg = "15"
end

if songtitl == "PARANOiA ETERNAL (X-Special)" then
discimg = "16"
end

if songtitl == "TRIP MACHINE CLIMAX (X-Special)" then
discimg = "17"
end

if songtitl == "PARANOiA EVOLUTION (X-Special)" then
discimg = "18"
end

if songtitl == "Healing Vision (X-Special)" then
discimg = "19"
end

if songtitl == "MAX 300 (X-Special)" then
discimg = "20"
end

if songtitl == "CANDY (X-Special)" then
discimg = "21"
end

if songtitl == "MAXX UNLIMITED (X-Special)" then
discimg = "22"
end

if songtitl == "KAKUMEI (X-Special)" then
discimg = "23"
end

if songtitl == "The legend of MAX (X-Special)" then
discimg = "24"
end

if songtitl == "Dance Dance Revolution (X-Special)" then
discimg = "25"
end

if songtitl == "DEAD END(GROOVE RADAR Special)" then
discimg = "26"
end

if songtitl == "KIMONO PRINCESS" then
discimg = "27"
end

if songtitl == "Pluto The First" then
discimg = "28"
end

if songtitl == "roppongi EVOLVED ver. A" then
discimg = "29"
end

if songtitl == "roppongi EVOLVED ver. B" then
discimg = "29"
end

if songtitl == "roppongi EVOLVED ver. C" then
discimg = "29"
end

if songtitl == "TRIP MACHINE" then
discimg = "09"
end

if songtitl == "PARANOiA" then
discimg = "10"
end

if songtitl == "SP-TRIP MACHINE~JUNGLE MIX~" then
discimg = "11"
end

if songtitl == "PARANOiA MAX~DIRTY MIX~" then
discimg = "13"
end

if songtitl == "PARANOiA Rebirth" then
discimg = "14"
end

if songtitl == "AFRONOVA" then
discimg = "15"
end

if songtitl == "PARANOiA ETERNAL" then
discimg = "16"
end

if songtitl == "TRIP MACHINE CLIMAX" then
discimg = "17"
end

if songtitl == "PARANOiA EVOLUTION" then
discimg = "18"
end

if songtitl == "Healing Vision" then
discimg = "19"
end

if songtitl == "MAX 300" then
discimg = "20"
end

if songtitl == "CANDY" then
discimg = "21"
end

if songtitl == "MAXX UNLIMITED" then
discimg = "22"
end

if songtitl == "KAKUMEI" then
discimg = "23"
end

if songtitl == "The legend of MAX" then
discimg = "24"
end

if songtitl == "Dance Dance Revolution" then
discimg = "25"
end

if songtitl == "DEAD END" then
discimg = "26"
end

if ( GAMESTATE:GetCurrentStage() == "Stage_Final" or GAMESTATE:GetCurrentStage() == "Stage_Extra1" or GAMESTATE:GetCurrentStage() == "Stage_Extra2") then

	t[#t+1] = Def.ActorFrame {

	LoadActor( "../Common ScreenStages/cd"..discimg )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,1.866;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1;sleep,6;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.1;zoomx,1.625;zoomy,0);
		};
	}

end

return t