-- PlayerInterface.lua

local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")

local function onPlayerAdded(player)
    -- Player interface logic
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "PlayerInterface"
    screenGui.Parent = player:WaitForChild("PlayerGui")

    -- Example: Create a simple UI element
    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(0, 200, 0, 50)
    textLabel.Position = UDim2.new(0.5, -100, 0.5, -25)
    textLabel.Text = "Welcome, " .. player.Name .. "!"
    textLabel.Parent = screenGui

    print("Player interface created for " .. player.Name .. ".")
end

Players.PlayerAdded:Connect(onPlayerAdded)