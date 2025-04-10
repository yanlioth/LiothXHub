repeat task.wait() until game:IsLoaded()
task.wait(2)

-- Carregar Rayfield
local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

-- Criar Janela Principal
local Window = Rayfield:CreateWindow({
    Name = "Lioth X Hub 🖤",
    LoadingTitle = "Carregando...",
    LoadingSubtitle = "Invadindo servidores Roblox 😈",
    ConfigurationSaving = {
        Enabled = false,
    },
    KeySystem = true,
    KeySettings = {
        Title = "Lioth X Hub | Key System",
        Subtitle = "Insira a key para acessar",
        Note = "Key: liothhub2025",
        SaveKey = false,
        Key = {"liothhub2025"},
    },
})

task.wait(1)

-- 🏠 HOME: Avisos, redes sociais, etc
local HomeTab = Window:CreateTab("Home", 4483362458)
HomeTab:CreateLabel("Bem-vindo ao Lioth X Hub")
HomeTab:CreateLabel("Desenvolvido por @yanlioth")
HomeTab:CreateParagraph({
    Title = "🌐 Redes Sociais",
    Content = "Discord: yanlioth\nYouTube: em breve...\nTwitter: em breve..."
})
HomeTab:CreateParagraph({
    Title = "📢 Avisos",
    Content = "Scripts em constante atualização.\nUse com responsabilidade! 😎"
})

-- 💻 MAIN: Scripts universais
local MainTab = Window:CreateTab("Main", 4483345998)
MainTab:CreateLabel("Scripts Universais")

MainTab:CreateSection("📜 Scripts Universais")

MainTab:CreateButton({
    Name = "Infinite Yield",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end,
})

MainTab:CreateButton({
    Name = "Free Gamepass",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/BaconBossScript/Crazy/main/Crazy", true))()
    end,
})

-- 🎮 GAMES: Scripts de jogos específicos
local GamesTab = Window:CreateTab("Games", 4483362458)

GamesTab:CreateSection("🚂 Dead Rails")

GamesTab:CreateButton({
    Name = "Dead Rails Script",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NebulaHubOfc/Public/refs/heads/main/Loader.lua"))()
    end,
})
