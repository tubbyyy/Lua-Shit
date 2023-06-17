local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

local Workspace = game:GetService("Workspace")
local Tweenservice = game:GetService("TweenService")
local Players = game:GetService("Players")

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character

local GameObjects = Workspace.GameObjects
local Areas = GameObjects.Areas
local Beach = Areas.Beach.Items.Chest1
for _, name in pairs(Beach:GetChildren()) do
    print(tostring(name))
end



local gui = Library:create{
    Theme = Library.Themes.Serika
}

local tab = gui:tab{
    Icon = "rbxassetid://6034996695",
    Name = "Main"
}

tab:keybind({Callback = function()
    gui:prompt()
end,})
tab:dropdown({
    Name = "Worlds",
    Description = "Teleport to any world.",
    StartingText = "World",
    Items = Areas.Beach.Items:GetChildren(),
        --[["Beach",
        "Desert",
        "Candy",
        "Heaven",
        "Crystal",
        "Winter",
        "Spawn",
        "Magma",
        "Jungle",
        "Glacier",
        "Farm",
        "Coral",
        "Toy",
        "Circus",
        "Tech Entry",
        "Tech Spawn",]]

    Callback = function(Clicked)
    	local goal = {}
    	goal.Position = Clicked.Base.Position + Vector3.new(0, 5, 0)
        Tweenservice:Create(Character.HumanoidRootPart, TweenInfo.new(14), goal):Play()
    end
})
tab:dropdown({
    Name = "yes",
    StartingText = "Number",
    Items = {
        {"One", 1},
        {"Two", 2},
        {"Three", 3}
    },
    Description = "amongu s",
    Callback = function(v)
        print(v, "clicked")
    end,
})
local cum = tab:slider({Callback = function(v)
    gui:set_status(v)
end})

tab:textbox({Callback = function(v)
    gui:prompt{Text = v}
end,})

tab:color_picker({
    Name = "your mom's color",
    Style = Library.ColorPickerStyles.Legacy,
    Description = "Click to adjust color...",
    Callback = function(color)
        print(color)
    end,
})