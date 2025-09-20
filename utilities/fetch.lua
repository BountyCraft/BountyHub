local Repo = "https://github.com/BountyCraft/BountyHub/raw/main/"

local Fetch = {}

function Fetch:Get(path)
    local url = Repo .. path
    local ok, response = pcall(game.HttpGet, game, url)
    if not ok then
        error("HTTP request failed for " .. path .. ": " .. tostring(response))
    end

    local fn, err = loadstring(response)
    if not fn then
        error("Failed to compile " .. path .. ": " .. err)
    end
    return fn()
end

return Fetch