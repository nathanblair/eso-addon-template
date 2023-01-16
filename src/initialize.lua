Wombat = {}

Wombat.name = "Wombat"

function Wombat.Initialize()
    -- Hook into events that this addon will handle
    -- Namely, any combat-state-change events
end

function Wombat.OnAddOnLoaded(_, addonName)
    if addonName == Wombat.name then
        Wombat.Initialize()
        EVENT_MANAGER:UnregisterForEvent(Wombat.name, EVENT_ADD_ON_LOADED)
    end
end
