enum E_SERVERSIDE_DATA
{
    Float:Health
}
new ServerSide[MAX_PLAYERS][E_SERVERSIDE_DATA];

RSS_SetPlayerHealth(playerid, Float:health)
{
  	// Jika player tidak terkoneksi maka, harus di return 0, agar tidak terjadi invalid array value ketika di masukan ke dalam array nanti 
  	// INVALID_PLAYER_ID tidak boleh berada di dalam array.
	if (!IsPlayerConnected(playerid)) 
    	{
		return 0;
	}

	if (health <= 0.0) // Jika healthnya di bawah  atau sama dengan 0.0, maka kita akan set variabel penampung darah ke 0.0
    	{
		ServerSide[playerid][Health] = 0.0;
	} 
    	else  // Jika tidak, maka kita akan set variabel darah ke jumlah yang di terima oleh parameter.
    	{
		ServerSide[playerid][Health] = health;
	}
	return 1;
}

#if defined _ALS_SetPlayerHealth
	#undef SetPlayerHealth
#else
	#define _ALS_SetPlayerHealth
#endif
#define SetPlayerHealth RSS_SetPlayerHealth

Float:RSS_GetPlayerHealth(playerid, &Float:health = 0.0) 
{
    	// Jika player tidak terkoneksi ke dalam server, maka darah akan di buat menjadi 0.
	if (!IsPlayerConnected(playerid)) 
    	{
		health = 0.0;
		return 0.0;
	}

	health = ServerSide[playerid][Health];

	return health; // health akan di return kembali ke parameter karena ada lambang refrensi di parameter untuk meminta isi dari suatu variabel.
}

// Sama seperti sebelumnya kegunaan ALS.

#if defined _ALS_GetPlayerHealth
	#undef GetPlayerHealth
#else
	#define _ALS_GetPlayerHealth
#endif
#define GetPlayerHealth RSS_GetPlayerHealth