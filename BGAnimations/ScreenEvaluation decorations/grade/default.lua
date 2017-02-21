local t = Def.ActorFrame {
--P1--
--FCRingP1--
	LoadActor("Fullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-192;y,SCREEN_CENTER_Y-26;zoom,0);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(linear,0.2;zoom,0.8648;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("PerfectFullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-192;y,SCREEN_CENTER_Y-26;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(linear,0.2;zoom,0.8648;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("MarvelousFullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-192;y,SCREEN_CENTER_Y-26;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(linear,0.2;zoom,0.8648;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("Fullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-192;y,SCREEN_CENTER_Y-26;zoom,0);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(linear,0.2;zoom,0.9;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("PerfectFullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-192;y,SCREEN_CENTER_Y-26;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(linear,0.2;zoom,0.9;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("MarvelousFullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-192;y,SCREEN_CENTER_Y-26;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(linear,0.2;zoom,0.9;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

--GRADEP1---

	LoadActor("Grade_AAA_B")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-228;y,SCREEN_CENTER_Y-62;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier01") then
				(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_AAA_B")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-228;y,SCREEN_CENTER_Y-62;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier02") then
				(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_AA_B")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-228;y,SCREEN_CENTER_Y-62;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier03") then
				(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_A_B")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-228;y,SCREEN_CENTER_Y-63;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier04") then
				(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_B_B")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-228;y,SCREEN_CENTER_Y-63;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier05") then
				(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_C_B")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-227;y,SCREEN_CENTER_Y-62;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier06") then
				(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_D_B")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-228;y,SCREEN_CENTER_Y-63;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Tier07") then
				(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_E_B")..{
		InitCommand=cmd(player,PLAYER_1; x,SCREEN_CENTER_X-227;y,SCREEN_CENTER_Y-62;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetGrade()=="Grade_Failed") then
				(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

--Fullcombo label p1
	LoadActor("LblFullCombo1")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-222;y,SCREEN_TOP+222;zoom,0;diffusealpha,0;rotationz,370;);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,1;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};
	LoadActor("LblFullCombo2")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-222;y,SCREEN_TOP+222;zoom,0;diffusealpha,0;rotationz,370;diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,1;effectperiod,0.2);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,1;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};
	LoadActor("LblPerfectFullCombo1")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-222;y,SCREEN_TOP+222;zoom,0;diffusealpha,0;rotationz,370;);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,1;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};
	LoadActor("LblPerfectFullCombo2")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-222;y,SCREEN_TOP+222;zoom,0;diffusealpha,0;rotationz,370;diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,1;effectperiod,0.2);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,1;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};
	LoadActor("LblMarvelousFullCombo1")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-222;y,SCREEN_TOP+222;zoom,0;diffusealpha,0;rotationz,370;);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,1;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};
	LoadActor("LblMarvelousFullCombo2")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-222;y,SCREEN_TOP+222;zoom,0;diffusealpha,0;rotationz,370;diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,1;effectperiod,0.2);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,1;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};

--P2--
--FCRingP2--
		LoadActor("Fullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+268;y,SCREEN_CENTER_Y-26;zoom,0);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(linear,0.2;zoom,0.8648;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("PerfectFullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+268;y,SCREEN_CENTER_Y-26;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(linear,0.2;zoom,0.8648;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("MarvelousFullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+268;y,SCREEN_CENTER_Y-26;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(linear,0.2;zoom,0.8648;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("Fullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+268;y,SCREEN_CENTER_Y-26;zoom,0);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(linear,0.2;zoom,0.9;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("PerfectFullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+268;y,SCREEN_CENTER_Y-26;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(linear,0.2;zoom,0.9;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("MarvelousFullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+268;y,SCREEN_CENTER_Y-26;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(linear,0.2;zoom,0.9;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};


--GradeP2--

	LoadActor("Grade_AAA_B")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+232;y,SCREEN_CENTER_Y-62;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier01") then
				(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_AAA_B")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+232;y,SCREEN_CENTER_Y-62;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier02") then
				(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("Grade_AA_B")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+232;y,SCREEN_CENTER_Y-62;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier03") then
				(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("Grade_A_B")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+232;y,SCREEN_CENTER_Y-63;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier04") then
				(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_B_B")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+232;y,SCREEN_CENTER_Y-63;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier05") then
				(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("Grade_C_B")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+233;y,SCREEN_CENTER_Y-62;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier06") then
				(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_D_B")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+232;y,SCREEN_CENTER_Y-63;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Tier07") then
				(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("Grade_E_B")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+233;y,SCREEN_CENTER_Y-62;zoom,0);
		OnCommand=function(self)
			if(STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetGrade()=="Grade_Failed") then
				(cmd(sleep,0.2;linear,0.2;zoom,1))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

--Full combo label

	LoadActor("LblFullCombo1")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+228;y,SCREEN_TOP+222;zoom,0;diffusealpha,0;rotationz,370;);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,1;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};
	LoadActor("LblFullCombo2")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+228;y,SCREEN_TOP+222;zoom,0;diffusealpha,0;rotationz,370;diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,1;effectperiod,0.2);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,1;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};

	LoadActor("LblPerfectFullCombo1")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+228;y,SCREEN_TOP+222;zoom,0;diffusealpha,0;rotationz,370;);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,1;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};
	LoadActor("LblPerfectFullCombo2")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+228;y,SCREEN_TOP+222;zoom,0;diffusealpha,0;rotationz,370;diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,1;effectperiod,0.2);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,1;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};

	LoadActor("LblMarvelousFullCombo1")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+228;y,SCREEN_TOP+222;zoom,0;diffusealpha,0;rotationz,370;);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,1;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};
	LoadActor("LblMarvelousFullCombo2")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+228;y,SCREEN_TOP+222;zoom,0;diffusealpha,0;rotationz,370;diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,1;effectperiod,0.2);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,1;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};

};
return t;