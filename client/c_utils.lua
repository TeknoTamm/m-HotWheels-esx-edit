if Config.Framework == "qb" then
    QBCore = exports["qb-core"]:GetCoreObject()
elseif Config.Framework == "esx" then
    ESX = exports['es_extended']:getSharedObject()
else
    print("The "..Config.Framework.." is wrong or not available")
end

CreateThread(function()
    if Config.Framework == "qb" then
        for k, v in pairs(Config.TargetLocations["Trader"]) do
            exports["qb-target"]:AddBoxZone("Trader"..k, vector3(v.x, v.y, v.z), 1, 1, {
                name = "Trader"..k,
                heading = 32,
                debugPoly = false,
                minZ = v.z - 1,
                maxZ = v.z + 1,
            }, {
                options = {
                    {  
                        event = "m-HotWheels:Client:OpenShop", 
                        icon = "fas fa-car", 
                        label = "Trader",
                    },
                },
                distance = 2.0
            })
        end
    elseif Config.Framework == "esx" then
        exports.ox_target:addBoxZone({
            coords = vec3(-146.1772, 229.9282, 93.4347),
            size = vec3(3, 3, 3),
            rotation = 45,
            drawSprite = true,
            options = {
                {
                    name = 'hotwheels',
                    event = 'm-HotWheels:Client:OpenShop',
                    icon = 'fas fa-car',
                    label = 'Hotwheels Shop',
                }
            }
        })

    end
end)

