Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000) 
        if IsPedInAnyVehicle(PlayerPedId(), false) then
            SetUserRadioControlEnabled(false)

            if GetPlayerRadioStationName() ~= nil then
                SetVehRadioStation(GetVehiclePedIsIn(PlayerPedId(), false), "OFF")
            end
        end
    end
end)

Citizen.CreateThread(function()
    StartAudioScene("DLC_MPHEIST_TRANSITION_TO_APT_FADE_IN_RADIO_SCENE")
    SetStaticEmitterEnabled("LOS_SANTOS_VANILLA_UNICORN_01_STAGE", false)
    SetStaticEmitterEnabled("LOS_SANTOS_VANILLA_UNICORN_02_MAIN_ROOM", false)
    SetStaticEmitterEnabled("LOS_SANTOS_VANILLA_UNICORN_03_BACK_ROOM", false)
    SetAmbientZoneListStatePersistent("AZL_DLC_Hei4_Island_Disabled_Zones", false, true)
    SetAmbientZoneListStatePersistent("AZL_DLC_Hei4_Island_Zones", true, true)
    SetScenarioTypeEnabled("WORLD_VEHICLE_STREETRACE", false)
    SetScenarioTypeEnabled("WORLD_VEHICLE_SALTON_DIRT_BIKE", false)
    SetScenarioTypeEnabled("WORLD_VEHICLE_SALTON", false)
    SetScenarioTypeEnabled("WORLD_VEHICLE_POLICE_NEXT_TO_CAR", false)
    SetScenarioTypeEnabled("WORLD_VEHICLE_POLICE_CAR", false)
    SetScenarioTypeEnabled("WORLD_VEHICLE_POLICE_BIKE", false)
    SetScenarioTypeEnabled("WORLD_VEHICLE_MILITARY_PLANES_SMALL", false)
    SetScenarioTypeEnabled("WORLD_VEHICLE_MILITARY_PLANES_BIG", false)
    SetScenarioTypeEnabled("WORLD_VEHICLE_MECHANIC", false)
    SetScenarioTypeEnabled("WORLD_VEHICLE_EMPTY", false)
    SetScenarioTypeEnabled("WORLD_VEHICLE_BUSINESSMEN", false)
    SetScenarioTypeEnabled("WORLD_VEHICLE_BIKE_OFF_ROAD_RACE", false)
    StartAudioScene("FBI_HEIST_H5_MUTE_AMBIENCE_SCENE")
    StartAudioScene("CHARACTER_CHANGE_IN_SKY_SCENE")
    SetAudioFlag("PoliceScannerDisabled", true)
    SetAudioFlag("DisableFlightMusic", true)
    SetPlayerCanUseCover(PlayerId(), false)
    SetRandomEventFlag(false)
    SetDeepOceanScaler(0.0)
end)
