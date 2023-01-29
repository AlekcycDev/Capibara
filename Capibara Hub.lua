local GUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/aaaa"))()

game.StarterGui:SetCore("SendNotification",{
    Title = "Capibara";
    Text = "Thanks for using capibara";
})

local UI = GUI:CreateWindow("Capibara Hub","EZ")

local settings = {
    AutoChat_Time = 1,
    AutoChat_Delay = 1,
    AutoChat = true,
 }

 local chatrem = game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest

local Home = UI:addPage("Home",0.5,true,6)

Home:addLabel("Main Page","Just scripts")

Home:addButton("Fly R6",function()
    repeat wait() 
	until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("Torso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid") 
local mouse = game.Players.LocalPlayer:GetMouse() 
repeat wait() until mouse
local plr = game.Players.LocalPlayer 
local torso = plr.Character.Torso 
local flying = true
local deb = true 
local ctrl = {f = 0, b = 0, l = 0, r = 0} 
local lastctrl = {f = 0, b = 0, l = 0, r = 0} 
local maxspeed = 50 
local speed = 0 
 
function Fly() 
local bg = Instance.new("BodyGyro", torso) 
bg.P = 9e4 
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9) 
bg.cframe = torso.CFrame 
local bv = Instance.new("BodyVelocity", torso) 
bv.velocity = Vector3.new(0,0.1,0) 
bv.maxForce = Vector3.new(9e9, 9e9, 9e9) 
repeat wait() 
plr.Character.Humanoid.PlatformStand = true 
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then 
speed = speed+.5+(speed/maxspeed) 
if speed > maxspeed then 
speed = maxspeed 
end 
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then 
speed = speed-1 
if speed < 0 then 
speed = 0 
end 
end 
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r} 
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then 
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed 
else 
bv.velocity = Vector3.new(0,0.1,0) 
end 
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0) 
until not flying 
ctrl = {f = 0, b = 0, l = 0, r = 0} 
lastctrl = {f = 0, b = 0, l = 0, r = 0} 
speed = 0 
bg:Destroy() 
bv:Destroy() 
plr.Character.Humanoid.PlatformStand = false 
end 
mouse.KeyDown:connect(function(key) 
if key:lower() == "e" then 
if flying then flying = false 
else 
flying = true 
Fly() 
end 
elseif key:lower() == "w" then 
ctrl.f = 1 
elseif key:lower() == "s" then 
ctrl.b = -1 
elseif key:lower() == "a" then 
ctrl.l = -1 
elseif key:lower() == "d" then 
ctrl.r = 1 
end 
end) 
mouse.KeyUp:connect(function(key) 
if key:lower() == "w" then 
ctrl.f = 0 
elseif key:lower() == "s" then 
ctrl.b = 0 
elseif key:lower() == "a" then 
ctrl.l = 0 
elseif key:lower() == "d" then 
ctrl.r = 0 
end 
end)
Fly()
end)

