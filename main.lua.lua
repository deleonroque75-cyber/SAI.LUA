-- // SAI MAIN CHEAT
-- // UI Library: Rayfield
-- // Key System: SAI-LOCCO-ACE-KEN

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- // Key System
Rayfield:Notify({
    Title = "Key System",
    Content = "Enter the correct key to access",
    Duration = 6.5
})

local KeyInput = "SAI-LOCCO-ACE-KEN"
local CorrectKey = false

-- // Window
local Window = Rayfield:CreateWindow({
    Name = "SAI MAIN CHEAT",
    LoadingTitle = "Loading SAI UI...",
    LoadingSubtitle = "by ACE",
    ConfigurationSaving = {
        Enabled = true,
        FolderName = "SaiConfig",
        FileName = "SaiHub"
    },
    Discord = {
        Enabled = false,
        Invite = "",
        RememberJoins = true
    },
    KeySystem = true,
    KeySettings = {
        Title = "SAI MAIN CHEAT | Key System",
        Subtitle = "Enter your key below",
        Note = "Key: " .. KeyInput,
        FileName = "SaiKey",
        SaveKey = true,
        GrabKeyFromSite = false,
        Key = KeyInput
    }
})

-- // Tabs
local MainTab = Window:CreateTab("Main", 4483362458)
local DupeGunTab = Window:CreateTab("Dupe Gun", 4483362458)
local SaiExecTab = Window:CreateTab("Sai Executor", 4483362458)

-- // MAIN TAB BUTTONS
MainTab:CreateButton({
    Name = "Remote Spy",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/BDhSQqUU"))()
    end
})

MainTab:CreateButton({
    Name = "Loop Bring All",
    Callback = function()
        while true do
            task.wait(1)
            for _,v in pairs(game.Players:GetPlayers()) do
                if v.Character and v.Character:FindFirstChild("HumanoidRootPart") then
                    v.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
        end
    end
})

MainTab:CreateButton({
    Name = "Big Head (Others Hitbox)",
    Callback = function()
        for _,v in pairs(game.Players:GetPlayers()) do
            if v.Character and v.Character:FindFirstChild("Head") then
                v.Character.Head.Size = Vector3.new(10,10,10)
                v.Character.Head.Transparency = 0.5
                v.Character.Head.CanCollide = false
            end
        end
    end
})

MainTab:CreateButton({
    Name = "Admin Commands",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Admin-Commands-12345"))()
    end
})

MainTab:CreateButton({
    Name = "Infinite Yield",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Infinite-Yield_500"))()
    end
})

MainTab:CreateButton({
    Name = "Music Exploit",
    Callback = function()
        loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-FE-Ac6-Music-Vulnerability-25536"))()
    end
})

MainTab:CreateButton({
    Name = "Sound Lag",
    Callback = function()
        while true do
            task.wait()
            local s = Instance.new("Sound", workspace)
            s.SoundId = "rbxassetid://9118823106"
            s:Play()
            s.Volume = 10
        end
    end
})

MainTab:CreateButton({
    Name = "Carry Exploit",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/CARRYONE"))()
    end
})

MainTab:CreateButton({
    Name = "Carry All Exploit (Carry Only)",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/CARRYALL"))()
    end
})

-- // DUPE GUN TAB
DupeGunTab:CreateButton({
    Name = "Open Gun Shop",
    Callback = function()
        local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
        local Frame = Instance.new("Frame", ScreenGui)
        Frame.Size = UDim2.new(0, 300, 0, 200)
        Frame.Position = UDim2.new(0.5, -150, 0.5, -100)
        Frame.BackgroundColor3 = Color3.fromRGB(25,25,25)

        local TextBox = Instance.new("TextBox", Frame)
        TextBox.Size = UDim2.new(0,200,0,50)
        TextBox.Position = UDim2.new(0.5,-100,0.3,-25)
        TextBox.PlaceholderText = "Enter Gun Amount"

        local Button = Instance.new("TextButton", Frame)
        Button.Size = UDim2.new(0,200,0,50)
        Button.Position = UDim2.new(0.5,-100,0.7,-25)
        Button.Text = "Add Money"

        Button.MouseButton1Click:Connect(function()
            local amount = tonumber(TextBox.Text)
            if amount then
                game.Players.LocalPlayer.leaderstats.Cash.Value = game.Players.LocalPlayer.leaderstats.Cash.Value + amount
            end
        end)
    end
})

-- // SAI EXECUTOR TAB
SaiExecTab:CreateParagraph({Title = "SAI EXECUTOR", Content = "Wala lang placeholder :)"})