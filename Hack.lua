local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Abyss Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "Unviseral Script📌"})

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]

local Tab = Window:MakeTab({
	Name = "Main Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

local Section = Tab:AddSection({
	Name = "Main Scripts V3rx"
})

--[[
Name = <string> - The name of the section.
]]

OrionLib:MakeNotification({
	Name = "Executed!",
	Content = "You have successfully executed the script!",
	Image = "rbxassetid://4483345998",
	Time = 5
})

--[[
Title = <string> - The title of the notification.
Content = <string> - The content of the notification.
Image = <string> - The icon of the notification.
Time = <number> - The duration of the notfication.
]]

Tab:AddButton({
	Name = "Kick Panell",
	Callback = function()
      		-- Kick Panel Script for Roblox
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "KickPanel"
screenGui.ResetOnSpawn = false
screenGui.Parent = PlayerGui

-- Main Frame (Kick Panel)
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 400, 0, 500)
mainFrame.Position = UDim2.new(0.5, -200, 0.5, -250)
mainFrame.BackgroundColor3 = Color3.fromRGB(60, 80, 95)
mainFrame.BackgroundTransparency = 0.15
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = screenGui

-- Add rounded corners
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 8)
corner.Parent = mainFrame

-- Title Label
local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "Title"
titleLabel.Size = UDim2.new(1, 0, 0, 50)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "KICK PANEL"
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 32
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.TextStrokeTransparency = 0.5
titleLabel.Parent = mainFrame

-- Add padding to title
local titlePadding = Instance.new("UIPadding")
titlePadding.PaddingLeft = UDim.new(0, 20)
titlePadding.Parent = titleLabel

-- Creator Label
local creatorLabel = Instance.new("TextLabel")
creatorLabel.Name = "Creator"
creatorLabel.Size = UDim2.new(1, 0, 0, 20)
creatorLabel.Position = UDim2.new(0, 0, 0, 50)
creatorLabel.BackgroundTransparency = 1
creatorLabel.Text = "Created by Abyss Hub"
creatorLabel.Font = Enum.Font.Gotham
creatorLabel.TextSize = 14
creatorLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
creatorLabel.TextXAlignment = Enum.TextXAlignment.Left
creatorLabel.Parent = mainFrame

-- Add padding to creator label
local creatorPadding = Instance.new("UIPadding")
creatorPadding.PaddingLeft = UDim.new(0, 20)
creatorPadding.Parent = creatorLabel

-- Status Label
local statusLabel = Instance.new("TextLabel")
statusLabel.Name = "StatusLabel"
statusLabel.Size = UDim2.new(1, -80, 0, 20)
statusLabel.Position = UDim2.new(0, 0, 0, 75)
statusLabel.BackgroundTransparency = 1
statusLabel.Text = ""
statusLabel.Font = Enum.Font.GothamBold
statusLabel.TextSize = 13
statusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
statusLabel.TextXAlignment = Enum.TextXAlignment.Left
statusLabel.Parent = mainFrame

-- Add padding to status label
local statusPadding = Instance.new("UIPadding")
statusPadding.PaddingLeft = UDim.new(0, 20)
statusPadding.Parent = statusLabel

-- Close Button (X)
local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Size = UDim2.new(0, 50, 0, 50)
closeButton.Position = UDim2.new(1, -60, 0, 10)
closeButton.BackgroundColor3 = Color3.fromRGB(180, 60, 60)
closeButton.BorderSizePixel = 0
closeButton.Text = "X"
closeButton.Font = Enum.Font.GothamBold
closeButton.TextSize = 28
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Parent = mainFrame

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 6)
closeCorner.Parent = closeButton

-- Close button functionality
closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- Players List Container
local playersListFrame = Instance.new("ScrollingFrame")
playersListFrame.Name = "PlayersListFrame"
playersListFrame.Size = UDim2.new(1, -40, 0, 310)
playersListFrame.Position = UDim2.new(0, 20, 0, 105)
playersListFrame.BackgroundColor3 = Color3.fromRGB(40, 50, 60)
playersListFrame.BackgroundTransparency = 0.3
playersListFrame.BorderSizePixel = 0
playersListFrame.ScrollBarThickness = 6
playersListFrame.ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255)
playersListFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
playersListFrame.Parent = mainFrame

local playersCorner = Instance.new("UICorner")
playersCorner.CornerRadius = UDim.new(0, 6)
playersCorner.Parent = playersListFrame

-- UI List Layout for players
local listLayout = Instance.new("UIListLayout")
listLayout.SortOrder = Enum.SortOrder.Name
listLayout.Padding = UDim.new(0, 5)
listLayout.Parent = playersListFrame

-- Selected player variable
local selectedPlayer = nil
local selectedPlayerFrame = nil

-- Function to deselect current player
local function deselectPlayer()
    if selectedPlayerFrame then
        selectedPlayerFrame.BorderColor3 = Color3.fromRGB(50, 60, 70)
        selectedPlayerFrame.BorderSizePixel = 3
        selectedPlayerFrame.BackgroundColor3 = Color3.fromRGB(50, 60, 70)
    end
    selectedPlayer = nil
    selectedPlayerFrame = nil
end

-- Function to show status message
local function showStatus(message, isError)
    statusLabel.Text = message
    if isError then
        statusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
    else
        statusLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
    end
    
    spawn(function()
        wait(3)
        statusLabel.Text = ""
    end)
end

-- Function to create player card
local function createPlayerCard(player)
    local playerCard = Instance.new("TextButton")
    playerCard.Name = player.Name
    playerCard.Size = UDim2.new(1, -10, 0, 70)
    playerCard.BackgroundColor3 = Color3.fromRGB(50, 60, 70)
    playerCard.BackgroundTransparency = 0.2
    playerCard.BorderSizePixel = 3
    playerCard.BorderColor3 = Color3.fromRGB(50, 60, 70)
    playerCard.AutoButtonColor = false
    playerCard.Text = ""
    playerCard.Parent = playersListFrame
    
    local cardCorner = Instance.new("UICorner")
    cardCorner.CornerRadius = UDim.new(0, 6)
    cardCorner.Parent = playerCard
    
    -- Player Avatar
    local avatar = Instance.new("ImageLabel")
    avatar.Name = "Avatar"
    avatar.Size = UDim2.new(0, 50, 0, 50)
    avatar.Position = UDim2.new(0, 10, 0.5, -25)
    avatar.BackgroundTransparency = 1
    avatar.Parent = playerCard
    
    local avatarCorner = Instance.new("UICorner")
    avatarCorner.CornerRadius = UDim.new(0, 8)
    avatarCorner.Parent = avatar
    
    -- Load avatar asynchronously
    spawn(function()
        local success, thumbnail = pcall(function()
            return Players:GetUserThumbnailAsync(player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
        end)
        if success then
            avatar.Image = thumbnail
        end
    end)
    
    -- Player Name
    local nameLabel = Instance.new("TextLabel")
    nameLabel.Size = UDim2.new(1, -70, 1, 0)
    nameLabel.Position = UDim2.new(0, 70, 0, 0)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = player.Name
    nameLabel.Font = Enum.Font.GothamBold
    nameLabel.TextSize = 16
    nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    nameLabel.TextXAlignment = Enum.TextXAlignment.Left
    nameLabel.TextWrapped = true
    nameLabel.Parent = playerCard
    
    -- Click to select player
    playerCard.MouseButton1Click:Connect(function()
        -- Deselect previous player
        deselectPlayer()
        
        -- Select new player
        selectedPlayer = player
        selectedPlayerFrame = playerCard
        playerCard.BorderColor3 = Color3.fromRGB(255, 220, 0)
        playerCard.BorderSizePixel = 3
        playerCard.BackgroundColor3 = Color3.fromRGB(70, 85, 100)
        
        print("Selected player: " .. player.Name)
    end)
    
    -- Hover effects
    playerCard.MouseEnter:Connect(function()
        if playerCard ~= selectedPlayerFrame then
            playerCard.BackgroundColor3 = Color3.fromRGB(60, 75, 90)
        end
    end)
    
    playerCard.MouseLeave:Connect(function()
        if playerCard ~= selectedPlayerFrame then
            playerCard.BackgroundColor3 = Color3.fromRGB(50, 60, 70)
        end
    end)
    
    return playerCard
end

-- Function to update canvas size
local function updateCanvasSize()
    local contentSize = listLayout.AbsoluteContentSize
    playersListFrame.CanvasSize = UDim2.new(0, 0, 0, contentSize.Y + 10)
end

-- Add all current players
for _, player in ipairs(Players:GetPlayers()) do
    createPlayerCard(player)
end

-- Update canvas size initially
updateCanvasSize()

-- Listen for canvas size changes
listLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateCanvasSize)

-- Add new players when they join
Players.PlayerAdded:Connect(function(player)
    createPlayerCard(player)
end)

-- Remove players when they leave
Players.PlayerRemoving:Connect(function(player)
    local card = playersListFrame:FindFirstChild(player.Name)
    if card then
        if selectedPlayer == player then
            deselectPlayer()
        end
        card:Destroy()
    end
end)

-- Kick Button
local kickButton = Instance.new("TextButton")
kickButton.Name = "KickButton"
kickButton.Size = UDim2.new(1, -40, 0, 50)
kickButton.Position = UDim2.new(0, 20, 1, -65)
kickButton.BackgroundColor3 = Color3.fromRGB(180, 60, 60)
kickButton.BorderSizePixel = 0
kickButton.Text = "KICK PLAYER"
kickButton.Font = Enum.Font.GothamBold
kickButton.TextSize = 24
kickButton.TextColor3 = Color3.fromRGB(255, 255, 255)
kickButton.Parent = mainFrame

local kickCorner = Instance.new("UICorner")
kickCorner.CornerRadius = UDim.new(0, 6)
kickCorner.Parent = kickButton

-- Kick button hover effects
kickButton.MouseEnter:Connect(function()
    kickButton.BackgroundColor3 = Color3.fromRGB(200, 80, 80)
end)

kickButton.MouseLeave:Connect(function()
    kickButton.BackgroundColor3 = Color3.fromRGB(180, 60, 60)
end)

-- Kick button functionality
kickButton.MouseButton1Click:Connect(function()
    if selectedPlayer then
        if selectedPlayer == LocalPlayer then
            showStatus("Cannot kick yourself!", true)
            return
        end
        
        -- Attempt to kick the player
        local success, error = pcall(function()
            selectedPlayer:Kick("You have been kicked by " .. LocalPlayer.Name)
        end)
        
        if success then
            showStatus("Kicked " .. selectedPlayer.Name, false)
            deselectPlayer()
        else
            showStatus("Failed to kick player - No permission", true)
            print("Kick error: " .. tostring(error))
        end
    else
        showStatus("Please select a player first!", true)
    end
end)

print("Kick Panel loaded successfully!")
print("Select a player and click KICK PLAYER to kick them from the server.")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = "Admin Panel",
	Callback = function()
      		-- Admin Panel Script for Roblox
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AdminPanel"
screenGui.ResetOnSpawn = false
screenGui.Parent = PlayerGui

-- ========================================
-- BYPASS/TOGGLE UI
-- ========================================

-- Bypass Toggle Frame
local bypassFrame = Instance.new("Frame")
bypassFrame.Name = "BypassFrame"
bypassFrame.Size = UDim2.new(0, 280, 0, 100)
bypassFrame.Position = UDim2.new(0.5, -140, 0.5, -50)
bypassFrame.BackgroundColor3 = Color3.fromRGB(50, 65, 80)
bypassFrame.BackgroundTransparency = 0.15
bypassFrame.BorderSizePixel = 0
bypassFrame.Active = true
bypassFrame.Draggable = true
bypassFrame.Parent = screenGui

