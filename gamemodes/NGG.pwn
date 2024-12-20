/*
	Gamemode LS:AC-ChaseCop ver 1.0
	Azynre Community
	Discord.gg/Azynre
	
	Nhat Trung
	Dien Thien
	Mon
*/
#define SERVER_GM_TEXT "LS:AC Ver 0.1"
#include <a_samp>
#include <a_mysql>	
#include <streamer>
#include <yom_buttons>
#include <ZCMD>
#include <sscanf2>
#include <foreach>
#include <YSI\y_timers>
#include <YSI\y_utils>
#include <crashdetect>
#if defined SOCKET_ENABLED
#include <socket>
#endif
#include "./includes/defines.pwn"
#include "./includes/enums.pwn"
#include "./includes/variables.pwn"
#include "./includes/timers.pwn"
#include "./includes/functions.pwn"
#include "./includes/commands.pwn"
#include "./includes/mysql.pwn"
#include "./includes/OnPlayerLoad.pwn"
#include "./includes/callbacks.pwn"
#include "./includes/textdraws.pwn"
#include "./includes/streamer.pwn"
#include "./includes/OnDialogResponse.pwn"

main() {}

public OnGameModeInit()
{
	print("Dang chuan bi tai gamemode, xin vui long cho doi...");
	g_mysql_Init();
	#include "./includes/OBJECTMAP.pwn"
	ShowNameTags(0);
	return 1;
}

public OnGameModeExit()
{
    g_mysql_Exit();
	return 1;
}
