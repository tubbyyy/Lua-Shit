local ui_lib = loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostDuckyy/UI-Libraries/main/Old%20Splix/source.lua'))()

-- Import Modules
-- require '/modules/cfs.lua'

-- Detecting game
while not game:IsLoaded() do
    task.wait()
end

local place_id = game.PlaceId
local place_name = nil
if place_id == 12985134424 then
    place_name = 'clicker fighter simulator'
end

-- Services
local Workspace = game:GetService("Workspace")

-- Changable UI Variables
local width, height = 600, 650

-- System/OS Variables


-- Optimization Shorthand
local Vect2 = Vector2.new

-- Initialize Main UI
local main_ui = ui_lib:New({
    Name = string.format('retexts.cc | %s', place_name),
    Size = Vect2(width, height),
    Accent = Color3.fromRGB(220,20,60)
})

-- Initialize UI Elements
local main_page = main_ui:Page({
    Name = 'main'
})

local settings_page = main_ui:Page({
    Name = 'settings'
})

local farming_section = main_page:Section{
    Name = 'farming',
    Side = 'left'
}

local settings_section = settings_page:Section({
    Name = 'settings',
    Side = 'left'
})

--[[farming_section:AddToggle({
    Name = 'auto-farm',
    Flag = 'farming/auto-farm'
})
]]

settings_section:ConfigBox({})
settings_section:ButtonHolder({Buttons = {{"Load", function() end}, {"Save", function() end}}})
settings_section:Label({Name = "Unloading will fully unload\neverything, so save your\nconfig before unloading.", Middle = true})
settings_section:Button({Name = "Unload", Callback = function() main_ui:Unload() end})

main_ui:Initialize()
