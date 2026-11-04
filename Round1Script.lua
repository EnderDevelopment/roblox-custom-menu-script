-- Round 1 Script

local Players = game:GetService("Players")

local function onPlayerAdded(player)
    local leaderstats = Instance.new("Folder")
    leaderstats.Name = "leaderstats"
    leaderstats.Parent = player

    local round1Score = Instance.new("IntValue")
    round1Score.Name = "Round1Score"
    round1Score.Value = 0
    round1Score.Parent = leaderstats

    -- Example: Increase score when player touches a part
    local function onTouched(part)
        if part.Name == "ScorePart" then
            round1Score.Value = round1Score.Value + 1
        end
    end

    player.CharacterAdded:Connect(function(character)
        local humanoid = character:WaitForChild("Humanoid")
        humanoid.Touched:Connect(onTouched)
    end)
end

Players.PlayerAdded:Connect(onPlayerAdded)