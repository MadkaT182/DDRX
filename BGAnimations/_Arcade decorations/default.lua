local t = Def.ActorFrame {};

if not GAMESTATE:IsDemonstration() then
	t[#t+1] = Def.ActorFrame{
		LoadFont("_Serial")..{
			InitCommand=cmd(horizalign,left;x,7;y,10;settext,GetSerial());
		};
		LoadActor("unlock")..{
			OnCommand=cmd(x,SCREEN_RIGHT-33;y,SCREEN_CENTER_Y-61);
		};
		LoadActor("edit")..{
			OnCommand=cmd(x,SCREEN_RIGHT-33;y,SCREEN_CENTER_Y-202);
		};
		LoadActor("joint")..{
			OnCommand=cmd(x,SCREEN_RIGHT-33;y,SCREEN_CENTER_Y-133);
			Condition=GAMESTATE:GetPremium() == "Premium_2PlayersFor1Credit"
		};
	};
end;

if GAMESTATE:GetCoins() > 0 then
	t[#t+1] = Def.ActorFrame {
		LoadActor( "../start_frame.png" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-55;diffusealpha,0;rotationz,90;zoom,1.5;sleep,.833;accelerate,.15;rotationz,0;zoom,1;diffusealpha,1);
		};
		LoadActor( "../press_start1a.png" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-58;diffusealpha,0;rotationz,90;zoom,1.5;sleep,.833;accelerate,.15;rotationz,0;zoom,1;diffusealpha,1);
		};
		LoadActor( "../press_start1b.png" )..{
			OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_BOTTOM-58;addy,999;sleep,1.316;addy,-999;diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,1;effectperiod,.666);
		};
	};
end;

return t