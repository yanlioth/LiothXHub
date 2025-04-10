-- Lioth X Hub - Versão Completa e Decorada
-- Desenvolvido por: Kai (AI) | Criado por: @yanlioth

-- Função de loading clean (simulação)
local function LoadingScreen(duration)
    local startTime = tick()
    while tick() - startTime < duration do
        print("Carregando Lioth X Hub...")  -- Pode ser removido, usado apenas para debug
        task.wait(0.5)
    end
end

-- Espera o jogo carregar e roda a tela de loading
repeat task.wait() until game:IsLoaded()
LoadingScreen(2)  -- 2 segundos de loading clean

-- Carregar Fluent UI e módulos de configuração
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

-- Criação da janela principal do hub
local Window = Fluent:CreateWindow({
    Title = "Lioth X Hub",
    SubTitle = "Desenvolvido por: Kai (AI) | Criado por: @yanlioth",
    TabWidth = 160,
    Size = UDim2.fromOffset(540, 420),
    Acrylic = true,
    Theme = "Darker",  -- Tema dark clean; pode ser trocado futuramente
    MinimizeKey = Enum.KeyCode.RightControl
})

-- Função para detectar o jogo atual via PlaceId (exemplo simples)
local function DetectGame()
    local gameMap = {
        [2753915549] = "Blox Fruits",
        [155615604] = "Murder Mystery 2",
        [3944701803] = "Adopt Me",
        [155615604] = "Murder Mystery 2"
        -- Adicione outros PlaceIds e nomes conforme necessário
    }
    return gameMap[game.PlaceId] or "Desconhecido"
end

local currentGame = DetectGame()

-- Aba HOME
local HomeTab = Window:AddTab({ Title = "Home", Icon = "home" })
HomeTab:AddParagraph({
    Title = "📢 Aviso",
    Content = "Este hub está em desenvolvimento – algumas funções podem ser instáveis. Fique atento às atualizações!"
})
HomeTab:AddParagraph({
    Title = "👑 Desenvolvedor",
    Content = "Desenvolvido por: Kai (AI)\nCriado por: @yanlioth"
})
HomeTab:AddParagraph({
    Title = "🌐 Redes Sociais",
    Content = "Discord: yanlioth\nGitHub: https://github.com/yanlioth"
})
HomeTab:AddParagraph({
    Title = "🎮 Jogo Atual",
    Content = "Detectado: " .. currentGame
})
HomeTab:AddButton({
    Title = "Copiar Discord",
    Description = "Copia seu user pro clipboard.",
    Callback = function()
        setclipboard("yanlioth")
        Fluent:Notify({
            Title = "Copiado!",
            Content = "User do Discord copiado com sucesso.",
            Duration = 4
        })
    end
})

-- Aba SCRIPTS (Universais)
local ScriptsTab = Window:AddTab({ Title = "Scripts", Icon = "code" })

local universalScripts = {
    ["🛠️ Infinite Yield"] = "https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source",
    ["💎 Free Gamepass"] = "https://raw.githubusercontent.com/BaconBossScript/Crazy/main/Crazy",
    ["🔍 Simple Spy V3"] = "https://raw.githubusercontent.com/infyiff/backup/main/SimpleSpyV3/main.lua",
    ["🛩️ R15 Animated Fly"] = "https://github.com/Sinister-Scripts/Roblox-Exploits/raw/refs/heads/main/FE-Animated-Mobile-Fly"
}

for name, url in pairs(universalScripts) do
    ScriptsTab:AddButton({
        Title = name,
        Description = "Executa o script",
        Callback = function()
            loadstring(game:HttpGet(url))()
        end
    })
end

-- Aba GAMES (Scripts de jogos)
local GamesTab = Window:AddTab({ Title = "Games", Icon = "gamepad-2" })

local gameScripts = {
    ["🚂 Dead Rails"] = "https://raw.githubusercontent.com/NebulaHubOfc/Public/refs/heads/main/Loader.lua",
    ["😈 Evade (DarkRai)"] = "https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Evade"
}

for name, url in pairs(gameScripts) do
    GamesTab:AddButton({
        Title = name,
        Description = "Executa o script do jogo",
        Callback = function()
            loadstring(game:HttpGet(url))()
        end
    })
end

-- Aba FAVORITOS (inicialmente com mensagem padrão; a funcionalidade dinâmica pode ser expandida futuramente)
local FavoritesTab = Window:AddTab({ Title = "Favoritos", Icon = "star" })
FavoritesTab:AddParagraph({
    Title = "Favoritos",
    Content = "Nenhum favorito adicionado. Em breve, você poderá salvar seus scripts preferidos aqui!"
})

-- Aba CONFIGS (para salvar configurações e trocar temas)
local ConfigsTab = Window:AddTab({ Title = "Configs", Icon = "settings" })
SaveManager:SetLibrary(Fluent)
InterfaceManager:SetLibrary(Fluent)
SaveManager:SetFolder("LiothXHub")
InterfaceManager:SetFolder("LiothXHub")
-- Constrói a seção de configurações e temas na aba Configs
SaveManager:BuildConfigSection(ConfigsTab)
InterfaceManager:BuildInterfaceSection(ConfigsTab)
SaveManager:LoadAutoloadConfig()

-- Fim do hub.
