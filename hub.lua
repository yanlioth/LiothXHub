local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Lioth X Hub",
    SubTitle = "by @yanlioth",
    TabWidth = 160,
    Size = UDim2.fromOffset(520, 400),
    Acrylic = true,
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightControl
})

-- HOME
local HomeTab = Window:AddTab({ Title = "Home", Icon = "home" })
HomeTab:AddParagraph({
    Title = "📢 Aviso",
    Content = "Esse hub está em desenvolvimento. Algumas funções podem ser instáveis.\nFique atento às atualizações!"
})
HomeTab:AddParagraph({
    Title = "👑 Desenvolvedor",
    Content = "Criado por: @yanlioth"
})
HomeTab:AddParagraph({
    Title = "🌐 Redes Sociais",
    Content = "Discord: yanlioth\nGitHub: github.com/yanlioth"
})
HomeTab:AddButton({
    Title = "Copiar Discord",
    Description = "Copia seu user pro clipboard",
    Callback = function()
        setclipboard("yanlioth")
        Fluent:Notify({
            Title = "Copiado!",
            Content = "User do Discord copiado com sucesso.",
            Duration = 4
        })
    end
})

-- SCRIPTS UNIVERSAIS
local ScriptTab = Window:AddTab({ Title = "Scripts", Icon = "code" })

local universalScripts = {
    ["🛠️ Infinite Yield"] = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",
    ["💎 Free Gamepass"] = "https://raw.githubusercontent.com/BaconBossScript/Crazy/main/Crazy",
    ["🔍 Simple Spy V3"] = "https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua",
    ["🛩️ R15 Animated Fly"] = "https://github.com/Sinister-Scripts/Roblox-Exploits/raw/refs/heads/main/FE-Animated-Mobile-Fly"
}

for name, url in pairs(universalScripts) do
    ScriptTab:AddButton({
        Title = name,
        Description = "Executar script",
        Callback = function()
            loadstring(game:HttpGet(url))()
        end
    })
end

-- GAMES
local GamesTab = Window:AddTab({ Title = "Games", Icon = "gamepad-2" })

local gameScripts = {
    ["🚂 Dead Rails"] = "https://raw.githubusercontent.com/NebulaHubOfc/Public/refs/heads/main/Loader.lua",
    ["😈 Evade (DarkRai)"] = "https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Evade"
}

for name, url in pairs(gameScripts) do
    GamesTab:AddButton({
        Title = name,
        Description = "Executar script do jogo",
        Callback = function()
            loadstring(game:HttpGet(url))()
        end
    })
end

-- CONFIG E TEMA (fixado no final mesmo)
local ConfigTab = Window:AddTab({ Title = "Configs", Icon = "settings" })

SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)

InterfaceManager:SetFolder("LiothXHub")
SaveManager:SetFolder("LiothXHub")
SaveManager:BuildConfigSection(ConfigTab)
InterfaceManager:BuildInterfaceSection(ConfigTab)

SaveManager:LoadAutoloadConfig()
