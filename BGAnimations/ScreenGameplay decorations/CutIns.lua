local t = Def.ActorFrame{};
local playernum = GAMESTATE:GetNumSidesJoined();

for player in ivalues(GAMESTATE:GetEnabledPlayers()) do
	local plChar = GAMESTATE:GetCharacter(player):GetCharacterID();
	local plDir = GAMESTATE:GetCharacter(player):GetCharacterDir();
	local plArt = 1;
	local xPos = SCREEN_CENTER_X+191;
	local suffix = "P1";

	if player == PLAYER_2 then
		xPos = SCREEN_CENTER_X-191;
		suffix = "P2";
	end

	if playernum == 2 then
		xPos = SCREEN_CENTER_X;
		p1VFix = 60;
	end

	if plChar ~= 'default' then

		--Check if char has ALL required files
		if FILEMAN:DoesFileExist(plDir.."bg.png") and FILEMAN:DoesFileExist(plDir.."circles.png") and FILEMAN:DoesFileExist(plDir.."art1.png") and FILEMAN:DoesFileExist(plDir.."art2.png") and FILEMAN:DoesFileExist(plDir.."art3.png") and FILEMAN:DoesFileExist(plDir.."gradient.png") then
SCREENMAN:SystemMessage("Char ready!");
		t[#t+1] = Def.ActorFrame {
			LoadActor(THEME:GetPathG("toasty_mask","Single"))..{
				InitCommand=cmd(diffusealpha,0);
				PlayCommand=cmd(x,xPos;y,SCREEN_CENTER_Y;blend,'BlendMode_NoEffect';zwrite,true;clearzbuffer,true;diffusealpha,0;linear,.166;diffusealpha,1;sleep,1;linear,.166;diffusealpha,0);
				Condition=playernum==1
			};
			LoadActor(THEME:GetPathG("toasty_maskP1","Versus"))..{
				InitCommand=cmd(diffusealpha,0);
				PlayCommand=cmd(x,xPos;y,SCREEN_CENTER_Y;blend,'BlendMode_NoEffect';zwrite,true;clearzbuffer,true;diffusealpha,0;linear,.166;diffusealpha,1;sleep,1;linear,.166;diffusealpha,0);
				Condition=playernum==2 and player==PLAYER_1;
			};
			LoadActor(THEME:GetPathG("toasty_maskP2","Versus"))..{
				InitCommand=cmd(diffusealpha,0);
				PlayCommand=cmd(x,xPos;y,SCREEN_CENTER_Y;blend,'BlendMode_NoEffect';zwrite,true;clearzbuffer,true;diffusealpha,0;linear,.166;diffusealpha,1;sleep,1;linear,.166;diffusealpha,0);
				Condition=playernum==2 and player==PLAYER_2;
			};
			LoadActor(plDir.."bg")..{
				InitCommand=cmd(diffusealpha,0);
				PlayCommand=cmd(finishtweening;ztest,true;x,xPos;y,240;diffusealpha,0;linear,.166;diffusealpha,1;sleep,1;linear,.166;diffusealpha,0);
			};
			LoadActor(plDir.."bg")..{
				InitCommand=cmd(diffusealpha,0);
				PlayCommand=cmd(finishtweening;ztest,true;blend,'BlendMode_Add';x,xPos-45;y,240;diffusealpha,0;sleep,.066;linear,0.1;diffusealpha,.4;linear,.668;x,xPos;linear,0.1;diffusealpha,0);
			};
			Def.Sprite{
				InitCommand=cmd(diffusealpha,0);
				PlayCommand=function(self)
					self:finishtweening();
					self:Load(plDir.."art"..plArt..".png");
					self:ztest(true);
					self:x(xPos);
					self:zoomx(player == PLAYER_1 and 1 or -1);
					if playernum == 2 and player == PLAYER_1 then
						self:y(SCREEN_TOP+215-73);
					elseif playernum == 2 and player == PLAYER_2 then
						self:y(SCREEN_BOTTOM-215+133);
					else
						self:y(SCREEN_BOTTOM-179);
					end
					--offset p2 versus 120
					self:diffusealpha(0)
					:sleep(0.066):linear(0.1):addy(-4)
					:diffusealpha(1):linear(1):addy(-10)
					:linear(0.1):addy(-4)
					:diffusealpha(0):sleep(0.1):addy(18)
				end;
			};
			LoadActor(plDir.."circles")..{
				InitCommand=cmd(diffusealpha,0);
				PlayCommand=cmd(finishtweening;ztest,true;diffusealpha,1;blend,'BlendMode_Add';x,xPos-40;y,240;zoomy,4;diffusealpha,0;sleep,.2;linear,.1;diffusealpha,.5;accelerate,.5;addy,-SCREEN_HEIGHT;linear,.3;diffusealpha,0;sleep,.1;addy,SCREEN_HEIGHT);
			};
			LoadActor(plDir.."circles")..{
				InitCommand=cmd(diffusealpha,0);
				PlayCommand=cmd(finishtweening;ztest,true;diffusealpha,1;blend,'BlendMode_Add';x,xPos+40;y,280;zoomy,4;diffusealpha,0;sleep,.166;linear,.1;diffusealpha,.5;accelerate,.4;addy,-SCREEN_HEIGHT;linear,.3;diffusealpha,0;sleep,.1;addy,SCREEN_HEIGHT);
			};
			LoadActor(plDir.."circles")..{
				InitCommand=cmd(diffusealpha,0);
				PlayCommand=cmd(finishtweening;ztest,true;diffusealpha,1;blend,'BlendMode_Add';x,xPos+20;y,300;zoomy,2;diffusealpha,0;sleep,.233;linear,.1;diffusealpha,.5;accelerate,.3;addy,-SCREEN_HEIGHT;linear,.3;diffusealpha,0;sleep,.1;addy,SCREEN_HEIGHT);
			};
			LoadActor(plDir.."circles")..{
				InitCommand=cmd(diffusealpha,0);
				PlayCommand=cmd(finishtweening;ztest,true;diffusealpha,1;blend,'BlendMode_Add';x,xPos-20;y,280;zoomy,2;diffusealpha,0;sleep,.3;linear,.1;diffusealpha,.5;accelerate,.6;addy,-SCREEN_HEIGHT;linear,.3;diffusealpha,0;sleep,.1;addy,SCREEN_HEIGHT);
			};
			LoadActor(plDir.."gradient")..{
				InitCommand=cmd(diffusealpha,0);
				PlayCommand=function(self)
					self:finishtweening():ztest(true):x(xPos):blend('BlendMode_Add');
					if playernum == 2 and player == PLAYER_1 then
						self:y(240);
					else
						self:y(480);
					end
					self:diffusealpha(0):sleep(0.166):linear(.5):diffusealpha(.8);
					self:sleep(.5):linear(.2):diffusealpha(0);
				end;
			};
			ComboChangedMessageCommand=function(self, params)
				if params.Player == player then
					local CurCombo = params.PlayerStageStats:GetCurrentCombo();
					if CurCombo == 20 then
						plArt = 1;
						self:queuecommand("Play");
					elseif CurCombo ~= 0 and CurCombo % 50 == 0 then
						if CurCombo%100 == 0 then
							plArt = 2;
						else
							plArt = 3;
						end
						self:queuecommand("Play");
					elseif CurCombo == 0 then return
					end;
				end
			end;
		};

		end

		--Cut-in
		-- t[#t+1] = Def.ActorFrame {
		-- 	LoadActor(THEME:GetPathG("toasty_mask"..suffix,"Single"))..{
		-- 		InitCommand=cmd(diffusealpha,0);
		-- 		PlayCommand=cmd(blend,'BlendMode_NoEffect';zwrite,true;clearzbuffer,true;x,xPos-41+13;y,240;diffusealpha,0;linear,.166;diffusealpha,1;sleep,1;linear,.166;diffusealpha,0);
		-- 		Condition=playernum==1
		-- 	};
		-- 	LoadActor(THEME:GetPathG("toasty_maskP1","Versus"))..{
		-- 		InitCommand=cmd(blend,'BlendMode_NoEffect';zwrite,true;clearzbuffer,true;x,xPos-41+13;y,240;diffusealpha,0;linear,.166;diffusealpha,1;sleep,1;linear,.166;diffusealpha,0);
		-- 		Condition=playernum==2 and player=="PLAYER_1"
		-- 	};
		-- 	LoadActor(THEME:GetPathG("toasty_maskP2","Versus"))..{
		-- 		InitCommand=cmd(blend,'BlendMode_NoEffect';zwrite,true;clearzbuffer,true;x,xPos-41+13;y,240;diffusealpha,0;linear,.166;diffusealpha,1;sleep,1;linear,.166;diffusealpha,0);
		-- 		Condition=playernum==2 and player=="PLAYER_2"
		-- 	};
		-- 	LoadActor(plDir.."/bg")..{
		-- 		InitCommand=cmd(diffusealpha,0);
		-- 		PlayCommand=cmd(ztest,true;x,xPos;y,240;diffusealpha,0;linear,.166;diffusealpha,1;sleep,1;linear,.166;diffusealpha,0);
		-- 	};
		-- 	LoadActor(plDir.."/bg")..{
		-- 		InitCommand=cmd(diffusealpha,0);
		-- 		PlayCommand=cmd(ztest,true;blend,'BlendMode_Add';x,xPos-56;y,240;diffusealpha,0;sleep,.066;linear,0.1;diffusealpha,0.8;linear,.668;x,xPos;linear,0.1;diffusealpha,0);
		-- 	};
		-- 	LoadActor(plDir.."/art1")..{
		-- 		InitCommand=cmd(diffusealpha,0);
		-- 		PlayCommand=cmd(ztest,true;x,xPos-28;y,284;diffusealpha,0;sleep,.066;linear,.1;y,i==1 and 208-p1VFix or 448;diffusealpha,1;linear,1;y,i==1 and 194-p1VFix or 438;linear,.1;y,i==1 and 194-p1VFix or 434;diffusealpha,0);
		-- 	};
		-- 	-- LoadActor(plDir.."/art2")..{
		-- 	-- 	InitCommand=cmd(diffusealpha,0);
		-- 	-- 	PlayCommand=cmd(ztest,true;x,xPos-28;y,284;diffusealpha,0;sleep,.066;linear,.1;y,208;diffusealpha,1;linear,1;y,198;linear,.1;y,194;diffusealpha,0);
		-- 	-- 	Condition=plArt==2
		-- 	-- };
		-- 	-- LoadActor(plDir.."/art3")..{
		-- 	-- 	InitCommand=cmd(diffusealpha,0);
		-- 	-- 	PlayCommand=cmd(ztest,true;x,xPos-28;y,284;diffusealpha,0;sleep,.066;linear,.1;y,208;diffusealpha,1;linear,1;y,198;linear,.1;y,194;diffusealpha,0);
		-- 	-- 	Condition=plArt==3
		-- 	-- };
		-- 	LoadActor(plDir.."/gradient")..{
		-- 		InitCommand=cmd(diffusealpha,0);
		-- 		PlayCommand=cmd(ztest,true;x,xPos-28;y,240;blend,'BlendMode_Add';diffusealpha,0;sleep,.166;linear,.5;diffusealpha,.8;linear,.5;diffusealpha,0);
		-- 	};
		-- 	ComboChangedMessageCommand=function(self, params)
		-- 		if params.Player == player then
		-- 			local CurCombo = params.PlayerStageStats:GetCurrentCombo();
		-- 			if CurCombo == 25 then
		-- 				plArt = 1;
		-- 				self:queuecommand("Play");
		-- 			elseif CurCombo ~= 0 and CurCombo % 50 == 0 then
		-- 				if CurCombo%100 == 0 then
		-- 					plArt = 2;
		-- 				else
		-- 					plArt = 3;
		-- 				end
		-- 				self:queuecommand("Play");
		-- 			elseif CurCombo == 0 then return
		-- 			end;
		-- 		end
		-- 	end;
		-- };
	end

end

--SCREENMAN:SystemMessage("CutIns ready!");
return t;