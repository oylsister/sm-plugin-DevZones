#pragma semicolon 1
#include <sourcemod>
#include <devzones>

public void Zone_OnClientEntry(int client, const char[] zone)
{
	char classname[64];
	if(client < 1 || client > MaxClients || !IsClientInGame(client)) 
	{
		GetEdictClassname(client, classname, 64);
		PrintToChatAll("The entity %i %s has entered in zone %s", client, classname, zone);
	}
	else PrintToChatAll("The player %N has entered in zone %s", client, zone);
}

public void Zone_OnClientLeave(int client, const char[] zone)
{
	char classname[64];
	if(client < 1 || client > MaxClients || !IsClientInGame(client)) 
	{
		GetEdictClassname(client, classname, 64);
		PrintToChatAll("The entity %i %s has left the zone %s", client, classname, zone);
	}
	else PrintToChatAll("The player %N has left the zone %s", client, zone);
}