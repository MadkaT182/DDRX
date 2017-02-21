local t = Def.ActorFrame {

	--Rave mode decorations
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

};

return t;