local bypassCorner = Instance.new("UICorner")
bypassCorner.CornerRadius = UDim.new(0, 12)
bypassCorner.Parent = bypassFrame

-- Bypass Title
local bypassTitle = Instance.new("TextLabel")
bypassTitle.Size = UDim2.new(1, 0, 0, 35)
bypassTitle.Position = UDim2.new(0, 0, 0, 10)
bypassTitle.BackgroundTransparency = 1
bypassTitle.Text = "Admin Panel Bypass"
bypassTitle.Font = Enum.Font.GothamBold
bypassTitle.TextSize = 18
bypassTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
bypassTitle.Parent = bypassFrame

-- Bypass Subtitle
local bypassSubtitle = Instance.new("TextLabel")
bypassSubtitle.Size = UDim2.new(1, -100, 0, 20)
bypassSubtitle.Position = UDim2.new(0, 10, 0, 45)
bypassSubtitle.BackgroundTransparency = 1
bypassSubtitle.Text = "Click to unlock Admin Panel"
bypassSubtitle.Font = Enum.Font.Gotham
bypassSubtitle.TextSize = 13
bypassSubtitle.TextColor3 = Color3.fromRGB(200, 200, 200)
bypassSubtitle.TextXAlignment = Enum.TextXAlignment.Left
bypassSubtitle.Parent = bypassFrame

-- Toggle Button
local toggleButton = Instance.new("TextButton")
toggleButton.Name = "ToggleButton"
toggleButton.Size = UDim2.new(0, 60, 0, 30)
toggleButton.Position = UDim2.new(1, -70, 0, 55)
toggleButton.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
toggleButton.BorderSizePixel = 0
toggleButton.Text = ""
toggleButton.Parent = bypassFrame

local toggleCorner = Instance.new("UICorner")
toggleCorner.CornerRadius = UDim.new(1, 0)
toggleCorner.Parent = toggleButton

-- Toggle Circle
local toggleCircle = Instance.new("Frame")
toggleCircle.Name = "Circle"
toggleCircle.Size = UDim2.new(0, 24, 0, 24)
toggleCircle.Position = UDim2.new(0, 3, 0.5, -12)
toggleCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
toggleCircle.BorderSizePixel = 0
toggleCircle.Parent = toggleButton

local circleCorner = Instance.new("UICorner")
circleCorner.CornerRadius = UDim.new(1, 0)
circleCorner.Parent = toggleCircle

-- Toggle state
local isToggled = false

-- ========================================
-- MAIN ADMIN PANEL
-- ========================================

-- Main Frame (Admin Panel) - Initially hidden
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 800, 0, 600)
mainFrame.Position = UDim2.new(0.5, -400, 0.5, -300)
mainFrame.BackgroundColor3 = Color3.fromRGB(60, 80, 95)
mainFrame.BackgroundTransparency = 0.15
mainFrame.BorderSizePixel = 0
mainFrame.Visible = false
mainFrame.Parent = screenGui

-- Add rounded corners
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 8)
corner.Parent = mainFrame

-- Title Label
local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "Title"
titleLabel.Size = UDim2.new(1, 0, 0, 40)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "ADMIN PANEL"
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 36
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.TextStrokeTransparency = 0.5
titleLabel.Parent = mainFrame

-- Add padding to title
local titlePadding = Instance.new("UIPadding")
titlePadding.PaddingLeft = UDim.new(0, 20)
titlePadding.Parent = titleLabel

-- Creator Label
local creatorLabel = Instance.new("TextLabel")
creatorLabel.Name = "Creator"
creatorLabel.Size = UDim2.new(1, 0, 0, 20)
creatorLabel.Position = UDim2.new(0, 0, 0, 40)
creatorLabel.BackgroundTransparency = 1
creatorLabel.Text = "Created by Abyss Hub"
creatorLabel.Font = Enum.Font.Gotham
creatorLabel.TextSize = 14
creatorLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
creatorLabel.TextXAlignment = Enum.TextXAlignment.Left
creatorLabel.Parent = mainFrame

-- Add padding to creator label
local creatorPadding = Instance.new("UIPadding")
creatorPadding.PaddingLeft = UDim.new(0, 20)
creatorPadding.Parent = creatorLabel

-- Command Status Label
local statusLabel = Instance.new("TextLabel")
statusLabel.Name = "StatusLabel"
statusLabel.Size = UDim2.new(1, -140, 0, 20)
statusLabel.Position = UDim2.new(0, 0, 0, 60)
statusLabel.BackgroundTransparency = 1
statusLabel.Text = ""
statusLabel.Font = Enum.Font.GothamBold
statusLabel.TextSize = 13
statusLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
statusLabel.TextXAlignment = Enum.TextXAlignment.Left
statusLabel.Parent = mainFrame

-- Add padding to status label
local statusPadding = Instance.new("UIPadding")
statusPadding.PaddingLeft = UDim.new(0, 20)
statusPadding.Parent = statusLabel

-- Function to show command status
local function showCommandStatus(commandName, playerName)
    statusLabel.Text = "Ran " .. commandName .. " on " .. playerName
    statusLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
    
    wait(3)
    statusLabel.Text = ""
end

-- Close Button (X)
local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Size = UDim2.new(0, 60, 0, 60)
closeButton.Position = UDim2.new(1, -70, 0, 10)
closeButton.BackgroundColor3 = Color3.fromRGB(180, 60, 60)
closeButton.BorderSizePixel = 0
closeButton.Text = "X"
closeButton.Font = Enum.Font.GothamBold
closeButton.TextSize = 32
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Parent = mainFrame

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 6)
closeCorner.Parent = closeButton

-- Command Input Frame
local commandFrame = Instance.new("Frame")
commandFrame.Name = "CommandFrame"
commandFrame.Size = UDim2.new(1, -280, 0, 80)
commandFrame.Position = UDim2.new(0, 20, 0, 80)
commandFrame.BackgroundColor3 = Color3.fromRGB(40, 50, 60)
commandFrame.BackgroundTransparency = 0.3
commandFrame.BorderSizePixel = 0
commandFrame.Parent = mainFrame

local cmdCorner = Instance.new("UICorner")
cmdCorner.CornerRadius = UDim.new(0, 6)
cmdCorner.Parent = commandFrame

-- Type Command Label
local typeLabel = Instance.new("TextLabel")
typeLabel.Size = UDim2.new(1, 0, 0, 25)
typeLabel.Position = UDim2.new(0, 10, 0, 5)
typeLabel.BackgroundTransparency = 1
typeLabel.Text = "Type Command"
typeLabel.Font = Enum.Font.GothamBold
typeLabel.TextSize = 18
typeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
typeLabel.TextXAlignment = Enum.TextXAlignment.Left
typeLabel.Parent = commandFrame

-- Command TextBox
local commandBox = Instance.new("TextBox")
commandBox.Name = "CommandInput"
commandBox.Size = UDim2.new(1, -20, 0, 40)
commandBox.Position = UDim2.new(0, 10, 0, 30)
commandBox.BackgroundTransparency = 1
commandBox.Text = ""
commandBox.PlaceholderText = "Enter command"
commandBox.Font = Enum.Font.Gotham
commandBox.TextSize = 16
commandBox.TextColor3 = Color3.fromRGB(180, 180, 180)
commandBox.PlaceholderColor3 = Color3.fromRGB(100, 100, 100)
commandBox.TextXAlignment = Enum.TextXAlignment.Left
commandBox.ClearTextOnFocus = false
commandBox.Parent = commandFrame

-- Command Buttons Container (under command box)
local buttonsFrame = Instance.new("Frame")
buttonsFrame.Name = "ButtonsFrame"
buttonsFrame.Size = UDim2.new(1, -280, 0, 420)
buttonsFrame.Position = UDim2.new(0, 20, 0, 170)
buttonsFrame.BackgroundTransparency = 1
buttonsFrame.Parent = mainFrame

-- Command buttons data
local commands = {
    {name = "rocket", icon = "🚀", row = 1, col = 1},
    {name = "ragdoll", icon = "🏃", row = 1, col = 2},
    {name = "balloon", icon = "🎈", row = 2, col = 1},
    {name = "inverse", icon = "🔄", row = 2, col = 2},
    {name = "nightvision", icon = "👁", row = 3, col = 1},
    {name = "jail", icon = "🏛", row = 3, col = 2},
    {name = "control", icon = "🎭", row = 4, col = 1},
    {name = "tiny", icon = "🐜", row = 4, col = 2},
    {name = "jumpscare", icon = "👻", row = 5, col = 1},
    {name = "morph", icon = "🧠", row = 5, col = 2},
}

-- Selected player variable
local selectedPlayer = nil
local selectedPlayerFrame = nil

-- ESP Highlights storage
local espHighlights = {}

-- Command execution functions
local function executeRocket(player)
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local hrp = player.Character.HumanoidRootPart
        local bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.Velocity = Vector3.new(0, 200, 0)
        bodyVelocity.MaxForce = Vector3.new(0, math.huge, 0)
        bodyVelocity.Parent = hrp
        
        wait(3)
        bodyVelocity:Destroy()
        wait(1)
        player.Character:BreakJoints()
    end
end

local function executeRagdoll(player)
    if player.Character then
        player.Character:BreakJoints()
    end
end

local function executeBalloon(player)
    if player.Character and player.Character:FindFirstChild("Head") then
        local head = player.Character.Head
        local originalSize = head.Size
        
        head.Size = Vector3.new(10, 10, 10)
        
        local bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.Velocity = Vector3.new(0, 50, 0)
        bodyVelocity.MaxForce = Vector3.new(0, math.huge, 0)
        bodyVelocity.Parent = player.Character:FindFirstChild("HumanoidRootPart")
        
        wait(10)
        
        if bodyVelocity then bodyVelocity:Destroy() end
        if head then head.Size = originalSize end
    end
end

local function executeNightVision(player)
    if player.Character then
        -- Remove existing ESP if present
        if espHighlights[player.Name] then
            espHighlights[player.Name].Highlight:Destroy()
            espHighlights[player.Name].BillboardGui:Destroy()
            espHighlights[player.Name] = nil
            return
        end
        
        -- Create Highlight
        local highlight = Instance.new("Highlight")
        highlight.FillColor = Color3.fromRGB(0, 255, 0)
        highlight.OutlineColor = Color3.fromRGB(0, 200, 0)
        highlight.FillTransparency = 0.5
        highlight.OutlineTransparency = 0
        highlight.Parent = player.Character
        
        -- Create Billboard GUI for username
        local billboard = Instance.new("BillboardGui")
        billboard.Adornee = player.Character:FindFirstChild("Head")
        billboard.Size = UDim2.new(0, 200, 0, 50)
        billboard.StudsOffset = Vector3.new(0, 3, 0)
        billboard.AlwaysOnTop = true
        billboard.Parent = player.Character:FindFirstChild("Head")
        
        local nameLabel = Instance.new("TextLabel")
        nameLabel.Size = UDim2.new(1, 0, 1, 0)
        nameLabel.BackgroundTransparency = 1
        nameLabel.Text = player.Name
        nameLabel.Font = Enum.Font.GothamBold
        nameLabel.TextSize = 20
        nameLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
        nameLabel.TextStrokeTransparency = 0.5
        nameLabel.Parent = billboard
        
        espHighlights[player.Name] = {Highlight = highlight, BillboardGui = billboard}
    end
end

