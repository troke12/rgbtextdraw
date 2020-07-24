/*
MADE BY TROKE
DONOT REMOVE CREDITS
*/

#include <a_samp>

#define HUMU_1 "~r~TR~b~O ~y~K~g~~h~E"
#define HUMU_2 "~g~~h~TR~r~O ~b~K~y~E"
#define HUMU_3 "~y~TR~g~~h~O ~r~K~b~E"
#define HUMU_4 "~b~TR~y~O ~g~~h~K~r~E"

new Text:Textdraw0;

public OnFilterScriptInit()
{
	print("File Humu Loaded");

	// Create the textdraws:
	Textdraw0 = TextDrawCreate(24.000000, 319.000000, "~r~T~b~R ~y~O~g~~h~KE");
	TextDrawBackgroundColor(Textdraw0, 255);
	TextDrawFont(Textdraw0, 2);
	TextDrawLetterSize(Textdraw0, 0.380000, 1.599999);
	TextDrawColor(Textdraw0, -1);
	TextDrawSetOutline(Textdraw0, 1);
	TextDrawSetProportional(Textdraw0, 1);
	TextDrawSetSelectable(Textdraw0, 0);
	
	SetTimer("animatedhumu",1000,1);

	for(new i; i < MAX_PLAYERS; i ++)
	{
		if(IsPlayerConnected(i))
		{
			TextDrawShowForPlayer(i, Textdraw0);
		}
	}
	return 1;
}
forward animatedhumu();
public animatedhumu()
{
	TextDrawSetString(Textdraw0, HUMU_1);
	SetTimer("humu2",1000,1);
}
forward humu2();
public humu2()
{
	TextDrawSetString(Textdraw0, HUMU_2);
	SetTimer("humu3",1000,1);
}
forward humu3();
public humu3()
{
	TextDrawSetString(Textdraw0, HUMU_3);
	SetTimer("humu4",1000,1);
}
forward humu4();
public humu4()
{
	TextDrawSetString(Textdraw0, HUMU_4);
	SetTimer("animatedhumu",1000,1);
}
public OnFilterScriptExit()
{
	TextDrawHideForAll(Textdraw0);
	TextDrawDestroy(Textdraw0);
	return 1;
}

public OnPlayerSpawn(playerid)
{
	TextDrawShowForPlayer(playerid, Textdraw0);
	return 1;
}
