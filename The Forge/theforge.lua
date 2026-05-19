print("ðŸŒŠ Haze Loader initialized...")

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local function fetchScript()
    local gameId = tostring(game.GameId)
    local token = "8dbfa1f799ffc178dcaac99de5525e0a08e35ddb69fc11ba87c71bd4df1d1be6"
    local url = "https://haze.wtf/api/script?gameId=" .. gameId .. "&token=" .. token .. "&t=" .. tostring(os.time())

    print("ðŸ“¡ Fetching script for game: " .. gameId)
    local response = game:HttpGet(url)
    loadstring(response)()
end

fetchScript()
