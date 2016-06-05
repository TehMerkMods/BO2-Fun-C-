#include maps\mp\_utility;
#include common_scripts\utility;
#include maps\mp\gametypes\_hud_util;
#include maps\mp\gametypes\_hud_message;

init()
{
    level thread onPlayerConnect();
    	level.vArray = [];
		level.vArray["result"] = 1;
		level.vArray["hostheart"] = false;
		level.vArray["menuheart"] = false;
		level.vArray["ranklobbymsg"] = false;
		level.vArray["currentTimescale"] = 1;
		level.vArray["isPlayingInputMsg"] = false;
		level.vArray["currentInputMsg"] = "";
		level.vArray["menuModels"] = [];
		level.vArray["speedMenuModel"] = 2;
		level.vArray["speedMenuModelNeg"] = -2;
}

onPlayerConnect()
{
    for(;;)
    {
        level waittill("connected", player);
        player thread onPlayerSpawned();
    }
}

onPlayerSpawned()
{
    self endon("disconnect");
    level endon("game_ended");
    self.HasFPSBeenDrawn=0;
    self.HasMenuStarted=0;
    self.CurrentMenuPos=0;
    self.IsFPSMenuOpen=0;
    self.HasJoinedGameMessageSpawned=0;
    self.keyBoardV = [];
	self.keyBoardV["isOpen"] = false;
	self.keyBoardV["isCaps"] = false;
	self.keyBoardV["currentResult"] = "";
	self.keyBoardV["keysLow"] = strTok("0\na\nk\nu\n_;1\nb\nl\nv\n-;2\nc\nm\nw\n.;3\nd\nn\nx\n,;4\ne\no\ny\n=;5\nf\np\nz\n';6\ng\nq\n \n@;7\nh\nr\n?\n#;8\ni\ns\n!\n<;9\nj\nt\n^\n>", ";");
	self.keyBoardV["keysBig"] = strTok("0\nA\nK\nU\n_;1\nB\nL\nV\n-;2\nC\nM\nW\n.;3\nD\nN\nX\n,;4\nE\nO\nY\n=;5\nF\nP\nZ\n';6\nG\nQ\n \n@;7\nH\nR\n?\n#;8\nI\nS\n!\n<;9\nJ\nT\n^\n>", ";");
	self.keyBoardV["fixedKeysLow"] = strTok("0aku_;1blv-;2cmw.;3dnx,;4eoy=;5fpz';6gq @;7hr?#;8is!<;9jt^>", ";");
	self.keyBoardV["fixedKeysBig"] = strTok("0AKU_;1BLV-;2CMW.;3DNX,;4EOY=;5FPZ';6GQ @;7HR?#;8IS!<;9JT^>", ";");
    self.keyBoardV["infoText"] = "[{+actionslot 1}]/[{+actionslot 2}]/[{+actionslot 3}]/[{+actionslot 4}] = Scroll\n[{+gostand}] = Select Char\n[{+stance}] = Delete Char\n[{+switchseat}] = Toggle Caps\n[{+usereload}] = Send String\n[{+melee}] = Exit";
    self.FPSMenuTextArray=strTok("^1God Mode^7\nInfinite Ammo\nCustom Message\nRainbow Camo\nAll Perks\nConstant UAV\nVisions\nKill Text\nAimbot\nDebug Exit\nSuicide\nEnd Game-God Mode\n^1Infinite Ammo^7\nCustom Message\nRainbow Camo\nAll Perks\nConstant UAV\nVisions\nKill Text\nAimbot\nDebug Exit\nSuicide\nEnd Game-God Mode\nInfinite Ammo\n^1Custom Message^7\nRainbow Camo\nAll Perks\nConstant UAV\nVisions\nKill Text\nAimbot\nDebug Exit\nSuicide\nEnd Game-God Mode\nInfinite Ammo\nCustom Message\n^1Rainbow Camo^7\nAll Perks\nConstant UAV\nVisions\nKill Text\nAimbot\nDebug Exit\nSuicide\nEnd Game-God Mode\nInfinite Ammo\nCustom Message\nRainbow Camo\n^1All Perks^7\nConstant UAV\nVisions\nKill Text\nAimbot\nDebug Exit\nSuicide\nEnd Game-God Mode\nInfinite Ammo\nCustom Message\nRainbow Camo\nAll Perks\n^1Constant UAV^7\nVisions\nKill Text\nAimbot\nDebug Exit\nSuicide\nEnd Game-God Mode\nInfinite Ammo\nCustom Message\nRainbow Camo\nAll Perks\nConstant UAV\n^1Visions^7\nKill Text\nAimbot\nDebug Exit\nSuicide\nEnd Game-God Mode\nInfinite Ammo\nCustom Message\nRainbow Camo\nAll Perks\nConstant UAV\nVisions\n^1Kill Text^7\nAimbot\nDebug Exit\nSuicide\nEnd Game-God Mode\nInfinite Ammo\nCustom Message\nRainbow Camo\nAll Perks\nConstant UAV\nVisions\nKill Text\n^1Aimbot^7\nDebug Exit\nSuicide\nEnd Game-God Mode\nInfinite Ammo\nCustom Message\nRainbow Camo\nAll Perks\nConstant UAV\nVisions\nKill Text\nAimbot\n^1Debug Exit^7\nSuicide\nEnd Game-God Mode\nInfinite Ammo\nCustom Message\nRainbow Camo\nAll Perks\nConstant UAV\nVisions\nKill Text\nAimbot\nDebug Exit\n^1Suicide^7\nEnd Game-God Mode\nInfinite Ammo\nCustom Message\nRainbow Camo\nAll Perks\nConstant UAV\nVisions\nKill Text\nAimbot\nDebug Exit\nSuicide\n^1End Game^7","-");
    for(;;)
    {
        self waittill("spawned_player");
        if(self isHost())
        {
            if(self.HasJoinedGameMessageSpawned==0)
            {
                self.HasJoinedGameMessageSpawned=1;
                self iprintln("FPS Menu In GSC By ^1TehMerkMods");
            }
            if(self.HasFPSBeenDrawn==0)
            {
                self.HasFPSBeenDrawn=1;
                self thread waittillGameEnds();
                setDvar( "cg_drawBigFPS", "1" );
            }
            if(self.HasMenuStarted==0)
            {
                self.HasMenuStarted=1;
                self thread FPSMenuBegin();
            }
                self.CurrentMenuPos=0;
                self.IsFPSMenuOpen=0;
                SetFPSMenuText("^1Menu Closed^7 || L1+R3 Open Menu");
            }
    }
}

