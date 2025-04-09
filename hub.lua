--[[  
⠀⠀⣴⣶⣶⣶⣦⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀ Lioth X Hub  
⠀⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀ by @yanlioth 😈  
⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀  
⠀⠀⠈⠙⠛⠻⠿⠿⠿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀  
]]--

local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "Lioth X Hub",
    LoadingTitle = "Lioth X Hub",
    LoadingSubtitle = "by @yanlioth 😈",
    ConfigurationSaving = {
        Enabled = false,
    },
    KeySystem = false,
})

-- 🗂️ Aba principal de scripts
local ScriptTab = Window:CreateTab("Scripts", 4483362458) -- Ícone aleatório

-- Infinite Yield
ScriptTab:CreateButton({
    Name = "Infinite Yield",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end,
})

-- Free Gamepass
ScriptTab:CreateButton({
    Name = "Free Gamepass (vários jogos)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BaconBossScript/Crazy/main/Crazy", true))()
    end,
})

-- Dead Rails
ScriptTab:CreateButton({
    Name = "Dead Rails (Com Key)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NebulaHubOfc/Public/refs/heads/main/Loader.lua"))()
    end,
})
