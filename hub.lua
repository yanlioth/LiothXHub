local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Lioth X Hub — by @yanlioth",
    SubTitle = "Universal Roblox Scripts",
    TabWidth = 120,
    Size = UDim2.fromOffset(500, 350),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.K
})

-- Home Tab
local Home = Window:AddTab({ Title = "Home", Icon = "home" })
Home:AddParagraph({
    Title = "Bem-vindo!",
    Content = "Siga @yanlioth no TikTok\nMais novidades em breve!"
})

-- Scripts Tab
local Scripts = Window:AddTab({ Title = "Scripts", Icon = "code" })

Scripts:AddButton({
    Title = "🌀 Free Gamepass",
    Description = "Habilita gamepasses grátis em vários jogos",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BaconBossScript/Crazy/main/Crazy", true))()
    end
})

Scripts:AddButton({
    Title = "🕵️ Simple Spy V3",
    Description = "Explora eventos e funções do jogo em tempo real",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua"))()
    end
})

-- Games Tab
local Games = Window:AddTab({ Title = "Games", Icon = "gamepad" })

Games:AddButton({
    Title = "🔫 Dead Rails",
    Description = "Script exclusivo pro jogo Dead Rails",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NebulaHubOfc/Public/refs/heads/main/Loader.lua"))()
    end
})

Games:AddButton({
    Title = "🏃‍♂️ Evade (DarkRai)",
    Description = "Script avançado para o jogo Evade (by DarkRai)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Evade"))()
    end
})

-- Config & Save
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ "Watermark", "Keybind" })
InterfaceManager:SetFolder("LiothXHub")
SaveManager:SetFolder("LiothXHub")
SaveManager:BuildConfigSection(Home)
InterfaceManager:BuildInterfaceSection(Home)
SaveManager:LoadAutoloadConfig()
