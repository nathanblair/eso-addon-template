Wombat = {}

Wombat.name = "Wombat"

function Wombat.Initialize()
end

function Wombat.OnAddOnLoaded(_, addonName)
    if addonName == Wombat.name then
        Wombat.Initialize()
        EVENT_MANAGER:UnregisterForEvent(Wombat.name, EVENT_ADD_ON_LOADED)
    end
end
