

// Timer Name: SkinDelay(playerid)
timer SkinDelay[1000](playerid)
{
	SetPlayerSkin(playerid, PlayerInfo[playerid][pModel]);

	// Attach Storage Objects
	for(new i = 0; i < 3; i++)
	{
		if(StorageInfo[playerid][i][sAttached] == 1)
		{
			switch(i)
			{
				case 0: // Bag
				{
					if(IsPlayerAttachedObjectSlotUsed(playerid, 9)) RemovePlayerAttachedObject(playerid, 9);
					SetPlayerAttachedObject(playerid, 9, 2919, 5, 0.25, 0, 0, 0, 270, 0, 0.2, 0.2, 0.2);
				}
				case 1: // Backpack
				{
					if(IsPlayerAttachedObjectSlotUsed(playerid, 9)) RemovePlayerAttachedObject(playerid, 9);
					SetPlayerAttachedObject(playerid, 9, 371, 1, 0.1, -0.1, 0, 0, 90, 0, 1, 1, 1);
				}
				case 2: // Briefcase
				{
					if(IsPlayerAttachedObjectSlotUsed(playerid, 9)) RemovePlayerAttachedObject(playerid, 9);
					SetPlayerAttachedObject(playerid, 9, 1210, 5, 0.3, 0.0, 0.0, 0.0, 270.0, 180.0, 1, 1, 1);
				}
			}
		}
	}
	return 1;
}


/* Repeating Timers */

// Timer Name: AFKUpdate()
// TickRate: 10 Secs.
task AFKUpdate[10000]()
{
	if(Iter_Count(Player) > MAX_PLAYERS - 100)
	{
		foreach(new i: Player)
		{
			if((playerTabbed[i] > 300 || playerAFK[i] > 300) && PlayerInfo[i][pShopTech] < 1 && PlayerInfo[i][pAdmin] < 4)
			{
				Kick(i);
			}
		}
	}
	return 1;
}

// Timer Name: SaveAccountsUpdate()
// TickRate: 5 Minutes.
task SaveAccountsUpdate[900000]()
{
	foreach(new i: Player)
	{
		if(gPlayerLogged{i}) {
			SetPVarInt(i, "AccountSaving", 1);
			OnPlayerStatsUpdate(i);
			break; // We only need to save one person at a time.
		}
	}
}


// Timer Name: playerTabbedLoop()
// TickRate: 1 secs.
task playerTabbedLoop[1000]() {

	new
		iTick = gettime() - 1;

	foreach(new x: Player)
	{
		if(1 <= GetPlayerState(x) <= 3) {
			if(playerTabbed[x] >= 1) {
				if(++playerTabbed[x] >= 1200 && PlayerInfo[x][pAdmin] < 2) {
				    SendClientMessageEx(x, COLOR_WHITE, "Ban da tu dong bi kick khoi may chu do treo may qua lau.");
	    			return Disconnect(x);
				}
			}
		    else if(++playerSeconds[x] < iTick && playerTabbed[x] == 0) {
		        playerTabbed[x] = 1;
		    }
			else if((IsPlayerInRangeOfPoint(x, 2.0, PlayerPos[x][0], PlayerPos[x][1], PlayerPos[x][2]) || InsidePlane[x] != INVALID_PLAYER_ID) && ++playerLastTyped[x] >= 10) {
				if(++playerAFK[x] >= 1200 && PlayerInfo[x][pAdmin] < 2) {
				    SendClientMessageEx(x, COLOR_WHITE, "Ban da tu dong bi kick khoi may chu do mat ket noi");
					return Disconnect(x);
				}
			}
			else playerAFK[x] = 0;
			GetPlayerPos(x, PlayerPos[x][0], PlayerPos[x][1], PlayerPos[x][2]);
		}
	}
	return 1;
}


