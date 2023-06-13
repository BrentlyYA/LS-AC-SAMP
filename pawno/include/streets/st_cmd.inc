
CompareStrings(string1[], string2[])
{
    if(strcmp(string1, string2) != 0) return false;
    else return true;
}
CMD:astreet(playerid, params[])
{
	if (!CheckAdmin(playerid, HIGH_ADMIN_LEVEL)) return SendErrorMessage(playerid, "Ban khong co quyen su dung lenh nay!");

	new option[5], secoption[5];
	if (sscanf(params, "s[7]S()[5]", option, secoption)) return SendSyntaxMessage(playerid, "/astreet [ add / edit / remove / goto ]");

	if (CompareStrings(option, "add")) {
		if (!GetPlayerVirtualWorld(playerid) && !GetPlayerInterior(playerid)) {
			new Float:x, Float:y, Float:z;
			GetPlayerPos(playerid, x, y, z);

			x += 1.0;

			/*pTemp[playerid][editPos][0] = x;
			pTemp[playerid][editPos][1] = y;
			pTemp[playerid][editPos][2] = z;

			pTemp[playerid][editPos][3] = x;
			pTemp[playerid][editPos][4] = y;
			pTemp[playerid][editPos][5] = z;*/

			//GetGroupCenter(pTemp[playerid][editPos][3], pTemp[playerid][editPos][4], pTemp[playerid][editPos][5]);
			SetPVarInt(playerid, #edit_street, 1);

			new Street_Sign = CreateDynamicObject(19981, x, y, z, 0.0, 0.0, 0.0, -1, -1, -1, 300.00, 300.00);
			EditDynamicObject(playerid, Street_Sign);
		}
	}
	else if (CompareStrings(option, "edit")) {
		new id;
		if (sscanf(secoption,"i", id)) 	return SendSyntaxMessage(playerid, "/astreet edit [id]");
		if (!street_data[id][street_id])	return SendErrorMessage(playerid, "Неверный ID. (( /near ))");
		if (GetPlayerDistanceFromPoint(playerid, street_data[id][sSign][0], street_data[id][sSign][1], street_data[id][sSign][2]) > 5.0)
			return SendErrorMessage(playerid, "Вы слишком далеко от знака!");

		SetPVarInt(playerid, #edit_street, 2);
		SetPVarInt(playerid, #id_street, id);

		EditDynamicObject(playerid, street_data[id][street_object][0]);
	}
	else if (CompareStrings(option, "remove")) {
		new id;
		if (sscanf(secoption,"i", id))	return SendSyntaxMessage(playerid, "/astreet remove [id]");
		if (!street_data[id][street_id])	return SendErrorMessage(playerid, "Неверный ID. (( /near ))");

		DeleteStreet(playerid, id);
	}
	else if (CompareStrings(option, "goto")) {
		new id;
		if (sscanf(secoption,"i", id))	return SendSyntaxMessage(playerid, "/astreet goto [id]");
		if (!street_data[id][street_id])	return SendErrorMessage(playerid, "Неверный ID. (( /near ))");

		SetPlayerPos(playerid, street_data[id][sSign][0],street_data[id][sSign][1],street_data[id][sSign][2]);
	}
	return 1;
}

CMD:stname(playerid, params[])
{
	if (!CheckAdmin(playerid, HIGH_ADMIN_LEVEL)) return SendErrorMessage(playerid, "Ban khong co quyen su dung lenh nay!");

	new id;
	if (sscanf(params,"i", id)) 		return SendSyntaxMessage(playerid, "/stname [id]");
	if (!street_data[id][street_id])	return SendErrorMessage(playerid, "Неверный ID. (( /near ))");
	if (GetPlayerDistanceFromPoint(playerid, street_data[id][sSign][0], street_data[id][sSign][1], street_data[id][sSign][2]) > 5.0)
		return SendErrorMessage(playerid, "Вы слишком далеко от знака!");

	SetPVarInt(playerid, #edit_street, 3);
    SetPVarInt(playerid, #stname_id, id);
	EditDynamicObject(playerid, street_data[id][street_object][1]); //Name
	return 1;
}

CMD:stdir(playerid, params[])
{
	if (!CheckAdmin(playerid, HIGH_ADMIN_LEVEL))	return SendErrorMessage(playerid, "Ban khong co quyen su dung lenh nay!");

	new id;
	if (sscanf(params,"i", id)) 		return SendSyntaxMessage(playerid, "/stdir [id]");
	if (!street_data[id][street_id])	return SendErrorMessage(playerid, "Неверный ID. (( /near ))");
	if (GetPlayerDistanceFromPoint(playerid, street_data[id][sSign][0], street_data[id][sSign][1], street_data[id][sSign][2]) > 5.0)
		return SendErrorMessage(playerid, "Вы слишком далеко от знака!");

	SetPVarInt(playerid, #edit_street, 3);
	EditDynamicObject(playerid, street_data[id][street_object][2]); //sDirection
	return 1;
}

CMD:stnedit(playerid, params[])
{
	if (!CheckAdmin(playerid, HIGH_ADMIN_LEVEL))	return SendErrorMessage(playerid, "Ban khong co quyen su dung lenh nay!");

	new id, newname[20];
	if (sscanf(params,"is", id, newname)) return SendSyntaxMessage(playerid, "/stnedit [id] [name]");
    if (strlen(newname) < 3) return SendSyntaxMessage(playerid, "/stnedit [id] [name > 3 ki tu]");
	if (!street_data[id][street_id]) return SendErrorMessage(playerid, "ID khong ton tai, su dung /getareas");
	if (GetPlayerDistanceFromPoint(playerid, street_data[id][sSign][0], street_data[id][sSign][1], street_data[id][sSign][2]) > 5.0)
		return SendErrorMessage(playerid, "Ban khong dung gan streetsign nay.");

	format(street_data[id][street_name], 20, "%s", newname);

    SetUpSignCords(id, street_data[id][sSign][0], street_data[id][sSign][1], street_data[id][sSign][2], street_data[id][sSign][3], street_data[id][sSign][4], street_data[id][sSign][5]);
	Save_Street(id);

	return 1;
}

CMD:getareas(playerid, params[])
{
	if (!CheckAdmin(playerid, HIGH_ADMIN_LEVEL))	return SendErrorMessage(playerid, "Ban khong co quyen su dung lenh nay!");

	new areas[10], j = GetPlayerNumberDynamicAreas(playerid);
	GetPlayerDynamicAreas(playerid, areas, sizeof(areas));

	for(new s; s < 10; s ++) {
		for(new i; i < sizeof(street_names); i++) {
			if (IsValidDynamicArea(areas[s]) && areas[s] == street_zones[i]) {
				SendClientMessageEx(playerid, 0xFFFFFFFF, "[%i] %i. %s", s, i, street_names[i]);
			}
		}
	}

	SendClientMessageEx(playerid,0xFFFFFFFF ,"-------TOTAL: %i-------", j);
	return 1;
}