local function executeJail(player)
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local hrp = player.Character.HumanoidRootPart
        
        -- Create jail
        local jail = Instance.new("Model")
        jail.Name = "Jail"
        jail.Parent = workspace
        
        local jailParts = {}
        local jailSize = 10
        local jailHeight = 12
        
        -- Floor
        local floor = Instance.new("Part")
        floor.Size = Vector3.new(jailSize, 1, jailSize)
        floor.Position = hrp.Position - Vector3.new(0, 3, 0)
        floor.Anchored = true
        floor.BrickColor = BrickColor.new("Dark stone grey")
        floor.Parent = jail
        
        -- Walls (bars)
        for i = 1, 4 do
            for j = 0, 5 do
                local bar = Instance.new("Part")
                bar.Size = Vector3.new(0.5, jailHeight, 0.5)
                bar.Anchored = true
                bar.BrickColor = BrickColor.new("Black")
                bar.Parent = jail
                
                if i == 1 then
                    bar.Position = floor.Position + Vector3.new(-jailSize/2 + j * 2, jailHeight/2, jailSize/2)
                elseif i == 2 then
                    bar.Position = floor.Position + Vector3.new(jailSize/2, jailHeight/2, jailSize/2 - j * 2)
                elseif i == 3 then
                    bar.Position = floor.Position + Vector3.new(jailSize/2 - j * 2, jailHeight/2, -jailSize/2)
                else
                    bar.Position = floor.Position + Vector3.new(-jailSize/2, jailHeight/2, -jailSize/2 + j * 2)
                end
            end
        end
        
        -- Roof
        local roof = Instance.new("Part")
        roof.Size = Vector3.new(jailSize, 1, jailSize)
        roof.Position = floor.Position + Vector3.new(0, jailHeight, 0)
        roof.Anchored = true
        roof.BrickColor = BrickColor.new("Dark stone grey")
        roof.Parent = jail
        
        hrp.Position = floor.Position + Vector3.new(0, 3, 0)
        hrp.Anchored = true
    end
end

local function executeTiny(player)
    if player.Character and player.Character:FindFirstChild("Humanoid") then
        local humanoid = player.Character.Humanoid
        
        for _, part in pairs(player.Character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.Size = part.Size * 0.3
            end
        end
        
        if humanoid then
            humanoid.HipHeight = humanoid.HipHeight * 0.3
        end
    end
end

local function executeJumpscare(player)
    if player == LocalPlayer then
        -- Create black screen
        local jumpscareGui = Instance.new("ScreenGui")
        jumpscareGui.Name = "JumpscareGui"
        jumpscareGui.Parent = PlayerGui
        
        local blackFrame = Instance.new("Frame")
        blackFrame.Size = UDim2.new(1, 0, 1, 0)
        blackFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        blackFrame.BorderSizePixel = 0
        blackFrame.Parent = jumpscareGui
        
        -- Optional: Add scary text
        local scaryText = Instance.new("TextLabel")
        scaryText.Size = UDim2.new(1, 0, 1, 0)
        scaryText.BackgroundTransparency = 1
        scaryText.Text = "BOO!"
        scaryText.Font = Enum.Font.GothamBold
        scaryText.TextSize = 100
        scaryText.TextColor3 = Color3.fromRGB(255, 0, 0)
        scaryText.Parent = blackFrame
        
        wait(5)
        jumpscareGui:Destroy()
    end
end

-- Function to deselect current player
local function deselectPlayer()
    if selectedPlayerFrame then
        selectedPlayerFrame.BorderColor3 = Color3.fromRGB(50, 60, 70)
        selectedPlayerFrame.BorderSizePixel = 3
        selectedPlayerFrame.BackgroundColor3 = Color3.fromRGB(50, 60, 70)
    end
    selectedPlayer = nil
    selectedPlayerFrame = nil
end

-- Create command buttons
for _, cmd in ipairs(commands) do
    local button = Instance.new("TextButton")
    button.Name = cmd.name
    button.Size = UDim2.new(0, 240, 0, 70)
    button.Position = UDim2.new((cmd.col - 1) * 0.52, 0, (cmd.row - 1) * 0.21, 0)
    button.BackgroundColor3 = Color3.fromRGB(45, 55, 65)
    button.BackgroundTransparency = 0.3
    button.BorderSizePixel = 0
    button.AutoButtonColor = false
    button.Parent = buttonsFrame
    
    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 6)
    btnCorner.Parent = button
    
    -- Icon label
    local icon = Instance.new("TextLabel")
    icon.Size = UDim2.new(0, 50, 1, 0)
    icon.Position = UDim2.new(0, 10, 0, 0)
    icon.BackgroundTransparency = 1
    icon.Text = cmd.icon
    icon.Font = Enum.Font.Gotham
    icon.TextSize = 32
    icon.TextColor3 = Color3.fromRGB(255, 255, 255)
    icon.Parent = button
    
    -- Command name label
    local nameLabel = Instance.new("TextLabel")
    nameLabel.Size = UDim2.new(1, -70, 1, 0)
    nameLabel.Position = UDim2.new(0, 70, 0, 0)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = ":" .. cmd.name
    nameLabel.Font = Enum.Font.GothamBold
    nameLabel.TextSize = 20
    nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    nameLabel.TextXAlignment = Enum.TextXAlignment.Left
    nameLabel.Parent = button
    
    -- Hover effects
    button.MouseEnter:Connect(function()
        button.BackgroundColor3 = Color3.fromRGB(55, 70, 85)
    end)
    
    button.MouseLeave:Connect(function()
        button.BackgroundColor3 = Color3.fromRGB(45, 55, 65)
    end)
    
    -- Click functionality - executes command on selected player
    button.MouseButton1Click:Connect(function()
        if selectedPlayer then
            commandBox.Text = ":" .. cmd.name .. " " .. selectedPlayer.Name
            print("Executing: :" .. cmd.name .. " on " .. selectedPlayer.Name)
            
            -- Execute the actual command
            if cmd.name == "rocket" then
                executeRocket(selectedPlayer)
            elseif cmd.name == "ragdoll" then
                executeRagdoll(selectedPlayer)
            elseif cmd.name == "balloon" then
                executeBalloon(selectedPlayer)
            elseif cmd.name == "nightvision" then
                executeNightVision(selectedPlayer)
            elseif cmd.name == "jail" then
                executeJail(selectedPlayer)
            elseif cmd.name == "tiny" then
                executeTiny(selectedPlayer)
            elseif cmd.name == "jumpscare" then
                executeJumpscare(selectedPlayer)
            elseif cmd.name == "control" then
                print("Control command does nothing")
            elseif cmd.name == "inverse" then
                print("Inverse command doesn't work")
            elseif cmd.name == "morph" then
                print("Morph command doesn't work")
            end
            
            -- Command executed, deselect player
            deselectPlayer()
        else
            commandBox.Text = ":" .. cmd.name .. " "
            commandBox:CaptureFocus()
        end
    end)
end

-- Players List Container (right side)
local playersListFrame = Instance.new("ScrollingFrame")
playersListFrame.Name = "PlayersListFrame"
playersListFrame.Size = UDim2.new(0, 240, 0, 510)
playersListFrame.Position = UDim2.new(1, -260, 0, 80)
playersListFrame.BackgroundColor3 = Color3.fromRGB(40, 50, 60)
playersListFrame.BackgroundTransparency = 0.3
playersListFrame.BorderSizePixel = 0
playersListFrame.ScrollBarThickness = 6
playersListFrame.ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255)
playersListFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
playersListFrame.Parent = mainFrame

local playersCorner = Instance.new("UICorner")
playersCorner.CornerRadius = UDim.new(0, 6)
playersCorner.Parent = playersListFrame

-- UI List Layout for players
local listLayout = Instance.new("UIListLayout")
listLayout.SortOrder = Enum.SortOrder.Name
listLayout.Padding = UDim.new(0, 5)
listLayout.Parent = playersListFrame

-- Function to create player card
local function createPlayerCard(player)
    local playerCard = Instance.new("TextButton")
    playerCard.Name = player.Name
    playerCard.Size = UDim2.new(1, -10, 0, 80)
    playerCard.BackgroundColor3 = Color3.fromRGB(50, 60, 70)
    playerCard.BackgroundTransparency = 0.2
    playerCard.BorderSizePixel = 3
    playerCard.BorderColor3 = Color3.fromRGB(50, 60, 70)
    playerCard.AutoButtonColor = false
    playerCard.Text = ""
    playerCard.Parent = playersListFrame
    
    local cardCorner = Instance.new("UICorner")
    cardCorner.CornerRadius = UDim.new(0, 6)
    cardCorner.Parent = playerCard
    
    -- Player Avatar
    local avatar = Instance.new("ImageLabel")
    avatar.Name = "Avatar"
    avatar.Size = UDim2.new(0, 60, 0, 60)
    avatar.Position = UDim2.new(0, 10, 0.5, -30)
    avatar.BackgroundTransparency = 1
    avatar.Parent = playerCard
    
    local avatarCorner = Instance.new("UICorner")
    avatarCorner.CornerRadius = UDim.new(0, 8)
    avatarCorner.Parent = avatar
    
    -- Load avatar asynchronously
    spawn(function()
        local success, thumbnail = pcall(function()
            return Players:GetUserThumbnailAsync(player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
        end)
        if success then
            avatar.Image = thumbnail
        end
    end)
    
    -- Player Name
    local nameLabel = Instance.new("TextLabel")
    nameLabel.Size = UDim2.new(0, 150, 1, 0)
    nameLabel.Position = UDim2.new(0, 80, 0, 0)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = player.Name
    nameLabel.Font = Enum.Font.GothamBold
    nameLabel.TextSize = 16
    nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    nameLabel.TextXAlignment = Enum.TextXAlignment.Left
    nameLabel.TextWrapped = true
    nameLabel.Parent = playerCard
    
    -- Click to select player (only one at a time)
    playerCard.MouseButton1Click:Connect(function()
        -- Deselect previous player
        deselectPlayer()
        
        -- Select new player
        selectedPlayer = player
        selectedPlayerFrame = playerCard
        playerCard.BorderColor3 = Color3.fromRGB(255, 220, 0)
        playerCard.BorderSizePixel = 3
        playerCard.BackgroundColor3 = Color3.fromRGB(70, 85, 100)
        
        print("Selected player: " .. player.Name)
    end)
    
    -- Hover effects
    playerCard.MouseEnter:Connect(function()
        if playerCard ~= selectedPlayerFrame then
            playerCard.BackgroundColor3 = Color3.fromRGB(60, 75, 90)
        end
    end)
    
    playerCard.MouseLeave:Connect(function()
        if playerCard ~= selectedPlayerFrame then
            playerCard.BackgroundColor3 = Color3.fromRGB(50, 60, 70)
        end
    end)
    
    return playerCard
end

-- Function to update canvas size
local function updateCanvasSize()
    local contentSize = listLayout.AbsoluteContentSize
    playersListFrame.CanvasSize = UDim2.new(0, 0, 0, contentSize.Y + 10)
end

-- Add all current players
for _, player in ipairs(Players:GetPlayers()) do
    createPlayerCard(player)
end

-- Update canvas size initially
updateCanvasSize()

-- Listen for canvas size changes
listLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateCanvasSize)

-- Add new players when they join
Players.PlayerAdded:Connect(function(player)
    createPlayerCard(player)
end)

-- Remove players when they leave
Players.PlayerRemoving:Connect(function(player)
    local card = playersListFrame:FindFirstChild(player.Name)
    if card then
        if selectedPlayer == player then
            deselectPlayer()
        end
        card:Destroy()
    end
end)

-- ========================================
-- TOGGLE FUNCTIONALITY
-- ========================================

-- Toggle button click
toggleButton.MouseButton1Click:Connect(function()
    isToggled = not isToggled
    
    if isToggled then
        -- Turn on - show admin panel
        toggleButton.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
        toggleCircle.Position = UDim2.new(1, -27, 0.5, -12)
        mainFrame.Visible = true
        bypassFrame.Visible = false
    else
        -- Turn off - hide admin panel
        toggleButton.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
        toggleCircle.Position = UDim2.new(0, 3, 0.5, -12)
        mainFrame.Visible = false
        bypassFrame.Visible = true
    end
end)

