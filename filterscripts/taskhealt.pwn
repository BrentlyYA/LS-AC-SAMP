#define FILTERSCRIPT
 
#include <a_samp>
#include <streamer>
#include <foreach>
 
#define NT_DISTANCE 25.0 // Nametag render distance
 
new Text3D:cNametag[MAX_PLAYERS];
 
public OnFilterScriptInit()
{
    print("--- Custom nametag.");
    // OnPlayerUpdate causes lag and OnPlayer(Take/Give)Damage doesn't work with it
    SetTimer("UpdateNametag", 500, true); // So we're using a timer, change the interval to what you want
    return 1;
}
stock GetHealthDots(playerid)
{
    new dots[64];
    new Float:HP;
 
    GetPlayerHealth(playerid, HP);
 
    if(HP == 100)
        dots = "����������";
    else if(HP >= 90 && HP < 100)
        dots = "���������{660000}�";
    else if(HP >= 80 && HP < 90)
        dots = "��������{660000}��";
    else if(HP >= 70 && HP < 80)
        dots = "�������{660000}���";
    else if(HP >= 60 && HP < 70)
        dots = "������{660000}����";
    else if(HP >= 50 && HP < 60)
        dots = "�����{660000}�����";
    else if(HP >= 40 && HP < 50)
        dots = "����{660000}������";
    else if(HP >= 30 && HP < 40)
        dots = "���{660000}�������";
    else if(HP >= 20 && HP < 30)
        dots = "��{660000}��������";
    else if(HP >= 10 && HP < 20)
        dots = "��{660000}��������";
    else if(HP >= 0 && HP < 10)
        dots = "{660000}����������";
 
    return dots;
}
stock GetArmorDots(playerid)
{
    new dots[64];
    new Float:AR;
 
    GetPlayerArmour(playerid, AR);
 
    if(AR == 100)
        dots = "����������";
    else if(AR >= 90 && AR < 100)
        dots = "���������{666666}�";
    else if(AR >= 80 && AR < 90)
        dots = "��������{666666}��";
    else if(AR >= 70 && AR < 80)
        dots = "�������{666666}���";
    else if(AR >= 60 && AR < 70)
        dots = "������{666666}����";
    else if(AR >= 50 && AR < 60)
        dots = "�����{666666}�����";
    else if(AR >= 40 && AR < 50)
        dots = "����{666666}������";
    else if(AR >= 30 && AR < 40)
        dots = "���{666666}�������";
    else if(AR >= 20 && AR < 30)
        dots = "��{666666}��������";
    else if(AR >= 10 && AR < 20)
        dots = "��{666666}��������";
    else if(AR >= 0 && AR < 10)
        dots = "{666666}����������";
 
    return dots;
}
 
public OnPlayerConnect(playerid)
{
    cNametag[playerid] = CreateDynamic3DTextLabel("Loading nametag...", 0xFFFFFFFF, 0.0, 0.0, 0.1, NT_DISTANCE, .attachedplayer = playerid, .testlos = 1);
    return 1;
}
public OnPlayerDisconnect(playerid, reason) 
{ 
    if(IsValidDynamic3DTextLabel(cNametag[playerid])) 
              DestroyDynamic3DTextLabel(cNametag[playerid]); 
    return 1; 
}
forward UpdateNametag();
public UpdateNametag()
{
    foreach(new i : Player)
    {
        if(IsPlayerConnected(i))
        {
            new nametag[128], playername[MAX_PLAYER_NAME], Float:armour;
            GetPlayerArmour(i, armour);
            GetPlayerName(i, playername, sizeof(playername));
            if(armour > 1.0)
            {
                format(nametag, sizeof(nametag), "{%06x}%s {FFFFFF}(%i)\n{FFFFFF}%s\n{FF0000}%s", GetPlayerColor(i) >>> 8, playername, i, GetArmorDots(i), GetHealthDots(i));
            }
            else
            {
                format(nametag, sizeof(nametag), "{%06x}%s {FFFFFF}(%i)\n{FF0000}%s", GetPlayerColor(i) >>> 8, playername, i, GetHealthDots(i));
            }
            UpdateDynamic3DTextLabelText(cNametag[i], 0xFFFFFFFF, nametag);
        }
    }
}