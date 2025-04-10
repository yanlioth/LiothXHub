local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local Window = Fluent:CreateWindow({
    Title = "Lioth X Hub | by @yanlioth",
    SubTitle = "Universal Scripts",
    TabWidth = 160,
    Size = UDim2.fromOffset(500, 400),
    Acrylic = true,
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.RightControl
})

local Tabs = {
    Home = Window:AddTab({ Title = "Home", Icon = "home" }),
    Scripts = Window:AddTab({ Title = "Scripts", Icon = "scroll" })
}

-- Scripts Universais
Tabs.Scripts:AddButton({
    Title = "Infinite Yield",
    Description = "Comandos de admin universais.",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end
})

Tabs.Scripts:AddButton({
    Title = "Simple Spy V3",
    Description = "Espião de scripts no jogo.",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua"))()
    end
})

Tabs.Scripts:AddButton({
    Title = "Dex Explorer",
    Description = "Explorador de propriedades do jogo.",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/peyton2465/Dex/master/out.lua"))()
    end
})

Tabs.Scripts:AddButton({
    Title = "Anti AFK",
    Description = "Evita ser kickado por inatividade.",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/3pwgzVtM"))()
    end
})

Tabs.Scripts:AddButton({
    Title = "CMD-X",
    Description = "Outro hub de comandos completo.",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/CMD-X/CMD-X/master/Source"))()
    end
})

Tabs.Scripts:AddButton({
    Title = "FireTouch (Auto Touch)",
    Description = "Toca tudo automaticamente.",
    Callback = function()
        loadstring(game:HttpGet("https://pastebin.com/raw/bxP8T69k"))()
    end
})
