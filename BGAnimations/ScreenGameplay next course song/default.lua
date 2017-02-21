-- -- wait from _fallback
-- -- エンドレスのフルコンボエフェクト時間対策
-- local wait = 1.5 + 0.25

-- local t = Def.ActorFrame {
-- 	StartCommand=cmd(sleep,wait;queuecommand,"TweenOn");
-- }

-- -- local t = Def.ActorFrame{};

-- -- ドアは移動後に元の位置に戻してある。何度も往復するため、こうしないとズレる。
-- -------------------------------------------graphic doors and background----------------
-- t[#t+1]=Def.ActorFrame {
-- 	LoadActor("../2013Door01.png")..{
-- 		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-360;zoom,1.01);
-- 		TweenOnCommand=cmd(linear,0.25;y,SCREEN_CENTER_Y;sleep,2;linear,0.25;y,SCREEN_CENTER_Y-360);
-- 		FinishCommand=cmd(diffusealpha,0);
-- 	};
-- 	LoadActor("../2013Door02.png")..{
-- 		InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+360;zoom,1.01);
-- 		TweenOnCommand=cmd(linear,0.25;y,SCREEN_CENTER_Y;sleep,2;linear,0.25;y,SCREEN_CENTER_Y+360);
-- 		FinishCommand=cmd(diffusealpha,0);
-- 	};	
-- };
-- -----------------------------Sound ------doors--------------------------
-- t[#t+1] = LoadActor(THEME:GetPathS( "", "_Door" ) ) .. {
-- 	TweenOnCommand=cmd(play);
-- };
-- -------------------------------------------------------------------
-- --
-- -- CDImage
-- t[#t+1] = Def.Sprite{
-- 	InitCommand=cmd(diffusealpha,0);
-- 	BeforeLoadingNextCourseSongMessageCommand=function(self)
-- 		local nextsong=SCREENMAN:GetTopScreen():GetNextCourseSong();
-- 		if nextsong:HasCDImage() then
-- 			self:x(SCREEN_CENTER_X);
-- 			self:y(SCREEN_CENTER_Y+80);
-- 			self:LoadBackground(nextsong:GetCDImagePath());
-- 			self:scaletoclipped(256,256);
-- 		else
-- 		end;
-- 	end;
-- 	TweenOnCommand=cmd(addy,-SCREEN_HEIGHT;diffusealpha,1;linear,0.25;addy,SCREEN_HEIGHT);
-- 	FinishCommand=cmd(linear,0.099;zoomy,0;linear,0;diffusealpha,0);
-- };

-- -- Jacket line or Banner line
-- t[#t+1]=Def.ActorFrame {
-- 	BeforeLoadingNextCourseSongMessageCommand=function(self)
-- 		local nextsong=SCREENMAN:GetTopScreen():GetNextCourseSong();
-- 		self:x(SCREEN_CENTER_X);
-- 		if nextsong:HasCDImage() then
-- 			self:y(SCREEN_CENTER_Y-93);
-- 		else
-- 			self:y(SCREEN_CENTER_Y);
-- 		end;
-- 	end;
-- 	TweenOnCommand=cmd(diffusealpha,0;zoom,5.5;sleep,0;linear,0.20;diffuse,color("#000000");zoom,1.25;linear,0.05;zoom,1.33;glow,color("1,1,1,0.75");linear,0.20;glow,color("1,1,1,0"));
-- 	Def.Sprite {
-- 		InitCommand=cmd(diffusealpha,0);
-- 		TweenOnCommand=cmd(diffusealpha,1);
-- 		BeforeLoadingNextCourseSongMessageCommand=function(self)
-- 			local nextsong=SCREENMAN:GetTopScreen():GetNextCourseSong();
-- 			self:LoadBackground(GetJacketBanner(nextsong));
-- 			self:zoom_to_banner_line();
-- 		--	self:diffuse(color("#000000"));
-- 			if nextsong:HasCDImage() or self:GetWidth() == self:GetHeight() then
-- 				self:y(0);
-- 			else
-- 				self:y(-101.5);
-- 			end;
-- 		end;
-- 		FinishCommand=cmd(linear,0.099;zoomy,0;linear,0;diffusealpha,0);
-- 	};
-- };

-- -- Jacket or Banner
-- t[#t+1]=Def.ActorFrame {
-- 	BeforeLoadingNextCourseSongMessageCommand=function(self)
-- 		local nextsong=SCREENMAN:GetTopScreen():GetNextCourseSong();
-- 		self:x(SCREEN_CENTER_X);
-- 		if nextsong:HasCDImage() then
-- 			self:y(SCREEN_CENTER_Y-93);
-- 		else
-- 			self:y(SCREEN_CENTER_Y);
-- 		end;
-- 	end;
-- 	TweenOnCommand=cmd(diffusealpha,0;zoom,5.5;sleep,0;linear,0.20;diffusealpha,1;zoom,1.25;linear,0.05;zoom,1.33;glow,color("1,1,1,0.75");linear,0.20;glow,color("1,1,1,0"));
-- 	Def.Sprite {
-- 		InitCommand=cmd(diffusealpha,0);
-- 		TweenOnCommand=cmd(diffusealpha,1);
-- 		BeforeLoadingNextCourseSongMessageCommand=function(self)
-- 			local nextsong=SCREENMAN:GetTopScreen():GetNextCourseSong();
-- 			self:LoadBackground(GetJacketBanner(nextsong));
-- 			self:zoom_to_banner();
-- 			if nextsong:HasCDImage() or self:GetWidth() == self:GetHeight() then
-- 				self:y(0);
-- 			else
-- 				self:y(-101.5);
-- 			end;
-- 		end;
-- 		FinishCommand=cmd(linear,0.099;zoomy,0;linear,0;diffusealpha,0);
-- 	};
-- };

