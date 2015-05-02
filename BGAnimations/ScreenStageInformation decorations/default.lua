local t = Def.ActorFrame {};
-- t[#t+1] = StandardDecorationFromFileOptional("StyleIcon","StyleIcon");

-- if GAMESTATE:IsExtraStage() then

-- t[#t+1] = Def.ActorFrame {
-- 	LoadActor("../Common ScreenStages/extra1")..{
-- 		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0);
-- 		OffCommand=cmd(sleep,1.2;accelerate,0.3;rotationz,360;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1;sleep,3.5;linear,0.3;rotationz,-360;diffusealpha,0;zoom,0;addy,60);
-- }
-- };

-- elseif GAMESTATE:IsExtraStage2() then

-- t[#t+1] = Def.ActorFrame {
-- 	LoadActor("../Common ScreenStages/extra2")..{
-- 		OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0);
-- 		OffCommand=cmd(sleep,1.2;accelerate,0.3;rotationz,360;diffusealpha,1;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1;sleep,3.5;linear,0.3;rotationz,-360;diffusealpha,0;zoom,0;addy,60);
-- }
-- };


-- else

-- t[#t+1] = StandardDecorationFromFileOptional("StageDisplay","StageDisplay");

-- end

return t