-- Close button functionality - hides panel and shows bypass UI again
closeButton.MouseButton1Click:Connect(function()
    mainFrame.Visible = false
    bypassFrame.Visible = true
    isToggled = false
    toggleButton.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
    toggleCircle.Position = UDim2.new(0, 3, 0.5, -12)
end)

-- Make main frame draggable
local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

mainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

mainFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)

print("Admin Panel Bypass loaded!")
print("Click the toggle to unlock the Admin Panel.")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
    Name = "Infinite Yield",
    Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  	end    
})

Tab:AddButton({
	Name = "Dex Explorer",
	Callback = function()
        loadstring(game:HttpGet("https://obj.wearedevs.net/2/scripts/Dex%20Explorer.lua"))()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = "NoClip Cheat I Unviseral📌",
	Callback = function()
      		-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "InstantStealGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = game.CoreGui

-- Create main frame (thin wide rectangle)
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 300, 0, 50)
mainFrame.Position = UDim2.new(0.5, -150, 0.1, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

-- Add UICorner for curved corners
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = mainFrame

-- Add UIStroke for red outline
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(255, 0, 0)
stroke.Thickness = 2
stroke.Parent = mainFrame

-- Create "Remove Solids" label
local label = Instance.new("TextLabel")
label.Name = "Label"
label.Size = UDim2.new(0, 180, 1, 0)
label.Position = UDim2.new(0, 15, 0, 0)
label.BackgroundTransparency = 1
label.Text = "Remove Solids"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.TextSize = 16
label.Font = Enum.Font.GothamBold
label.TextXAlignment = Enum.TextXAlignment.Left
label.Parent = mainFrame

-- Create toggle button
local toggleButton = Instance.new("TextButton")
toggleButton.Name = "ToggleButton"
toggleButton.Size = UDim2.new(0, 70, 0, 30)
toggleButton.Position = UDim2.new(1, -85, 0.5, -15)
toggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
toggleButton.BorderSizePixel = 0
toggleButton.Text = "OFF"
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.TextSize = 14
toggleButton.Font = Enum.Font.GothamBold
toggleButton.Parent = mainFrame

-- Add UICorner to toggle
local toggleCorner = Instance.new("UICorner")
toggleCorner.CornerRadius = UDim.new(0, 8)
toggleCorner.Parent = toggleButton

-- Toggle functionality
local enabled = false

toggleButton.MouseButton1Click:Connect(function()
    enabled = not enabled
    if enabled then
        toggleButton.Text = "ON"
        toggleButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        print("Instant steal: ENABLED")
        -- Add your instant steal functionality here
    else
        toggleButton.Text = "OFF"
        toggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        print("Instant steal: DISABLED")
    end
end)

-- Make frame draggable
local UIS = game:GetService("UserInputService")
local dragging = false
local dragStart, startPos

mainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position
    end
end)

mainFrame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = false
    end
end)

UIS.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        mainFrame.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = "HD Admin",
	Callback = function()
      		print("vx3! error.")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

local Section = Tab:AddSection({
	Name = "Scripts for Popular Games"
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "Steal a Brainrot Script I Chilli Development",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = "Gag Script I Mozil on top",
	Callback = function()
      		print("Successfully Ran Script!")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = "Gag Script I Zysume",
	Callback = function()
      		print("Activated!")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = "99 Nights Script",
	Callback = function()
      		print("Successsfull!")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = "mm2 + mm1 Script",
	Callback = function()
      		print("Ran!")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = "Obby Games I Wallhop or obby",
	Callback = function()
      		print("Success!")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = "Steal a Brainrot I Instant Steal",
	Callback = function()
        -- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "InstantStealGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = game.CoreGui

-- Create main frame (thin wide rectangle)
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 300, 0, 50)
mainFrame.Position = UDim2.new(0.5, -150, 0.1, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

-- Add UICorner for curved corners
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = mainFrame

-- Add UIStroke for red outline
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(255, 0, 0)
stroke.Thickness = 2
stroke.Parent = mainFrame

-- Create "Instant steal" label
local label = Instance.new("TextLabel")
label.Name = "Label"
label.Size = UDim2.new(0, 180, 1, 0)
label.Position = UDim2.new(0, 15, 0, 0)
label.BackgroundTransparency = 1
label.Text = "Instant steal"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.TextSize = 16
label.Font = Enum.Font.GothamBold
label.TextXAlignment = Enum.TextXAlignment.Left
label.Parent = mainFrame

-- Create toggle button
local toggleButton = Instance.new("TextButton")
toggleButton.Name = "ToggleButton"
toggleButton.Size = UDim2.new(0, 70, 0, 30)
toggleButton.Position = UDim2.new(1, -85, 0.5, -15)
toggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
toggleButton.BorderSizePixel = 0
toggleButton.Text = "OFF"
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.TextSize = 14
toggleButton.Font = Enum.Font.GothamBold
toggleButton.Parent = mainFrame

-- Add UICorner to toggle
local toggleCorner = Instance.new("UICorner")
toggleCorner.CornerRadius = UDim.new(0, 8)
toggleCorner.Parent = toggleButton

-- Toggle functionality
local enabled = false

toggleButton.MouseButton1Click:Connect(function()
    enabled = not enabled
    if enabled then
        toggleButton.Text = "ON"
        toggleButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        print("Instant steal: ENABLED")
        -- Add your instant steal functionality here
    else
        toggleButton.Text = "OFF"
        toggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        print("Instant steal: DISABLED")
    end
end)

-- Make frame draggable
local UIS = game:GetService("UserInputService")
local dragging = false
local dragStart, startPos

mainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position
    end
end)

mainFrame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = false
    end
end)

UIS.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        mainFrame.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

local Section = Tab:AddSection({
	Name = "Bypassed!"
})

--[[
Name = <string> - The name of the section.
]]

