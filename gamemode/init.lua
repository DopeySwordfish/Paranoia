Paranoia = {}

AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )
AddCSLuaFile( "libraries/sh_chat.lua" )
AddCSLuaFile( "libraries/sh_class.lua" )

include( "shared.lua" )
include( "libraries/sh_chat.lua" )
include( "libraries/sh_class.lua" )

function GM:Initialize()
	Paranoia.Class.AddClass( "Assault", 1, "models/player.mdl", "weapon_ar2", "weapon_pistol", "weapon_ammopack" )
	Paranoia.Class.AddClass( "Medic", 1, "models/player.mdl", "weapon_smg", "weapon_pistol", "weapon_medkit" )
	Paranoia.Class.AddClass( "Scout", 1, "models/player.mdl", "weapon_buckshot", "weapon_pistol", "weapon_knife" )
end 

function GM:PlayerSpawn( pl )
	Paranoia.Chat.AddText( "Welcome to the server " .. pl:Nick() .. ".", pl )
end