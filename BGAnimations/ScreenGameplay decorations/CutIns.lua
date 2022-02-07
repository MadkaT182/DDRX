local t = Def.ActorFrame{};

if HasDedicatedVideo() then	return t end

local playernum = GAMESTATE:GetNumSidesJoined();
local maxp1;
local p1half;
local p1end;
local maxp2;
local p2half;
local p2end;

for player in ivalues(GAMESTATE:GetEnabledPlayers()) do
	local plChar = GAMESTATE:GetCharacter(player):GetCharacterID();
	local plDir = GAMESTATE:GetCharacter(player):GetCharacterDir();
	local plArt = "comboA.png";
	local xPos = SCREEN_CENTER_X+191;
	local suffix = "P1";

	if player == PLAYER_1 then
		maxp1 = GAMESTATE:GetCurrentSteps(PLAYER_1):GetRadarValues(PLAYER_1):GetValue('RadarCategory_TapsAndHolds');
		p1half = math.round(maxp1*.5);
		p1end = math.round(maxp1*.9);
	end

	if player == PLAYER_2 then
		maxp2 = GAMESTATE:GetCurrentSteps(PLAYER_2):GetRadarValues(PLAYER_2):GetValue('RadarCategory_TapsAndHolds');
		p2half = math.round(maxp2*.5);
		p2end = math.round(maxp2*.9);

		xPos = SCREEN_CENTER_X-191;
		suffix = "P2";
	end

	if playernum == 2 then
		xPos = SCREEN_CENTER_X;
		p1VFix = 60;
	end

	if plChar ~= 'default' then

		--Check if char has ALL required files
		if FILEMAN:DoesFileExist(plDir.."Cut-In/Tex_0036.png") and FILEMAN:DoesFileExist(plDir.."Cut-In/Tex_0035.png") and FILEMAN:DoesFileExist(plDir.."Cut-In/comboA.png") and FILEMAN:DoesFileExist(plDir.."Cut-In/comboB.png") and FILEMAN:DoesFileExist(plDir.."Cut-In/combo100.png") and FILEMAN:DoesFileExist(plDir.."Cut-In/Tex_0037.png") then
-- SCREENMAN:SystemMessage("Char ready!");
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
			LoadActor(plDir.."Cut-In/Tex_0036")..{
				InitCommand=cmd(diffusealpha,0);
				PlayCommand=cmd(finishtweening;ztest,true;setsize,256,SCREEN_HEIGHT+10;x,xPos;y,240;diffusealpha,0;linear,.166;diffusealpha,1;sleep,1;linear,.166;diffusealpha,0);
			};
			LoadActor(plDir.."Cut-In/Tex_0036")..{
				InitCommand=cmd(diffusealpha,0);
				PlayCommand=cmd(finishtweening;ztest,true;blend,'BlendMode_Add';setsize,256,SCREEN_HEIGHT+10;x,xPos-45;y,240;diffusealpha,0;sleep,.066;linear,0.1;diffusealpha,.4;linear,.668;x,xPos;linear,0.1;diffusealpha,0);
			};
			Def.Sprite{
				InitCommand=cmd(diffusealpha,0);
				PlayCommand=function(self)
					self:finishtweening();
					self:Load(plDir.."Cut-In/"..plArt);
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
			LoadActor(plDir.."Cut-In/Tex_0035")..{
				InitCommand=cmd(diffusealpha,0);
				PlayCommand=cmd(finishtweening;ztest,true;diffusealpha,1;blend,'BlendMode_Add';x,xPos-40;y,240;zoomy,4;diffusealpha,0;sleep,.2;linear,.1;diffusealpha,.5;accelerate,.5;addy,-SCREEN_HEIGHT;linear,.3;diffusealpha,0;sleep,.1;addy,SCREEN_HEIGHT);
			};
			LoadActor(plDir.."Cut-In/Tex_0035")..{
				InitCommand=cmd(diffusealpha,0);
				PlayCommand=cmd(finishtweening;ztest,true;diffusealpha,1;blend,'BlendMode_Add';x,xPos+40;y,280;zoomy,4;diffusealpha,0;sleep,.166;linear,.1;diffusealpha,.5;accelerate,.4;addy,-SCREEN_HEIGHT;linear,.3;diffusealpha,0;sleep,.1;addy,SCREEN_HEIGHT);
			};
			LoadActor(plDir.."Cut-In/Tex_0035")..{
				InitCommand=cmd(diffusealpha,0);
				PlayCommand=cmd(finishtweening;ztest,true;diffusealpha,1;blend,'BlendMode_Add';x,xPos+20;y,300;zoomy,2;diffusealpha,0;sleep,.233;linear,.1;diffusealpha,.5;accelerate,.3;addy,-SCREEN_HEIGHT;linear,.3;diffusealpha,0;sleep,.1;addy,SCREEN_HEIGHT);
			};
			LoadActor(plDir.."Cut-In/Tex_0035")..{
				InitCommand=cmd(diffusealpha,0);
				PlayCommand=cmd(finishtweening;ztest,true;diffusealpha,1;blend,'BlendMode_Add';x,xPos-20;y,280;zoomy,2;diffusealpha,0;sleep,.3;linear,.1;diffusealpha,.5;accelerate,.6;addy,-SCREEN_HEIGHT;linear,.3;diffusealpha,0;sleep,.1;addy,SCREEN_HEIGHT);
			};
			LoadActor(plDir.."Cut-In/Tex_0037")..{
				InitCommand=cmd(diffusealpha,0);
				PlayCommand=function(self)
					self:finishtweening():ztest(true):setsize(256,SCREEN_HEIGHT+10):x(xPos):blend('BlendMode_Add');
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
						plArt = "comboA.png";
						self:queuecommand("Play");
					elseif CurCombo ~= 0 and CurCombo % 50 == 0 then
						if CurCombo%100 == 0 then
							plArt = "comboB.png";
						else
							plArt = "comboA.png";
						end
						self:queuecommand("Play");
					elseif CurCombo == 0 then return
					end;

					if player == PLAYER_1 then
						if CurCombo == p1half or CurCombo == p1end then
							plArt = "combo100.png";
							self:queuecommand("Play");
						end
					else
						if CurCombo == p2half or CurCombo == p2end then
							plArt = "combo100.png";
							self:queuecommand("Play");
						end
					end
				end
			end;
		};

		end
	end
end

return t;