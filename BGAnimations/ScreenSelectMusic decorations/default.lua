local t = Def.ActorFrame {
	LoadActor("_bg")..{
		OnCommand=cmd(FullScreen;cropbottom,1;sleep,0.265;linear,0.25;cropbottom,0);
		OffCommand=cmd(sleep,0.016;accelerate,0.25;addx,380);
	};
	LoadActor("../_header/music");
	LoadActor("../_titles/sel_music")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-171;y,SCREEN_CENTER_Y-208;rotationz,-4;diffusealpha,0;zoom,1.06;sleep,0.283;decelerate,0.083;diffusealpha,1;decelerate,0.083;zoom,1);
		OffCommand=cmd(linear,0.05;addx,-35;diffusealpha,0);
		Condition= not GAMESTATE:IsCourseMode()
	};
	LoadActor("../_titles/sel_course")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-171;y,SCREEN_CENTER_Y-208;rotationz,-4;diffusealpha,0;zoom,1.06;sleep,0.283;decelerate,0.083;diffusealpha,1;decelerate,0.083;zoom,1);
		OffCommand=cmd(linear,0.05;addx,-35;diffusealpha,0);
		Condition=GAMESTATE:IsCourseMode()
	};
	LoadActor( "../_header/mode" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-231;y,SCREEN_CENTER_Y-223);
		OffCommand=cmd(linear,0.05;addx,-35;diffusealpha,0);
	};
	LoadActor( "../_footer" );
	LoadActor( "../_footer/music" );
	LoadActor( "banner" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-177;y,SCREEN_CENTER_Y-136);
	};
	LoadActor("bpm_bg")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-25;y,SCREEN_CENTER_Y-130);
	};
	-- LoadActor("bpmmeter")..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X-25;y,SCREEN_CENTER_Y-130);
	-- };
	LoadActor( "../norm_stage" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-164;y,SCREEN_CENTER_Y-81);
	};
	LoadActor("playerframe_bg")..{
		OnCommand=cmd(x,SCREEN_CENTER_X-170;y,SCREEN_CENTER_Y+93;addx,-294;rotationz,-90;diffusealpha,0;sleep,0.2;linear,0.166;rotationz,0;addx,230;diffusealpha,1;linear,0.05;rotationz,10;addx,64;linear,0.066;rotationz,0);
		OffCommand=cmd(sleep,0.266;accelerate,0.133;addx,-SCREEN_WIDTH/2);
	};
	LoadActor("normal");
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