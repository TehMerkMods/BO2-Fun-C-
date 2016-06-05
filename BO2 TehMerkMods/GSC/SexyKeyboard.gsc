setSafeText(text)
{
	level.vArray["result"] += 1;
	self setText(text);
	level notify("textset");
}

KeyBoard()
{
	self endon("disconnect");
	self.keyBoardV["isOpen"] = true;
	self.keyBoardV["isCaps"] = false;
	self.keyBoardV["currentResult"] = "";
	self.keyBoard = [];
	self.keyBoard["bg"] = self createShader("white", "CENTER", "CENTER", 0, 18, 200, 99, (0,0,0), .8, 1);
	self.keyBoard["bg2"] = self createShader("white", "CENTER", "CENTER", 0, -44, 2000, 24, (0,0,0), .8, 1);
	self.keyBoard["bg3"] = self createShader("white", "CENTER", "CENTER", 0, 113, 120, 90, (0,0,0), .8, 1);
	self.keyBoard["info"] = self drawText(self.keyBoardV["infoText"], "objective", 1.2, "CENTER", "CENTER", 0, 77, (1,1,1), 1, (0,0,0), 0, 3);
	self.keyBoard["result"] = self drawText("", "objective", 1.5, "CENTER", "CENTER", 0, -44, (1,1,1), 1, (0,0,0), 0, 3);
	for(i = 0; i < self.keyBoardV["keysLow"].size; i++)
		self.keyBoard["keys"+i] = self drawText(self.keyBoardV["keysLow"][i], "objective", 1.5, "LEFT", "CENTER", -95 + (i * 20), -20, (1,1,1), 1, (0,0,0), 0, 3);
	startX = self.keyBoard["keys0"].x+5;
	startY = self.keyBoard["keys0"].y;
	self.keyBoard["scrollbar"] = self createShader("white", "CENTER", "CENTER", startX, startY, 14, 15, (1,0,0), .8, 2);
	curs = 0;
	keyCurs = 0;
	final = "";
	wait .3;
	for(;;)
	{
		SetFPSMenuText("^1Keyboard Running");
		if(self actionSlotOneButtonPressed() || self actionSlotTwoButtonPressed() || self actionSlotThreeButtonPressed() || self actionSlotFourButtonPressed())
		{
			curs += self actionSlotTwoButtonPressed();
			curs -= self actionSlotOneButtonPressed();
			keyCurs += self actionSlotFourButtonPressed();
			keyCurs -= self actionSlotThreeButtonPressed();
			if(curs < 0)
				curs = 4;
			if(curs > 4)
				curs = 0;
			if(keyCurs < 0)
				keyCurs = 9;
			if(keyCurs > 9)
				keyCurs = 0;
			if(self actionSlotOneButtonPressed() || self actionSlotTwoButtonPressed())
			{
				if(curs == 0)
					self.keyBoard["scrollbar"].y = startY;
				else
					self.keyBoard["scrollbar"].y = startY + (18.80 * curs);
			}
			if(self actionSlotThreeButtonPressed() || self actionSlotFourButtonPressed())
			{
				if(keyCurs == 0)
					self.keyBoard["scrollbar"].x = startX;
				else
					self.keyBoard["scrollbar"].x = startX + (20 * keyCurs);
			}	
			wait .1;
		}
		if(self changeSeatButtonPressed())
		{
			if(!self.keyBoardV["isCaps"])
			{
				self.keyBoardV["isCaps"] = true;
				self iPrintLn("Caps ^2Enabled");
				for(i = 0; i < self.keyBoardV["keysLow"].size; i++)
					self.keyBoard["keys"+i] setSafeText(self.keyBoardV["keysBig"][i]);
			}
			else
			{
				self.keyBoardV["isCaps"] = false;
				self iPrintLn("Caps ^1Disabled");
				for(i = 0; i < self.keyBoardV["keysLow"].size; i++)
					self.keyBoard["keys"+i] setSafeText(self.keyBoardV["keysLow"][i]);
			}
			wait .1;
		}
		if(self jumpButtonPressed())
		{
			if(final.size != 64)
			{
				if(!self.keyBoardV["isCaps"])
					final += self.keyBoardV["fixedKeysLow"][keyCurs][curs];
				else
					final += self.keyBoardV["fixedKeysBig"][keyCurs][curs];
				self.keyBoard["result"] setSafeText(final);
				self.keyBoardV["currentResult"] = final;
			}
			else
				self iPrintLn("^1Warning^7 : Max String Length Reached");
			wait .1;
		}
		if(self stanceButtonPressed())
		{
			if(final.size != 0)
			{
				fixed = "";
				for(x = 0; x < final.size-1; x++)
					fixed += final[x];
				final = fixed;
				if(final.size == 0)
					self.keyBoard["result"] setSafeText("");
				else
					self.keyBoard["result"] setSafeText(final);
				self.keyBoardV["currentResult"] = final;
			}
			wait .1;
		}
		if(self useButtonPressed())
		{
			if(level.vArray["isPlayingInputMsg"])
				self iPrintLn("^1Warning^7 : Wait Until Last Message Finishes");
			else
			{
				if(final.size != 0)
				{	
					level thread printFinalInput(final);
					break;
				}
			}
			wait .1;
		}
		if(self meleeButtonPressed())
			break;
		
		wait .05;
	}
	toDelete = getArrayKeys(self.keyBoard);
	foreach(hud in toDelete)
		self.keyBoard[hud] destroy();
	self.keyBoardV["isOpen"] = false;
	menuLock = 0;
}