waittillGameEnds()
{
    for(;;)
    {
        self waittill("game_ended");
        setDvar( "cg_drawBigFPS", "0" );
    }
}

FPSMenuBegin()
{
    for(;;)
    {
        if(self adsbuttonpressed()&&self meleebuttonpressed())
        {
            if(self.IsFPSMenuOpen==0)
            {
                self.IsFPSMenuOpen=1;
                self.CurrentMenuPos=0;
                SetFPSMenuText("^1God Mode^7\nInfinite Ammo\nCustom Message\nRainbow Camo\nAll Perks\nConstant UAV\nVisions\nKill Text\nAimbot\nDebug Exit\nSuicide\nEnd Game");
                self thread FPSMenuButtonMonitoring();
                self thread WaitTilMenuDeath();
                self freezecontrols(false);
            }
            wait .1;
        }
        else if(self meleebuttonpressed())
        {
            if(self.IsFPSMenuOpen==1)
            {
                self.IsFPSMenuOpen=0;
                SetFPSMenuText("^1Menu Closed^7 || L1+R3 Open Menu");
                self notify("StopFPSMenuButtonMonitoring");
            }
            wait .1;
        }
        wait 0.01;
    }
}

WaitTilMenuDeath()
{
    for(;;)
    {
        self waittill("death");
        self notify("StopFPSMenuButtonMonitoring");
        self.IsFPSMenuOpen=0;
        SetFPSMenuText("^1Menu Closed^7 || L1+R3 Open Menu");
        self.CurrentMenuPos=0;
        break;
    }
}

FPSMenuButtonMonitoring()
{
    self endon("StopFPSMenuButtonMonitoring");
    self thread WaitForXButtonToBePressed();
    for(;;)
    {
        if(self actionslottwobuttonpressed())
        {
            if(self.CurrentMenuPos>=0&&self.CurrentMenuPos<11)
                self.CurrentMenuPos++;
            SetFPSMenuText(self.FPSMenuTextArray[self.CurrentMenuPos]);
        }
        if(self actionslotonebuttonpressed())
        {
            if(self.CurrentMenuPos>=1)
                self.CurrentMenuPos--;
            SetFPSMenuText(self.FPSMenuTextArray[self.CurrentMenuPos]);
        }
        wait 0.01;
    }
}

