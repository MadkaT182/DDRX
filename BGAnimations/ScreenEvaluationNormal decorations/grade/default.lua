local t = Def.ActorFrame {};

if GAMESTATE:GetPlayMode() ~= "PlayMode_Oni" then
	for player in ivalues(GAMESTATE:GetHumanPlayers()) do
		local cstats = STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetGrade();
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats(player):GetStageAward();
		local fctype = "";
		local boolfc = false;

		if staw == "StageAward_SingleDigitW3" or staw =="StageAward_OneW3" or staw =="StageAward_FullComboW3" then
			boolfc = true;
		elseif staw == "StageAward_SingleDigitW2" or staw =="StageAward_OneW2" or staw =="StageAward_FullComboW2" then
			boolfc = true;
			fctype = "Perfect";
		elseif staw == "StageAward_SingleDigitW1" or staw =="StageAward_OneW1" or staw =="StageAward_FullComboW1" then
			boolfc = true;
			fctype = "Marvelous";
		end

		t[#t+1] = Def.ActorFrame {
			InitCommand=function(self)
				self:player(player);
				self:y(SCREEN_CENTER_Y-62);
			end;
			Def.Sprite{
				Texture=THEME:GetPathG("", "Grades/Dummy");
				InitCommand=function(self)
					self:x(player == PLAYER_1 and SCREEN_CENTER_X-192 or SCREEN_CENTER_X+192);
					self:y(36);
					if cstats and boolfc then
						self:Load(THEME:GetPathG("", "Grades/"..fctype.."Fullcombo_ring"));
						self:spin();
						self:effectmagnitude(0,0,-128);
					end
				end;
				OnCommand=cmd(diffusealpha,0;zoom,0;sleep,.333;linear,.2;diffusealpha,1;zoom,1.2;linear,.1;zoom,1);
				OffCommand=cmd(linear,.2;zoom,0;diffusealpha,0);
			};
			Def.Sprite{
				Texture=THEME:GetPathG("", "Grades/Dummy");
				InitCommand=function(self)
					self:x(player == PLAYER_1 and SCREEN_CENTER_X-192 or SCREEN_CENTER_X+192);
					self:y(36);
					if cstats and boolfc then
						self:Load(THEME:GetPathG("", "Grades/"..fctype.."Fullcombo_lines"));
						self:spin();
						self:effectmagnitude(0,0,128);
					end
				end;
				OnCommand=cmd(diffusealpha,0;zoom,0;sleep,.333;linear,.2;diffusealpha,1;zoom,1);
				OffCommand=cmd(linear,.2;zoom,0;diffusealpha,0);
			};
			Def.Sprite{
				Texture=THEME:GetPathG("", "Grades/Dummy");
				InitCommand=function(self)
					self:x(player == PLAYER_1 and SCREEN_CENTER_X-228 or SCREEN_CENTER_X+228);
					if cstats then
						self:Load(THEME:GetPathG("", "Grades/"..cstats));
					end
				end;
				OnCommand=cmd(diffusealpha,0;zoomy,0;sleep,.04;linear,.12;zoomy,1;diffusealpha,1);
				OffCommand=cmd(linear,.2;zoomy,0;diffusealpha,0);
			};
			Def.Sprite{
				Texture=THEME:GetPathG("", "Grades/Dummy");
				InitCommand=function(self)
					self:x(player == PLAYER_1 and SCREEN_CENTER_X-222 or SCREEN_CENTER_X+222);
					self:y(44);
					if cstats and boolfc then
						self:Load(THEME:GetPathG("", "Grades/Lbl"..fctype.."Fullcombo1"));
					end
				end;
				OnCommand=cmd(diffusealpha,0;zoom,0;rotationz,370;sleep,.333;linear,.266;diffusealpha,1;zoom,1;rotationz,-10);
				OffCommand=cmd(stopeffect;zoomy,0.8;sleep,.016;linear,.066;addy,20;diffusealpha,.56;linear,.083;diffusealpha,0);
			};
			Def.Sprite{
				Texture=THEME:GetPathG("", "Grades/Dummy");
				InitCommand=function(self)
					self:x(player == PLAYER_1 and SCREEN_CENTER_X-222 or SCREEN_CENTER_X+222);
					self:y(44);
					if cstats and boolfc then
						self:Load(THEME:GetPathG("", "Grades/Lbl"..fctype.."Fullcombo2"));
					end
				end;
				OnCommand=cmd(diffusealpha,0;zoom,0;rotationz,370;sleep,.333;linear,.266;diffusealpha,1;zoom,1;rotationz,-10;diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,1;effectperiod,0.2);
				OffCommand=cmd(stopeffect;zoomy,0.8;sleep,.016;linear,.066;addy,20;diffusealpha,.56;linear,.083;diffusealpha,0);
			};
		};
	end
end

return t;