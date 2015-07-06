local t = Def.ActorFrame {

	LoadActor( "../_shared background" )..{
	};

	LoadActor( "../Common ScreenStages/top_stage" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+12;zoomx,1.34;addy,-56;linear,0.133;addy,56);
		OffCommand=cmd(linear,0.133;addy,-56);
	};

	LoadActor( "../Common ScreenStages/bottom_stage" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-12;zoomx,1.34;addy,24;linear,0.133;addy,-24);
		OffCommand=cmd(linear,0.133;addy,24);
	};

	LoadActor( "judgmentBG" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+26;zoomy,0;sleep,0.000;linear,0.2;zoomy,1);
		OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0);
	};

	LoadActor( "JudgeRows" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+26;zoomy,0;sleep,0.000;linear,0.2;zoomy,1);
		OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0);
	};

	LoadActor( "RaveSound" )..{
		OnCommand=cmd(play);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Rave';
	};

	LoadActor( "frame" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-230;y,SCREEN_CENTER_Y+37;zoomy,0;addy,-12;sleep,0.000;linear,0.2;zoomy,1;addy,12);
		OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0;addy,-12);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Rave';
	};

	LoadActor( "frame" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+232;y,SCREEN_CENTER_Y+37;zoomy,0;addy,-12;sleep,0.000;linear,0.2;zoomy,1;addy,12);
		OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0;addy,-12);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Rave';
	};

	LoadActor( "frame" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-230;y,SCREEN_CENTER_Y+27;zoomy,0;addy,-2;sleep,0.000;linear,0.2;zoomy,1;addy,2);
		OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0;addy,-2);
		Condition=(GAMESTATE:IsCourseMode() or GAMESTATE:GetPlayMode() == 'PlayMode_Endless') and GAMESTATE:IsPlayerEnabled(PLAYER_1) == true;
	};

	LoadActor( "frame" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+232;y,SCREEN_CENTER_Y+27;zoomy,0;addy,-2;sleep,0.000;linear,0.2;zoomy,1;addy,2);
		OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0;addy,-2);
		Condition=(GAMESTATE:IsCourseMode() or GAMESTATE:GetPlayMode() == 'PlayMode_Endless') and GAMESTATE:IsPlayerEnabled(PLAYER_2) == true;
	};

	LoadActor( "win" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-231;y,SCREEN_CENTER_Y+50;diffusealpha,0;sleep,0.000;sleep,0.233;linear,0.233;diffusealpha,1);
		OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0;diffusealpha,0;addy,-25);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Rave' and GAMESTATE:IsWinner(PLAYER_1);
	};

	LoadActor( "lose" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-231;y,SCREEN_CENTER_Y+50;diffusealpha,0;sleep,0.000;sleep,0.233;linear,0.233;diffusealpha,1);
		OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0;diffusealpha,0;addy,-25);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Rave' and GAMESTATE:IsWinner(PLAYER_2);
	};

	LoadActor( "lose" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-231;y,SCREEN_CENTER_Y+50;diffusealpha,0;sleep,0.000;sleep,0.233;linear,0.233;diffusealpha,1);
		OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0;diffusealpha,0;addy,-25);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Rave' and not GAMESTATE:IsWinner(PLAYER_1) and not GAMESTATE:IsWinner(PLAYER_2);
	};

	LoadActor( "win" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+231;y,SCREEN_CENTER_Y+50;diffusealpha,0;sleep,0.000;sleep,0.233;linear,0.233;diffusealpha,1);
		OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0;diffusealpha,0;addy,-25);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Rave' and GAMESTATE:IsWinner(PLAYER_2);
	};

	LoadActor( "lose" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+231;y,SCREEN_CENTER_Y+50;diffusealpha,0;sleep,0.000;sleep,0.233;linear,0.233;diffusealpha,1);
		OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0;diffusealpha,0;addy,-25);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Rave' and GAMESTATE:IsWinner(PLAYER_1);
	};

	LoadActor( "lose" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+231;y,SCREEN_CENTER_Y+50;diffusealpha,0;sleep,0.000;sleep,0.233;linear,0.233;diffusealpha,1);
		OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.3;zoomy,0;diffusealpha,0;addy,-25);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Rave' and not GAMESTATE:IsWinner(PLAYER_1) and not GAMESTATE:IsWinner(PLAYER_2);
	};

	LoadActor( "p1_life" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+183;cropright,1;sleep,0.000;sleep,0.25;linear,1;cropright,0.5);
		OffCommand=cmd(sleep,0.0000;diffusealpha,0);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Rave' and not GAMESTATE:IsWinner(PLAYER_1) and not GAMESTATE:IsWinner(PLAYER_2);
	};

	LoadActor( "p2_life" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+183;cropleft,1;sleep,0.000;sleep,0.25;linear,1;cropleft,0.5);
		OffCommand=cmd(sleep,0.0000;diffusealpha,0);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Rave' and not GAMESTATE:IsWinner(PLAYER_1) and not GAMESTATE:IsWinner(PLAYER_2);
	};

	LoadActor( "p1_life" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+183;cropright,1;sleep,0.000;sleep,0.25;linear,1;cropright,0.25);
		OffCommand=cmd(sleep,0.0000;diffusealpha,0);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Rave' and GAMESTATE:IsWinner(PLAYER_1);
	};

	LoadActor( "p2_life" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+183;cropleft,1;sleep,0.000;sleep,0.25;linear,1;cropleft,0.75);
		OffCommand=cmd(sleep,0.0000;diffusealpha,0);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Rave' and GAMESTATE:IsWinner(PLAYER_1);
	};

	LoadActor( "p1_life" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+183;cropright,1;sleep,0.000;sleep,0.25;linear,1;cropright,0.75);
		OffCommand=cmd(sleep,0.0000;diffusealpha,0);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Rave' and GAMESTATE:IsWinner(PLAYER_2);
	};

	LoadActor( "p2_life" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+183;cropleft,1;sleep,0.000;sleep,0.25;linear,1;cropleft,0.25);
		OffCommand=cmd(sleep,0.0000;diffusealpha,0);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Rave' and GAMESTATE:IsWinner(PLAYER_2);
	};

	LoadActor( "battleLife_frame" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+183;zoomy,0;sleep,0.000;sleep,0.133;linear,0.116;zoomy,1);
		OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.133;zoomy,0);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Rave';
	};

	LoadActor( "pointer" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-1;y,SCREEN_CENTER_Y+171;zoomy,0;sleep,0.000;sleep,1.25;linear,0.066;zoomy,1;sleep,0;bob;effectperiod,0.3;effectmagnitude,0,2,0);
		OffCommand=cmd(sleep,0.0000;sleep,0.116;diffusealpha,0);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Rave' and not GAMESTATE:IsWinner(PLAYER_1) and not GAMESTATE:IsWinner(PLAYER_2);
	};

	LoadActor( "pointer" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+147;y,SCREEN_CENTER_Y+171;zoomy,0;sleep,0.000;sleep,1.25;linear,0.066;zoomy,1;sleep,0;bob;effectperiod,0.3;effectmagnitude,0,2,0);
		OffCommand=cmd(sleep,0.0000;sleep,0.116;diffusealpha,0);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Rave' and GAMESTATE:IsWinner(PLAYER_1);
	};

	LoadActor( "pointer" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-148;y,SCREEN_CENTER_Y+171;zoomy,0;sleep,0.000;sleep,1.25;linear,0.066;zoomy,1;sleep,0;bob;effectperiod,0.3;effectmagnitude,0,2,0);
		OffCommand=cmd(sleep,0.0000;sleep,0.116;diffusealpha,0);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Rave' and GAMESTATE:IsWinner(PLAYER_2);
	};

	LoadActor( "p1Course" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-230;y,SCREEN_CENTER_Y+27;zoomy,0;addy,-2;sleep,0.000;sleep,0.233;linear,0.5;addy,2;zoomy,1);
		OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.15;addy,-2;zoomy,0);
		Condition=( GAMESTATE:IsCourseMode() or GAMESTATE:GetPlayMode() == 'PlayMode_Endless' ) and GAMESTATE:IsPlayerEnabled(PLAYER_1) == true;
	};

	LoadActor( "p1_bar" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-231;y,SCREEN_CENTER_Y+27;zoomy,0;addy,-2;sleep,0.000;sleep,0.233;linear,0.5;addy,2;zoomy,1;sleep,0;cropright,0;linear,0.534;cropright,1);
		OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.15;addy,-2;zoomy,0);
		Condition=( GAMESTATE:IsCourseMode() or GAMESTATE:GetPlayMode() == 'PlayMode_Endless' ) and GAMESTATE:IsPlayerEnabled(PLAYER_1) == true;
	};

	LoadActor( "stageFlare" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-168;y,SCREEN_CENTER_Y+27;diffusealpha,0;sleep,0.000;sleep,0.716;diffusealpha,1;glowshift;effectcolor1,color("1,1,1,1");effectcolor2,color("0,0,0,1");effectperiod,0.133;sleep,0.017;linear,0.534;addx,-126);
		OffCommand=cmd(sleep,0.0000;stopeffect;diffusealpha,0);
		Condition=( GAMESTATE:IsCourseMode() or GAMESTATE:GetPlayMode() == 'PlayMode_Endless' ) and GAMESTATE:IsPlayerEnabled(PLAYER_1) == true;
	};

	LoadActor( "stage.png" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-193;y,SCREEN_CENTER_Y+55;diffusealpha,0;sleep,0.000;sleep,0.716;diffusealpha,1);
		OffCommand=cmd(sleep,0.0000;diffuselapha,0);
		Condition=( GAMESTATE:IsCourseMode() or GAMESTATE:GetPlayMode() == 'PlayMode_Endless' ) and GAMESTATE:IsPlayerEnabled(PLAYER_1) == true;
	};

	LoadActor( "p2Course" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+232;y,SCREEN_CENTER_Y+27;zoomy,0;addy,-2;sleep,0.000;sleep,0.233;linear,0.5;addy,2;zoomy,1);
		OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.15;addy,-2;zoomy,0);
		Condition=( GAMESTATE:IsCourseMode() or GAMESTATE:GetPlayMode() == 'PlayMode_Endless' ) and GAMESTATE:IsPlayerEnabled(PLAYER_2) == true;
	};

	LoadActor( "p2_bar" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+231;y,SCREEN_CENTER_Y+27;zoomy,0;addy,-2;sleep,0.000;sleep,0.233;linear,0.5;addy,2;zoomy,1;sleep,0;cropleft,0;linear,0.534;cropleft,1);
		OffCommand=cmd(sleep,0.0000;sleep,0.016;linear,0.15;addy,-2;zoomy,0);
		Condition=( GAMESTATE:IsCourseMode() or GAMESTATE:GetPlayMode() == 'PlayMode_Endless' ) and GAMESTATE:IsPlayerEnabled(PLAYER_2) == true;
	};

	LoadActor( "stageFlare" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+168;y,SCREEN_CENTER_Y+27;diffusealpha,0;sleep,0.000;sleep,0.716;diffuselapha,1;glowshift;effectcolor1,color("1,1,1,1");effectcolor2,color("0,0,0,1");effectperiod,0.133;sleep,0.017;linear,0.534;addx,126);
		OffCommand=cmd(sleep,0.0000;stopeffect;diffusealpha,0);
		Condition=( GAMESTATE:IsCourseMode() or GAMESTATE:GetPlayMode() == 'PlayMode_Endless' ) and GAMESTATE:IsPlayerEnabled(PLAYER_2) == true;
	};

	LoadActor( "stage.png" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+269;y,SCREEN_CENTER_Y+55;sleep,0.000;sleep,0.716);
		OffCommand=cmd(sleep,0.0000;diffusealpha,0);
		Condition=( GAMESTATE:IsCourseMode() or GAMESTATE:GetPlayMode() == 'PlayMode_Endless' ) and GAMESTATE:IsPlayerEnabled(PLAYER_2) == true;
	};


	LoadActor( "../banner frame" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-129;zoomy,0;sleep,0.000;sleep,0.333;decelerate,0.133;zoomy,1;accelerate,0.033;zoomx,1.06;decelerate,0.033;zoomx,1);
		OffCommand=cmd(sleep,0.0000;sleep,0.333;decelerate,0.066;zoomx,1.05;zoomy,0);
	};

	LoadActor( "../headerFrame" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+147;y,SCREEN_TOP-16;vertalign,top;horizalign,right;zoom,0;linear,0.233;zoom,1.05;linear,0.066;zoom,1);
		OffCommand=cmd(linear,0.133;addy,-62);
	};

	LoadActor("../../Graphics/timerBG")..{
	};

	LoadActor( "screen_results" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-200;zoom,1;addy,-12;sleep,0.000;sleep,0.283;decelerate,0.066;addy,12;linear,0.016;zoom,1.083;decelerate,0.083;zoomy,0.7;zoom,1);
		OffCommand=cmd(sleep,0.0000;linear,0.1;addy,-50);
	};

	LoadActor( "../../Graphics/ScreenSelectMusic header/mode_std" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-96;y,SCREEN_CENTER_Y-218;horizalign,left;addy,-8;zoom,1.084;sleep,0.000;sleep,0.3;linear,0.05;addy,8;zoom,1.042;linear,0.05;zoom,1);
		OffCommand=cmd(sleep,0.0000;linear,0.1;addy,-34);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Regular';
	};

	LoadActor( "../../Graphics/ScreenSelectMusic header/mode_course" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-96;y,SCREEN_CENTER_Y-226;horizalign,left;zoom,1.084;sleep,0.000;sleep,0.3;linear,0.05;addy,8;zoom,1.042;linear,0.05;zoom,1);
		OffCommand=cmd(sleep,0.0000;linear,0.1;addy,-34);
		Condition=GAMESTATE:IsCourseMode();
	};

	LoadActor( "../../Graphics/ScreenSelectMusic header/mode_battle" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-96;y,SCREEN_CENTER_Y-226;horizalign,left;zoom,1.084;sleep,0.000;sleep,0.3;linear,0.05;addy,8;zoom,1.042;linear,0.05;zoom,1);
		OffCommand=cmd(sleep,0.0000;linear,0.1;addy,-34);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Rave';
	};

	LoadActor( "../../Graphics/ScreenSelectMusic header/mode_endless" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-37;y,SCREEN_CENTER_Y-219;addy,-8;zoom,1.084;sleep,0.000;sleep,0.3;linear,0.05;addy,8;zoom,1.042;linear,0.05;zoom,1);
		OffCommand=cmd(sleep,0.0000;linear,0.1;addy,-34);
		Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Endless';
	};

	LoadActor( "p1.png" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-248;y,SCREEN_CENTER_Y-55;zoomy,0;sleep,0.000;sleep,0.216;linear,0.1;zoomy,1);
		OffCommand=cmd(zoomy,1;sleep,0.0000;sleep,0.016;linear,0.1;zoomy,0);
		Condition=GAMESTATE:IsPlayerEnabled(PLAYER_1) and GAMESTATE:IsHumanPlayer(PLAYER_1);
	};

	LoadActor( "p2.png" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+247;y,SCREEN_CENTER_Y-55;zoomy,0;sleep,0.000;sleep,0.216;linear,0.1;zoomy,1);
		OffCommand=cmd(zoomy,1;sleep,0.0000;sleep,0.016;linear,0.1;zoomy,0);
		Condition=GAMESTATE:IsPlayerEnabled(PLAYER_2) and GAMESTATE:IsHumanPlayer(PLAYER_2);
	};