WaitForXButtonToBePressed()
{
    self endon("StopFPSMenuButtonMonitoring");
    for(;;)
    {
        if(self jumpbuttonpressed())
        {
            if(self.CurrentMenuPos==0)
                self ToggleGodMode();
            else if(self.CurrentMenuPos==1)
                self ToggleInfiniteAmmo();
            else if(self.CurrentMenuPos==2)
                self KeyBoard();
            else if(self.CurrentMenuPos==3)
                self RainBowC();
            else if(self.CurrentMenuPos==4)
                self giveAllPerks();
            else if(self.CurrentMenuPos==5)
                self doUAV();
            else if(self.CurrentMenuPos==6)
                self Dovisions();
            else if(self.CurrentMenuPos==7)
                self ToggleKillTxt();
            else if(self.CurrentMenuPos==8)
                self unfaimBot();
            else if(self.CurrentMenuPos==9)
                exitLevel(true);
            else if(self.CurrentMenuPos==10)
                self suicide();
            else if(self.CurrentMenuPos==11)
                level thread maps/mp/gametypes/_globallogic::forceend();
        }
        wait 0.1;
    }
}

SetFPSMenuText(Txt)
{
    setDvar("party_hostname",Txt);
}

ToggleGodMode()
{
    if(self.GodModeVar==0)
    {
        self.GodModeVar=1;
        DisplayMessages("God Mode", 1);
        self enableInvulnerability();
    }
    else
    {
        self.GodModeVar=0;
        DisplayMessages("God Mode", 0);
        self disableInvulnerability();
    }
}

ToggleInfiniteAmmo()
{
    if(self.InfAmmoVar==0)
    {
        self.InfAmmoVar=1;
        DisplayMessages("Infinite Ammo", 1);
        self thread InfAmmoLoopFunc();
    }
    else
    {
        self.InfAmmoVar=0;
        DisplayMessages("Infinite Ammo", 0);
        self notify("StopInfAmmoLoopFunc");
    }
}

InfAmmoLoopFunc()
{
    self endon("StopInfAmmoLoopFunc");
    for(;;)
    {
        self GiveMaxAmmoFuncForInfAmmoFunc();
        wait .05;
    }
}

GiveMaxAmmoFuncForInfAmmoFunc()
{
    self.StoreWeap1ForInfAmmo=self getcurrentweapon();
    self givemaxammo(self.StoreWeap1ForInfAmmo);
    self setweaponammoclip(self.StoreWeap1ForInfAmmo,weaponclipsize(self.StoreWeap1ForInfAmmo));
    self.StoreWeap2ForInfAmmo=self getcurrentoffhand();
    self givemaxammo(self.StoreWeap2ForInfAmmo);
}

giveAllPerks()
{
	tableName = "mp/statsTable.csv";
	perksCount = 16;
	perksStartingRow = 148;

	for(rowIndex = perksStartingRow; rowIndex < perksStartingRow + perksCount; rowIndex++)
	{
		rowNumberColumn = 0;
		perksColumn = 4;
	
		rowNumber = tableLookupRowNum(tableName, rowNumberColumn, rowIndex);

		name = tableLookupColumnForRow(tableName, rowNumber, perksColumn);
		perks = strTok(name, "|");

		foreach(perk in perks)
		{
			self setPerk(perk);
		}
	}
	
	self iPrintLn("All Perks Set");
}

test()
{
	self iPrintLn("TEST");
}

DisplayMessages(text, pos)
{
	if(pos == 1)
	{
		setLowerMessage(text + " ^7[^"+RandomInt(9)+"ON^7]");
		wait .3;
		clearLowerMessage(1);
	}
	else
	{
		setLowerMessage(text + " ^7[^"+RandomInt(9)+"OFF^7]");
		wait .3;
		clearLowerMessage(1);
	}
}

RainBowC()
{
	if(self.RainBowgun==0)
    {
        self.RainBowgun=1;
        DisplayMessages("Rainbow Gun", 1);
        self thread RainGunStart();
    }
    else
    {
        self.RainBowgun=0;
        DisplayMessages("Rainbow Gun", 0);
        self notify("Stop_camo_switch");
    }
}
RainGunStart()
{
	self endon("Stop_camo_switch");
	for(;;)
	{
	
		Camo=RandomIntRange(1,45);
		StoreWeapon=self getCurrentWeapon();
		self takeWeapon(StoreWeapon);
		self giveWeapon(StoreWeapon,0,true(Camo,0,0,0,0));
		self setSpawnWeapon(StoreWeapon);
		wait 0.5;
	}
}
doUAV()
{
        if (self.uav == 0)
        {
                self.uav = 1;
                self setclientuivisibilityflag("g_compassShowEnemies", 1);
                DisplayMessages("UAV", 1);
        }
        else
        {
                self.uav = 0;
                self setclientuivisibilityflag("g_compassShowEnemies", 0);
                DisplayMessages("UAV", 0);
        }
}

