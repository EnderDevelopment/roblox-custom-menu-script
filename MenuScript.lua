-- Menu Script

local Players = game:GetService("Players")

local function onPlayerAdded(player)
    local playerGui = player:WaitForChild("PlayerGui")

    local menuFrame = Instance.new("Frame")
    menuFrame.Name = "MenuFrame"
    menuFrame.Size = UDim2.new(0.5, 0, 0.5, 0)
    menuFrame.Position = UDim2.new(0.25, 0, 0.25, 0)
    menuFrame.BackgroundColor3 = Color3.new(0, 0, 0)
    menuFrame.BackgroundTransparency = 0.5
    menuFrame.Parent = playerGui

    local round1Button = Instance.new("TextButton")
    round1Button.Name = "Round1Button"
    round1Button.Size = UDim2.new(0.5, 0, 0.2, 0)
    round1Button.Position = UDim2.new(0.25, 0, 0.2, 0)
    round1Button.Text = "Round 1"
    round1Button.Parent = menuFrame

    local round3Button = Instance.new("TextButton")
    round3Button.Name = "Round3Button"
    round3Button.Size = UDim2.new(0.5, 0, 0.2, 0)
    round3Button.Position = UDim2.new(0.25, 0, 0.5, 0)
    round3Button.Text = "Round 3"
    round3Button.Parent = menuFrame

    round1Button.MouseButton1Click:Connect(function()
        -- Logic to start Round 1
        print("Round 1 started")
    end)

    round3Button.MouseButton1Click:Connect(function()
        -- Logic to start Round 3
        print("Round 3 started")
    end)
end

Players.PlayerAdded:Connect(onPlayerAdded)