Home:addButton("Fly R15 / Can't off",function()
    _G.FLYING = false
    local LP = game:service('Players').LocalPlayer
    local T = LP.Character.UpperTorso
    local CONTROL = {F = 0, B = 0, L = 0, R = 0}
    local lCONTROL = {F = 0, B = 0, L = 0, R = 0}
    local SPEED = 5
    local MOUSE = LP:GetMouse()
     
     
    local function FLY()
        _G.FLYING = true
        local BG = Instance.new('BodyGyro', T)
        local BV = Instance.new('BodyVelocity', T)
        BG.P = 9e4
        BG.maxTorque = Vector3.new(9e9, 9e9, 9e9)
        BG.cframe = T.CFrame
        BV.velocity = Vector3.new(0, 0.1, 0)
        BV.maxForce = Vector3.new(9e9, 9e9, 9e9)
     
     
        spawn(function()
          repeat wait()
            LP.Character.Humanoid.PlatformStand = true
            if CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0 then
              SPEED = 50
            elseif not (CONTROL.L + CONTROL.R ~= 0 or CONTROL.F + CONTROL.B ~= 0) and SPEED ~= 0 then
              SPEED = 0
            end
            if (CONTROL.L + CONTROL.R) ~= 0 or (CONTROL.F + CONTROL.B) ~= 0 then
              BV.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (CONTROL.F + CONTROL.B)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(CONTROL.L + CONTROL.R, (CONTROL.F + CONTROL.B) * 0.2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
              lCONTROL = {F = CONTROL.F, B = CONTROL.B, L = CONTROL.L, R = CONTROL.R}
            elseif (CONTROL.L + CONTROL.R) == 0 and (CONTROL.F + CONTROL.B) == 0 and SPEED ~= 0 then
              BV.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lCONTROL.F + lCONTROL.B)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lCONTROL.L + lCONTROL.R, (lCONTROL.F + lCONTROL.B) * 0.2, 0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p)) * SPEED
            else
              BV.velocity = Vector3.new(0, 0.1, 0)
            end
            BG.cframe = game.Workspace.CurrentCamera.CoordinateFrame
          until not _G.FLYING
          CONTROL = {F = 0, B = 0, L = 0, R = 0}
          lCONTROL = {F = 0, B = 0, L = 0, R = 0}
          SPEED = 0
          BG:destroy()
          BV:destroy()
          LP.Character.Humanoid.PlatformStand = false
        end)
      end
     
      MOUSE.KeyDown:connect(function(KEY)
        if KEY:lower() == 'w' then
          CONTROL.F = 1
        elseif KEY:lower() == 's' then
          CONTROL.B = -1
        elseif KEY:lower() == 'a' then
          CONTROL.L = -1 
        elseif KEY:lower() == 'd' then 
          CONTROL.R = 1
        end
      end)
     
      MOUSE.KeyUp:connect(function(KEY)
        if KEY:lower() == 'w' then
          CONTROL.F = 0
        elseif KEY:lower() == 's' then
          CONTROL.B = 0
        elseif KEY:lower() == 'a' then
          CONTROL.L = 0
        elseif KEY:lower() == 'd' then
          CONTROL.R = 0
        end
      end)
     
     
     
     
      FLY()
end)

Home:addToggle("Spam EZ",function(value)
    print(value)
    if value == true then 
        pon = game:GetService("RunService").RenderStepped:Connect(function()
        wait(1)
        chatrem:FireServer('EZ', "All")
        end)
    else 
    pon:Disconnect()
    end
end)

