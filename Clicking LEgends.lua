-- allready made code ready to copy and paste 
_G.autoRebirth = false
_G.autoTap = false
_G.buyegg = false

local remotepath = game:GetService("ReplicatedStorage").Remotes
--Made by : https://v3rmillion.net/member.php?action=profile&uid=507120
--Go vouch release thread : https://v3rmillion.net/showthread.php?tid=1040650

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wall%20v3')))()

local w = library:CreateWindow("Tapping Legends X Gui") -- Creates the window
local d = w:CreateFolder("Teleport")
local c = w:CreateFolder("Rebirth")
local b = w:CreateFolder("Farming")
b:Toggle("Auto Tap",function(bool)
    _G.autoTap = bool
    print('Auto Tap is ', bool)
	if bool then
	dotap();
	end
end)

c:Toggle("Rebirth",function(bool)
    _G.autoTap = bool
    print('Auto rebirth',bool)
	if bool then
rebirth();
	end
end)

d:Button("Forest",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-64.54061889648438, 801.1860961914062, -814.5797119140625)
end)

d:Button("Dessert",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-10.666767120361328, 1385.5870361328125, -825.16796875)
end)

d:Button("Winter",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(26.175493240356445, 2103.085693359375, -864.78515625)
end)

d:Button("Lava",function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(17.88603973388672, 2640.78564453125, -927.5296020507812)
end)


 -- Creates the folder(U will put here your buttons,etc
b:DestroyGui()

function dotap()
spawn(function()
print("Auto tap Function Succselfuly loaded")
while _G.autoTap == true do
remotepath.Tap:FireServer()
wait()
end
end)
end

function rebirth()
spawn(function()
print("Auto rebirth Function activated")
while _G.autoRebirth == true do
local args = {
    [1] = 5
}
remotepath.Rebirth:FireServer(unpack(args))
wait()
end
end)
end
