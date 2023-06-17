player_stats_module = {}

-- Services
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

function player_stats_module.GetValuePerSecond(value)
    local ValuePerSecond = nil
    local FirstValue = LocalPlayer.ClientStats[value].Value
    task.wait(1)
    local SecondValue = LocalPlayer.ClientStats[value].Value
    ValuePerSecond = SecondValue - FirstValue
    return ValuePerSecond
end

return player_stats_module