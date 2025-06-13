local QBCore = exports['qb-core']:GetCoreObject()
local currentIndex = 1

CreateThread(function()
    while true do
        Wait(Config.ReminderInterval * 60000) -- Convert minutes to milliseconds

        local reminder = Config.Reminders[currentIndex]
        TriggerClientEvent('chat:addMessage', -1, {
            color = { 255, 255, 0 },
            multiline = true,
            args = { "^*^1[SERVER REMINDER]", reminder }
        })

        currentIndex = currentIndex + 1
        if currentIndex > #Config.Reminders then
            currentIndex = 1
        end
    end
end)