local Tab = Window:MakeTab({
	Name = "Hd Admin",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

local Section = Tab:AddSection({
	Name = "Admin Commands I All Universal📌"
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = ";ping",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";commands",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";morphs",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";doner",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";serverRanks",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";ranks",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";banland",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = "",
	Callback = function()
      		print(";info")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";credits",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";updates",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";settings",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";!prefix",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";clear",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";getsound",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";cmdbar",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";refresh",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";respawn",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";shirt",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";pants",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = "hat",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";clearhats",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";face",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";invisible",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";paint",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";material",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";reflectance",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";transparency",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";glass",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";neon",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";shine",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";ghost",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";gold",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";jump",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";sit",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";bigHead",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";smallHead",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";potatoHead",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";spin",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";rainbowFart",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";icecream",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";warp",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";blur",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";hideGuis",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";ice",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";freeze",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";jail",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";forceField",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";fire",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";smoke",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";sparkles",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";name",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";hideName",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = "r15",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";r6",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";nightVision",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";dwarf",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";giant",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";size",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";bodyTypeScale",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";depth",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";headSize",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";height",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";hipHeight",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
    
Tab:AddButton({
	Name = ";squash",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";proportion",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";width",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";fat",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";thin",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/jensonhirst/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Abyss Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "Unviseral Script📌"})

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]

local Tab = Window:MakeTab({
	Name = "Main Scripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

local Section = Tab:AddSection({
	Name = "Main Scripts V3rx"
})

--[[
Name = <string> - The name of the section.
]]

OrionLib:MakeNotification({
	Name = "Executed!",
	Content = "You have successfully executed the script!",
	Image = "rbxassetid://4483345998",
	Time = 5
})

--[[
Title = <string> - The title of the notification.
Content = <string> - The content of the notification.
Image = <string> - The icon of the notification.
Time = <number> - The duration of the notfication.
]]

Tab:AddButton({
	Name = "Kick Panell",
	Callback = function()
      		-- Kick Panel Script for Roblox
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "KickPanel"
screenGui.ResetOnSpawn = false
screenGui.Parent = PlayerGui

-- Main Frame (Kick Panel)
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 400, 0, 500)
mainFrame.Position = UDim2.new(0.5, -200, 0.5, -250)
mainFrame.BackgroundColor3 = Color3.fromRGB(60, 80, 95)
mainFrame.BackgroundTransparency = 0.15
mainFrame.BorderSizePixel = 0
mainFrame.Active = true
mainFrame.Draggable = true
mainFrame.Parent = screenGui

-- Add rounded corners
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 8)
corner.Parent = mainFrame

-- Title Label
local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "Title"
titleLabel.Size = UDim2.new(1, 0, 0, 50)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "KICK PANEL"
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 32
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.TextStrokeTransparency = 0.5
titleLabel.Parent = mainFrame

-- Add padding to title
local titlePadding = Instance.new("UIPadding")
titlePadding.PaddingLeft = UDim.new(0, 20)
titlePadding.Parent = titleLabel

-- Creator Label
local creatorLabel = Instance.new("TextLabel")
creatorLabel.Name = "Creator"
creatorLabel.Size = UDim2.new(1, 0, 0, 20)
creatorLabel.Position = UDim2.new(0, 0, 0, 50)
creatorLabel.BackgroundTransparency = 1
creatorLabel.Text = "Created by Abyss Hub"
creatorLabel.Font = Enum.Font.Gotham
creatorLabel.TextSize = 14
creatorLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
creatorLabel.TextXAlignment = Enum.TextXAlignment.Left
creatorLabel.Parent = mainFrame

-- Add padding to creator label
local creatorPadding = Instance.new("UIPadding")
creatorPadding.PaddingLeft = UDim.new(0, 20)
creatorPadding.Parent = creatorLabel

-- Status Label
local statusLabel = Instance.new("TextLabel")
statusLabel.Name = "StatusLabel"
statusLabel.Size = UDim2.new(1, -80, 0, 20)
statusLabel.Position = UDim2.new(0, 0, 0, 75)
statusLabel.BackgroundTransparency = 1
statusLabel.Text = ""
statusLabel.Font = Enum.Font.GothamBold
statusLabel.TextSize = 13
statusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
statusLabel.TextXAlignment = Enum.TextXAlignment.Left
statusLabel.Parent = mainFrame

-- Add padding to status label
local statusPadding = Instance.new("UIPadding")
statusPadding.PaddingLeft = UDim.new(0, 20)
statusPadding.Parent = statusLabel

-- Close Button (X)
local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Size = UDim2.new(0, 50, 0, 50)
closeButton.Position = UDim2.new(1, -60, 0, 10)
closeButton.BackgroundColor3 = Color3.fromRGB(180, 60, 60)
closeButton.BorderSizePixel = 0
closeButton.Text = "X"
closeButton.Font = Enum.Font.GothamBold
closeButton.TextSize = 28
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Parent = mainFrame

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 6)
closeCorner.Parent = closeButton

-- Close button functionality
closeButton.MouseButton1Click:Connect(function()
    screenGui:Destroy()
end)

-- Players List Container
local playersListFrame = Instance.new("ScrollingFrame")
playersListFrame.Name = "PlayersListFrame"
playersListFrame.Size = UDim2.new(1, -40, 0, 310)
playersListFrame.Position = UDim2.new(0, 20, 0, 105)
playersListFrame.BackgroundColor3 = Color3.fromRGB(40, 50, 60)
playersListFrame.BackgroundTransparency = 0.3
playersListFrame.BorderSizePixel = 0
playersListFrame.ScrollBarThickness = 6
playersListFrame.ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255)
playersListFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
playersListFrame.Parent = mainFrame

local playersCorner = Instance.new("UICorner")
playersCorner.CornerRadius = UDim.new(0, 6)
playersCorner.Parent = playersListFrame

-- UI List Layout for players
local listLayout = Instance.new("UIListLayout")
listLayout.SortOrder = Enum.SortOrder.Name
listLayout.Padding = UDim.new(0, 5)
listLayout.Parent = playersListFrame

-- Selected player variable
local selectedPlayer = nil
local selectedPlayerFrame = nil

-- Function to deselect current player
local function deselectPlayer()
    if selectedPlayerFrame then
        selectedPlayerFrame.BorderColor3 = Color3.fromRGB(50, 60, 70)
        selectedPlayerFrame.BorderSizePixel = 3
        selectedPlayerFrame.BackgroundColor3 = Color3.fromRGB(50, 60, 70)
    end
    selectedPlayer = nil
    selectedPlayerFrame = nil
end

-- Function to show status message
local function showStatus(message, isError)
    statusLabel.Text = message
    if isError then
        statusLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
    else
        statusLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
    end
    
    spawn(function()
        wait(3)
        statusLabel.Text = ""
    end)
end

-- Function to create player card
local function createPlayerCard(player)
    local playerCard = Instance.new("TextButton")
    playerCard.Name = player.Name
    playerCard.Size = UDim2.new(1, -10, 0, 70)
    playerCard.BackgroundColor3 = Color3.fromRGB(50, 60, 70)
    playerCard.BackgroundTransparency = 0.2
    playerCard.BorderSizePixel = 3
    playerCard.BorderColor3 = Color3.fromRGB(50, 60, 70)
    playerCard.AutoButtonColor = false
    playerCard.Text = ""
    playerCard.Parent = playersListFrame
    
    local cardCorner = Instance.new("UICorner")
    cardCorner.CornerRadius = UDim.new(0, 6)
    cardCorner.Parent = playerCard
    
    -- Player Avatar
    local avatar = Instance.new("ImageLabel")
    avatar.Name = "Avatar"
    avatar.Size = UDim2.new(0, 50, 0, 50)
    avatar.Position = UDim2.new(0, 10, 0.5, -25)
    avatar.BackgroundTransparency = 1
    avatar.Parent = playerCard
    
    local avatarCorner = Instance.new("UICorner")
    avatarCorner.CornerRadius = UDim.new(0, 8)
    avatarCorner.Parent = avatar
    
    -- Load avatar asynchronously
    spawn(function()
        local success, thumbnail = pcall(function()
            return Players:GetUserThumbnailAsync(player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
        end)
        if success then
            avatar.Image = thumbnail
        end
    end)
    
    -- Player Name
    local nameLabel = Instance.new("TextLabel")
    nameLabel.Size = UDim2.new(1, -70, 1, 0)
    nameLabel.Position = UDim2.new(0, 70, 0, 0)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = player.Name
    nameLabel.Font = Enum.Font.GothamBold
    nameLabel.TextSize = 16
    nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    nameLabel.TextXAlignment = Enum.TextXAlignment.Left
    nameLabel.TextWrapped = true
    nameLabel.Parent = playerCard
    
    -- Click to select player
    playerCard.MouseButton1Click:Connect(function()
        -- Deselect previous player
        deselectPlayer()
        
        -- Select new player
        selectedPlayer = player
        selectedPlayerFrame = playerCard
        playerCard.BorderColor3 = Color3.fromRGB(255, 220, 0)
        playerCard.BorderSizePixel = 3
        playerCard.BackgroundColor3 = Color3.fromRGB(70, 85, 100)
        
        print("Selected player: " .. player.Name)
    end)
    
    -- Hover effects
    playerCard.MouseEnter:Connect(function()
        if playerCard ~= selectedPlayerFrame then
            playerCard.BackgroundColor3 = Color3.fromRGB(60, 75, 90)
        end
    end)
    
    playerCard.MouseLeave:Connect(function()
        if playerCard ~= selectedPlayerFrame then
            playerCard.BackgroundColor3 = Color3.fromRGB(50, 60, 70)
        end
    end)
    
    return playerCard
end

-- Function to update canvas size
local function updateCanvasSize()
    local contentSize = listLayout.AbsoluteContentSize
    playersListFrame.CanvasSize = UDim2.new(0, 0, 0, contentSize.Y + 10)
end

-- Add all current players
for _, player in ipairs(Players:GetPlayers()) do
    createPlayerCard(player)
end

-- Update canvas size initially
updateCanvasSize()

-- Listen for canvas size changes
listLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateCanvasSize)

-- Add new players when they join
Players.PlayerAdded:Connect(function(player)
    createPlayerCard(player)
end)

-- Remove players when they leave
Players.PlayerRemoving:Connect(function(player)
    local card = playersListFrame:FindFirstChild(player.Name)
    if card then
        if selectedPlayer == player then
            deselectPlayer()
        end
        card:Destroy()
    end
end)

-- Kick Button
local kickButton = Instance.new("TextButton")
kickButton.Name = "KickButton"
kickButton.Size = UDim2.new(1, -40, 0, 50)
kickButton.Position = UDim2.new(0, 20, 1, -65)
kickButton.BackgroundColor3 = Color3.fromRGB(180, 60, 60)
kickButton.BorderSizePixel = 0
kickButton.Text = "KICK PLAYER"
kickButton.Font = Enum.Font.GothamBold
kickButton.TextSize = 24
kickButton.TextColor3 = Color3.fromRGB(255, 255, 255)
kickButton.Parent = mainFrame

local kickCorner = Instance.new("UICorner")
kickCorner.CornerRadius = UDim.new(0, 6)
kickCorner.Parent = kickButton

-- Kick button hover effects
kickButton.MouseEnter:Connect(function()
    kickButton.BackgroundColor3 = Color3.fromRGB(200, 80, 80)
end)

kickButton.MouseLeave:Connect(function()
    kickButton.BackgroundColor3 = Color3.fromRGB(180, 60, 60)
end)

-- Kick button functionality
kickButton.MouseButton1Click:Connect(function()
    if selectedPlayer then
        if selectedPlayer == LocalPlayer then
            showStatus("Cannot kick yourself!", true)
            return
        end
        
        -- Attempt to kick the player
        local success, error = pcall(function()
            selectedPlayer:Kick("You have been kicked by " .. LocalPlayer.Name)
        end)
        
        if success then
            showStatus("Kicked " .. selectedPlayer.Name, false)
            deselectPlayer()
        else
            showStatus("Failed to kick player - No permission", true)
            print("Kick error: " .. tostring(error))
        end
    else
        showStatus("Please select a player first!", true)
    end
end)

print("Kick Panel loaded successfully!")
print("Select a player and click KICK PLAYER to kick them from the server.")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = "Admin Panel",
	Callback = function()
      		-- Admin Panel Script for Roblox
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "AdminPanel"
screenGui.ResetOnSpawn = false
screenGui.Parent = PlayerGui

-- ========================================
-- BYPASS/TOGGLE UI
-- ========================================

-- Bypass Toggle Frame
local bypassFrame = Instance.new("Frame")
bypassFrame.Name = "BypassFrame"
bypassFrame.Size = UDim2.new(0, 280, 0, 100)
bypassFrame.Position = UDim2.new(0.5, -140, 0.5, -50)
bypassFrame.BackgroundColor3 = Color3.fromRGB(50, 65, 80)
bypassFrame.BackgroundTransparency = 0.15
bypassFrame.BorderSizePixel = 0
bypassFrame.Active = true
bypassFrame.Draggable = true
bypassFrame.Parent = screenGui

local bypassCorner = Instance.new("UICorner")
bypassCorner.CornerRadius = UDim.new(0, 12)
bypassCorner.Parent = bypassFrame

-- Bypass Title
local bypassTitle = Instance.new("TextLabel")
bypassTitle.Size = UDim2.new(1, 0, 0, 35)
bypassTitle.Position = UDim2.new(0, 0, 0, 10)
bypassTitle.BackgroundTransparency = 1
bypassTitle.Text = "Admin Panel Bypass"
bypassTitle.Font = Enum.Font.GothamBold
bypassTitle.TextSize = 18
bypassTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
bypassTitle.Parent = bypassFrame

-- Bypass Subtitle
local bypassSubtitle = Instance.new("TextLabel")
bypassSubtitle.Size = UDim2.new(1, -100, 0, 20)
bypassSubtitle.Position = UDim2.new(0, 10, 0, 45)
bypassSubtitle.BackgroundTransparency = 1
bypassSubtitle.Text = "Click to unlock Admin Panel"
bypassSubtitle.Font = Enum.Font.Gotham
bypassSubtitle.TextSize = 13
bypassSubtitle.TextColor3 = Color3.fromRGB(200, 200, 200)
bypassSubtitle.TextXAlignment = Enum.TextXAlignment.Left
bypassSubtitle.Parent = bypassFrame

-- Toggle Button
local toggleButton = Instance.new("TextButton")
toggleButton.Name = "ToggleButton"
toggleButton.Size = UDim2.new(0, 60, 0, 30)
toggleButton.Position = UDim2.new(1, -70, 0, 55)
toggleButton.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
toggleButton.BorderSizePixel = 0
toggleButton.Text = ""
toggleButton.Parent = bypassFrame

local toggleCorner = Instance.new("UICorner")
toggleCorner.CornerRadius = UDim.new(1, 0)
toggleCorner.Parent = toggleButton

-- Toggle Circle
local toggleCircle = Instance.new("Frame")
toggleCircle.Name = "Circle"
toggleCircle.Size = UDim2.new(0, 24, 0, 24)
toggleCircle.Position = UDim2.new(0, 3, 0.5, -12)
toggleCircle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
toggleCircle.BorderSizePixel = 0
toggleCircle.Parent = toggleButton

local circleCorner = Instance.new("UICorner")
circleCorner.CornerRadius = UDim.new(1, 0)
circleCorner.Parent = toggleCircle

-- Toggle state
local isToggled = false

-- ========================================
-- MAIN ADMIN PANEL
-- ========================================

-- Main Frame (Admin Panel) - Initially hidden
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 800, 0, 600)
mainFrame.Position = UDim2.new(0.5, -400, 0.5, -300)
mainFrame.BackgroundColor3 = Color3.fromRGB(60, 80, 95)
mainFrame.BackgroundTransparency = 0.15
mainFrame.BorderSizePixel = 0
mainFrame.Visible = false
mainFrame.Parent = screenGui

-- Add rounded corners
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 8)
corner.Parent = mainFrame

-- Title Label
local titleLabel = Instance.new("TextLabel")
titleLabel.Name = "Title"
titleLabel.Size = UDim2.new(1, 0, 0, 40)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "ADMIN PANEL"
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextSize = 36
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.TextStrokeTransparency = 0.5
titleLabel.Parent = mainFrame

-- Add padding to title
local titlePadding = Instance.new("UIPadding")
titlePadding.PaddingLeft = UDim.new(0, 20)
titlePadding.Parent = titleLabel

-- Creator Label
local creatorLabel = Instance.new("TextLabel")
creatorLabel.Name = "Creator"
creatorLabel.Size = UDim2.new(1, 0, 0, 20)
creatorLabel.Position = UDim2.new(0, 0, 0, 40)
creatorLabel.BackgroundTransparency = 1
creatorLabel.Text = "Created by Abyss Hub"
creatorLabel.Font = Enum.Font.Gotham
creatorLabel.TextSize = 14
creatorLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
creatorLabel.TextXAlignment = Enum.TextXAlignment.Left
creatorLabel.Parent = mainFrame

-- Add padding to creator label
local creatorPadding = Instance.new("UIPadding")
creatorPadding.PaddingLeft = UDim.new(0, 20)
creatorPadding.Parent = creatorLabel

-- Command Status Label
local statusLabel = Instance.new("TextLabel")
statusLabel.Name = "StatusLabel"
statusLabel.Size = UDim2.new(1, -140, 0, 20)
statusLabel.Position = UDim2.new(0, 0, 0, 60)
statusLabel.BackgroundTransparency = 1
statusLabel.Text = ""
statusLabel.Font = Enum.Font.GothamBold
statusLabel.TextSize = 13
statusLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
statusLabel.TextXAlignment = Enum.TextXAlignment.Left
statusLabel.Parent = mainFrame

-- Add padding to status label
local statusPadding = Instance.new("UIPadding")
statusPadding.PaddingLeft = UDim.new(0, 20)
statusPadding.Parent = statusLabel

-- Function to show command status
local function showCommandStatus(commandName, playerName)
    statusLabel.Text = "Ran " .. commandName .. " on " .. playerName
    statusLabel.TextColor3 = Color3.fromRGB(100, 255, 100)
    
    wait(3)
    statusLabel.Text = ""
end

-- Close Button (X)
local closeButton = Instance.new("TextButton")
closeButton.Name = "CloseButton"
closeButton.Size = UDim2.new(0, 60, 0, 60)
closeButton.Position = UDim2.new(1, -70, 0, 10)
closeButton.BackgroundColor3 = Color3.fromRGB(180, 60, 60)
closeButton.BorderSizePixel = 0
closeButton.Text = "X"
closeButton.Font = Enum.Font.GothamBold
closeButton.TextSize = 32
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Parent = mainFrame

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 6)
closeCorner.Parent = closeButton