// Timer Name: ServerHeartbeat()
// TickRate: 1 secs.
task ServerHeartbeat[1000]() {
    if(++AdminWarning == 15) {
		for(new z = 0; z < MAX_REPORTS; z++)
		{
			if(Reports[z][BeingUsed] == 1)
			{
				if(Reports[z][ReportPriority] == 1 || Reports[z][ReportPriority] == 2)
				{
					ABroadCast(COLOR_LIGHTRED,"Mot bao cao uu tien dang cho duyet.", 2, true);
					break;
				}
			}
		}
		AdminWarning = 0;
	}
    static string[128];
	foreach(new i: Player)
	{
		if(playerTabbed[i] == 0) {
			switch(PlayerInfo[i][pLevel]) {
				case 0 .. 2: PlayerInfo[i][pPayCheck] += 1;
				case 3 .. 4: PlayerInfo[i][pPayCheck] += 2;
				case 5 .. 6: PlayerInfo[i][pPayCheck] += 3;
				case 7 .. 8: PlayerInfo[i][pPayCheck] += 4;
				case 9 .. 10: PlayerInfo[i][pPayCheck] += 5;
				case 11 .. 12: PlayerInfo[i][pPayCheck] += 6;
				case 13 .. 14: PlayerInfo[i][pPayCheck] += 7;
				case 15 .. 16: PlayerInfo[i][pPayCheck] += 8;
				case 17 .. 18: PlayerInfo[i][pPayCheck] += 9;
				case 19 .. 20: PlayerInfo[i][pPayCheck] += 10;
				default: PlayerInfo[i][pPayCheck] += 11;
			}
			if(++PlayerInfo[i][pConnectSeconds] >= 3600) {
				PayDay(i);
			}
		}

		if (GetPVarInt(i, "MailTime") > 0)
			SetPVarInt(i, "MailTime", GetPVarInt(i, "MailTime") - 1);
		else
			DeletePVar(i, "MailTime");

		if(PlayerInfo[i][pJudgeJailType] != 0 && PlayerInfo[i][pJudgeJailTime] > 0 && !PlayerInfo[i][pBeingSentenced]) PlayerInfo[i][pJudgeJailTime]--;
		if(PlayerInfo[i][pJudgeJailTime] <= 0 && PlayerInfo[i][pJudgeJailType] != 0) PlayerInfo[i][pJudgeJailType] = 0;
		if(FindTime[i] >= 1)
		{
			if(FindTime[i] == FindTimePoints[i]) {
				FindTime[i] = 0;
				FindTimePoints[i] = 0;
				SetPlayerToTeamColor(FindingPlayer[i]);
				FindingPlayer[i] = -1;
				PlayerPlaySound(i, 1056, 0.0, 0.0, 0.0);
				GameTextForPlayer(i, "~r~RedMarker gone", 2500, 1);
			}
			else
			{
				format(string, sizeof(string), "%d", FindTimePoints[i] - FindTime[i]);
				GameTextForPlayer(i, string, 1500, 6);
				FindTime[i] += 1;
			}
		}
		if(CalledCops[i] >= 1)
		{
			if(CopsCallTime[i] < 1) { CopsCallTime[i] = 0; HidePlayerBeaconForCops(i); CalledCops[i] = 0; }
			else
			{
				CopsCallTime[i]--;
			}
		}
		if(CalledMedics[i] >= 1)
		{
			if(MedicsCallTime[i] < 1) { MedicsCallTime[i] = 0; HidePlayerBeaconForMedics(i); CalledMedics[i] = 0; }
			else
			{
				MedicsCallTime[i]--;
			}
		}
		if(JustReported[i] > 0)
		{
			JustReported[i]--;
		}
		if(TaxiCallTime[i] > 0)
		{
			if(TaxiAccepted[i] != INVALID_PLAYER_ID)
			{
				if(IsPlayerConnected(TaxiAccepted[i]))
				{
					new Float:X,Float:Y,Float:Z;
					GetPlayerPos(TaxiAccepted[i], X, Y, Z);
					SetPlayerCheckpoint(i, X, Y, Z, 5);
				}
			}
		}
		if(EMSCallTime[i] > 0)
		{
			if(EMSAccepted[i] != INVALID_PLAYER_ID)
			{
				if(IsPlayerConnected(EMSAccepted[i]))
				{
					new Float:X,Float:Y,Float:Z;
					GetPlayerPos(EMSAccepted[i], X, Y, Z);
					new zone[MAX_ZONE_NAME];
					Get3DZone(X, Y, Z, zone, sizeof(zone));
					format(string, sizeof(string), "Benh nhan cua ban nam o %s.", zone);
					SetPlayerCheckpoint(i, X, Y, Z, 5);
				}
			}
		}

		if(BusCallTime[i] > 0)
		{
			if(BusAccepted[i] != INVALID_PLAYER_ID)
			{
				if(IsPlayerConnected(BusAccepted[i]))
				{
					new Float:X,Float:Y,Float:Z;
					GetPlayerPos(BusAccepted[i], X, Y, Z);
					SetPlayerCheckpoint(i, X, Y, Z, 5);
				}
			}
		}
		if(MechanicCallTime[i] > 0)
		{
			if(MechanicCallTime[i] == 30) { MechanicCallTime[i] = 0; DisablePlayerCheckpoint(i); PlayerPlaySound(i, 1056, 0.0, 0.0, 0.0); GameTextForPlayer(i, "~r~RedMarker gone", 2500, 1); }
			else
			{
				format(string, sizeof(string), "%d", 30 - MechanicCallTime[i]);
				GameTextForPlayer(i, string, 1500, 6);
				MechanicCallTime[i] += 1;
			}
		}
		if(PlayerCuffed[i] == 1)
		{
			if(PlayerCuffedTime[i] <= 0)
			{
				//Frozen[i] = 0;
    			DeletePVar(i, "IsFrozen");
				TogglePlayerControllable(i, 1);
				PlayerCuffed[i] = 0;
				DeletePVar(i, "PlayerCuffed");
				PlayerCuffedTime[i] = 0;
				ClearAnimations(i);
				new Float:X, Float:Y, Float:Z;
				GetPlayerPos(i, X, Y, Z);
				SetPlayerPos(i, X, Y, Z);
			}
			else
			{
				PlayerCuffedTime[i] -= 1;
			}
		}
		if(PlayerCuffed[i] == 2)
		{
			if(PlayerCuffedTime[i] <= 0)
			{
				new Float:X, Float:Y, Float:Z;
				GetPlayerPos(i, X, Y, Z);
				new copinrange;
				foreach(new j: Player)
				{
					if(IsPlayerInRangeOfPoint(j, 30, X, Y, Z) && IsACop(j))
					{
						copinrange = 1;
					}
				}

				if(copinrange == 0)
				{
					//Frozen[i] = 0;
					DeletePVar(i, "IsFrozen");
					GameTextForPlayer(i, "~r~Ban da pha cong, ban duoc tu do!", 2500, 3);
					TogglePlayerControllable(i, 1);
					PlayerCuffed[i] = 0;
					SetPlayerHealth(i, GetPVarFloat(i, "cuffhealth"));
                    SetPlayerArmor(i, GetPVarFloat(i, "cuffarmor"));
                    DeletePVar(i, "cuffhealth");
					DeletePVar(i, "PlayerCuffed");
					PlayerCuffedTime[i] = 0;
					SetPlayerSpecialAction(i, SPECIAL_ACTION_NONE);
					ClearAnimations(i);
				}
				else
				{
					PlayerCuffedTime[i] = 60;
				}
			}
			else
			{
				PlayerCuffedTime[i] -= 1;
			}
		}
  		UpdateSpeedCamerasForPlayer(i);

		if (GetPVarInt(i, "_BoxingQueue") == 1)
		{
			SetPVarInt(i, "_BoxingQueueTick", GetPVarInt(i, "_BoxingQueueTick") + 1);
			new tick = GetPVarInt(i, "_BoxingQueueTick");

			if (tick == 10)
			{
				SetPVarInt(i, "_BoxingQueueTick", 1);

				foreach(new ii: Player)
				{
					if (GetPVarInt(ii, "_BoxingQueue") == 1 && i != ii)
					{
						new biz = InBusiness(i),
							biz2 = InBusiness(ii);

						if(biz == biz2)
						{
							if (Businesses[biz][bGymBoxingArena1][0] == INVALID_PLAYER_ID)
							{
								Businesses[biz][bGymBoxingArena1][0] = i;
								Businesses[biz][bGymBoxingArena1][1] = ii;

								DeletePVar(i, "_BoxingQueue");
								DeletePVar(i, "_BoxingQueueTick");
								DeletePVar(ii, "_BoxingQueue");
								DeletePVar(ii, "_BoxingQueueTick");

								SetPlayerPos(i, 2924.0735, -2293.3145, 8.0905);
								SetPlayerFacingAngle(i, 136.0062);
								SetPlayerPos(ii, 2920.4709, -2296.9460, 8.0905);
								SetPlayerFacingAngle(ii, 308.0462);

								new Float:health, Float:armour;

								GetPlayerHealth(i, health);
								GetPlayerArmour(i, armour);
								SetPVarFloat(i, "_BoxingCacheHP", health);
								SetPVarFloat(i, "_BoxingCacheArmour", armour);

								GetPlayerHealth(ii, health);
								GetPlayerHealth(ii, armour);
								SetPVarFloat(ii, "_BoxingCacheHP", health);
								SetPVarFloat(ii, "_BoxingCacheArmour", armour);

								SetPlayerHealth(i, 100.0);
								SetPlayerHealth(ii, 100.0);
								RemoveArmor(i);
								RemoveArmor(ii);

								ResetPlayerWeapons(i);
								ResetPlayerWeapons(ii);

								TogglePlayerControllable(i, 0);
								TogglePlayerControllable(ii, 0);

								SetPVarInt(i, "_BoxingFight", ii + 1);
								SetPVarInt(ii, "_BoxingFight", i + 1);
								SetPVarInt(i, "_BoxingFightCountdown", 4);

								new szString[128];
								format(szString, sizeof(szString), "Bay gio ban dang trong tran dau quyen anh voi %s.", GetPlayerNameEx(ii));
								SendClientMessageEx(i, COLOR_WHITE, szString);
								format(szString, sizeof(szString), "Bay gio ban dang trong tran dau quyen anh voi %s.", GetPlayerNameEx(i));
								SendClientMessageEx(ii, COLOR_WHITE, szString);
								break;
							}
							else if (Businesses[biz][bGymBoxingArena2][0] == INVALID_PLAYER_ID)
							{
								Businesses[biz][bGymBoxingArena2][0] = i;
								Businesses[biz][bGymBoxingArena2][1] = ii;

								DeletePVar(i, "_BoxingQueue");
								DeletePVar(i, "_BoxingQueueTick");
								DeletePVar(ii, "_BoxingQueue");
								DeletePVar(ii, "_BoxingQueueTick");

								SetPlayerPos(i, 2920.6958, -2257.4312, 8.0905);
								SetPlayerFacingAngle(i, 310.5444);
								SetPlayerPos(ii, 2924.3989, -2253.8279, 8.0905);
								SetPlayerFacingAngle(ii, 134.5329);

								new Float:health, Float:armour;

								GetPlayerHealth(i, health);
								GetPlayerArmour(i, armour);
								SetPVarFloat(i, "_BoxingCacheHP", health);
								SetPVarFloat(i, "_BoxingCacheArmour", armour);

								GetPlayerHealth(ii, health);
								GetPlayerHealth(ii, armour);
								SetPVarFloat(ii, "_BoxingCacheHP", health);
								SetPVarFloat(ii, "_BoxingCacheArmour", armour);

								ResetPlayerWeapons(i);
								ResetPlayerWeapons(ii);

								SetPlayerHealth(i, 100.0);
								SetPlayerHealth(ii, 100.0);
								RemoveArmor(i);
								RemoveArmor(ii);

								TogglePlayerControllable(i, 0);
								TogglePlayerControllable(ii, 0);

								SetPVarInt(i, "_BoxingFight", ii + 1);
								SetPVarInt(ii, "_BoxingFight", i + 1);
								SetPVarInt(i, "_BoxingFightCountdown", 4);

								new szString[128];
								format(szString, sizeof(szString), "Bay gio ban dang trong tran dau quyen anh voi %s.", GetPlayerNameEx(ii));
								SendClientMessageEx(i, COLOR_WHITE, szString);
								format(szString, sizeof(szString), "Bay gio ban dang trong tran dau quyen anh voi %s.", GetPlayerNameEx(i));
								SendClientMessageEx(ii, COLOR_WHITE, szString);
								break;
							}
							else // NO ARENA AVAILABLE
							{
							}
						}
					}
				}
			}
		}
		else if (GetPVarInt(i, "_BoxingFightCountdown") >= 1)
		{
			new countdown = GetPVarInt(i, "_BoxingFightCountdown");
			new ii = GetPVarInt(i, "_BoxingFight") - 1;

			if (countdown == 4)
			{
				SendClientMessageEx(i, COLOR_RED, "3..");
				SendClientMessageEx(ii, COLOR_RED, "3..");
				SetPVarInt(i, "_BoxingFightCountdown", 3);
			}
			else if (countdown == 3)
			{
				SendClientMessageEx(i, COLOR_RED, "2..");
				SendClientMessageEx(ii, COLOR_RED, "2..");
				SetPVarInt(i, "_BoxingFightCountdown", 2);
			}
			else if (countdown == 2)
			{
				SendClientMessageEx(i, COLOR_RED, "1..");
				SendClientMessageEx(ii, COLOR_RED, "1..");
				SetPVarInt(i, "_BoxingFightCountdown", 1);
			}
			else if (countdown == 1)
			{
				SendClientMessageEx(i, COLOR_RED, "Fight!");
				SendClientMessageEx(ii, COLOR_RED, "Fight!");
				DeletePVar(i, "_BoxingFightCountdown");
				TogglePlayerControllable(i, 1);
				TogglePlayerControllable(ii, 1);
			}
		}
		if (GetPVarInt(i, "_BoxingFightOver") != 0 && gettime() >= GetPVarInt(i, "_BoxingFightOver"))
		{
			if (GetPVarInt(i, "Injured") == 1)
			{
				KillEMSQueue(i);
				ClearAnimations(i);
				new biz = InBusiness(i);

				if (Businesses[biz][bGymBoxingArena1][0] == i || Businesses[biz][bGymBoxingArena1][1] == i) // first arena
				{
					Businesses[biz][bGymBoxingArena1][0] = INVALID_PLAYER_ID;
					Businesses[biz][bGymBoxingArena1][1] = INVALID_PLAYER_ID;
				}
				else if (Businesses[biz][bGymBoxingArena2][0] == i || Businesses[biz][bGymBoxingArena2][1] == i) // second arena
				{
					Businesses[biz][bGymBoxingArena2][0] = INVALID_PLAYER_ID;
					Businesses[biz][bGymBoxingArena2][1] = INVALID_PLAYER_ID;
				}
			}

			SetPlayerHealth(i, GetPVarFloat(i, "_BoxingCacheHP"));
			SetPlayerArmor(i, GetPVarFloat(i, "_BoxingCacheArmour"));
			DeletePVar(i, "_BoxingCacheHP");
			DeletePVar(i, "_BoxingCacheArmour");
			DeletePVar(i, "_BoxingFightOver");
			SetPlayerWeapons(i);
			SetPlayerPos(i, 2914.0706, -2263.0193, 7.2367);
		}
	}

	UpdateCarRadars();

/*	if (CharmReloadTimer == 0 && ++CharmMainTimer == 1800)
	{
		RemoveCharmPoint();
	}

	if (CharmMainTimer >= 1800)
	{
		if (++CharmReloadTimer == 5400)
		{
			SelectCharmPoint();
			CharmReloadTimer = 0;
			CharmMainTimer = 0;
		}
	} */
}

