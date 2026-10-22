repeat
	task.wait(0.5)
until game:IsLoaded()

local gui = game:GetObjects("rbxassetid://86951195161892")[1]
local dragDetector = Instance.new("UIDragDetector", gui.Frame)
gui.Parent = game.Players.LocalPlayer.PlayerGui
gui.Frame.Position = UDim2.new(0,720,0,300)

local okImDone = gui.Frame.OkImDone
okImDone.MouseButton1Click:Connect(function()
	gui:Destroy()
end)

local buttons = gui.Frame.Buttons

local infYield = buttons.infYield
local openDex = buttons.openDex
local abyssalContinued = buttons.abyssalContinued

infYield.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end)
openDex.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://github.com/dogmastr/OpenDex/releases/latest/download/out.lua"))()
end)
abyssalContinued.MouseButton1Click:Connect(function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/therealcookiemonsterof1966/AbysallContinued/main/Games/Doors/Main.luau"))()
end)