--Player 1 Combo Rings

	LoadActor("Fullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-207;y,SCREEN_TOP+135;zoom,0);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(linear,0.2;zoom,0.63;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("PerfectFullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-207;y,SCREEN_TOP+135;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(linear,0.2;zoom,0.63;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("MarvelousFullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-207;y,SCREEN_TOP+135;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(linear,0.2;zoom,0.63;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("Fullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-207;y,SCREEN_TOP+135;zoom,0);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(linear,0.2;zoom,0.63;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("PerfectFullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-207;y,SCREEN_TOP+135;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(linear,0.2;zoom,0.63;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("MarvelousFullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-207;y,SCREEN_TOP+135;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(linear,0.2;zoom,0.63;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("FullCombo1")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-285;y,SCREEN_TOP+140;zoom,0;diffusealpha,0;rotationz,370;);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};
	LoadActor("FullCombo2")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-285;y,SCREEN_TOP+140;zoom,0;diffusealpha,0;rotationz,370;diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,1;effectperiod,0.2);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};

	LoadActor("PerfectFullCombo1")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-285;y,SCREEN_TOP+140;zoom,0;diffusealpha,0;rotationz,370;);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};
	LoadActor("PerfectFullCombo2")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-285;y,SCREEN_TOP+140;zoom,0;diffusealpha,0;rotationz,370;diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,1;effectperiod,0.2);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};

	LoadActor("MarvelousFullCombo1")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-285;y,SCREEN_TOP+140;zoom,0;diffusealpha,0;rotationz,370;);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};
	LoadActor("MarvelousFullCombo2")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-285;y,SCREEN_TOP+140;zoom,0;diffusealpha,0;rotationz,370;diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,1;effectperiod,0.2);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};

	-------P2--------
		LoadActor("Fullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+335;y,SCREEN_TOP+135;zoom,0);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(linear,0.2;zoom,0.63;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("PerfectFullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+335;y,SCREEN_TOP+135;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(linear,0.2;zoom,0.63;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("MarvelousFullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+335;y,SCREEN_TOP+135;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(linear,0.2;zoom,0.63;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("Fullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+335;y,SCREEN_TOP+135;zoom,0);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(linear,0.2;zoom,0.63;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("PerfectFullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+335;y,SCREEN_TOP+135;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(linear,0.2;zoom,0.63;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("MarvelousFullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+335;y,SCREEN_TOP+135;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(linear,0.2;zoom,0.63;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("FullCombo1")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+267;y,SCREEN_TOP+140;zoom,0;diffusealpha,0;rotationz,370;);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};
	LoadActor("FullCombo2")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+267;y,SCREEN_TOP+140;zoom,0;diffusealpha,0;rotationz,370;diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,1;effectperiod,0.2);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};

	LoadActor("PerfectFullCombo1")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+267;y,SCREEN_TOP+140;zoom,0;diffusealpha,0;rotationz,370;);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};
	LoadActor("PerfectFullCombo2")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+267;y,SCREEN_TOP+140;zoom,0;diffusealpha,0;rotationz,370;diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,1;effectperiod,0.2);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};

	LoadActor("MarvelousFullCombo1")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+267;y,SCREEN_TOP+140;zoom,0;diffusealpha,0;rotationz,370;);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};
	LoadActor("MarvelousFullCombo2")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+267;y,SCREEN_TOP+140;zoom,0;diffusealpha,0;rotationz,370;diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,1;effectperiod,0.2);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};
};