// Timer Name: ServerHeartbeatTwo()
// TickRate: 1 secs.
task ServerHeartbeatTwo[1000]() {

	foreach(new i: Player)
	{
		if(IsPlayerInAnyVehicle(i)) {
			if(GetPlayerState(i) == PLAYER_STATE_DRIVER) SetPlayerArmedWeapon(i, 0);
			else if(PlayerInfo[i][pGuns][4] == 0) SetPlayerArmedWeapon(i, 0);
			else SetPlayerArmedWeapon(i, 29);
        }
        new Float:armor;
        GetPlayerArmour(i, armor);
		if((armor > CurrentArmor[i]) && PlayerInfo[i][pAdmin] < 2)
		{
		    if(GetPVarType(i, "ArmorCheckAgain"))
		    {
		    	if(gettime()-GetPVarInt(i, "ArmorCheckAgain") > 10)
		    	{
 					if(gettime()-GetPVarInt(i, "ArmorWarningTime") > 300)
					{
						SetPVarInt(i, "ArmorWarningTime", gettime());
						SetPVarInt(i, "ArmorWarning", 1);
						DeletePVar(i, "ArmorCheckAgain");
						new string[128];
					    format( string, sizeof( string ), "{AA3333}AdmWarning{FFFF00}: %s (ID %d) co the dang hack giap. (Recorded: %f - Current: %f) (1)", GetPlayerNameEx(i), i, CurrentArmor[i], armor);
						ABroadCast( COLOR_YELLOW, string, 2 );
						format(string, sizeof(string), "%s (ID %d) co the dang hack giap. (Recorded: %f - Current: %f) (1)", GetPlayerNameEx(i), i, CurrentArmor[i], armor);
						Log("logs/hack.log", string);
					}
				}
			}
			else
			{
			    SetPVarInt(i, "ArmorCheckAgain", gettime());
			}
		}
		if(GetPlayerSpecialAction(i) == SPECIAL_ACTION_USEJETPACK && JetPack[i] == 0 && PlayerInfo[i][pAdmin] < 4)
		{
			new string[74 + MAX_PLAYER_NAME];
		    format( string, sizeof( string ), "{AA3333}AdmWarning{FFFF00}: %s (ID %d) co the dang hack jetpack.", GetPlayerNameEx(i), i);
			ABroadCast( COLOR_YELLOW, string, 2 );
			format(string, sizeof(string), "%s (ID %d) co the dang hack jetpack.", GetPlayerNameEx(i), i);
			Log("logs/hack.log", string);
		}

		if( IsPlayerInRangeOfPoint( i, 2, 1544.2, -1353.4, 329.4 ) )
		{
		    GivePlayerValidWeapon( i, 46, 9 );
		}
		if(GetPlayerState(i) == PLAYER_STATE_ONFOOT) for(new h = 0; h < sizeof(FamilyInfo); h++)
		{
			if(IsPlayerInRangeOfPoint(i, 2.0, FamilyInfo[h][FamilySafe][0], FamilyInfo[h][FamilySafe][1], FamilyInfo[h][FamilySafe][2]) && GetPlayerVirtualWorld(i) == FamilyInfo[h][FamilySafeVW] && GetPlayerInterior(i) == FamilyInfo[h][FamilySafeInt])
			{
				if(FamilyInfo[h][FamilyUSafe] == 1)
				{
					GameTextForPlayer(i, "~y~gang safe~w~~n~Su dung ~r~/safehelp~w~ de biet them thong tin", 5000, 3);
				}
			}
		}

		for(new h = 0; h < sizeof(Points); h++)
		{
			if(IsPlayerInRangeOfPoint(i, 2.0, Points[h][Pointx], Points[h][Pointy], Points[h][Pointz]))
			{
				if(Points[h][Type] == 1 && !GetPVarType(i, "Packages"))
				{
					GameTextForPlayer(i, "~w~Su dung /getmats de mua mot ~n~~r~goi vat lieu", 5000, 5);
				}
				else if(Points[h][Type] == 3 && PlayerInfo[i][pPot] < 3)
				{
					GameTextForPlayer(i, "~w~/getseeds~n~~b~/getopiumseeds", 5000, 5);
				}
				else if(Points[h][Type] == 4)
				{
					GameTextForPlayer(i, "~w~Su dung /getcrack de mua mot so ~r~crack", 5000, 5);
				}
				else if(Points[h][Type] == 5)
				{
					GameTextForPlayer(i, "~w~Su dung /getcrate de mua mot ~r~crate", 5000, 5);
				}
			}
		}

		if(TransportDriver[i] != INVALID_PLAYER_ID)
		{
			if(GetPlayerVehicleID(i) != GetPlayerVehicleID(TransportDriver[i]) || !TransportDuty[TransportDriver[i]])
			{
				if(IsPlayerConnected(TransportDriver[i]))
				{
					TransportMoney[TransportDriver[i]] += TransportCost[i];
					TransportTime[TransportDriver[i]] = 0;
					TransportCost[TransportDriver[i]] = 0;
					new string[36];
					format(string, sizeof(string), "~w~Hanh khach roi khoi~n~~g~Kiem duoc $%d",TransportCost[i]);
					GameTextForPlayer(TransportDriver[i], string, 5000, 1);
					TransportDriver[i] = INVALID_PLAYER_ID;
				}
			}
			else if(TransportTime[i] >= 16)
			{
				TransportTime[i] = 1;
				if(TransportDriver[i] != INVALID_PLAYER_ID)
				{
					if(IsPlayerConnected(TransportDriver[i]))
					{
	  					TransportCost[i] += TransportValue[TransportDriver[i]];
						TransportCost[TransportDriver[i]] = TransportCost[i];
					}
				}
			}
			TransportTime[i] += 1;
			new string[24];
			format(string, sizeof(string), "~r~%d ~w~: ~g~$%d",TransportTime[i],TransportCost[i]);
			GameTextForPlayer(i, string, 15000, 6);
			if(TransportCost[i] > GetPlayerCash(i))
			{
			    RemovePlayerFromVehicle(i);
			    new Float:slx, Float:sly, Float:slz;
				GetPlayerPos(i, slx, sly, slz);
				SetPlayerPos(i, slx, sly, slz + 2);
			    GameTextForPlayer(i, "~r~You're flat out of cash!", 4000, 4);
			}
		}

		if(GetVehicleModel(GetPlayerVehicleID(i)) != 594 && GetPVarType(i, "rccam")) {
			DestroyVehicle(GetPVarInt(i, "rcveh"));
			KillTimer(GetPVarInt(i, "rccamtimer"));
		}

	}
}