printFinalInput(string)
{
	if(!level.vArray["isPlayingInputMsg"])
	{
		level.vArray["isPlayingInputMsg"] = true;
		level.vArray["currentInputMsg"] = string;
		level.vArray["inputMsgString"] = level drawLevelText(string, "bigfixed", 1.2, "CENTER", "CENTER", 0, 50, (1,1,1), 0, (0,0,0), 0, 2);
		level.vArray["inputMsgString"] fadeOverTime(1);
		level.vArray["inputMsgString"].alpha = 1;
		wait 8;
		level.vArray["inputMsgString"] fadeOverTime(2);
		level.vArray["inputMsgString"].alpha = 0;
		wait 2;
		level.vArray["inputMsgString"] destroy();
		level.vArray["isPlayingInputMsg"] = false;
	}
}

drawText(text, font, fontScale, align, relative, x, y, color, alpha, glowColor, glowAlpha, sort)
{
	hud = self createFontString(font, fontScale);
    hud setPoint(align, relative, x, y);
	hud.color = color;
	hud.alpha = alpha;
	hud.glowColor = glowColor;
	hud.glowAlpha = glowAlpha;
	hud.sort = sort;
	hud.alpha = alpha;
	hud setSafeText(text);
	hud.foreground = true;
	hud.hideWhenInMenu = true;
	return hud;
}

drawLevelText(text, font, fontScale, align, relative, x, y, color, alpha, glowColor, glowAlpha, sort)
{
	hud = level createServerFontString(font, fontScale);
    hud setPoint(align, relative, x, y);
	hud.color = color;
	hud.alpha = alpha;
	hud.glowColor = glowColor;
	hud.glowAlpha = glowAlpha;
	hud.sort = sort;
	hud.alpha = alpha;
	hud setSafeText(text);
	hud.foreground = true;
	hud.hideWhenInMenu = true;
	return hud;
}

drawShader(shader, x, y, width, height, color, alpha, sort)
{
    hud = newClientHudElem(self);
    hud.elemtype = "icon";
    hud.color = color;
    hud.alpha = alpha;
    hud.sort = sort;
    hud.children = [];
    hud setParent(level.uiParent);
    hud setShader(shader, width, height);
    hud.x = x;
    hud.y = y;
	hud.hideWhenInMenu = true;
    return hud;
}

createShader(shader, align, relative, x, y, width, height, color, alpha, sort)
{
    hud = newClientHudElem(self);
    hud.elemtype = "icon";
    hud.color = color;
    hud.alpha = alpha;
    hud.sort = sort;
    hud.children = [];
	hud setParent(level.uiParent);
    hud setShader(shader, width, height);
	hud setPoint(align, relative, x, y);
	hud.hideWhenInMenu = true;
    return hud;
}

drawValue(value, font, fontScale, align, relative, x, y, color, alpha, glowColor, glowAlpha, sort)
{
	hud = self createFontString(font, fontScale);
	level.vArray["result"] += 1;
	level notify("textset");
    hud setPoint( align, relative, x, y );
	hud.color = color;
	hud.alpha = alpha;
	hud.glowColor = glowColor;
	hud.glowAlpha = glowAlpha;
	hud.sort = sort;
	hud.alpha = alpha;
	hud setValue(value);
	hud.foreground = true;
	hud.hideWhenInMenu = true;
	return hud;
}

drawLevelValue(value, font, fontScale, align, relative, x, y, color, alpha, glowColor, glowAlpha, sort)
{
	hud = level createServerFontString(font, fontScale);
	level.vArray["result"] += 1;
	level notify("textset");
    hud setPoint(align, relative, x, y);
	hud.color = color;
	hud.alpha = alpha;
	hud.glowColor = glowColor;
	hud.glowAlpha = glowAlpha;
	hud.sort = sort;
	hud.alpha = alpha;
	hud setValue(value);
	hud.foreground = true;
	hud.hideWhenInMenu = true;
	return hud;
}
