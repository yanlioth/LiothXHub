repeat task.wait() until game:IsLoaded()

local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Window = Rayfield:CreateWindow({
    Name = "Lioth X Hub",
    LoadingTitle = "Lioth X Hub",
    LoadingSubtitle = "Carregando...",
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

local MainTab = Window:CreateTab("Main", 4483362458)
MainTab:CreateLabel("Bem-vindo ao Lioth X Hub")
MainTab:CreateLabel("by @yanlioth")

local ScriptsTab = Window:CreateTab("Scripts", 4483345998)

ScriptsTab:CreateButton({
    Name = "Infinite Yield (Admin Commands)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
    end,
})

ScriptsTab:CreateButton({
    Name = "Dead Rails",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/NebulaHubOfc/Public/refs/heads/main/Loader.lua"))()
    end,
})