// Timer Name: ServerMicrobeat()
// TickRate: 500ms
task ServerMicrobeat[500]() {

    static
		Float: fExpHealth,
		Float: fCurrentSpeed,
		Float: fVehicleHealth,
		iVehicle,
		//szSpeed[42],
		arrVehParams[7];

	foreach(new i: Player)
	{
		if (_vhudVisible[i] == 1 && !IsPlayerInAnyVehicle(i))
		{
			HideVehicleHUDForPlayer(i);
		}

		switch(GetPlayerState(i)) {
		    case PLAYER_STATE_DRIVER: {
				iVehicle = GetPlayerVehicleID(i);
				GetVehicleHealth(iVehicle, fVehicleHealth);
				fCurrentSpeed = player_get_speed(i);

				if(arr_Towing[i] != INVALID_VEHICLE_ID) {
					if(GetVehicleModel(arr_Towing[i]) && IsVehicleStreamedIn(arr_Towing[i], i)) AttachTrailerToVehicle(arr_Towing[i], iVehicle);
					else arr_Towing[i] = INVALID_VEHICLE_ID;
				}

				if(fCurrentSpeed >= 40 && 60 <= fCurrentSpeed)
				{
					if(PlayerInfo[i][pAdmin] <= 1) switch(Seatbelt[i]) {
						case 0: if((fVehSpeed[i] - fCurrentSpeed > 40.0) && (fVehHealth[i] - fExpHealth > 0)) GetPlayerHealth(i, fExpHealth), SetPlayerHealth(i, fExpHealth - (fVehSpeed[i] - fCurrentSpeed) / 1.6);
						default: if((fVehSpeed[i] - fCurrentSpeed > 40.0) && (fVehHealth[i] - fExpHealth > 0)) GetPlayerHealth(i, fExpHealth), SetPlayerHealth(i, fExpHealth - ((fVehSpeed[i] - fCurrentSpeed) / 3.2));
					}
				}
				else
				{
   					if(PlayerInfo[i][pAdmin] <= 1) switch(Seatbelt[i]) {
						case 0: if((fVehSpeed[i] - fCurrentSpeed > 50.0) && (fVehHealth[i] - fExpHealth > 0)) GetPlayerHealth(i, fExpHealth), SetPlayerHealth(i, fExpHealth - (fVehSpeed[i] - fCurrentSpeed) / 0.8);
						default: if((fVehSpeed[i] - fCurrentSpeed > 50.0) && (fVehHealth[i] - fExpHealth > 0)) GetPlayerHealth(i, fExpHealth), SetPlayerHealth(i, fExpHealth - ((fVehSpeed[i] - fCurrentSpeed) / 1.6));
					}
				}

				fVehSpeed[i] = fCurrentSpeed;
	            fVehHealth[i] = fVehicleHealth;

				if(fVehicleHealth < 350.0)
				{
	 				SetVehicleHealth(iVehicle, 251.0);
	    			GetVehicleParamsEx(iVehicle, arrVehParams[0], arrVehParams[1], arrVehParams[2], arrVehParams[3], arrVehParams[4], arrVehParams[5], arrVehParams[6]);
					if(arrVehParams[0] == VEHICLE_PARAMS_ON) SetVehicleParamsEx(iVehicle,VEHICLE_PARAMS_OFF, arrVehParams[1], arrVehParams[2], arrVehParams[3], arrVehParams[4], arrVehParams[5], arrVehParams[6]);
					GameTextForPlayer(i, "~r~XE HONG!", 2500, 3);
					arr_Engine{iVehicle} = 0;
				}
				else if(PlayerInfo[i][pSpeedo] != 0 && FindTimePoints[i] == 0 && arr_Engine{iVehicle} == 1 && !GetPVarType(i, "LoadTruckTime")) {
					UpdateVehicleHUDForPlayer(i, floatround(VehicleFuel[iVehicle]), floatround(fCurrentSpeed));
				}
			}
			case PLAYER_STATE_PASSENGER: {

			    iVehicle = GetPlayerVehicleID(i);
	            GetVehicleHealth(iVehicle,fExpHealth);
				fCurrentSpeed = player_get_speed(i);
				if(PlayerInfo[i][pSpeedo] != 0) {
					UpdateVehicleHUDForPlayer(i, floatround(VehicleFuel[iVehicle]), floatround(fCurrentSpeed));
				}
				if(fCurrentSpeed >= 40 && 60 <= fCurrentSpeed)
				{
					if(PlayerInfo[i][pAdmin] <= 1) switch(Seatbelt[i]) {
						case 0: if((fVehSpeed[i] - fCurrentSpeed > 40.0) && (fVehHealth[i] - fExpHealth > 0)) GetPlayerHealth(i, fExpHealth), SetPlayerHealth(i, fExpHealth - (fVehSpeed[i] - fCurrentSpeed) / 1.6);
						default: if((fVehSpeed[i] - fCurrentSpeed > 40.0) && (fVehHealth[i] - fExpHealth > 0)) GetPlayerHealth(i, fExpHealth), SetPlayerHealth(i, fExpHealth - ((fVehSpeed[i] - fCurrentSpeed) / 3.2));
					}
				}
				else
				{
   					if(PlayerInfo[i][pAdmin] <= 1) switch(Seatbelt[i]) {
						case 0: if((fVehSpeed[i] - fCurrentSpeed > 50.0) && (fVehHealth[i] - fExpHealth > 0)) GetPlayerHealth(i, fExpHealth), SetPlayerHealth(i, fExpHealth - (fVehSpeed[i] - fCurrentSpeed) / 0.8);
						default: if((fVehSpeed[i] - fCurrentSpeed > 50.0) && (fVehHealth[i] - fExpHealth > 0)) GetPlayerHealth(i, fExpHealth), SetPlayerHealth(i, fExpHealth - ((fVehSpeed[i] - fCurrentSpeed) / 1.6));
					}
				}

				fVehSpeed[i] = fCurrentSpeed;
				fVehHealth[i] = fExpHealth;
			}
		}
	}
}



