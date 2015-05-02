return Def.ActorFrame {
	LoadActor( "../_shared background" )..{
	};

	LoadActor( "../door1" )..{
		OnCommand=cmd(x,SCREEN_CENTER_X-151;y,SCREEN_CENTER_Y;addx,-320;linear,0.2;addx,320);
	};

	-- LoadActor( "../door2" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X+151;y,SCREEN_CENTER_Y;addx,320;sleep,0.000;linear,0.2;addx,-320);
	-- };

	-- LoadActor( "../header" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-211;addy,-56;sleep,0.00;sleep,0.816;linear,0.5;addy,56);
	-- 	OffCommand=cmd(linear,0.133;addy,-56);
	-- };

	-- LoadActor( "../footer" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+228;addy,24;sleep,0.00;sleep,0.816;linear,0.5;addy,-24);
	-- 	OffCommand=cmd(linear,0.133;addy,24);
	-- };

	-- LoadActor( "banner_frame_side" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X+147;y,SCREEN_CENTER_Y-127;vertalign,bottom;zoom,0;sleep,0.000;sleep,1.6;rotationz,67;linear,0.133;zoom,1.5;sleep,0.000;linear,0.133;zoom,1);
	-- 	OffCommand=cmd(rotationz,67;sleep,0.316;linear,0.133;zoom,0);
	-- };

	-- LoadActor( "banner_frame_side" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X-146;y,SCREEN_CENTER_Y-127;vertalign,bottom;zoom,0;rotationy,180;sleep,0.000;sleep,1.6;rotationz,67;linear,0.133;zoom,1.5;sleep,0.000;linear,0.133;zoom,1);
	-- 	OffCommand=cmd(rotationy,180;rotationz,67;sleep,0.316;linear,0.133;zoom,0);
	-- };

	-- LoadActor( "cd01" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("Pluto") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd02" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("Pluto Relinquish") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd03" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("SABER WING") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd04" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("On The Break") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd05" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("SABER WING (AKIRA ISHIHARA Headshot mix)") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd06" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("On The Bounce") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd07" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("Horatio") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd08" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("Trigger") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd09" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("TRIP MACHINE(X-Special)") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd10" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("PARANOiA(X-Special)") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd11" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("SP-TRIP MACHINE~JUNGLE MIX~(X-Special)") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd13" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("PARANOiA MAX~DIRTY MIX~ (X-Special)") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd12" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("PARANOiA MAX~DIRTY MIX~in roulette(X-Special)") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd14" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("PARANOiA Rebirth (X-Special)") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd15" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("AFRONOVA (X-Special)") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd16" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("PARANOiA ETERNAL (X-Special)") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd17" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("TRIP MACHINE CLIMAX (X-Special)") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd18" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("PARANOiA EVOLUTION (X-Special)") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd19" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("Healing Vision (X-Special)") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd20" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("MAX 300 (X-Special)") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd21" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("CANDY (X-Special)") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd22" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("MAXX UNLIMITED (X-Special)") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd23" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("KAKUMEI (X-Special)") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd24" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("The legend of MAX (X-Special)") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd25" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("Dance Dance Revolution (X-Special)") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd26" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("DEAD END(GROOVE RADAR Special)") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd27" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("zx KIMONO PRINCESS") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd28" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("zv Pluto The First") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd29" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("zx roppongi EVOLVED ver. A") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd29" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("zx roppongi EVOLVED ver. B") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "cd29" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y+80;zoomx,1.825;zoomy,0;sleep,0.566;linear,0.066;zoomx,1.309;zoomy,0.11;linear,0.066;zoomx,1;zoomy,1;linear,0.066;zoomx,0.103;zoomy,1.3;sleep,0.016;linear,0.05;zoomx,1;zoomy,1);
	-- 	OffCommand=cmd(sleep,0.249;linear,0.133;zoomy,0.1;sleep,0.000;linear,0.133;zoomx,1.625;zoomy,0);
	-- 	Condition=CurSong() == Song("zx roppongi EVOLVED ver. C") and PlayModeName() == "Regular";
	-- };

	-- LoadActor( "../banner frame" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-129;zoomy,0;sleep,0.000;sleep,1.5;decelerate,0.15;zoomy,1;accelerate,0.033;zoomx,1.06;decelerate,0.033;zoomx,1);
	-- 	OffCommand=cmd(sleep,0.316;decelerate,0.066;zoomx,1.05;zoomy,0);
	-- };

	-- LoadActor( "_single1P" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X-115;y,SCREEN_CENTER_Y-90;vertalign,top;zoomy,0;addy,-43;sleep,0.000;sleep,1.5;decelerate,0.15;zoomy,1;addy,43;accelerate,0.033;zoomx,1.05;addx,-9;decelerate,0.033;zoomx,1;addx,9);
	-- 	OffCommand=cmd(sleep,0.316;decelerate,0.066;zoomx,1.05;zoomy,0;addy,-43);
	-- 	Condition=CurStyleName()=="single" and IsHumanPlayer(1);
	-- };

	-- LoadActor( "_single2P" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X-115;y,SCREEN_CENTER_Y-90;vertalign,top;zoomy,0;addy,-43;sleep,0.000;sleep,1.5;decelerate,0.15;zoomy,1;addy,43;accelerate,0.033;zoomx,1.05;addx,-9;decelerate,0.033;zoomx,1;addx,9);
	-- 	OffCommand=cmd(sleep,0.316;decelerate,0.066;zoomx,1.05;zoomy,0;addy,-43);
	-- 	Condition=CurStyleName()=="single" and IsHumanPlayer(2);
	-- };

	-- LoadActor( "_versus" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X-115;y,SCREEN_CENTER_Y-90;vertalign,top;zoomy,0;addy,-43;sleep,0.000;sleep,1.5;decelerate,0.15;zoomy,1;addy,43;accelerate,0.033;zoomx,1.05;addx,-9;decelerate,0.033;zoomx,1;addx,9);
	-- 	OffCommand=cmd(sleep,0.316;decelerate,0.066;zoomx,1.05;zoomy,0;addy,-43);
	-- 	Condition=CurStyleName()=="versus";
	-- };

	-- LoadActor( "_doubles1P" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X-115;y,SCREEN_CENTER_Y-90;vertalign,top;zoomy,0;addy,-43;sleep,0.000;sleep,1.5;decelerate,0.15;zoomy,1;addy,43;accelerate,0.033;zoomx,1.05;addx,-9;decelerate,0.033;zoomx,1;addx,9);
	-- 	OffCommand=cmd(sleep,0.316;decelerate,0.066;zoomx,1.05;zoomy,0;addy,-43);
	-- 	Condition=CurStyleName()=="double" and IsPlayerEnabled(1);
	-- };

	-- LoadActor( "_doubles2P" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X-115;y,SCREEN_CENTER_Y-90;vertalign,top;zoomy,0;addy,-43;sleep,0.000;sleep,1.5;decelerate,0.15;zoomy,1;addy,43;accelerate,0.033;zoomx,1.05;addx,-9;decelerate,0.033;zoomx,1;addx,9);
	-- 	OffCommand=cmd(sleep,0.316;decelerate,0.066;zoomx,1.05;zoomy,0;addy,-43);
	-- 	Condition=CurStyleName()=="double" and IsPlayerEnabled(2);
	-- };

	-- LoadActor( "_versus" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X-115;y,SCREEN_CENTER_Y-90;vertalign,top;zoomy,0;addy,-43;sleep,0.000;sleep,1.5;decelerate,0.15;zoomy,1;addy,43;accelerate,0.033;zoomx,1.05;addx,-9;decelerate,0.033;zoomx,1;addx,9);
	-- 	OffCommand=cmd(sleep,0.316;decelerate,0.066;zoomx,1.05;zoomy,0;addy,-43);
	-- 	Condition=CurStyleName()=="couple";
	-- };

	-- LoadActor( "_solo1P" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X-115;y,SCREEN_CENTER_Y-90;vertalign,top;zoomy,0;addy,-43;sleep,0.000;sleep,1.5;decelerate,0.15;zoomy,1;addy,43;accelerate,0.033;zoomx,1.05;addx,-9;decelerate,0.033;zoomx,1;addx,9);
	-- 	OffCommand=cmd(sleep,0.316;decelerate,0.066;zoomx,1.05;zoomy,0;addy,-43);
	-- 	Condition=CurStyleName()=="solo" and IsPlayerEnabled(1);
	-- };

	-- LoadActor( "_solo2P" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X-115;y,SCREEN_CENTER_Y-90;vertalign,top;zoomy,0;addy,-43;sleep,0.000;sleep,1.5;decelerate,0.15;zoomy,1;addy,43;accelerate,0.033;zoomx,1.05;addx,-9;decelerate,0.033;zoomx,1;addx,9);
	-- 	OffCommand=cmd(sleep,0.316;decelerate,0.066;zoomx,1.05;zoomy,0;addy,-43);
	-- 	Condition=CurStyleName()=="solo" and IsPlayerEnabled(2);
	-- };

	-- LoadActor( "_battle" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X-115;y,SCREEN_CENTER_Y-90;vertalign,top;zoomy,0;addy,-43;sleep,0.000;sleep,1.5;decelerate,0.15;zoomy,1;addy,43;accelerate,0.033;zoomx,1.05;addx,-9;decelerate,0.033;zoomx,1;addx,9);
	-- 	OffCommand=cmd(sleep,0.316;decelerate,0.066;zoomx,1.05;zoomy,0;addy,-43);
	-- 	Condition=PlayModeName() == "Rave";
	-- };

	-- LoadActor( "songbanner" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-134;zoomy,0;sleep,0.000;sleep,1.5;decelerate,0.15;zoomy,1;accelerate,0.033;zoomx,1.06;decelerate,0.033;zoomx,1);
	-- 	OffCommand=cmd(sleep,0.316;decelerate,0.066;zoomx,1.05;zoomy,0);
	-- 	Condition=not IsCourseMode();
	-- };

	-- LoadActor( "coursebanner" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y-134;zoomy,0;sleep,0.000;sleep,1.5;decelerate,0.15;zoomy,1;accelerate,0.033;zoomx,1.06;decelerate,0.033;zoomx,1);
	-- 	OffCommand=cmd(sleep,0.316;decelerate,0.066;zoomx,1.05;zoomy,0);
	-- 	Condition=IsCourseMode();
	-- };

	-- LoadActor( "../headerFrame" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X+147;y,SCREEN_CENTER_Y-232;vertalign,top;horizalign,right;zoom,0;sleep,0.816;linear,0.233;zoom,1.05;linear,0.166;zoom,1);
	-- 	OffCommand=cmd(linear,0.133;zoom,0);
	-- };

	-- LoadActor( "../../Graphics/ScreenSelectMusic header/mode_std" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X-96;y,SCREEN_CENTER_Y-218;horizalign,left;addy,-8;zoom,1.084;sleep,0.000;sleep,1;linear,0.05;addy,8;zoom,1.042;linear,0.05;zoom,1);
	-- 	OffCommand=cmd(linear,0.1;addy,-14);
	-- 	Condition=PlayModeName() == "Regular";
	-- };

	-- LoadActor( "../../Graphics/ScreenSelectMusic header/mode_battle" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X-96;y,SCREEN_CENTER_Y-226;horizalign,left;zoom,1.084;sleep,0.000;sleep,1;linear,0.05;addy,8;zoom,1.042;linear,0.05;zoom,1);
	-- 	OffCommand=cmd(linear,0.1;addy,-14);
	-- 	Condition=PlayModeName() == "Rave";
	-- };

	-- LoadActor( "selected_song" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X-94;y,SCREEN_CENTER_Y-200;horizalign,left;addy,-8;zoom,1.084;sleep,0.000;sleep,1;linear,0.05;addy,8;zoom,1.042;linear,0.05;zoom,1);
	-- 	OffCommand=cmd(linear,0.1;addy,-14);
	-- 	Condition=PlayModeName() == "Regular" or PlayModeName() == "Rave";
	-- };

	-- LoadActor( "selected_course" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X-94;y,SCREEN_CENTER_Y-205;horizalign,left;addy,-8;zoom,1.084;sleep,0.000;sleep,1;linear,0.05;addy,8;zoom,1.042;linear,0.05;zoom,1);
	-- 	OffCommand=cmd(linear,0.1;addy,-14);
	-- 	Condition=PlayModeName() == "Nonstop" or PlayModeName() == "Oni" or PlayModeName() == "Endless";
	-- };

	-- LoadActor( "1" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=PlayModeName() == "Nonstop" or PlayModeName() == "Oni";
	-- };

	-- LoadActor( "1" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and not IsFinalStage() and not IsExtraStage() and not IsExtraStage2() and StageIndex() == 0;
	-- };

	-- LoadActor( "2" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and not IsFinalStage() and not IsExtraStage() and not IsExtraStage2() and StageIndex() == 1;
	-- };

	-- LoadActor( "3" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and not IsFinalStage() and not IsExtraStage() and not IsExtraStage2() and StageIndex() == 2;
	-- };

	-- LoadActor( "4" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and not IsFinalStage() and not IsExtraStage() and not IsExtraStage2() and StageIndex() == 3;
	-- };

	-- LoadActor( "5" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and not IsFinalStage() and not IsExtraStage() and not IsExtraStage2() and StageIndex() == 4;
	-- };

	-- LoadActor( "6" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and not IsFinalStage() and not IsExtraStage() and not IsExtraStage2() and StageIndex() == 5;
	-- };

	-- LoadActor( "7" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and not IsFinalStage() and not IsExtraStage() and not IsExtraStage2() and StageIndex() == 6;
	-- };

	-- LoadActor( "8" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and not IsFinalStage() and not IsExtraStage() and not IsExtraStage2() and StageIndex() == 7;
	-- };

	-- LoadActor( "9" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and not IsFinalStage() and not IsExtraStage() and not IsExtraStage2() and StageIndex() == 8;
	-- };

	-- LoadActor( "stage" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and not IsFinalStage() and not IsExtraStage() and not IsExtraStage2() and StageIndex() > 99;
	-- };

	-- LoadActor( "final" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and IsFinalStage() and not IsExtraStage() and not IsExtraStage2();
	-- };

	-- LoadActor( "extra1" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and IsExtraStage();
	-- };

	-- LoadActor( "extra2" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and IsExtraStage2();
	-- };

	-- LoadActor( "n1" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and not IsFinalStage() and not IsExtraStage() and not IsExtraStage2() and StageIndex() > 8 and StageIndex() < 19;
	-- };

	-- LoadActor( "n2" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and not IsFinalStage() and not IsExtraStage() and not IsExtraStage2() and StageIndex() > 18 and StageIndex() < 29;
	-- };

	-- LoadActor( "n3" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and not IsFinalStage() and not IsExtraStage() and not IsExtraStage2() and StageIndex() > 28 and StageIndex() < 39;
	-- };

	-- LoadActor( "n4" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and not IsFinalStage() and not IsExtraStage() and not IsExtraStage2() and StageIndex() > 38 and StageIndex() < 49;
	-- };

	-- LoadActor( "n5" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and not IsFinalStage() and not IsExtraStage() and not IsExtraStage2() and StageIndex() > 48 and StageIndex() < 59;
	-- };

	-- LoadActor( "n6" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and not IsFinalStage() and not IsExtraStage() and not IsExtraStage2() and StageIndex() > 58 and StageIndex() < 69;
	-- };

	-- LoadActor( "n7" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and not IsFinalStage() and not IsExtraStage() and not IsExtraStage2() and StageIndex() > 68 and StageIndex() < 79;
	-- };

	-- LoadActor( "n8" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and not IsFinalStage() and not IsExtraStage() and not IsExtraStage2() and StageIndex() > 78 and StageIndex() < 89;
	-- };

	-- LoadActor( "n9" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and not IsFinalStage() and not IsExtraStage() and not IsExtraStage2() and StageIndex() > 88 and StageIndex() < 99;
	-- };

	-- LoadActor( "100" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and not IsFinalStage() and not IsExtraStage() and not IsExtraStage2() and StageIndex() == 99;
	-- };

	-- LoadActor( "0a" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and not IsFinalStage() and not IsExtraStage() and not IsExtraStage2() and StageIndex() == 9 or StageIndex() == 19 or StageIndex() == 29 or StageIndex() == 39 or StageIndex() == 49 or StageIndex() == 59 or StageIndex() == 69 or StageIndex() == 79 or StageIndex() == 89;
	-- };

	-- LoadActor( "1a" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and not IsFinalStage() and not IsExtraStage() and not IsExtraStage2() and StageIndex() == 10;
	-- };

	-- LoadActor( "2a" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and not IsFinalStage() and not IsExtraStage() and not IsExtraStage2() and StageIndex() == 11;
	-- };

	-- LoadActor( "3a" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and not IsFinalStage() and not IsExtraStage() and not IsExtraStage2() and StageIndex() == 12;
	-- };

	-- LoadActor( "4a" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and not IsFinalStage() and not IsExtraStage() and not IsExtraStage2() and StageIndex() == 13 or StageIndex() == 23 or StageIndex() == 33 or StageIndex() == 43 or StageIndex() == 53 or StageIndex() == 63 or StageIndex() == 73 or StageIndex() == 83 or StageIndex() == 93;
	-- };

	-- LoadActor( "5a" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() and not IsFinalStage() and not IsExtraStage() and not IsExtraStage2() and StageIndex() == 14 or StageIndex() == 24 or StageIndex() == 34 or StageIndex() == 44 or StageIndex() == 54 or StageIndex() == 64 or StageIndex() == 74 or StageIndex() == 84 or StageIndex() == 94;
	-- };

	-- LoadActor( "6a" )..{
	-- 	OnCommand=cmd(x,SCREEN_CENTER_X;y,SCREEN_CENTER_Y;sleep,0.000;sleep,2.55;accelerate,0.3;rotationz,360;accelerate,0.05;zoom,1.6.6;decelerate,0.083;zoom,0.95;decelerate,0.016;zoom,1);
	-- 	OffCommand=cmd(linear,0.3;rotationz,-360;zoom,0;addy,60);
	-- 	Condition=not IsCourseMode() a;
	-- };
}