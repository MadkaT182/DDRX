local t = Def.ActorFrame {};
local scPos = 96;
local difPos = 96;
local suffix = "n";

if IsUsingWideScreen() then
	scPos = 129;
	difPos = 118;
	suffix = "w";
end

if not GAMESTATE:IsDemonstration() then
	if GAMESTATE:IsPlayerEnabled(PLAYER_1) then
		t[#t+1] = Def.ActorFrame {
			LoadActor("score"..suffix)..{
				OnCommand=cmd(x,SCREEN_LEFT+scPos);
			};
			LoadActor("difficulty"..suffix)..{
				OnCommand=cmd(x,SCREEN_LEFT+difPos;y,-19);
			};
			LoadActor("level")..{
				OnCommand=cmd(x,SCREEN_LEFT+89);
				Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Rave' or GAMESTATE:GetPlayMode() == 'PlayMode_Battle'
			};
		};
	end;
	if GAMESTATE:IsPlayerEnabled(PLAYER_2) then
		t[#t+1] = Def.ActorFrame {
			LoadActor("score"..suffix)..{
				OnCommand=cmd(x,SCREEN_RIGHT-scPos;zoomx,-1);
			};
			LoadActor("difficulty"..suffix)..{
				OnCommand=cmd(x,SCREEN_RIGHT-difPos;y,-19;zoomx,-1);
			};
			LoadActor("level")..{
				OnCommand=cmd(x,SCREEN_RIGHT-102);
				Condition=GAMESTATE:GetPlayMode() == 'PlayMode_Rave' or GAMESTATE:GetPlayMode() == 'PlayMode_Battle'
			};
		};
	end;
	t[#t+1] = Def.ActorFrame {
		LoadActor("diffind")..{
			OnCommand=cmd(y,-19);
		};
	};
end
return t;