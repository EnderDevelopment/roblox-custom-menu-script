-- Round 3 Script

local Players = game:GetService("Players")

local function onPlayerAdded(player)
    local leaderstats = Instance.new("Folder")
    leaderstats.Name = "leaderstats"
    leaderstats.Parent = player

    local round3Score = Instance.new("IntValue")
    round3Score.Name = "Round3Score"
    round3Score.Value = 0
    round3Score.Parent = leaderstats

    -- Example: Increase score when player touches a part
    local function onTouched(part)
        if part.Name == "ScorePart" then
            round3Score.Value = round3Score.Value + 1
        end
    end

    player.CharacterAdded:Connect(function(character)
        local humanoid = character:WaitForChild("Humanoid")
        humanoid.Touched:Connect(onTouched)
    end)
end

Players.PlayerAdded:Connect(onPlayerAdded)