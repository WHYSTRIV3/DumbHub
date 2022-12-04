local library = {}
library.flags = {}
local HttpService = game:GetService("HttpService")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Hb = game:GetService("RunService").Heartbeat;
local UIS = game:GetService("UserInputService")
local CG = game:GetService("CoreGui")


function library:CreateWindow(GameName)
    assert(typeof(GameName) == "string", "specify type string for CreateWindow function")

    local DumbHub = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local MainUICorner = Instance.new("UICorner")
    local TopBar = Instance.new("Frame")
    local TopBarUICorner = Instance.new("UICorner")
    local TopBarExtension = Instance.new("Frame")
    local TopBarTitle = Instance.new("TextLabel")
    local TopBarTitleUIPadding = Instance.new("UIPadding")
    local TopBarClose = Instance.new("ImageLabel")
    local Navigatin = Instance.new("Frame")
    local NavigationButtonHolder = Instance.new("Frame")
    local NavigationButtonHolderUIPadding = Instance.new("UIPadding")
    local NavigationButtonHolderUIListLayout = Instance.new("UIListLayout")
    local NavigationButtonHolderTemplate = Instance.new("TextButton")
    local NavigationButtonHolderUITemplatePadding = Instance.new("UIPadding")
    local NavigationUICorner = Instance.new("UICorner")
    local ContientContainer = Instance.new("Frame")
    local ContientContainerFade = Instance.new("Frame")
    local ContientContainerFadeUIGradient = Instance.new("UIGradient")
    local HomeTab = Instance.new("ScrollingFrame")
    local HomeTabUIPadding = Instance.new("UIPadding")
    local HomeTabUIListLayout = Instance.new("UIListLayout")

    DumbHub.Name = "DumbHub"
    DumbHub.Parent = game:GetService("CoreGui")

    Main.Name = "Main"
    Main.Parent = DumbHub
    Main.AnchorPoint = Vector2.new(0.5, 0.5)
    Main.BackgroundColor3 = Color3.fromRGB(52, 52, 52)
    Main.Position = UDim2.new(0.495885849, 0, 0.435246646, 0)
    Main.Size = UDim2.new(0, 450, 0, 300)

    MainUICorner.CornerRadius = UDim.new(0, 6)
    MainUICorner.Name = "MainUICorner"
    MainUICorner.Parent = Main

    TopBar.Name = "TopBar"
    TopBar.Parent = Main
    TopBar.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
    TopBar.Size = UDim2.new(1, 0, 0, 30)

    TopBarUICorner.CornerRadius = UDim.new(0, 6)
    TopBarUICorner.Name = "TopBarUICorner"
    TopBarUICorner.Parent = TopBar

    TopBarExtension.Name = "TopBarExtension"
    TopBarExtension.Parent = TopBar
    TopBarExtension.AnchorPoint = Vector2.new(0, 1)
    TopBarExtension.BackgroundColor3 = Color3.fromRGB(170, 0, 0)
    TopBarExtension.BorderSizePixel = 0
    TopBarExtension.Position = UDim2.new(0, 0, 1, 0)
    TopBarExtension.Size = UDim2.new(1, 0, 0.5, 0)

    TopBarTitle.Name = "TopBarTitle"
    TopBarTitle.Parent = TopBar
    TopBarTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TopBarTitle.BackgroundTransparency = 1.000
    TopBarTitle.Size = UDim2.new(0.5, 0, 1, 0)
    TopBarTitle.Font = Enum.Font.Gotham
    TopBarTitle.Text = GameName
    TopBarTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
    TopBarTitle.TextSize = 14.000
    TopBarTitle.TextXAlignment = Enum.TextXAlignment.Left

    TopBarTitleUIPadding.Name = "TopBarTitleUIPadding"
    TopBarTitleUIPadding.Parent = TopBarTitle
    TopBarTitleUIPadding.PaddingLeft = UDim.new(0, 10)
    TopBarTitleUIPadding.PaddingTop = UDim.new(0, 1)

    TopBarClose.Name = "TopBarClose"
    TopBarClose.Parent = TopBar
    TopBarClose.AnchorPoint = Vector2.new(1, 0)
    TopBarClose.BackgroundTransparency = 1.000
    TopBarClose.Position = UDim2.new(1, -2, 0, 4)
    TopBarClose.Size = UDim2.new(0, 22, 0, 22)
    TopBarClose.Image = "rbxassetid://2777727756"

    Navigatin.Name = "Navigatin"
    Navigatin.Parent = Main
    Navigatin.BackgroundColor3 = Color3.fromRGB(81, 81, 81)
    Navigatin.BorderColor3 = Color3.fromRGB(27, 42, 53)
    Navigatin.BorderSizePixel = 0
    Navigatin.Position = UDim2.new(0, 6, 0, 37)
    Navigatin.Size = UDim2.new(-0.0133333337, 120, 0.956666648, -30)

    NavigationButtonHolder.Name = "NavigationButtonHolder"
    NavigationButtonHolder.Parent = Navigatin
    NavigationButtonHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    NavigationButtonHolder.BackgroundTransparency = 1.000
    NavigationButtonHolder.Size = UDim2.new(1, 0, 1, 0)

    NavigationButtonHolderUIPadding.Name = "NavigationButtonHolderUIPadding"
    NavigationButtonHolderUIPadding.Parent = NavigationButtonHolder
    NavigationButtonHolderUIPadding.PaddingBottom = UDim.new(0, 8)
    NavigationButtonHolderUIPadding.PaddingTop = UDim.new(0, 8)

    NavigationButtonHolderUIListLayout.Name = "NavigationButtonHolderUIListLayout"
    NavigationButtonHolderUIListLayout.Parent = NavigationButtonHolder
    NavigationButtonHolderUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    NavigationButtonHolderUIListLayout.Padding = UDim.new(0, 1)

   

    NavigationUICorner.CornerRadius = UDim.new(0, 6)
    NavigationUICorner.Name = "NavigationUICorner"
    NavigationUICorner.Parent = Navigatin

    ContientContainer.Name = "ContientContainer"
    ContientContainer.Parent = Main
    ContientContainer.AnchorPoint = Vector2.new(1, 0)
    ContientContainer.BackgroundColor3 = Color3.fromRGB(77, 77, 77)
    ContientContainer.BackgroundTransparency = 1.000
    ContientContainer.Position = UDim2.new(1, -6, 0.00333333341, 36)
    ContientContainer.Size = UDim2.new(1, -133, 0.99666667, -42)

    ContientContainerFade.Name = "ContientContainerFade"
    ContientContainerFade.Parent = ContientContainer
    ContientContainerFade.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    ContientContainerFade.BorderSizePixel = 0
    ContientContainerFade.Size = UDim2.new(1, 0, 0, 30)
    ContientContainerFade.Visible = false
    ContientContainerFade.ZIndex = 10

    ContientContainerFadeUIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(51, 51, 51)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(52, 52, 52))}
    ContientContainerFadeUIGradient.Rotation = 90
    ContientContainerFadeUIGradient.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.00), NumberSequenceKeypoint.new(0.34, 0.24), NumberSequenceKeypoint.new(1.00, 0.98), NumberSequenceKeypoint.new(1.00, 0.00)}
    ContientContainerFadeUIGradient.Name = "ContientContainerFadeUIGradient"
    ContientContainerFadeUIGradient.Parent = ContientContainerFade

