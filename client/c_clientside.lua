if Config.Framework == "qb" then
	QBCore = exports["qb-core"]:GetCoreObject()
elseif Config.Framework == "esx" then
	ESX = exports['es_extended']:getSharedObject()
else
	print("The "..Config.Framework.." is wrong or not available")
end

local peds = Config.Settings.Ped
local citizenid = nil

CreateThread(function()
	if Config.Settings.Blip.blipEnable then
	    local c = Config.Settings.Blip.blipLocation
	    local Blip = AddBlipForCoord(c.x, c.y, c.z)
	    SetBlipSprite (Blip, Config.Settings.Blip.blipSprite)
	    SetBlipDisplay(Blip, 4)
	    SetBlipScale  (Blip, Config.Settings.Blip.blipScale)
	    SetBlipAsShortRange(Blip, true)
	    SetBlipColour(Blip, Config.Settings.Blip.blipColour)
	    SetBlipAlpha(Blip, Config.Settings.Blip.blipAlpha)
	    BeginTextCommandSetBlipName("STRING")
	    AddTextComponentSubstringPlayerName(Config.Settings.Blip.blipName)
	    EndTextCommandSetBlipName(Blip)
	end
end)

CreateThread(function()
    for _, item in pairs(peds) do
        RequestModel(item.hash)
        while not HasModelLoaded(item.hash) do Wait(1) end
        peds =  CreatePed(item.type, item.hash, item.loc, false, true)
        SetBlockingOfNonTemporaryEvents(peds, true)
        SetPedDiesWhenInjured(peds, false)
        SetEntityHeading(peds, item.loc)
        SetPedCanPlayAmbientAnims(peds, true)
        SetPedCanRagdollFromPlayerImpact(peds, false)
        SetEntityInvincible(peds, true)
        FreezeEntityPosition(peds, true)
    end
end)

RegisterNetEvent("m-HotWheels:Client:OpenPackSurprise")
AddEventHandler("m-HotWheels:Client:OpenPackSurprise", function()
	if Config.Framework == "qb" then
		QBCore.Functions.Progressbar("OpeningPack", "Opening a pack...", 5000, false, true, {
			disableMovement = true,
			disableCarMovement = false,
			disableMouse = false,
			disableCombat = true,
		}, {
			animDict = "mp_arresting",anim = "a_uncuff",flags = 49
		}, {}, {}, function()
			TriggerServerEvent("m-HotWheels:Server:OpenPackSurprise") 
		end)
	elseif Config.Framework == "esx" then
		if lib.progressCircle({
			duration = 5000,
			position = 'bottom',
			label='Paket Açılıyor...',
			useWhileDead = false,
			canCancel = false,
			disable = {
				car = true,
				move= true,
				combat= true,

			},
			anim = {
				dict = 'mp_arresting',
				clip = 'a_uncuff'
			},
			prop = {
				model = `prop_cs_box_clothes`,
				pos = vec3(0.09, -0.02, 0.08),
				rot = vec3(98.0, 0.0, -1.0)
			},
		}) then 
			TriggerServerEvent("m-HotWheels:Server:OpenPackSurprise") 
		end
	end
end)

RegisterNetEvent("m-HotWheels:Client:OpenBoxSurprise")
AddEventHandler("m-HotWheels:Client:OpenBoxSurprise", function()
	if Config.Framework == "qb" then
		QBCore.Functions.Progressbar("OpeninBox", "Opening a box...", 5000, false, true, {
			disableMovement = true,
			disableCarMovement = false,
			disableMouse = false,
			disableCombat = true,
		}, {
			animDict = "mp_arresting",anim = "a_uncuff",flags = 49
		}, {}, {}, function()
			TriggerServerEvent("m-HotWheels:Server:OpenBoxSurprise")
		end)
	elseif Config.Framework == "esx" then
		if lib.progressCircle({
			duration = 5000,
			position = 'bottom',
			label='Paket Açılıyor...',
			useWhileDead = false,
			canCancel = false,
			disable = {
				car = true,
				move= true,
				combat= true,

			},
			anim = {
				dict = 'mp_arresting',
				clip = 'a_uncuff'
			},
			prop = {
				model = `prop_cs_box_clothes`,
				pos = vec3(0.09, -0.02, 0.08),
				rot = vec3(98.0, 0.0, -1.0)
			},
		}) then 
			TriggerServerEvent("m-HotWheels:Server:OpenBoxSurprise")
		end
	end
end)