-- Command Input Frame
local commandFrame = Instance.new("Frame")
commandFrame.Name = "CommandFrame"
commandFrame.Size = UDim2.new(1, -280, 0, 80)
commandFrame.Position = UDim2.new(0, 20, 0, 80)
commandFrame.BackgroundColor3 = Color3.fromRGB(40, 50, 60)
commandFrame.BackgroundTransparency = 0.3
commandFrame.BorderSizePixel = 0
commandFrame.Parent = mainFrame

local cmdCorner = Instance.new("UICorner")
cmdCorner.CornerRadius = UDim.new(0, 6)
cmdCorner.Parent = commandFrame

-- Type Command Label
local typeLabel = Instance.new("TextLabel")
typeLabel.Size = UDim2.new(1, 0, 0, 25)
typeLabel.Position = UDim2.new(0, 10, 0, 5)
typeLabel.BackgroundTransparency = 1
typeLabel.Text = "Type Command"
typeLabel.Font = Enum.Font.GothamBold
typeLabel.TextSize = 18
typeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
typeLabel.TextXAlignment = Enum.TextXAlignment.Left
typeLabel.Parent = commandFrame

-- Command TextBox
local commandBox = Instance.new("TextBox")
commandBox.Name = "CommandInput"
commandBox.Size = UDim2.new(1, -20, 0, 40)
commandBox.Position = UDim2.new(0, 10, 0, 30)
commandBox.BackgroundTransparency = 1
commandBox.Text = ""
commandBox.PlaceholderText = "Enter command"
commandBox.Font = Enum.Font.Gotham
commandBox.TextSize = 16
commandBox.TextColor3 = Color3.fromRGB(180, 180, 180)
commandBox.PlaceholderColor3 = Color3.fromRGB(100, 100, 100)
commandBox.TextXAlignment = Enum.TextXAlignment.Left
commandBox.ClearTextOnFocus = false
commandBox.Parent = commandFrame

-- Command Buttons Container (under command box)
local buttonsFrame = Instance.new("Frame")
buttonsFrame.Name = "ButtonsFrame"
buttonsFrame.Size = UDim2.new(1, -280, 0, 420)
buttonsFrame.Position = UDim2.new(0, 20, 0, 170)
buttonsFrame.BackgroundTransparency = 1
buttonsFrame.Parent = mainFrame

-- Command buttons data
local commands = {
    {name = "rocket", icon = "🚀", row = 1, col = 1},
    {name = "ragdoll", icon = "🏃", row = 1, col = 2},
    {name = "balloon", icon = "🎈", row = 2, col = 1},
    {name = "inverse", icon = "🔄", row = 2, col = 2},
    {name = "nightvision", icon = "👁", row = 3, col = 1},
    {name = "jail", icon = "🏛", row = 3, col = 2},
    {name = "control", icon = "🎭", row = 4, col = 1},
    {name = "tiny", icon = "🐜", row = 4, col = 2},
    {name = "jumpscare", icon = "👻", row = 5, col = 1},
    {name = "morph", icon = "🧠", row = 5, col = 2},
}

-- Selected player variable
local selectedPlayer = nil
local selectedPlayerFrame = nil

-- ESP Highlights storage
local espHighlights = {}

-- Command execution functions
local function executeRocket(player)
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local hrp = player.Character.HumanoidRootPart
        local bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.Velocity = Vector3.new(0, 200, 0)
        bodyVelocity.MaxForce = Vector3.new(0, math.huge, 0)
        bodyVelocity.Parent = hrp
        
        wait(3)
        bodyVelocity:Destroy()
        wait(1)
        player.Character:BreakJoints()
    end
end

local function executeRagdoll(player)
    if player.Character then
        player.Character:BreakJoints()
    end
end

local function executeBalloon(player)
    if player.Character and player.Character:FindFirstChild("Head") then
        local head = player.Character.Head
        local originalSize = head.Size
        
        head.Size = Vector3.new(10, 10, 10)
        
        local bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.Velocity = Vector3.new(0, 50, 0)
        bodyVelocity.MaxForce = Vector3.new(0, math.huge, 0)
        bodyVelocity.Parent = player.Character:FindFirstChild("HumanoidRootPart")
        
        wait(10)
        
        if bodyVelocity then bodyVelocity:Destroy() end
        if head then head.Size = originalSize end
    end
end

local function executeNightVision(player)
    if player.Character then
        -- Remove existing ESP if present
        if espHighlights[player.Name] then
            espHighlights[player.Name].Highlight:Destroy()
            espHighlights[player.Name].BillboardGui:Destroy()
            espHighlights[player.Name] = nil
            return
        end
        
        -- Create Highlight
        local highlight = Instance.new("Highlight")
        highlight.FillColor = Color3.fromRGB(0, 255, 0)
        highlight.OutlineColor = Color3.fromRGB(0, 200, 0)
        highlight.FillTransparency = 0.5
        highlight.OutlineTransparency = 0
        highlight.Parent = player.Character
        
        -- Create Billboard GUI for username
        local billboard = Instance.new("BillboardGui")
        billboard.Adornee = player.Character:FindFirstChild("Head")
        billboard.Size = UDim2.new(0, 200, 0, 50)
        billboard.StudsOffset = Vector3.new(0, 3, 0)
        billboard.AlwaysOnTop = true
        billboard.Parent = player.Character:FindFirstChild("Head")
        
        local nameLabel = Instance.new("TextLabel")
        nameLabel.Size = UDim2.new(1, 0, 1, 0)
        nameLabel.BackgroundTransparency = 1
        nameLabel.Text = player.Name
        nameLabel.Font = Enum.Font.GothamBold
        nameLabel.TextSize = 20
        nameLabel.TextColor3 = Color3.fromRGB(0, 255, 0)
        nameLabel.TextStrokeTransparency = 0.5
        nameLabel.Parent = billboard
        
        espHighlights[player.Name] = {Highlight = highlight, BillboardGui = billboard}
    end
end

local function executeJail(player)
    if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
        local hrp = player.Character.HumanoidRootPart
        
        -- Create jail
        local jail = Instance.new("Model")
        jail.Name = "Jail"
        jail.Parent = workspace
        
        local jailParts = {}
        local jailSize = 10
        local jailHeight = 12
        
        -- Floor
        local floor = Instance.new("Part")
        floor.Size = Vector3.new(jailSize, 1, jailSize)
        floor.Position = hrp.Position - Vector3.new(0, 3, 0)
        floor.Anchored = true
        floor.BrickColor = BrickColor.new("Dark stone grey")
        floor.Parent = jail
        
        -- Walls (bars)
        for i = 1, 4 do
            for j = 0, 5 do
                local bar = Instance.new("Part")
                bar.Size = Vector3.new(0.5, jailHeight, 0.5)
                bar.Anchored = true
                bar.BrickColor = BrickColor.new("Black")
                bar.Parent = jail
                
                if i == 1 then
                    bar.Position = floor.Position + Vector3.new(-jailSize/2 + j * 2, jailHeight/2, jailSize/2)
                elseif i == 2 then
                    bar.Position = floor.Position + Vector3.new(jailSize/2, jailHeight/2, jailSize/2 - j * 2)
                elseif i == 3 then
                    bar.Position = floor.Position + Vector3.new(jailSize/2 - j * 2, jailHeight/2, -jailSize/2)
                else
                    bar.Position = floor.Position + Vector3.new(-jailSize/2, jailHeight/2, -jailSize/2 + j * 2)
                end
            end
        end
        
        -- Roof
        local roof = Instance.new("Part")
        roof.Size = Vector3.new(jailSize, 1, jailSize)
        roof.Position = floor.Position + Vector3.new(0, jailHeight, 0)
        roof.Anchored = true
        roof.BrickColor = BrickColor.new("Dark stone grey")
        roof.Parent = jail
        
        hrp.Position = floor.Position + Vector3.new(0, 3, 0)
        hrp.Anchored = true
    end
end