Home:addButton("NoClip",function()
    local Workspace = game:GetService("Workspace")
    local CoreGui = game:GetService("CoreGui")
    local Players = game:GetService("Players")
    local Noclip = Instance.new("ScreenGui")
    local BG = Instance.new("Frame")
    local Title = Instance.new("TextLabel")
    local Toggle = Instance.new("TextButton")
    local StatusPF = Instance.new("TextLabel")
    local Status = Instance.new("TextLabel")
    local Credit = Instance.new("TextLabel")
    local Plr = Players.LocalPlayer
    local Clipon = false
     
    Noclip.Name = "Noclip"
    Noclip.Parent = game.CoreGui
     
    BG.Name = "BG"
    BG.Parent = Noclip
    BG.BackgroundColor3 = Color3.new(0.0980392, 0.0980392, 0.0980392)
    BG.BorderColor3 = Color3.new(0.0588235, 0.0588235, 0.0588235)
    BG.BorderSizePixel = 2
    BG.Position = UDim2.new(0.149479166, 0, 0.82087779, 0)
    BG.Size = UDim2.new(0, 210, 0, 127)
    BG.Active = true
    BG.Draggable = true
     
    Title.Name = "Title"
    Title.Parent = BG
    Title.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
    Title.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
    Title.BorderSizePixel = 2
    Title.Size = UDim2.new(0, 210, 0, 33)
    Title.Font = Enum.Font.Highway
    Title.Text = "Noclip"
    Title.TextColor3 = Color3.new(1, 1, 1)
    Title.FontSize = Enum.FontSize.Size32
    Title.TextSize = 30
    Title.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
    Title.TextStrokeTransparency = 0
     
    Toggle.Parent = BG
    Toggle.BackgroundColor3 = Color3.new(0.266667, 0.00392157, 0.627451)
    Toggle.BorderColor3 = Color3.new(0.180392, 0, 0.431373)
    Toggle.BorderSizePixel = 2
    Toggle.Position = UDim2.new(0.152380958, 0, 0.374192119, 0)
    Toggle.Size = UDim2.new(0, 146, 0, 36)
    Toggle.Font = Enum.Font.Highway
    Toggle.FontSize = Enum.FontSize.Size28
    Toggle.Text = "Toggle"
    Toggle.TextColor3 = Color3.new(1, 1, 1)
    Toggle.TextSize = 25
    Toggle.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
    Toggle.TextStrokeTransparency = 0
     
    StatusPF.Name = "StatusPF"
    StatusPF.Parent = BG
    StatusPF.BackgroundColor3 = Color3.new(1, 1, 1)
    StatusPF.BackgroundTransparency = 1
    StatusPF.Position = UDim2.new(0.314285725, 0, 0.708661377, 0)
    StatusPF.Size = UDim2.new(0, 56, 0, 20)
    StatusPF.Font = Enum.Font.Highway
    StatusPF.FontSize = Enum.FontSize.Size24
    StatusPF.Text = "Status:"
    StatusPF.TextColor3 = Color3.new(1, 1, 1)
    StatusPF.TextSize = 20
    StatusPF.TextStrokeColor3 = Color3.new(0.333333, 0.333333, 0.333333)
    StatusPF.TextStrokeTransparency = 0
    StatusPF.TextWrapped = true
     
    Status.Name = "Status"
    Status.Parent = BG
    Status.BackgroundColor3 = Color3.new(1, 1, 1)
    Status.BackgroundTransparency = 1
    Status.Position = UDim2.new(0.580952346, 0, 0.708661377, 0)
    Status.Size = UDim2.new(0, 56, 0, 20)
    Status.Font = Enum.Font.Highway
    Status.FontSize = Enum.FontSize.Size14
    Status.Text = "off"
    Status.TextColor3 = Color3.new(0.666667, 0, 0)
    Status.TextScaled = true
    Status.TextSize = 14
    Status.TextStrokeColor3 = Color3.new(0.180392, 0, 0.431373)
    Status.TextWrapped = true
    Status.TextXAlignment = Enum.TextXAlignment.Left
     
    Credit.Name = "Credit"
    Credit.Parent = BG
    Credit.BackgroundColor3 = Color3.new(1, 1, 1)
    Credit.BackgroundTransparency = 1
    Credit.Position = UDim2.new(0.195238099, 0, 0.866141737, 0)
    Credit.Size = UDim2.new(0, 128, 0, 17)
    Credit.Font = Enum.Font.SourceSans
    Credit.FontSize = Enum.FontSize.Size18
    Credit.Text = "Created by KingLuna"
    Credit.TextColor3 = Color3.new(1, 1, 1)
    Credit.TextSize = 16
    Credit.TextStrokeColor3 = Color3.new(0.196078, 0.196078, 0.196078)
    Credit.TextStrokeTransparency = 0
    Credit.TextWrapped = true
     
    Toggle.MouseButton1Click:connect(function()
        if Status.Text == "off" then
            Clipon = true
            Status.Text = "on"
            Status.TextColor3 = Color3.new(0,185,0)
            Stepped = game:GetService("RunService").Stepped:Connect(function()
                if not Clipon == false then
                    for a, b in pairs(Workspace:GetChildren()) do
                    if b.Name == Plr.Name then
                    for i, v in pairs(Workspace[Plr.Name]:GetChildren()) do
                    if v:IsA("BasePart") then
                    v.CanCollide = false
                    end end end end
                else
                    Stepped:Disconnect()
                end
            end)
        elseif Status.Text == "on" then
            Clipon = false
            Status.Text = "off"
            Status.TextColor3 = Color3.new(170,0,0)
        end
    end)
end)

Home:addSlider("WalkSpeed",16,250,function(value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

Home:addSlider("JumpPower",50,400,function(value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)
