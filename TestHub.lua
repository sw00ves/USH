local Library = loadstring(game:HttpGet('https://raw.githubusercontent.com/Mapple7777/Visual-UI-Library/main/Source.lua'))()
local Window = Library:CreateWindow('Test Hub', 'Tapping Simulator')


getgenv().autotap = true
getgenv().chooseEgg = true
getgenv().autoHatch = true




-- functions

function autotap()
    while getgenv().autotap == true do
        game:GetService("ReplicatedStorage").Events.Tap:FireServer()
        wait(.0000000000000000000000000000000000000000000000001)
    end
end

function autoHatch()
    while getgenv().autoHatch == true do
        game:GetService("ReplicatedStorage").Events.HatchEgg:InvokeServer({},getgenv().chooseEgg,1)
        wait(.00000000000000000000000000000000000000000000000001)
    end
end









local mainTab = Window:CreateTab('Main', true, 'rbxassetid://3926305904', Vector2.new(484, 44), Vector2.new(36, 36))

local Section = mainTab:CreateSection('Auto Farm')


-- toggles (main tab)


local Toggle = Section:CreateToggle('Auto Tap', true, Color3.fromRGB(0, 125, 255), 0.25, function(Value)
    getgenv().autotap = Value
    autotap()
end)

local Toggle = Section:CreateToggle('Auto Hatch', true, Color3.fromRGB(0, 125, 255), 0.25, function(Value)
    getgenv().autoHatch = Value
    autoHatch()
end)


-- dropdowns (main tab)


local Dropdown = Section:CreateDropdown('Choose Egg', {'Starter', 'Wood Egg', 'Jungle Egg', 'Forest Egg', 'Bee Egg', 'Swamp Egg', 'Snow Egg', 'Desert Egg', 'Death Egg', 'Beach Egg', 'Dominus Egg', 'Mine Egg', 'Cloud Egg', 'Coral Egg', 'Dark Egg', 'Fire Egg', 'Underworld Egg', 'Molten Egg', 'Magma Egg', 'Blue Magma Egg', 'Secret Magma Egg', 'Bone Egg', 'Purple Magma Egg', 'Yellow Magma Egg', 'Red Magma'}, 0.25, function(Value)
    getgenv().chooseEgg = Value
end)