local Module = {}
    function Module:CreateNew(TabName)
        assert(typeof(TabName) == "string", "specify type string for CreateNew function")

        HomeTab.Name = TabName
        HomeTab.Parent = ContientContainer
        HomeTab.Active = true
        HomeTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        HomeTab.BackgroundTransparency = 1.000
        HomeTab.BorderSizePixel = 0
        HomeTab.Size = UDim2.new(1, 0, 1, 0)
        HomeTab.ScrollBarThickness = 0

        HomeTabUIPadding.Name = "HomeTabUIPadding"
        HomeTabUIPadding.Parent = HomeTab
        HomeTabUIPadding.PaddingBottom = UDim.new(0, 1)
        HomeTabUIPadding.PaddingLeft = UDim.new(0, 1)
        HomeTabUIPadding.PaddingRight = UDim.new(0, 1)
        HomeTabUIPadding.PaddingTop = UDim.new(0, 1)

        HomeTabUIListLayout.Name = "HomeTabUIListLayout"
        HomeTabUIListLayout.Parent = HomeTab
        HomeTabUIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
        HomeTabUIListLayout.Padding = UDim.new(0, 6)

        NavigationButtonHolderTemplate.Name = TabName
        NavigationButtonHolderTemplate.Parent = NavigationButtonHolder
        NavigationButtonHolderTemplate.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        NavigationButtonHolderTemplate.BackgroundTransparency = 0.900
        NavigationButtonHolderTemplate.BorderSizePixel = 0
        NavigationButtonHolderTemplate.Size = UDim2.new(1, 0, 0, 24)
        NavigationButtonHolderTemplate.Font = Enum.Font.Ubuntu
        NavigationButtonHolderTemplate.Text = TabName
        NavigationButtonHolderTemplate.TextColor3 = Color3.fromRGB(255, 255, 255)
        NavigationButtonHolderTemplate.TextSize = 15.000
        NavigationButtonHolderTemplate.TextXAlignment = Enum.TextXAlignment.Left
    
        NavigationButtonHolderUITemplatePadding.Name = "NavigationButtonHolderUITemplatePadding"
        NavigationButtonHolderUITemplatePadding.Parent = NavigationButtonHolderTemplate
        NavigationButtonHolderUITemplatePadding.PaddingLeft = UDim.new(0, 15)
    end
    return Module
end
return library
