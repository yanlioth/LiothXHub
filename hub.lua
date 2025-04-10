-- Lioth X Hub - by @yanlioth 😎

-- Rayfield UI
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

-- Tela de loading estilosa
Rayfield:Notify({
    Title = "Lioth X Hub",
    Content = "Carregando o melhor hub do pedaço...",
    Duration = 3,
    Image = nil,
    Actions = {},
})

-- Janela principal
local Window = Rayfield:CreateWindow({
    Name = "Lioth X Hub | by @yanlioth",
    LoadingTitle = "Lioth X Hub",
    LoadingSubtitle = "Dominando o Roblox 😈",
    ConfigurationSaving = {
        Enabled = false,
    },
    Discord = {
        Enabled = false,
    },
    KeySystem = false,
})

-- Aba HOME
local Home = Window:CreateTab("🏠 Home", nil)
Home:CreateParagraph({Title = "Aviso", Content = "Bem-vindo ao Lioth X Hub! Use com sabedoria 😎"})
Home:CreateParagraph({Title = "Redes Sociais", Content = "Discord: @yanlioth\nYouTube: EM BREVE\nTikTok: EM BREVE"})

-- Aba SCRIPTS (universais)
local Scripts = Window:CreateTab("🧠 Scripts", nil)

Scripts:AddButton({
    Title = "📦 Dex Explorer",
    Description = "Interface avançada de exploração",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/peyton2465/DexExplorer/main/source.lua"))()
    end,
})

Scripts:AddButton({
    Title = "⚙️ Infinite Yield",
    Description = "Comandos admin em vários jogos",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end,
})

Scripts:AddButton({
    Title = "🔍 Simple Spy V3",
    Description = "Sniffador de scripts em tempo real",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua"))()
    end,
})

Scripts:AddButton({
    Title = "🆓 Free Gamepass",
    Description = "Gamepasses grátis (em jogos compatíveis)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BaconBossScript/Crazy/main/Crazy"))()
    end,
})

-- Aba GAMES
local Games = Window:CreateTab("🎮 Games", nil)

Games:AddButton({
    Title = "🚆 Dead Rails",
    Description = "Script completo para Dead Rails",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NebulaHubOfc/Public/refs/heads/main/Loader.lua"))()
    end,
})

Games:AddButton({
    Title = "🍉 Blox Fruits (Hoho Hub)",
    Description = "Auto-farm e teleportes",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
    end,
})

Games:AddButton({
    Title = "🐾 Pet Simulator X (Project WD)",
    Description = "Script completo para PSX",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ProjectWD/script/main/main.lua"))()
    end,
})

Games:AddButton({
    Title = "🚪 DOORS (Vynixius)",
    Description = "Auto win, ESP e mais",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Vynixu/Vynixius/main/Doors/Loader.lua"))()
    end,
})

Games:AddButton({
    Title = "🏃‍♂️ Evade (DarkRai)",
    Description = "Script para Evade (Darkrai-X)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Evade"))()
    end,
})
