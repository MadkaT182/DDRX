local t = Def.ActorFrame {};

--Combo Rings
t[#t+1] = Def.ActorFrame {

LoadActor("Fullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-207;y,SCREEN_TOP+135;zoom,0);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(linear,0.2;zoom,0.63;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("PerfectFullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-207;y,SCREEN_TOP+135;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(linear,0.2;zoom,0.63;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("MarvelousFullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-207;y,SCREEN_TOP+135;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(linear,0.2;zoom,0.63;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("Fullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-207;y,SCREEN_TOP+135;zoom,0);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(linear,0.2;zoom,0.63;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("PerfectFullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-207;y,SCREEN_TOP+135;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(linear,0.2;zoom,0.63;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("MarvelousFullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-207;y,SCREEN_TOP+135;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(linear,0.2;zoom,0.63;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("FullCombo1")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-285;y,SCREEN_TOP+140;zoom,0;diffusealpha,0;rotationz,370;);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};
	LoadActor("FullCombo2")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-285;y,SCREEN_TOP+140;zoom,0;diffusealpha,0;rotationz,370;diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,1;effectperiod,0.2);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};

	LoadActor("PerfectFullCombo1")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-285;y,SCREEN_TOP+140;zoom,0;diffusealpha,0;rotationz,370;);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};
	LoadActor("PerfectFullCombo2")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-285;y,SCREEN_TOP+140;zoom,0;diffusealpha,0;rotationz,370;diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,1;effectperiod,0.2);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};

	LoadActor("MarvelousFullCombo1")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-285;y,SCREEN_TOP+140;zoom,0;diffusealpha,0;rotationz,370;);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};
	LoadActor("MarvelousFullCombo2")..{
		InitCommand=cmd(player,PLAYER_1;x,SCREEN_CENTER_X-285;y,SCREEN_TOP+140;zoom,0;diffusealpha,0;rotationz,370;diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,1;effectperiod,0.2);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P1"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};

	-------P2--------
		LoadActor("Fullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+335;y,SCREEN_TOP+135;zoom,0);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(linear,0.2;zoom,0.63;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("PerfectFullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+335;y,SCREEN_TOP+135;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(linear,0.2;zoom,0.63;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("MarvelousFullcombo_ring")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+335;y,SCREEN_TOP+135;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(linear,0.2;zoom,0.63;spin;effectmagnitude,0,0,170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("Fullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+335;y,SCREEN_TOP+135;zoom,0);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(linear,0.2;zoom,0.63;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("PerfectFullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+335;y,SCREEN_TOP+135;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(linear,0.2;zoom,0.63;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};
	LoadActor("MarvelousFullcombo_lines")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+335;y,SCREEN_TOP+135;zoom,0);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(linear,0.2;zoom,0.63;spin;effectmagnitude,0,0,-170))(self);
			end;
		end;
		OffCommand=cmd(linear,0.2;zoom,0);
	};

	LoadActor("FullCombo1")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+267;y,SCREEN_TOP+140;zoom,0;diffusealpha,0;rotationz,370;);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};
	LoadActor("FullCombo2")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+267;y,SCREEN_TOP+140;zoom,0;diffusealpha,0;rotationz,370;diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,1;effectperiod,0.2);
		OnCommand=function(self)
		local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW3") or (staw =="StageAward_OneW3") or (staw =="StageAward_FullComboW3") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};

	LoadActor("PerfectFullCombo1")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+267;y,SCREEN_TOP+140;zoom,0;diffusealpha,0;rotationz,370;);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};
	LoadActor("PerfectFullCombo2")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+267;y,SCREEN_TOP+140;zoom,0;diffusealpha,0;rotationz,370;diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,1;effectperiod,0.2);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if((staw =="StageAward_SingleDigitW2") or (staw =="StageAward_OneW2") or (staw =="StageAward_FullComboW2") ) then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};

	LoadActor("MarvelousFullCombo1")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+267;y,SCREEN_TOP+140;zoom,0;diffusealpha,0;rotationz,370;);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};
	LoadActor("MarvelousFullCombo2")..{
		InitCommand=cmd(player,PLAYER_2;x,SCREEN_CENTER_X+267;y,SCREEN_TOP+140;zoom,0;diffusealpha,0;rotationz,370;diffuseshift;effectcolor1,1,1,1,0;effectcolor2,1,1,1,1;effectperiod,0.2);
		OnCommand=function(self)
			local staw = STATSMAN:GetCurStageStats():GetPlayerStageStats("PlayerNumber_P2"):GetStageAward();
			if(staw =="StageAward_FullComboW1") then
				(cmd(sleep,0.316;linear,0.266;diffusealpha,1;zoom,0.8;rotationz,-10))(self);
			end;
		end;
		OffCommand=cmd(stopeffect;zoomy,0.8;sleep,0.0000;sleep,0.016;linear,0.066;addy,20;diffusealpha,0.56;linear,0.083;diffusealpha,0);
	};

}

--Letter Grade
t[#t+1] = LoadActor("grade")..{
	InitCommand=cmd(diffusealpha,1;draworder,11;addy,-15-10-40-15);
	OffCommand=cmd(sleep,0.2;linear,0.2;diffusealpha,0);
};

--FullCombo decorations

return t;