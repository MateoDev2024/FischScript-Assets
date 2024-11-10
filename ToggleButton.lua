local UI = Instance.new("ScreenGui")
local Toggle = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

UI.Name = "UI"
UI.Parent = game:GetService("CoreGui")
UI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Toggle.Name = "Toggle"
Toggle.Parent = UI
Toggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Toggle.BorderColor3 = Color3.fromRGB(0, 0, 0)
Toggle.BorderSizePixel = 0
Toggle.Position = UDim2.new(0.230495334, 0, 0.306237102, 0)
Toggle.Size = UDim2.new(0, 50, 0, 50)
Toggle.Image = "http://www.roblox.com/asset/?id=123430885842553"

UICorner.Parent = Toggle

local function JVIQT_fake_script()
	local script = Instance.new('LocalScript', Toggle)

	script.Parent.Activated:Connect(function()
		local MainUI = game:GetService("CoreGui"):FindFirstChild("RobloxGui_")
		if MainUI then
			for _, Item in pairs(MainUI:GetChildren()) do
				if Item:IsA("Frame") then
					if Item:FindFirstChild("CanvasGroup") then
						Item.Visible = not Item.Visible
					end
				end
			end
		end
	end)
end
coroutine.wrap(JVIQT_fake_script)()
local function FSNKTXN_fake_script() 
	local script = Instance.new('LocalScript', Toggle)

	local UIS = game:GetService('UserInputService')
	local frame = script.Parent
	local dragToggle = nil
	local dragSpeed = 0.25
	local dragStart = nil
	local startPos = nil
	
	local function updateInput(input)
		local delta = input.Position - dragStart
		local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y)
		game:GetService('TweenService'):Create(frame, TweenInfo.new(dragSpeed), {Position = position}):Play()
	end
	
	frame.InputBegan:Connect(function(input)
		if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
			dragToggle = true
			dragStart = input.Position
			startPos = frame.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragToggle = false
				end
			end)
		end
	end)
	
	UIS.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragToggle then
				updateInput(input)
			end
		end
	end)
end
coroutine.wrap(FSNKTXN_fake_script)()