// Timer Name: VehicleUpdate()
// TickRate: 60 secs.
task VehicleUpdate[60000]() {

    static engine,lights,alarm,doors,bonnet,boot,objective;
    for(new v = 0; v < MAX_VEHICLES; v++) if(GetVehicleModel(v) && GetVehicleModel(v) != 481 && GetVehicleModel(v) != 509 && GetVehicleModel(v) != 510) {
	    GetVehicleParamsEx(v,engine,lights,alarm,doors,bonnet,boot,objective);
	    if(engine == VEHICLE_PARAMS_ON) {
			if(arr_Engine{v} == 0) SetVehicleParamsEx(v,VEHICLE_PARAMS_OFF,lights,alarm,doors,bonnet,boot,objective);
			else if(!IsVIPcar(v) && !IsFamedVeh(v) && !IsATruckerCar(v) && VehicleFuel[v] > 0.0) {
				VehicleFuel[v] -= 1.0;
				if(VehicleFuel[v] <= 0.0) SetVehicleParamsEx(v,VEHICLE_PARAMS_OFF,lights,alarm,doors,bonnet,boot,objective);
			}
	    }
	}
}

// Task Name: hungerGames()
task hungerGames[1000]()
{	
	new string[128];
	if(hgActive)
	{
		if(hgCountdown > 0)
		{	
			hgCountdown--;
			
			format(string, sizeof(string), "Thoi gian con lai toi khi bat dau: %d", hgCountdown);
			for(new i = 0; i < MAX_PLAYERS; i++)
			{
				if(HungerPlayerInfo[i][hgInEvent] == 1)
				{
					PlayerTextDrawSetString(i, HungerPlayerInfo[i][hgTimeLeftText], string);
				}
			}
			
			if(hgCountdown == 300)
			{
				SendClientMessageToAll(COLOR_LIGHTBLUE, "Su kien Hunger Games se bat dau trong 5 phut nua, su dung /joinhunger de tham gia.");
			}
			else if(hgCountdown == 60) 
			{
				SendClientMessageToAll(COLOR_LIGHTBLUE, "Su kien Hunger Games se bat dau trong 1 phut nua, type /joinhunger de tham gia.");
			}
			else if(hgCountdown == 30)
			{
				for(new i = 0; i < MAX_PLAYERS; i++)
				{
					if(HungerPlayerInfo[i][hgInEvent] == 1)
					{
						SendClientMessageEx(i, COLOR_LIGHTBLUE, "* Su kien se duoc bat dau trong 30 giay nua...");
						SendClientMessageEx(i, COLOR_LIGHTBLUE, "* Godmode bi vo hieu hoa, ba lo se suat hien sau 30 giay...");
					}
				}
			}
		}
		else if(hgCountdown == 0 && hgActive == 1)
		{
			LoadHGBackpacks();
			hgActive = 2;
			
			format(string, sizeof(string), "Thoi gian con lai toi khi bat dau: %d", hgCountdown);
			for(new i = 0; i < MAX_PLAYERS; i++)
			{
				if(HungerPlayerInfo[i][hgInEvent] == 1)
				{
					PlayerTextDrawSetString(i, HungerPlayerInfo[i][hgTimeLeftText], string);
					
					if(GetPVarInt(i, "HungerVoucher") == 1)
					{
						GivePlayerWeapon(i, 29, 60000);
						SetPlayerHealth(i, 100.0);
						DeletePVar(i, "HungerVoucher");
					}
					else
					{
						SetPlayerHealth(i, 50.0);
					}
	
					SendClientMessageEx(i, COLOR_LIGHTBLUE, "* Hay de Hunger Games Bat dau!");
					GameTextForPlayer(i, "The Game is on!", 2000, 6);
					PlayerTextDrawHide(i, HungerPlayerInfo[i][hgTimeLeftText]);
					PlayerTextDrawHide(i, HungerPlayerInfo[i][hgLoadingText]);
				}
			}
		}
	}
	return true;
}

// Task Name: fpsCounterUpdate
task fpsCounterUpdate[500]()
{
	new string[64];
	for(new i = 0; i < MAX_PLAYERS; i++)
	{
		if(GetPVarInt(i, "FPSToggle") == 1)
		{
			format(string, sizeof(string), "%d", pFPS[i]);
			PlayerTextDrawSetString(i, pFPSCounter[i], string);
		}
	}
	return true;
}

// Timer Name: ShopItemQueue()
// TickRate: 30 Seconds
task ShopItemQueue[30000]()
{
	new string[128];
	foreach(new i: Player)
	{
		if(IsPlayerConnected(i))
		{
			format(string, sizeof(string), "SELECT * FROM `shop_orders` WHERE `user_id` = %d AND `status` = 0", GetPlayerSQLId(i));
			mysql_function_query(MainPipeline, string, true, "ExecuteShopQueue", "ii", i, 0);
			if(ShopToggle == 1)
			{
				format(string, sizeof(string), "SELECT * FROM `order_delivery_status` WHERE `player_id` = %d AND `status` = 0", GetPlayerSQLId(i));
				mysql_function_query(ShopPipeline, string, true, "ExecuteShopQueue", "ii", i, 1);
			}
		}
	}
}