-- if GAMESTATE:IsCourseMode() then
-- 	t[#t+1] = LoadActor("CourseDisplay");
-- else
-- 	t[#t+1] = Def.Quad {
-- 		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+116;zoomto,254,78;diffuse,Color("Black"));
-- 		OnCommand=cmd(diffusealpha,0;scaletoclipped,254,78);
-- 	};

-- 	t[#t+1] = Def.Sprite {
-- 		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_TOP+116);
-- 		BeginCommand=cmd(LoadFromCurrentSongBanner);
-- 		OnCommand=cmd(diffusealpha,0;scaletoclipped,254,78;linear,0.2;diffusealpha,1);
-- 		OffCommand=cmd(linear,0.2;zoomy,0);
-- 	};
-- end;

if GAMESTATE:IsPlayerEnabled(PLAYER_1) then
t[#t+1] = Def.ActorFrame {

	LoadActor( "ScoreandDifficultyFrame" )..{
		OnCommand=cmd(x,SCREEN_LEFT+215;y,SCREEN_BOTTOM-107);
		OffCommand=cmd(diffusealpha,0);
	};
}

end

if GAMESTATE:IsPlayerEnabled(PLAYER_2) then
t[#t+1] = Def.ActorFrame {

	LoadActor( "ScoreandDifficultyFrame" )..{
		OnCommand=cmd(rotationy,180;x,SCREEN_RIGHT-215;y,SCREEN_BOTTOM-107);
		OffCommand=cmd(diffusealpha,0);
	};
}

end



return t;