local function executeTiny(player)
    if player.Character and player.Character:FindFirstChild("Humanoid") then
        local humanoid = player.Character.Humanoid
        
        for _, part in pairs(player.Character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.Size = part.Size * 0.3
            end
        end
        
        if humanoid then
            humanoid.HipHeight = humanoid.HipHeight * 0.3
        end
    end
end

local function executeJumpscare(player)
    if player == LocalPlayer then
        -- Create black screen
        local jumpscareGui = Instance.new("ScreenGui")
        jumpscareGui.Name = "JumpscareGui"
        jumpscareGui.Parent = PlayerGui
        
        local blackFrame = Instance.new("Frame")
        blackFrame.Size = UDim2.new(1, 0, 1, 0)
        blackFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
        blackFrame.BorderSizePixel = 0
        blackFrame.Parent = jumpscareGui
        
        -- Optional: Add scary text
        local scaryText = Instance.new("TextLabel")
        scaryText.Size = UDim2.new(1, 0, 1, 0)
        scaryText.BackgroundTransparency = 1
        scaryText.Text = "BOO!"
        scaryText.Font = Enum.Font.GothamBold
        scaryText.TextSize = 100
        scaryText.TextColor3 = Color3.fromRGB(255, 0, 0)
        scaryText.Parent = blackFrame
        
        wait(5)
        jumpscareGui:Destroy()
    end
end

-- Function to deselect current player
local function deselectPlayer()
    if selectedPlayerFrame then
        selectedPlayerFrame.BorderColor3 = Color3.fromRGB(50, 60, 70)
        selectedPlayerFrame.BorderSizePixel = 3
        selectedPlayerFrame.BackgroundColor3 = Color3.fromRGB(50, 60, 70)
    end
    selectedPlayer = nil
    selectedPlayerFrame = nil
end

-- Create command buttons
for _, cmd in ipairs(commands) do
    local button = Instance.new("TextButton")
    button.Name = cmd.name
    button.Size = UDim2.new(0, 240, 0, 70)
    button.Position = UDim2.new((cmd.col - 1) * 0.52, 0, (cmd.row - 1) * 0.21, 0)
    button.BackgroundColor3 = Color3.fromRGB(45, 55, 65)
    button.BackgroundTransparency = 0.3
    button.BorderSizePixel = 0
    button.AutoButtonColor = false
    button.Parent = buttonsFrame
    
    local btnCorner = Instance.new("UICorner")
    btnCorner.CornerRadius = UDim.new(0, 6)
    btnCorner.Parent = button
    
    -- Icon label
    local icon = Instance.new("TextLabel")
    icon.Size = UDim2.new(0, 50, 1, 0)
    icon.Position = UDim2.new(0, 10, 0, 0)
    icon.BackgroundTransparency = 1
    icon.Text = cmd.icon
    icon.Font = Enum.Font.Gotham
    icon.TextSize = 32
    icon.TextColor3 = Color3.fromRGB(255, 255, 255)
    icon.Parent = button
    
    -- Command name label
    local nameLabel = Instance.new("TextLabel")
    nameLabel.Size = UDim2.new(1, -70, 1, 0)
    nameLabel.Position = UDim2.new(0, 70, 0, 0)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = ":" .. cmd.name
    nameLabel.Font = Enum.Font.GothamBold
    nameLabel.TextSize = 20
    nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    nameLabel.TextXAlignment = Enum.TextXAlignment.Left
    nameLabel.Parent = button
    
    -- Hover effects
    button.MouseEnter:Connect(function()
        button.BackgroundColor3 = Color3.fromRGB(55, 70, 85)
    end)
    
    button.MouseLeave:Connect(function()
        button.BackgroundColor3 = Color3.fromRGB(45, 55, 65)
    end)
    
    -- Click functionality - executes command on selected player
    button.MouseButton1Click:Connect(function()
        if selectedPlayer then
            commandBox.Text = ":" .. cmd.name .. " " .. selectedPlayer.Name
            print("Executing: :" .. cmd.name .. " on " .. selectedPlayer.Name)
            
            -- Execute the actual command
            if cmd.name == "rocket" then
                executeRocket(selectedPlayer)
            elseif cmd.name == "ragdoll" then
                executeRagdoll(selectedPlayer)
            elseif cmd.name == "balloon" then
                executeBalloon(selectedPlayer)
            elseif cmd.name == "nightvision" then
                executeNightVision(selectedPlayer)
            elseif cmd.name == "jail" then
                executeJail(selectedPlayer)
            elseif cmd.name == "tiny" then
                executeTiny(selectedPlayer)
            elseif cmd.name == "jumpscare" then
                executeJumpscare(selectedPlayer)
            elseif cmd.name == "control" then
                print("Control command does nothing")
            elseif cmd.name == "inverse" then
                print("Inverse command doesn't work")
            elseif cmd.name == "morph" then
                print("Morph command doesn't work")
            end
            
            -- Command executed, deselect player
            deselectPlayer()
        else
            commandBox.Text = ":" .. cmd.name .. " "
            commandBox:CaptureFocus()
        end
    end)
end

-- Players List Container (right side)
local playersListFrame = Instance.new("ScrollingFrame")
playersListFrame.Name = "PlayersListFrame"
playersListFrame.Size = UDim2.new(0, 240, 0, 510)
playersListFrame.Position = UDim2.new(1, -260, 0, 80)
playersListFrame.BackgroundColor3 = Color3.fromRGB(40, 50, 60)
playersListFrame.BackgroundTransparency = 0.3
playersListFrame.BorderSizePixel = 0
playersListFrame.ScrollBarThickness = 6
playersListFrame.ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255)
playersListFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
playersListFrame.Parent = mainFrame

local playersCorner = Instance.new("UICorner")
playersCorner.CornerRadius = UDim.new(0, 6)
playersCorner.Parent = playersListFrame

-- UI List Layout for players
local listLayout = Instance.new("UIListLayout")
listLayout.SortOrder = Enum.SortOrder.Name
listLayout.Padding = UDim.new(0, 5)
listLayout.Parent = playersListFrame

-- Function to create player card
local function createPlayerCard(player)
    local playerCard = Instance.new("TextButton")
    playerCard.Name = player.Name
    playerCard.Size = UDim2.new(1, -10, 0, 80)
    playerCard.BackgroundColor3 = Color3.fromRGB(50, 60, 70)
    playerCard.BackgroundTransparency = 0.2
    playerCard.BorderSizePixel = 3
    playerCard.BorderColor3 = Color3.fromRGB(50, 60, 70)
    playerCard.AutoButtonColor = false
    playerCard.Text = ""
    playerCard.Parent = playersListFrame
    
    local cardCorner = Instance.new("UICorner")
    cardCorner.CornerRadius = UDim.new(0, 6)
    cardCorner.Parent = playerCard
    
    -- Player Avatar
    local avatar = Instance.new("ImageLabel")
    avatar.Name = "Avatar"
    avatar.Size = UDim2.new(0, 60, 0, 60)
    avatar.Position = UDim2.new(0, 10, 0.5, -30)
    avatar.BackgroundTransparency = 1
    avatar.Parent = playerCard
    
    local avatarCorner = Instance.new("UICorner")
    avatarCorner.CornerRadius = UDim.new(0, 8)
    avatarCorner.Parent = avatar
    
    -- Load avatar asynchronously
    spawn(function()
        local success, thumbnail = pcall(function()
            return Players:GetUserThumbnailAsync(player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
        end)
        if success then
            avatar.Image = thumbnail
        end
    end)
    
    -- Player Name
    local nameLabel = Instance.new("TextLabel")
    nameLabel.Size = UDim2.new(0, 150, 1, 0)
    nameLabel.Position = UDim2.new(0, 80, 0, 0)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = player.Name
    nameLabel.Font = Enum.Font.GothamBold
    nameLabel.TextSize = 16
    nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    nameLabel.TextXAlignment = Enum.TextXAlignment.Left
    nameLabel.TextWrapped = true
    nameLabel.Parent = playerCard
    
    -- Click to select player (only one at a time)
    playerCard.MouseButton1Click:Connect(function()
        -- Deselect previous player
        deselectPlayer()
        
        -- Select new player
        selectedPlayer = player
        selectedPlayerFrame = playerCard
        playerCard.BorderColor3 = Color3.fromRGB(255, 220, 0)
        playerCard.BorderSizePixel = 3
        playerCard.BackgroundColor3 = Color3.fromRGB(70, 85, 100)
        
        print("Selected player: " .. player.Name)
    end)
    
    -- Hover effects
    playerCard.MouseEnter:Connect(function()
        if playerCard ~= selectedPlayerFrame then
            playerCard.BackgroundColor3 = Color3.fromRGB(60, 75, 90)
        end
    end)
    
    playerCard.MouseLeave:Connect(function()
        if playerCard ~= selectedPlayerFrame then
            playerCard.BackgroundColor3 = Color3.fromRGB(50, 60, 70)
        end
    end)
    
    return playerCard
end

-- Function to update canvas size
local function updateCanvasSize()
    local contentSize = listLayout.AbsoluteContentSize
    playersListFrame.CanvasSize = UDim2.new(0, 0, 0, contentSize.Y + 10)
end

-- Add all current players
for _, player in ipairs(Players:GetPlayers()) do
    createPlayerCard(player)
end

-- Update canvas size initially
updateCanvasSize()

-- Listen for canvas size changes
listLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(updateCanvasSize)

-- Add new players when they join
Players.PlayerAdded:Connect(function(player)
    createPlayerCard(player)
end)

-- Remove players when they leave
Players.PlayerRemoving:Connect(function(player)
    local card = playersListFrame:FindFirstChild(player.Name)
    if card then
        if selectedPlayer == player then
            deselectPlayer()
        end
        card:Destroy()
    end
end)

-- ========================================
-- TOGGLE FUNCTIONALITY
-- ========================================

-- Toggle button click
toggleButton.MouseButton1Click:Connect(function()
    isToggled = not isToggled
    
    if isToggled then
        -- Turn on - show admin panel
        toggleButton.BackgroundColor3 = Color3.fromRGB(100, 200, 100)
        toggleCircle.Position = UDim2.new(1, -27, 0.5, -12)
        mainFrame.Visible = true
        bypassFrame.Visible = false
    else
        -- Turn off - hide admin panel
        toggleButton.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
        toggleCircle.Position = UDim2.new(0, 3, 0.5, -12)
        mainFrame.Visible = false
        bypassFrame.Visible = true
    end
end)

-- Close button functionality - hides panel and shows bypass UI again
closeButton.MouseButton1Click:Connect(function()
    mainFrame.Visible = false
    bypassFrame.Visible = true
    isToggled = false
    toggleButton.BackgroundColor3 = Color3.fromRGB(80, 80, 80)
    toggleCircle.Position = UDim2.new(0, 3, 0.5, -12)
end)

-- Make main frame draggable
local dragging
local dragInput
local dragStart
local startPos

local function update(input)
    local delta = input.Position - dragStart
    mainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

mainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

mainFrame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

game:GetService("UserInputService").InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)

print("Admin Panel Bypass loaded!")
print("Click the toggle to unlock the Admin Panel.")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
    Name = "Infinite Yield",
    Callback = function()
      		loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
  	end    
})

Tab:AddButton({
	Name = "Dex Explorer",
	Callback = function()
        loadstring(game:HttpGet("https://obj.wearedevs.net/2/scripts/Dex%20Explorer.lua"))()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = "NoClip Cheat I Unviseral📌",
	Callback = function()
      		-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "InstantStealGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = game.CoreGui

-- Create main frame (thin wide rectangle)
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 300, 0, 50)
mainFrame.Position = UDim2.new(0.5, -150, 0.1, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

-- Add UICorner for curved corners
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = mainFrame

-- Add UIStroke for red outline
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(255, 0, 0)
stroke.Thickness = 2
stroke.Parent = mainFrame

-- Create "Remove Solids" label
local label = Instance.new("TextLabel")
label.Name = "Label"
label.Size = UDim2.new(0, 180, 1, 0)
label.Position = UDim2.new(0, 15, 0, 0)
label.BackgroundTransparency = 1
label.Text = "Remove Solids"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.TextSize = 16
label.Font = Enum.Font.GothamBold
label.TextXAlignment = Enum.TextXAlignment.Left
label.Parent = mainFrame

-- Create toggle button
local toggleButton = Instance.new("TextButton")
toggleButton.Name = "ToggleButton"
toggleButton.Size = UDim2.new(0, 70, 0, 30)
toggleButton.Position = UDim2.new(1, -85, 0.5, -15)
toggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
toggleButton.BorderSizePixel = 0
toggleButton.Text = "OFF"
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.TextSize = 14
toggleButton.Font = Enum.Font.GothamBold
toggleButton.Parent = mainFrame

-- Add UICorner to toggle
local toggleCorner = Instance.new("UICorner")
toggleCorner.CornerRadius = UDim.new(0, 8)
toggleCorner.Parent = toggleButton

-- Toggle functionality
local enabled = false

toggleButton.MouseButton1Click:Connect(function()
    enabled = not enabled
    if enabled then
        toggleButton.Text = "ON"
        toggleButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        print("Instant steal: ENABLED")
        -- Add your instant steal functionality here
    else
        toggleButton.Text = "OFF"
        toggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        print("Instant steal: DISABLED")
    end
end)

-- Make frame draggable
local UIS = game:GetService("UserInputService")
local dragging = false
local dragStart, startPos

mainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position
    end
end)

mainFrame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = false
    end
end)

UIS.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        mainFrame.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = "HD Admin",
	Callback = function()
      		print("vx3! error.")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

