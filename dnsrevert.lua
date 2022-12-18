local loadstring = loadlib("loadstring")
local haxx = getfenv(loadstring).myEnv
local require = haxx.require
local game = haxx.game

local appstore = game.Players.LocalPlayer.PlayerGui.LimeOS.MainOSFrame.Apps.Appstore
local a = appstore.MainFrame.UIGridLayout:Clone()
local b = appstore.MainFrame.AppTemplate:Clone()
appstore.MainFrame:ClearAllChildren()
a.Parent = appstore.MainFrame
b.Parent = appstore.MainFrame
local module = require(appstore.MainModule)
module.BeenCalled = false
module.Back()
game.ReplicatedStorage.RemoteEvents.HttpRequest:FireServer(nil, nil, true)