-- t[#t+1] = LoadActor(THEME:GetPathS( "", "_Door" ) ) .. {
-- 	TweenOnCommand=cmd(play);
-- --	FinishCommand=cmd(sleep,10);
-- };

-- t[#t+1] = LoadActor(THEME:GetPathS( "", "_cheer" ) ) .. {
-- 	TweenOnCommand=cmd(play);
-- --	FinishCommand=cmd(sleep,10);
-- };

-- -- simfile has bgchenge Dancer false  
-- -- コース中はリロードできないっぽい?
-- --[[
-- t[#t+1] = Def.Sprite {
-- 	BeforeLoadingNextCourseSongMessageCommand=function(self)
-- 		local nextsong=SCREENMAN:GetTopScreen():GetNextCourseSong();
-- 		if nextsong:HasBGChanges() then
-- 			WritePrefToFile("FirstReMIX_ShowDancingCharacters",false);
-- 		else
-- 			WritePrefToFile("FirstReMIX_ShowDancingCharacters",true);
-- 		end;
-- 	end; 
-- 	FinishCommand=function(self)
-- 		THEME:ReloadMetrics();
-- 	end; 
-- };
-- --]]

-- -- Stage Number
-- local StageDisplay=1;
-- t[#t+1] = LoadFont("_impact 60px") .. {
-- 	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+28;diffusealpha,0);
-- 	TweenOnCommand=cmd(diffuse,color("#333333");zoomx,1.1;zoomy,0;sleep,1.25;linear,0.1;zoomy,1.15;diffuse,color("#ffffff");addy,-28;sleep,3.5);
-- 	BeforeLoadingNextCourseSongMessageCommand=function(self)
-- 		local coursestages = GAMESTATE:GetCurrentCourse():GetEstimatedNumStages();
-- 		local stageStr;
-- 		local curStage;
-- 		if not GAMESTATE:IsCourseMode() then 
-- 			return; 
-- 		else
-- 			StageDisplay=StageDisplay+1
-- 		end;
-- 		-- Endless Modeの時はファイナルステージ表示をさせない
-- 		if GAMESTATE:GetPlayMode() == 'PlayMode_Endless' then
-- 			stageStr = FormatNumberAndSuffix(StageDisplay);
-- 		else
-- 			if coursestages == StageDisplay then
-- 				stageStr = 'FINAL';
-- 			else
-- 				stageStr = FormatNumberAndSuffix(StageDisplay);
-- 			end;
-- 		end
-- 		self:settext(stageStr.." STAGE");
-- 	end;
-- 	FinishCommand=cmd(zoomy,0;addy,28;diffusealpha,0);
-- };

-- -- Ready
-- t[#t+1] = LoadActor(THEME:GetPathB("ScreenGameplay","ready/ready")) .. {
-- 	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0);
-- 	FinishCommand = cmd(sleep,0.1;diffusealpha,1;sleep,1.3;diffusealpha,0);
-- }
--  -- Go
-- t[#t+1] = LoadActor(THEME:GetPathB("ScreenGameplay","go/go")) .. {
-- 	InitCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;diffusealpha,0);
-- 	FinishCommand = cmd(sleep,1.4;diffusealpha,1;sleep,1.3;diffusealpha,0);
-- }
-- -- Ready Sound
-- t[#t+1] = LoadActor(THEME:GetPathS( "", "_Ready" ) ) .. {
-- 	FinishCommand=cmd(sleep,0.1;queuecommand,"Sound");
-- 	SoundCommand=cmd(play);
-- };

-- -- Here we go Ramdom Sound
-- t[#t+1] = Def.Sound {
-- 	BeforeLoadingNextCourseSongMessageCommand=function(self)
-- 		local Ramdoms = {1,2,3,1}
-- 		local RamdomGo = Ramdoms[math.random(#Ramdoms)];
-- 		self:load(THEME:GetPathS( "", "_Go"..RamdomGo ));
-- 	end;
-- 	FinishCommand=cmd(sleep,1.4;queuecommand,"Sound");
-- 	SoundCommand=cmd(play);
-- };

-- return t;


local wait = 1.5 + 0.25;

local t = Def.ActorFrame {
	StartCommand=cmd(linear,wait;queuecommand,"On");
}

t[#t+1] = LoadActor("../door1")..{
OnCommand=cmd(x,SCREEN_CENTER_X-SCREEN_WIDTH/4;y,SCREEN_CENTER_Y;addx,-SCREEN_WIDTH/2;sleep,0.000;sleep,0.316;linear,0.2;addx,SCREEN_WIDTH/2;sleep,1.167;sleep,3.383;linear,0.2;addx,-SCREEN_WIDTH/2);
};

t[#t+1] = LoadActor("../door2")..{
OnCommand=cmd(x,SCREEN_CENTER_X+SCREEN_WIDTH/4;y,SCREEN_CENTER_Y;addx,SCREEN_WIDTH/2;sleep,0.000;sleep,0.316;linear,0.2;addx,-SCREEN_WIDTH/2;sleep,1.167;sleep,3.383;linear,0.2;addx,SCREEN_WIDTH/2);
};

return t;