local Section = Tab:AddSection({
	Name = "Scripts for Popular Games"
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "Steal a Brainrot Script I Chilli Development",
	Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/tienkhanh1/spicy/main/Chilli.lua"))()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = "Gag Script I Mozil on top",
	Callback = function()
      		print("Successfully Ran Script!")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = "Gag Script I Zysume",
	Callback = function()
      		print("Activated!")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = "99 Nights Script",
	Callback = function()
      		print("Successsfull!")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = "mm2 + mm1 Script",
	Callback = function()
      		print("Ran!")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = "Obby Games I Wallhop or obby",
	Callback = function()
      		print("Success!")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = "Steal a Brainrot I Instant Steal",
	Callback = function()
        -- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "InstantStealGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = game.CoreGui

-- Create main frame (thin wide rectangle)
local mainFrame = Instance.new("Frame")
mainFrame.Name = "MainFrame"
mainFrame.Size = UDim2.new(0, 300, 0, 50)
mainFrame.Position = UDim2.new(0.5, -150, 0.1, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = screenGui

-- Add UICorner for curved corners
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = mainFrame

-- Add UIStroke for red outline
local stroke = Instance.new("UIStroke")
stroke.Color = Color3.fromRGB(255, 0, 0)
stroke.Thickness = 2
stroke.Parent = mainFrame

-- Create "Instant steal" label
local label = Instance.new("TextLabel")
label.Name = "Label"
label.Size = UDim2.new(0, 180, 1, 0)
label.Position = UDim2.new(0, 15, 0, 0)
label.BackgroundTransparency = 1
label.Text = "Instant steal"
label.TextColor3 = Color3.fromRGB(255, 255, 255)
label.TextSize = 16
label.Font = Enum.Font.GothamBold
label.TextXAlignment = Enum.TextXAlignment.Left
label.Parent = mainFrame

-- Create toggle button
local toggleButton = Instance.new("TextButton")
toggleButton.Name = "ToggleButton"
toggleButton.Size = UDim2.new(0, 70, 0, 30)
toggleButton.Position = UDim2.new(1, -85, 0.5, -15)
toggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
toggleButton.BorderSizePixel = 0
toggleButton.Text = "OFF"
toggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
toggleButton.TextSize = 14
toggleButton.Font = Enum.Font.GothamBold
toggleButton.Parent = mainFrame

-- Add UICorner to toggle
local toggleCorner = Instance.new("UICorner")
toggleCorner.CornerRadius = UDim.new(0, 8)
toggleCorner.Parent = toggleButton

-- Toggle functionality
local enabled = false

toggleButton.MouseButton1Click:Connect(function()
    enabled = not enabled
    if enabled then
        toggleButton.Text = "ON"
        toggleButton.BackgroundColor3 = Color3.fromRGB(0, 255, 0)
        print("Instant steal: ENABLED")
        -- Add your instant steal functionality here
    else
        toggleButton.Text = "OFF"
        toggleButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
        print("Instant steal: DISABLED")
    end
end)

-- Make frame draggable
local UIS = game:GetService("UserInputService")
local dragging = false
local dragStart, startPos

mainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position
    end
end)

mainFrame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = false
    end
end)

UIS.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        mainFrame.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

local Section = Tab:AddSection({
	Name = "Bypassed!"
})

--[[
Name = <string> - The name of the section.
]]

local Tab = Window:MakeTab({
	Name = "Hd Admin",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

local Section = Tab:AddSection({
	Name = "Admin Commands I All Universal📌"
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = ";ping",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";commands",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";morphs",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";doner",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";serverRanks",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";ranks",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";banland",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";info",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";credits",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";updates",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";settings",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";!prefix",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";clear",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";getsound",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";cmdbar",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";refresh",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";respawn",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";shirt",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";pants",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = "hat",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";clearhats",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";face",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";invisible",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";paint",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";material",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";reflectance",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";transparency",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";glass",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";neon",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";shine",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";ghost",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";gold",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";jump",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";sit",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";bigHead",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";smallHead",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";potatoHead",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";spin",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";rainbowFart",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";icecream",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";warp",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";blur",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";hideGuis",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";ice",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";freeze",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";jail",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";forceField",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";fire",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";smoke",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";sparkles",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";name",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";hideName",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = "r15",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";r6",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";nightVision",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";dwarf",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";giant",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";size",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";bodyTypeScale",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";depth",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";headSize",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";height",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";hipHeight",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]
    
Tab:AddButton({
	Name = ";squash",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";proportion",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";width",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";fat",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";thin",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";char",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";morph",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";veiw",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";bundle",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";dino",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";follow",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";logs",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";chatLogs",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";h",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";hr",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";ho",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";hy",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";hg",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";hdg",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";hd",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";hdb",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";hp",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";hpk",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";hbk",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";fly",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";fly2",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";noClip",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";noClip2",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";speed",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";jumpPower",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";health",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";heal",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";god",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";damage",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";kill",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";teleport",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";bring",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";apparate",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";talk",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";bubbleChat",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddButton({
	Name = ";control",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

local Section = Tab:AddSection({
	Name = "Importation is very large I Rest of commands will be added soon📌"
})

--[[
Name = <string> - The name of the section.
]]

local Tab = Window:MakeTab({
	Name = "Experiment Features I Beta v2",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

local Section = Tab:AddSection({
	Name = "Experimental Features I Beta"
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddToggle({
	Name = "Remove Lag",
	Default = false,
	Callback = function(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

Tab:AddToggle({
	Name = "0 Point Fps I Lightning",
	Default = false,
	Callback = function(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

Tab:AddToggle({
	Name = "Connect to WireGuard",
	Default = false,
	Callback = function(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

Tab:AddToggle({
	Name = "Remove game detection",
	Default = false,
	Callback = function(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

Tab:AddToggle({
	Name = "Exploitation abuse",
	Default = false,
	Callback = function(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

Tab:AddToggle({
	Name = "Run Admin Abuse",
	Default = false,
	Callback = function(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

Tab:AddToggle({
	Name = "Summon Event [Beta]",
	Default = false,
	Callback = function(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

Tab:AddToggle({
	Name = "Auto Redirector",
	Default = false,
	Callback = function(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

Tab:AddToggle({
	Name = "Character Remove.",
	Default = false,
	Callback = function(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

Tab:AddToggle({
	Name = "Item hold {invisible}",
	Default = false,
	Callback = function(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

Tab:AddToggle({
	Name = "Logger",
	Default = false,
	Callback = function(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

Tab:AddToggle({
	Name = "Memory Logger",
	Default = false,
	Callback = function(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

local Section = Tab:AddSection({
	Name = "Currently in Proggess for Npm Terminal"
})

--[[
Name = <string> - The name of the section.
]]

local Tab = Window:MakeTab({
    Name = "Character",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local Section = Tab:AddSection({
	Name = "Player Elements"
})

--[[
Name = <string> - The name of the section.
]]

local CoolSlider = Tab:AddSlider({
	Name = "Speed Boost",
	Min = 0,
	Max = 500,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Walkspeed",
	Callback = function(Value)
		print(Value)
	end    
})

--[[
Name = <string> - The name of the slider.
Min = <number> - The minimal value of the slider.
Max = <number> - The maxium value of the slider.
Increment = <number> - How much the slider will change value when dragging.
Default = <number> - The default value of the slider.
ValueName = <string> - The text after the value number.
Callback = <function> - The function of the slider.
]]

Tab:AddToggle({
	Name = "Display Speed Boost UI",
	Default = false,
	Callback = function(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

local CoolSlider = Tab:AddSlider({
    Name = "Jump Power",
    Min = 0,
    Max = 500,
    Default = 50,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Jumppower",
    Callback = function(Value)
        print(Value)
    end    
})

Tab:AddToggle({
    Name = "Display Jump Power UI",
    Default = false,
    Callback = function(Value)
    end    
})

local Section = Tab:AddSection({
	Name = "We are currently progressing a new feature for the player"
})

--[[
Name = <string> - The name of the section.
]]

local Tab = Window:MakeTab({
	Name = "Farm",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

local Section = Tab:AddSection({
	Name = "Farming"
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
    Name = "Auto Farm",
    Callback = function()
        print("Auto Farm Activated")
  	end    
})

Tab:AddToggle({
	Name = "Anti Afk",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

Tab:AddToggle({
	Name = "Auto Buy",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

Tab:AddToggle({
	Name = "Auto Lock Base / Area I Only works in some games",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

Tab:AddToggle({
	Name = "Invisible",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

Tab:AddToggle({
	Name = "Lag Trick I Only works in some games",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

Tab:AddButton({
	Name = "Activate All",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

local Section = Tab:AddSection({
	Name = "Menu"
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddDropdown({
	Name = "Activation Delay",
	Default = "3",
	Options = {"1", "2", "3", "4", "5", "6", "7", "8", "9", "10"},
	Callback = function(Value)
		print(Value)
	end    
})

--[[
Name = <string> - The name of the dropdown.
Default = <string> - The default value of the dropdown.
Options = <table> - The options in the dropdown.
Callback = <function> - The function of the dropdown.
]]

local Tab = Window:MakeTab({
	Name = "Cheats I Beta",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

local Section = Tab:AddSection({
	Name = "Cheats"
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "Activate AI",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddToggle({
	Name = "Display AI on Screen",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

Tab:AddToggle({
	Name = "Use AI as Cheat",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

Tab:AddToggle({
	Name = "Activate Instant Type",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

Tab:AddToggle({
	Name = "Activate Script Writer",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

Tab:AddToggle({
	Name = "Activate Mind / Next move Determinator",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

Tab:AddToggle({
	Name = "Activate Auto Clicker",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

Tab:AddToggle({
	Name = "Activate Auto Play / Pilot",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

local Tab = Window:MakeTab({
	Name = "Gamepass Cheat",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

local Section = Tab:AddSection({
	Name = "Gamepass Cheats"
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "Get all Gamepassess for Free",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddToggle({
	Name = "Activate all Gamepassess",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

Tab:AddDropdown({
	Name = "Security Check",
	Default = "Auto",
	Options = {"Always", "Never"},
	Callback = function(Value)
		print(Value)
	end    
})

--[[
Name = <string> - The name of the dropdown.
Default = <string> - The default value of the dropdown.
Options = <table> - The options in the dropdown.
Callback = <function> - The function of the dropdown.
]]

Tab:AddButton({
	Name = "Anti Cheat Bypass",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddSlider({
	Name = "Automatic Time / Delay",
	Min = 0,
	Max = 1000,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Delay / Time",
	Callback = function(Value)
		print(Value)
	end    
})

--[[
Name = <string> - The name of the slider.
Min = <number> - The minimal value of the slider.
Max = <number> - The maxium value of the slider.
Increment = <number> - How much the slider will change value when dragging.
Default = <number> - The default value of the slider.
ValueName = <string> - The text after the value number.
Callback = <function> - The function of the slider.
]]

local Tab = Window:MakeTab({
	Name = "Robux",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

local Section = Tab:AddSection({
	Name = "Robux Hacks"
})

--[[
Name = <string> - The name of the section.
]]

Tab:AddButton({
	Name = "Generate Robux I Conncected to Slider",
	Callback = function()
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

Tab:AddSlider({
	Name = "Robux Amount",
	Min = 0,
	Max = 100000000,
	Default = 5,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Robux",
	Callback = function(Value)
		print(Value)
	end    
})

--[[
Name = <string> - The name of the slider.
Min = <number> - The minimal value of the slider.
Max = <number> - The maxium value of the slider.
Increment = <number> - How much the slider will change value when dragging.
Default = <number> - The default value of the slider.
ValueName = <string> - The text after the value number.
Callback = <function> - The function of the slider.
]]

Tab:AddToggle({
	Name = "Transfer Robux to Alt Account",
	Default = false,
	Callback = function(Value)
		print(Value)
	end    
})

--[[
Name = <string> - The name of the toggle.
Default = <bool> - The default value of the toggle.
Callback = <function> - The function of the toggle.
]]

Tab:AddDropdown({
    Name = "Select Waiting time",
    Default = "100",
    Options = {"50's", "100's", "150's", "200's", "250's", "300's", "350's", "400's", "450's", "500's"},
    Callback = function(Value)
        print(Value)
    end    
})