RegisterNetEvent("m-HotWheels:Client:Open2FastSurprise")
AddEventHandler("m-HotWheels:Client:Open2FastSurprise", function()
	if Config.Framework == "qb" then
		QBCore.Functions.Progressbar("OpeninBox", "Opening fast furious box..", 5000, false, true, {
			disableMovement = true,
			disableCarMovement = false,
			disableMouse = false,
			disableCombat = true,
		}, {
			animDict = "mp_arresting",anim = "a_uncuff",flags = 49
		}, {}, {}, function()
			TriggerServerEvent("m-HotWheels:Server:Open2FastSurprise")
		end)
	elseif Config.Framework == "esx" then
		if lib.progressCircle({
			duration = 5000,
			position = 'bottom',
			label='Fast and Furious Paket Açılıyor...',
			useWhileDead = false,
			canCancel = false,
			disable = {
				car = true,
				move= true,
				combat= true,

			},
			anim = {
				dict = 'mp_arresting',
				clip = 'a_uncuff'
			},
			prop = {
				model = `prop_cs_box_clothes`,
				pos = vec3(0.09, -0.02, 0.08),
				rot = vec3(98.0, 0.0, -1.0)
			},
		}) then 
			TriggerServerEvent("m-HotWheels:Server:Open2FastSurprise")
		end
	end
end)


RegisterNetEvent("m-HotWheels:Client:OpenWhiteBox")
AddEventHandler("m-HotWheels:Client:OpenWhiteBox", function()
	if Config.Framework == "qb" then
		citizenid = QBCore.Functions.GetPlayerData().citizenid
		TriggerServerEvent("inventory:server:OpenInventory", "stash", "HW_WhiteBox_" .. citizenid, { maxweight = 250000, slots = 35 })
		TriggerEvent("inventory:client:SetCurrentStash", "HW_WhiteBox_" .. citizenid)
	elseif Config.Framework == "esx" then

		citizenid = ESX.GetPlayerData().citizenid

		exports.ox_inventory:openInventory('stash', { id = 'HWWhitebox', owner = citizenid })

		-- exports.ox_inventory:openInventory(invType, data)


	end
end)

RegisterNetEvent("m-HotWheels:Client:OpenGreyBox")
AddEventHandler("m-HotWheels:Client:OpenGreyBox", function()
	if Config.Framework == "qb" then
		citizenid = QBCore.Functions.GetPlayerData().citizenid
		TriggerServerEvent("inventory:server:OpenInventory", "stash", "HW_GreyBox_" .. citizenid, { maxweight = 250000, slots = 35 })
		TriggerEvent("inventory:client:SetCurrentStash", "HW_GreyBox_" .. citizenid)
	elseif Config.Framework == "esx" then

		citizenid = ESX.GetPlayerData().citizenid

		exports.ox_inventory:openInventory('stash', { id = 'HWGraybox', owner = citizenid })

	end
end)

RegisterNetEvent("m-HotWheels:Client:OpenBlueBox")
AddEventHandler("m-HotWheels:Client:OpenBlueBox", function()
	if Config.Framework == "qb" then
		citizenid = QBCore.Functions.GetPlayerData().citizenid
		TriggerServerEvent("inventory:server:OpenInventory", "stash", "HW_BlueBox_" .. citizenid, { maxweight = 250000, slots = 35 })
		TriggerEvent("inventory:client:SetCurrentStash", "HW_BlueBox_" .. citizenid)
	elseif Config.Framework == "esx" then

		citizenid = ESX.GetPlayerData().citizenid

		exports.ox_inventory:openInventory('stash', { id = 'HWBluebox', owner = citizenid })

	end
end)



