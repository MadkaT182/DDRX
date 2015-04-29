return Def.ActorFrame {
	LoadActor( "../../_modifiers/speed/x0.25" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-302;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "0.25x") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/speed/x0.25" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+129;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "0.25x") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/speed/x0.5" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-302;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "0.5x") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/speed/x0.5" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+129;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "0.5x") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/speed/x1.5" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-302;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "1.5x") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/speed/x1.5" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+129;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "1.5x") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/speed/x2" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-302;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "2x") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/speed/x2" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+129;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "2x") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/speed2/x2.5" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-302;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "2.5x") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/speed2/x2.5" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+129;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "2.5x") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/speed/x3" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-302;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "3x") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/speed/x3" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+129;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "3x") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/speed2/x3.5" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-302;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "3.5x") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/speed2/x3.5" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+129;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "3.5x") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/speed/x4" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-302;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "4x") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/speed/x4" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+129;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "4x") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/speed2/x4.5" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-302;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "4.5x") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/speed2/x4.5" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+129;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "4.5x") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/speed/x5" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-302;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "5x") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/speed/x5" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+129;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "5x") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/speed2/x5.5" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-302;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "5.5x") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/speed2/x5.5" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+129;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "5.5x") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/speed/x6" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-302;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "6x") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/speed/x6" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+129;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "6x") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/speed2/x6.5" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-302;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "6.5x") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/speed2/x6.5" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+129;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "6.5x") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/speed/x7" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-302;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "7x") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/speed/x7" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+129;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "7x") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/speed2/x7.5" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-302;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "7.5x") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/speed2/x7.5" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+129;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "7.5x") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/speed/x8" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-302;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "8x") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/speed/x8" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+129;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "8x") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/boost/on" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-285;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "boost") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/boost/on" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+146;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "boost") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/boost/brake" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-285;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "brake") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/boost/brake" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+146;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "brake") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/boost/wave" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-285;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "wave") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/boost/wave" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+146;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "wave") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/appearance/hidden" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-268;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "hidden") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/appearance/hidden" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+163;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "hidden") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/appearance/sudden" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-268;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "sudden") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/appearance/sudden" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+163;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "sudden") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/appearance/stealth" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-268;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "stealth") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/appearance/stealth" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+163;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "stealth") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/turn/mirror" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-251;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "mirror") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/turn/mirror" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+180;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "mirror") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/turn/left" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-251;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "left") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/turn/left" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+180;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "left") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/turn/right" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-251;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "right") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/turn/right" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+180;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "right") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/turn/shuffle" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-251;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "shuffle") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/turn/shuffle" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+180;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "shuffle") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/dark/on" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-234;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "dark") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/dark/on" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+197;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "dark") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/scroll/reverse" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-217;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "reverse") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/scroll/reverse" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+214;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "reverse") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/arrow/flat" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-200;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "flat") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/arrow/flat" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+231;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "flat") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/arrow/rainbow" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-200;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "rainbow") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/arrow/rainbow" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+231;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "rainbow") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/arrow/note" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-200;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "note") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/arrow/note" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+231;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "note") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/cut/on" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-183;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "little") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/cut/on" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+248;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "little") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/freeze_arrow/off" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-166;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "noholds") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/freeze_arrow/off" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+265;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "noholds") and IsPlayerEnabled(2);
	};

	LoadActor( "../../_modifiers/jump/off2" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-166;y,SCREEN_CENTER_Y+203;cropright,0.5;addx,6;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(1, "nojumps") and IsPlayerEnabled(1);
	};

	LoadActor( "../../_modifiers/jump/off2" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X+265;y,SCREEN_CENTER_Y+203;cropleft,0.5;addx,-270;addy,48;sleep,0.683;linear,0.2;addy,-48);
		OffCommand=cmd(sleep,0.016;linear,0.2;addy,48);
		Condition=UsingModifier(2, "nojumps") and IsPlayerEnabled(2);
	};
}
