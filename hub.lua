-- Função para checar se há atualizações no GitHub
local function CheckForUpdates()
    local url = "https://raw.githubusercontent.com/yanlioth/LiothXHub/main/hub.lua"  -- Link do seu script no GitHub
    local newScript = game:HttpGet(url)
    if newScript ~= game:GetService("HttpService"):JSONDecode(game:GetService("InsertService"):LoadAsset(url)) then
        -- Se houver atualização, execute a nova versão
        loadstring(newScript)()
    end
end

-- Chama a função para verificar atualizações
CheckForUpdates()
