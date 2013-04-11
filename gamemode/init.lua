Paranoia = {};

AddCSLuaFile( "cl_init.lua" );
AddCSLuaFile( "shared.lua" );
AddCSLuaFile( "libraries/sh_chat.lua" );

include( "shared.lua" );
include( "libraries/sh_chat.lua" );

function GM:PlayerSpawn( pl )
	Paranoia.Chat.AddText( "Welcome to the server " .. pl:Nick() .. ".", pl )
end