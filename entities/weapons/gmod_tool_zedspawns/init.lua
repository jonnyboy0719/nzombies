AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include('shared.lua')

SWEP.Weight			= 5
SWEP.AutoSwitchTo		= false
SWEP.AutoSwitchFrom		= false

util.AddNetworkString( "tool_zombies_net" )

net.Receive( "tool_zombies_net", function( length, client )
	--validate
	bnpvbWJpZXM.Rounds.ZedSpawns[net.ReadString()][3] = net.ReadString()
	bnpvbWJpZXM.Rounds.Functions.SyncClients()
end )