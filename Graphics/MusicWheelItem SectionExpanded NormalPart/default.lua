local group;

local t = Def.ActorFrame{

Def.Banner {
		Name="SongBanner";
		SetMessageCommand=function(self,params)
					group = params.Text;
		local so = GAMESTATE:GetSortOrder();
			if group then
				--Letter sort
				if group=='A' then
					self:Load(THEME:GetPathG("Section","Pink"));
				elseif group=='B' then
					self:Load(THEME:GetPathG("Section","Red"));
				elseif group=='C' then
					self:Load(THEME:GetPathG("Section","Green"));
				elseif group=='D' then
					self:Load(THEME:GetPathG("Section","Cyan"));
				elseif group=='E' then
					self:Load(THEME:GetPathG("Section","Purple"));
				elseif group=='F' then
					self:Load(THEME:GetPathG("Section","Blue"));
				elseif group=='G' then
					self:Load(THEME:GetPathG("Section","Pink"));
				elseif group=='H' then
					self:Load(THEME:GetPathG("Section","Red"));
				elseif group=='I' then
					self:Load(THEME:GetPathG("Section","Green"));
				elseif group=='J' then
					self:Load(THEME:GetPathG("Section","Cyan"));
				elseif group=='K' then
					self:Load(THEME:GetPathG("Section","Purple"));
				elseif group=='L' then
					self:Load(THEME:GetPathG("Section","Blue"));
				elseif group=='M' then
					self:Load(THEME:GetPathG("Section","Pink"));
				elseif group=='N' then
					self:Load(THEME:GetPathG("Section","Red"));
				elseif group=='O' then
					self:Load(THEME:GetPathG("Section","Green"));
				elseif group=='P' then
					self:Load(THEME:GetPathG("Section","Cyan"));
				elseif group=='Q' then
					self:Load(THEME:GetPathG("Section","Purple"));
				elseif group=='R' then
					self:Load(THEME:GetPathG("Section","Blue"));
				elseif group=='S' then
					self:Load(THEME:GetPathG("Section","Pink"));
				elseif group=='T' then
					self:Load(THEME:GetPathG("Section","Red"));
				elseif group=='U' then
					self:Load(THEME:GetPathG("Section","Green"));
				elseif group=='V' then
					self:Load(THEME:GetPathG("Section","Cyan"));
				elseif group=='W' then
					self:Load(THEME:GetPathG("Section","Purple"));
				elseif group=='X' then
					self:Load(THEME:GetPathG("Section","Blue"));
				elseif group=='Y' then
					self:Load(THEME:GetPathG("Section","Pink"));
				elseif group=='Z' then
					self:Load(THEME:GetPathG("Section","Red"));
				elseif group=='0-9' then
					self:Load(THEME:GetPathG("Section","Red"));
					--Difficulty lvl
				elseif group=='01' or group=='02' or group=='03' or group=='04' or group=='05'
				    or group=='06' or group=='07' or group=='08' or group=='09' or group=='10'
				    or group=='11' or group=='12' or group=='13' or group=='14' or group=='15'
				    or group=='16' or group=='17' or group=='18' or group=='19' or group=='20' then
					self:Load(THEME:GetPathG("Section","Blue"));
				elseif group=='N/A' or group=='N/D' then
					self:Load(THEME:GetPathG("Section","Red"));
					--DDR Series
				elseif group=='DDR 1st' then
					self:Load(THEME:GetPathG("Section","Blue"));
				elseif group=='DDR 2nd MIX' then
					self:Load(THEME:GetPathG("Section","Pink"));
				elseif group=='DDR 3rd MIX' then
					self:Load(THEME:GetPathG("Section","Blue"));
				elseif group=='DDR 4th MIX' then
					self:Load(THEME:GetPathG("Section","Blue"));
				elseif group=='DDR 5th MIX' then
					self:Load(THEME:GetPathG("Section","Green"));
				elseif group=='DDR EXTREME' then
					self:Load(THEME:GetPathG("Section","Green"));
				elseif group=='DDR SuperNOVA' then
					self:Load(THEME:GetPathG("Section","Red"));
				elseif group=='DDR SuperNOVA2' then
					self:Load(THEME:GetPathG("Section","Blue"));
				elseif group=='DDR X' then
					self:Load(THEME:GetPathG("Section","Pink"));
				elseif group=='DDRMAX' then
					self:Load(THEME:GetPathG("Section","Blue"));
				elseif group=='DDRMAX2' then
					self:Load(THEME:GetPathG("Section","Red"));
				else
					--Default BG
					self:Load(THEME:GetPathG("Section","Red"));
				end
			else
				--Default BG
				self:Load(THEME:GetPathG("Section","Red"));
			end;

		end;
	};

Def.Banner {
		Name="SongBanner";
		InitCommand=cmd(addx,-14;addy,0);
		SetMessageCommand=function(self,params)
			group = params.Text;
		local so = GAMESTATE:GetSortOrder();
			if group then
					if group == '01' then
						self:Load(THEME:GetPathG("Diff","1"));
					elseif group == '02' then
						self:Load(THEME:GetPathG("Diff","2"));
					elseif group == '03' then
						self:Load(THEME:GetPathG("Diff","3"));
					elseif group == '04' then
						self:Load(THEME:GetPathG("Diff","4"));
					elseif group == '05' then
						self:Load(THEME:GetPathG("Diff","5"));
					elseif group == '06' then
						self:Load(THEME:GetPathG("Diff","6"));
					elseif group == '07' then
						self:Load(THEME:GetPathG("Diff","7"));
					elseif group == '08' then
						self:Load(THEME:GetPathG("Diff","8"));
					elseif group == '09' then
						self:Load(THEME:GetPathG("Diff","9"));
					elseif group == '10' then
						self:Load(THEME:GetPathG("Diff","ten"));
					elseif group == '11' then
						self:Load(THEME:GetPathG("Diff","eleven"));
					elseif group == '12' then
						self:Load(THEME:GetPathG("Diff","twelve"));
					elseif group == '13' then
						self:Load(THEME:GetPathG("Diff","thirteen"));
					elseif group == '14' then
						self:Load(THEME:GetPathG("Diff","fourteen"));
					elseif group == '15' then
						self:Load(THEME:GetPathG("Diff","fifteen"));
					elseif group == '16' then
						self:Load(THEME:GetPathG("Diff","sixteen"));
					elseif group == '17' then
						self:Load(THEME:GetPathG("Diff","seventeen"));
					elseif group == '18' then
						self:Load(THEME:GetPathG("Diff","eighteen"));
					elseif group == '19' then
						self:Load(THEME:GetPathG("Diff","nineteen"));
					elseif group == '20' then
						self:Load(THEME:GetPathG("Diff","twenty"));
					else
						self:Load(THEME:GetPathG("Diff","clear"));
					end;
			end;
			end;
	};

	--Font Colors
	LoadFont("MusicWheelItem roulette")..{
		InitCommand=cmd(y,0;addx,0);
		SetMessageCommand=function(self, params)
			local group = params.Text;
		local so = GAMESTATE:GetSortOrder();
		if group=='DDR EXTREME' then
			self:settext(group);
		else
			self:settext("");
		end;
		end;
	};

	LoadFont("ScreenTitleMenu choices")..{
		InitCommand=cmd(y,0;addx,0);
		SetMessageCommand=function(self, params)
			local group = params.Text;
		local so = GAMESTATE:GetSortOrder();
		if group~='DDR EXTREME' and group~='DDR SuperNOVA' and group~='DDR 1st'
		and group~='DDR 4th MIX' and group~='DDR 2nd MIX' and group~='DDR 5th MIX'
		and group~='DDR SuperNOVA2' and group~='01' and group~='02' and group~='03' and group~='04' and group~='05'
	    and group~='06' and group~='07' and group~='08' and group~='09' and group~='10'
	    and group~='11' and group~='12' and group~='13' and group~='14' and group~='15'
	    and group~='16' and group~='17' and group~='18' and group~='19' and group~='20' then
			self:settext(group);
		else
			self:settext("");
		end;
		end;
	};

	LoadFont("MusicWheelItem red")..{
		InitCommand=cmd(y,0;addx,0);
		SetMessageCommand=function(self, params)
			local group = params.Text;
		local so = GAMESTATE:GetSortOrder();
		if group=='DDR SuperNOVA' then
			self:settext(group);
		else
			self:settext("");
		end;
		end;
	};

	LoadFont("MusicWheelItem green2")..{
		InitCommand=cmd(y,0;addx,0);
		SetMessageCommand=function(self, params)
			local group = params.Text;
		local so = GAMESTATE:GetSortOrder();
		if group=='DDR 1st' then
			self:settext(group);
		else
			self:settext("");
		end;
		end;
	};

	LoadFont("MusicWheelItem cyan")..{
		InitCommand=cmd(y,0;addx,0);
		SetMessageCommand=function(self, params)
			local group = params.Text;
		local so = GAMESTATE:GetSortOrder();
		if group=='DDR 4th MIX' then
			self:settext(group);
		else
			self:settext("");
		end;
		end;
	};

	LoadFont("MusicWheelItem cream")..{
		InitCommand=cmd(y,0;addx,0);
		SetMessageCommand=function(self, params)
			local group = params.Text;
		local so = GAMESTATE:GetSortOrder();
		if group=='DDR 2nd MIX' then
			self:settext(group);
		else
			self:settext("");
		end;
		end;
	};

	LoadFont("MusicWheelItem blue")..{
		InitCommand=cmd(y,0;addx,0);
		SetMessageCommand=function(self, params)
			local group = params.Text;
		local so = GAMESTATE:GetSortOrder();
		if group=='DDR 5th MIX' or group=='DDR SuperNOVA2' then
			self:settext(group);
		else
			self:settext("");
		end;
		end;
	};

};

return t;