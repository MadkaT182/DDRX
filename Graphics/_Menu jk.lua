local t = Def.ActorFrame {};
local lang = "us";

t[#t+1] = Def.ActorFrame {

	GainFocusCommand=cmd(stoptweening;diffusealpha,1;);
	LoseFocusCommand=cmd(stoptweening;diffusealpha,0);

	LoadActor("_MenuArt/01")..{
	GainFocusCommand=cmd(stoptweening;x,-146;y,-20;diffusealpha,0;addx,10;sleep,0.483;diffusealpha,1;decelerate,0.05;addx,-13;accelerate,0.016;addx,3);
	};

	LoadActor("_MenuArt/02")..{
	GainFocusCommand=cmd(stoptweening;x,138;y,-20;diffusealpha,0;addx,-10;sleep,0.483;diffusealpha,1;decelerate,0.05;addx,13;accelerate,0.016;addx,-3);
	};

	LoadActor( "_MenuArt/thumb/options"..lang )..{
	GainFocusCommand=cmd(stoptweening;x,-4;y,-18;zoomy,0;sleep,0.383;zoomy,0.2;decelerate,0.1;zoomy,1.05;accelerate,0.016;zoomy,1);
	};

	-- LoadActor( "_MenuArt/dialog/options"..lang )..{
	-- OnCommand=cmd(stoptweening;x,138;y,188;diffusealpha,0;sleep,0.433;linear,0.05;diffusealpha,1);
	-- };

	LoadActor("_MenuArt/menu/bg/jk")..{
	InitCommand=cmd(addx,285;addy,83;rotationz,-1.97;glowshift;effectperiod,0.25;effectcolor1,color("#d07c0000");effectcolor2,color("#fe990188"));
	};

	LoadActor("_MenuArt/menu/text/jk")..{
	InitCommand=cmd(addx,285;addy,83;rotationz,-1.97);
	};
};

return t;