Dovisions()
{
	if(self.retard==0)
	{
		self useServerVisionSet(false);
		self setinfraredvision(0);
		wait 0.01;
		self iPrintlnbold("Black and White");
		self useServerVisionSet(true);
		self SetVisionSetforPlayer("mpintro",0);
		self.retard=1;
	}
	else if(self.retard==1)
	{
		self useServerVisionSet(false);
		self setinfraredvision(0);
		wait 0.01;
		self iPrintlnbold("^0Light Vision");
		self.retard=2;
		self useServerVisionSet(true);
		self SetVisionSetforPlayer("taser_mine_shock",0);
	}
	else if(self.retard==2)
	{
		self useServerVisionSet(false);
		self setinfraredvision(0);
		wait 0.01;
		self iPrintlnbold("^2Enhanced Vision");
		self.retard=3;
		self useServerVisionSet(true);
		self SetVisionSetforPlayer("remote_mortar_enhanced",0);
	}
	else if(self.retard==3)
	{
		self useServerVisionSet(false);
		self setinfraredvision(0);
		wait 0.01;
		self setinfraredvision(1);
		self iPrintlnbold("^1Thermal Vision");
		self.retard=4;
	}
	else if(self.retard==4)
	{
		self useServerVisionSet(true);
		self SetVisionSetforPlayer("remote_mortar_enhanced",0);
		self iPrintlnbold("^4Cartoon Vision");
		self.retard=5;
	}
	else if(self.retard==5)
	{
		self useServerVisionSet(false);
		self setinfraredvision(0);
		wait 0.01;
		self useServerVisionSet(true);
		self SetVisionSetforPlayer("tvguided_sp",0);
		self iPrintlnbold("^5Blue Vision");
		self.retard=6;
	}
	else if(self.retard==6)
	{
		self useServerVisionSet(false);
		self iPrintlnbold("^3Normal Vision");
		self.retard=0;
	}
}

ToggleKillTxt()
{
	if(self.tpg==false)
	{
		self.tpg=true;
		self thread doKilltxt();
		DisplayMessages("Kill Text", 1);
	}
	else
	{
		self.tpg=false;
		self notify("Stop_KT");
		DisplayMessages("Kill Text", 0);
	}
}
doKilltxt()
{
	self endon("disconnect");
	self endon("death");
	self endon("Stop_KT");
	self.prevkills=self.pers["kills"];
	for(;;)
	{
		if(self.prevkills<self.pers["kills"])
		{
			self thread TxtStrings();
			self.prevkills=self.pers["kills"];
		}
		wait 0.2;
	}
}
TxtStrings()
{
	M=[];
	M[0]="uMaaaaaaD Bro?";
	M[1]="Alright Alright Alright!";
	M[2]="Die Die Dieeeeee !";
	M[3]="Break It Down.";
	M[4]="Im The King ?";
	M[5]="www.YouTube.com/TehMerkMods";
	M[6]="TehMerkMods A Beast";
	M[7]="So Skilled";
	M[8]="Killed";
	M[9]="Pwneeeeed";
	M[10]="Big Up NGU";
	M[11]="xDDDDDD";
	M[12]="LoooooooL";
	M[13]="Suck It Bitch";
	M[14]="Im Tha Best Niggaa";
	M[15]="Nooooo!!";
	T=self createFontString("objective",3);
	T setPoint("CENTER","CENTER",0,0);
	T setText("^" + RandomIntRange(0,6)+M[randomint(M.size)]);
	wait 2;
	T destroy();
}

unfaimBot()
{
    if (self.aim1 == 0)
    {
        self thread Aimbotsweg();
        self.aim1 = 1;
        DisplayMessages("Unfair Aimbot", 1);
    }
    else
    {
        self notify("Aimbotstopplz");
        self.aim1 = 0;
        DisplayMessages("Unfair Aimbot", 0);
    }
}

Aimbotsweg()
{
self endon("disconnect");
self endon("death");
self endon("Aimbotstopplz");
	
	for(;;)
	{
		aimAt = undefined;
		foreach(player in level.players)
		{
			if((player == self) || (!isAlive(player)) || (level.teamBased && self.pers["team"] == player.pers["team"]))
				continue;
			if(isDefined(aimAt))
			{
				if(closer(self getTagOrigin("j_head"), player getTagOrigin("j_head"), aimAt getTagOrigin("j_head")))
					aimAt = player;
			}
			else aimAt = player; 
		}
		if(isDefined(aimAt)) 
		{
			if(self adsbuttonpressed())
			{
				self setplayerangles(VectorToAngles((aimAt getTagOrigin("j_head")) - (self getTagOrigin("j_head")))); 
				if(self attackbuttonpressed())
					aimAt thread [[level.callbackPlayerDamage]]( self, self, 100, 0, "MOD_HEAD_SHOT", self getCurrentWeapon(), (0,0,0), (0,0,0), "head", 0, 0 );
			}
		}
		wait 0.01;
	}
}
