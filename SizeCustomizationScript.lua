-- Size Customization Script

local Players = game:GetService("Players")

local function onPlayerAdded(player)
    local playerGui = player:WaitForChild("PlayerGui")

    local sizeFrame = Instance.new("Frame")
    sizeFrame.Name = "SizeFrame"
    sizeFrame.Size = UDim2.new(0.3, 0, 0.3, 0)
    sizeFrame.Position = UDim2.new(0.35, 0, 0.35, 0)
    sizeFrame.BackgroundColor3 = Color3.new(0, 0, 0)
    sizeFrame.BackgroundTransparency = 0.5
    sizeFrame.Parent = playerGui

    local sizeSlider = Instance.new("TextButton")
    sizeSlider.Name = "SizeSlider"
    sizeSlider.Size = UDim2.new(0.8, 0, 0.2, 0)
    sizeSlider.Position = UDim2.new(0.1, 0, 0.4, 0)
    sizeSlider.Text = "Size: 1"
    sizeSlider.Parent = sizeFrame

    local sizeValue = 1

    sizeSlider.MouseButton1Click:Connect(function()
        sizeValue = sizeValue + 0.1
        sizeSlider.Text = "Size: " .. sizeValue
        -- Logic to change player size
        if player.Character then
            local humanoid = player.Character:FindFirstChild("Humanoid")
            if humanoid then
                humanoid:ChangeState(Enum.HumanoidStateType.Running)
                humanoid.WalkSpeed = 16 * sizeValue
                player.Character.HumanoidRootPart.Size = Vector3.new(2 * sizeValue, 2 * sizeValue, 1 * sizeValue)
            end
        end
    end)
end

Players.PlayerAdded:Connect(onPlayerAdded)