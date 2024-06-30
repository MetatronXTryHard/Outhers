--[[
    Fluent Interface Suite
    This script is not intended to be modified.
    To view the source code, see the 'src' folder on GitHub!

    Author: dawid
    Co-authored-by: ttwiz_z <i@twix.cyou>
    WCoder: metatron_exe <EoCristian_011>
    License: MIT
    GitHub: https://github.com/dawid-scripts/Fluent
]]

if not game:IsLoaded() then
    warn("Waiting for the game to load..")
    game.Loaded:Wait();
 end
 
local Client = game:GetService("Players").LocalPlayer

 getgenv().UICfg = {
     ["Connections"] = {},
     ["VersionLD"] = {UIVersion = {"0.0.1"}},
     ["Account"] = {Username = Client.Name, DisplayName = Client.DisplayName, UserID = Client.UserId, AccountAge = Client.AccountAge, Game = game.PlaceId},
     ["Files"] = {Folders = {"FluentCfg", "FluentCfg/Configs"}},
     ["Config"] = {},
 }

 local Success, error = pcall(function();
    for _, folder in ipairs(UICfg.Files.Folders) do
        makefolder(folder);
    end;
    
    local ConfigPath = "FluentCfg/Configs/Config.lua"
    if not isfile(ConfigPath) then 
        warn("Creating ConfigPath to |", ConfigPath)
        writefile(ConfigPath, "")
    end 
    end)
    if not Success then
      print("ConfigPath Error");
    end;

local L_1_, L_2_ = {
	{
		1,
		'ModuleScript',
		{
			'MainModule'
		},
		{
			{
				18,
				'ModuleScript',
				{
					'Creator'
				}
			},
			{
				28,
				'ModuleScript',
				{
					'Icons'
				}
			},
			{
				47,
				'ModuleScript',
				{
					'Themes'
				},
				{
					{
						50,
						'ModuleScript',
						{
							'Dark'
						}
					},
					{
						52,
						'ModuleScript',
						{
							'Purple'
						}
					},
					{
						51,
						'ModuleScript',
						{
							'Darker'
						}
					},
					{
						53,
						'ModuleScript',
						{
							'Rose'
						}
					},
					{
						49,
						'ModuleScript',
						{
							'Aqua'
						}
					},
					{
						48,
						'ModuleScript',
						{
							'Amethyst'
						}
					}
				}
			},
			{
				19,
				'ModuleScript',
				{
					'Elements'
				},
				{
					{
						21,
						'ModuleScript',
						{
							'Colorpicker'
						}
					},
					{
						27,
						'ModuleScript',
						{
							'Toggle'
						}
					},
					{
						23,
						'ModuleScript',
						{
							'Input'
						}
					},
					{
						20,
						'ModuleScript',
						{
							'Button'
						}
					},
					{
						25,
						'ModuleScript',
						{
							'Paragraph'
						}
					},
					{
						22,
						'ModuleScript',
						{
							'Dropdown'
						}
					},
					{
						26,
						'ModuleScript',
						{
							'Slider'
						}
					},
					{
						24,
						'ModuleScript',
						{
							'Keybind'
						}
					}
				}
			},
			{
				29,
				'Folder',
				{
					'Packages'
				},
				{
					{
						30,
						'ModuleScript',
						{
							'Flipper'
						},
						{
							{
								33,
								'ModuleScript',
								{
									'GroupMotor'
								}
							},
							{
								46,
								'ModuleScript',
								{
									'isMotor.spec'
								}
							},
							{
								39,
								'ModuleScript',
								{
									'Signal'
								}
							},
							{
								40,
								'ModuleScript',
								{
									'Signal.spec'
								}
							},
							{
								45,
								'ModuleScript',
								{
									'isMotor'
								}
							},
							{
								36,
								'ModuleScript',
								{
									'Instant.spec'
								}
							},
							{
								44,
								'ModuleScript',
								{
									'Spring.spec'
								}
							},
							{
								42,
								'ModuleScript',
								{
									'SingleMotor.spec'
								}
							},
							{
								38,
								'ModuleScript',
								{
									'Linear.spec'
								}
							},
							{
								31,
								'ModuleScript',
								{
									'BaseMotor'
								}
							},
							{
								43,
								'ModuleScript',
								{
									'Spring'
								}
							},
							{
								35,
								'ModuleScript',
								{
									'Instant'
								}
							},
							{
								37,
								'ModuleScript',
								{
									'Linear'
								}
							},
							{
								41,
								'ModuleScript',
								{
									'SingleMotor'
								}
							},
							{
								34,
								'ModuleScript',
								{
									'GroupMotor.spec'
								}
							},
							{
								32,
								'ModuleScript',
								{
									'BaseMotor.spec'
								}
							}
						}
					}
				}
			},
			{
				2,
				'ModuleScript',
				{
					'Acrylic'
				},
				{
					{
						3,
						'ModuleScript',
						{
							'AcrylicBlur'
						}
					},
					{
						5,
						'ModuleScript',
						{
							'CreateAcrylic'
						}
					},
					{
						6,
						'ModuleScript',
						{
							'Utils'
						}
					},
					{
						4,
						'ModuleScript',
						{
							'AcrylicPaint'
						}
					}
				}
			},
			{
				7,
				'Folder',
				{
					'Components'
				},
				{
					{
						9,
						'ModuleScript',
						{
							'Button'
						}
					},
					{
						12,
						'ModuleScript',
						{
							'Notification'
						}
					},
					{
						13,
						'ModuleScript',
						{
							'Section'
						}
					},
					{
						17,
						'ModuleScript',
						{
							'Window'
						}
					},
					{
						14,
						'ModuleScript',
						{
							'Tab'
						}
					},
					{
						10,
						'ModuleScript',
						{
							'Dialog'
						}
					},
					{
						8,
						'ModuleScript',
						{
							'Assets'
						}
					},
					{
						16,
						'ModuleScript',
						{
							'TitleBar'
						}
					},
					{
						15,
						'ModuleScript',
						{
							'Textbox'
						}
					},
					{
						11,
						'ModuleScript',
						{
							'Element'
						}
					}
				}
			}
		}
	}
}
local L_3_ = {
	function()
		local L_4_, L_5_, L_6_, L_7_, L_8_ = L_2_(1)
		local L_9_, L_10_, L_11_, L_12_, L_13_ = game:GetService'Lighting', game:GetService'Players'.LocalPlayer, game:GetService'UserInputService', game:GetService'TweenService', game:GetService'Workspace'.CurrentCamera
		local L_14_, L_15_ = L_10_:GetMouse(), L_5_
		local L_16_, L_17_, L_18_, L_19_ = L_6_(L_15_.Creator), L_6_(L_15_.Elements), L_6_(L_15_.Acrylic), L_15_.Components
		local L_20_, L_21_, L_22_ = L_6_(L_19_.Notification), L_16_.New, protectui or protect_ui or protectgui or protect_gui or syn and syn.protect_gui or function()
		end
		local L_23_ = L_21_('ScreenGui', {})
		xpcall(function()
			L_23_.Parent = gethui and gethui() or gethiddenui and gethiddenui() or gethiddengui and gethiddengui() or get_hidden_ui and get_hidden_ui() or get_hidden_gui and get_hidden_gui() or game:GetService'CoreGui'
		end, function()
			L_23_.DisplayOrder = 10
			L_23_.Parent = L_10_:WaitForChild('PlayerGui', math.huge)
		end)
		L_22_(L_23_)
		L_20_:Init(L_23_)
		local L_24_ = {
			Version = '1.1.1',
			OpenFrames = {},
			Options = {},
			Themes = L_6_(L_15_.Themes).Names,
			Window = nil,
			WindowFrame = nil,
			Unloaded = false,
			Theme = 'Dark',
			DialogOpen = false,
			UseAcrylic = false,
			Acrylic = false,
			Transparency = true,
			MinimizeKeybind = nil,
			MinimizeKey = Enum.KeyCode.LeftControl,
			ShowNotifications = true,
			ShowCallbackErrors = true,
			GUI = L_23_
		}
		function L_24_.SafeCallback(L_27_arg0, L_28_arg1, ...)
			if not L_28_arg1 then
				return
			end
			local L_29_, L_30_ = pcall(L_28_arg1, ...)
			if not L_29_ then
				local L_31_, L_32_ = L_30_:find':%d+: '
				if not L_32_ then
					return L_24_.ShowCallbackErrors and L_24_:Notify{
						Title = 'Interface',
						Content = 'Callback error',
						SubContent = L_30_,
						Duration = 5
					} or {}
				end
				return L_24_.ShowCallbackErrors and L_24_:Notify{
					Title = 'Interface',
					Content = 'Callback error',
					SubContent = L_30_:sub(L_32_ + 1),
					Duration = 5
				} or {}
			end
		end
		function L_24_.Round(L_33_arg0, L_34_arg1, L_35_arg2)
			if L_35_arg2 == 0 then
				return math.floor(L_34_arg1)
			end
			L_34_arg1 = tostring(L_34_arg1)
			return L_34_arg1:find'%.' and tonumber(L_34_arg1:sub(1, L_34_arg1:find'%.' + L_35_arg2)) or tonumber(L_34_arg1)
		end
		local L_25_ = L_6_(L_15_.Icons).assets
		function L_24_.GetIcon(L_36_arg0, L_37_arg1)
			if L_37_arg1 ~= nil and L_25_['lucide-' .. L_37_arg1] then
				return L_25_['lucide-' .. L_37_arg1]
			end
			return nil
		end
		local L_26_ = {}
		L_26_.__index = L_26_
		L_26_.__namecall = function(L_38_arg0, L_39_arg1, ...)
			return L_26_[L_39_arg1](...)
		end
		for L_40_forvar0, L_41_forvar1 in ipairs(L_17_) do
			L_26_['Add' .. L_41_forvar1.__type] = function(L_42_arg0, L_43_arg1, L_44_arg2)
				L_41_forvar1.Container = L_42_arg0.Container
				L_41_forvar1.Type = L_42_arg0.Type
				L_41_forvar1.ScrollFrame = L_42_arg0.ScrollFrame
				L_41_forvar1.Library = L_24_
				return L_41_forvar1:New(L_43_arg1, L_44_arg2)
			end
		end
		L_24_.Elements = L_26_
		function L_24_.CreateWindow(L_45_arg0, L_46_arg1)
			assert(L_46_arg1.Title, 'Window - Missing Title')
			if L_24_.Window then
				print'You cannot create more than one window.'
				return
			end
			L_24_.MinimizeKey = L_46_arg1.MinimizeKey
			L_24_.UseAcrylic = L_46_arg1.Acrylic
			if L_46_arg1.Acrylic then
				L_18_.init()
			end
			local L_47_ = L_6_(L_19_.Window){
				Parent = L_23_,
				Size = L_46_arg1.Size,
				Title = L_46_arg1.Title,
				SubTitle = L_46_arg1.SubTitle,
				TabWidth = L_46_arg1.TabWidth
			}
			L_24_.Window = L_47_
			L_24_:SetTheme(L_46_arg1.Theme)
			return L_47_
		end
		function L_24_.SetTheme(L_48_arg0, L_49_arg1)
			if L_24_.Window and table.find(L_24_.Themes, L_49_arg1) then
				L_24_.Theme = L_49_arg1
				L_16_.UpdateTheme()
			end
		end
		function L_24_.Destroy(L_50_arg0)
			if L_24_.Window then
				L_24_.Unloaded = true
				if L_24_.UseAcrylic then
					L_24_.Window.AcrylicPaint.Model:Destroy()
				end
				L_16_.Disconnect()
				L_24_.GUI:Destroy()
			end
		end
		function L_24_.ToggleAcrylic(L_51_arg0, L_52_arg1)
			if L_24_.Window then
				if L_24_.UseAcrylic then
					L_24_.Acrylic = L_52_arg1
					L_24_.Window.AcrylicPaint.Model.Transparency = L_52_arg1 and 0.98 or 1
					if L_52_arg1 then
						L_18_.Enable()
					else
						L_18_.Disable()
					end
				end
			end
		end
		function L_24_.ToggleTransparency(L_53_arg0, L_54_arg1)
			if L_24_.Window then
				L_24_.Window.AcrylicPaint.Frame.Background.BackgroundTransparency = L_54_arg1 and 0.35 or 0
			end
		end
		function L_24_.Notify(L_55_arg0, L_56_arg1)
			return L_24_.ShowNotifications and L_20_:New(L_56_arg1) or {}
		end
		if getgenv then
			getgenv().Fluent = L_24_
		end
		return L_24_
	end,
	function()
		local L_57_, L_58_, L_59_, L_60_, L_61_ = L_2_(2)
		local L_62_ = {
			AcrylicBlur = L_59_(L_58_.AcrylicBlur),
			CreateAcrylic = L_59_(L_58_.CreateAcrylic),
			AcrylicPaint = L_59_(L_58_.AcrylicPaint)
		}
		function L_62_.init()
			local L_63_ = Instance.new'DepthOfFieldEffect'
			L_63_.FarIntensity = 0
			L_63_.InFocusRadius = 0.1
			L_63_.NearIntensity = 1
			local L_64_ = {}
			function L_62_.Enable()
				for L_66_forvar0, L_67_forvar1 in pairs(L_64_) do
					L_67_forvar1.Enabled = false
				end
				L_63_.Parent = game:GetService'Lighting'
			end
			function L_62_.Disable()
				for L_68_forvar0, L_69_forvar1 in pairs(L_64_) do
					L_69_forvar1.Enabled = L_69_forvar1.enabled
				end
				L_63_.Parent = nil
			end
			local L_65_ = function()
				local L_70_ = function(L_71_arg0)
					if L_71_arg0:IsA'DepthOfFieldEffect' then
						L_64_[L_71_arg0] = {
							enabled = L_71_arg0.Enabled
						}
					end
				end
				for L_72_forvar0, L_73_forvar1 in pairs(game:GetService'Lighting':GetChildren()) do
					L_70_(L_73_forvar1)
				end
				if game:GetService'Workspace'.CurrentCamera then
					for L_74_forvar0, L_75_forvar1 in pairs(game:GetService'Workspace'.CurrentCamera:GetChildren()) do
						L_70_(L_75_forvar1)
					end
				end
			end
			L_65_()
			L_62_.Enable()
		end
		return L_62_
	end,
	function()
		local L_76_, L_77_, L_78_, L_79_, L_80_ = L_2_(3)
		local L_81_, L_82_, L_83_, L_84_ = L_78_(L_77_.Parent.Parent.Creator), L_78_(L_77_.Parent.CreateAcrylic), unpack(L_78_(L_77_.Parent.Utils))
		local L_85_ = function(L_86_arg0)
			local L_87_ = {}
			L_86_arg0 = L_86_arg0 or 0.001
			local L_88_, L_89_ = {
				topLeft = Vector2.new(),
				topRight = Vector2.new(),
				bottomRight = Vector2.new()
			}, L_82_()
			L_89_.Parent = workspace
			local L_90_, L_91_ = function(L_94_arg0, L_95_arg1)
				L_88_.topLeft = L_95_arg1
				L_88_.topRight = L_95_arg1 + Vector2.new(L_94_arg0.X, 0)
				L_88_.bottomRight = L_95_arg1 + L_94_arg0
			end, function()
				local L_96_ = game:GetService'Workspace'.CurrentCamera
				if L_96_ then
					L_96_ = L_96_.CFrame
				end
				local L_97_ = L_96_
				if not L_97_ then
					L_97_ = CFrame.new()
				end
				local L_98_, L_99_, L_100_, L_101_ = L_97_, L_88_.topLeft, L_88_.topRight, L_88_.bottomRight
				local L_102_, L_103_, L_104_ = L_83_(L_99_, L_86_arg0), L_83_(L_100_, L_86_arg0), L_83_(L_101_, L_86_arg0)
				local L_105_, L_106_ = (L_103_ - L_102_).Magnitude, (L_103_ - L_104_).Magnitude
				L_89_.CFrame = CFrame.fromMatrix((L_102_ + L_104_) / 2, L_98_.XVector, L_98_.YVector, L_98_.ZVector)
				L_89_.Mesh.Scale = Vector3.new(L_105_, L_106_, 0)
			end
			local L_92_, L_93_ = function(L_107_arg0)
				local L_108_ = L_84_()
				local L_109_, L_110_ = L_107_arg0.AbsoluteSize - Vector2.new(L_108_, L_108_), L_107_arg0.AbsolutePosition + Vector2.new(L_108_ / 2, L_108_ / 2)
				L_90_(L_109_, L_110_)
				task.spawn(L_91_)
			end, function()
				local L_111_ = game:GetService'Workspace'.CurrentCamera
				if not L_111_ then
					return
				end
				table.insert(L_87_, L_111_:GetPropertyChangedSignal'CFrame':Connect(L_91_))
				table.insert(L_87_, L_111_:GetPropertyChangedSignal'ViewportSize':Connect(L_91_))
				table.insert(L_87_, L_111_:GetPropertyChangedSignal'FieldOfView':Connect(L_91_))
				task.spawn(L_91_)
			end
			L_89_.Destroying:Connect(function()
				for L_112_forvar0, L_113_forvar1 in L_87_ do
					pcall(function()
						L_113_forvar1:Disconnect()
					end)
				end
			end)
			L_93_()
			return L_92_, L_89_
		end
		return function(L_114_arg0)
			local L_115_, L_116_, L_117_ = {}, L_85_(L_114_arg0)
			local L_118_ = L_81_.New('Frame', {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1)
			})
			L_81_.AddSignal(L_118_:GetPropertyChangedSignal'AbsolutePosition', function()
				L_116_(L_118_)
			end)
			L_81_.AddSignal(L_118_:GetPropertyChangedSignal'AbsoluteSize', function()
				L_116_(L_118_)
			end)
			L_115_.AddParent = function(L_119_arg0)
				L_81_.AddSignal(L_119_arg0:GetPropertyChangedSignal'Visible', function()
					L_115_.SetVisibility(L_119_arg0.Visible)
				end)
			end
			L_115_.SetVisibility = function(L_120_arg0)
				L_117_.Transparency = L_120_arg0 and 0.98 or 1
			end
			L_115_.Frame = L_118_
			L_115_.Model = L_117_
			return L_115_
		end
	end,
	function()
		local L_121_, L_122_, L_123_, L_124_, L_125_ = L_2_(4)
		local L_126_, L_127_ = L_123_(L_122_.Parent.Parent.Creator), L_123_(L_122_.Parent.AcrylicBlur)
		local L_128_ = L_126_.New
		return function(L_129_arg0)
			local L_130_ = {}
			L_130_.Frame = L_128_('Frame', {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 0.9,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BorderSizePixel = 0
			}, {
				L_128_('ImageLabel', {
					Image = 'rbxassetid://8992230677',
					ScaleType = 'Slice',
					SliceCenter = Rect.new(Vector2.new(99, 99), Vector2.new(99, 99)),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Size = UDim2.new(1, 120, 1, 116),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					BackgroundTransparency = 1,
					ImageColor3 = Color3.fromRGB(0, 0, 0),
					ImageTransparency = 0.7
				}),
				L_128_('UICorner', {
					CornerRadius = UDim.new(0, 8)
				}),
				L_128_('Frame', {
					BackgroundTransparency = 0.45,
					Size = UDim2.fromScale(1, 1),
					Name = 'Background',
					ThemeTag = {
						BackgroundColor3 = 'AcrylicMain'
					}
				}, {
					L_128_('UICorner', {
						CornerRadius = UDim.new(0, 8)
					})
				}),
				L_128_('Frame', {
					BackgroundColor3 = Color3.fromRGB(255, 255, 255),
					BackgroundTransparency = 0.4,
					Size = UDim2.fromScale(1, 1)
				}, {
					L_128_('UICorner', {
						CornerRadius = UDim.new(0, 8)
					}),
					L_128_('UIGradient', {
						Rotation = 90,
						ThemeTag = {
							Color = 'AcrylicGradient'
						}
					})
				}),
				L_128_('ImageLabel', {
					Image = 'rbxassetid://9968344105',
					ImageTransparency = 0.98,
					ScaleType = Enum.ScaleType.Tile,
					TileSize = UDim2.new(0, 128, 0, 128),
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1
				}, {
					L_128_('UICorner', {
						CornerRadius = UDim.new(0, 8)
					})
				}),
				L_128_('ImageLabel', {
					Image = 'rbxassetid://9968344227',
					ImageTransparency = 0.9,
					ScaleType = Enum.ScaleType.Tile,
					TileSize = UDim2.new(0, 128, 0, 128),
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 1,
					ThemeTag = {
						ImageTransparency = 'AcrylicNoise'
					}
				}, {
					L_128_('UICorner', {
						CornerRadius = UDim.new(0, 8)
					})
				}),
				L_128_('Frame', {
					BackgroundTransparency = 1,
					Size = UDim2.fromScale(1, 1),
					ZIndex = 2
				}, {
					L_128_('UICorner', {
						CornerRadius = UDim.new(0, 8)
					}),
					L_128_('UIStroke', {
						Transparency = 0.5,
						Thickness = 1,
						ThemeTag = {
							Color = 'AcrylicBorder'
						}
					})
				})
			})
			local L_131_
			if L_123_(L_122_.Parent.Parent).UseAcrylic then
				L_131_ = L_127_()
				L_131_.Frame.Parent = L_130_.Frame
				L_130_.Model = L_131_.Model
				L_130_.AddParent = L_131_.AddParent
				L_130_.SetVisibility = L_131_.SetVisibility
			end
			return L_130_
		end
	end,
	function()
		local L_132_, L_133_, L_134_, L_135_, L_136_ = L_2_(5)
		local L_137_ = L_133_.Parent.Parent
		local L_138_ = L_134_(L_137_.Creator)
		local L_139_ = function()
			local L_140_ = L_138_.New('Part', {
				Name = 'Body',
				Color = Color3.new(0, 0, 0),
				Material = Enum.Material.Glass,
				Size = Vector3.new(1, 1, 0),
				Anchored = true,
				CanCollide = false,
				Locked = true,
				CastShadow = false,
				Transparency = 0.98
			}, {
				L_138_.New('SpecialMesh', {
					MeshType = Enum.MeshType.Brick,
					Offset = Vector3.new(0, 0, -1)
				})
			})
			return L_140_
		end
		return L_139_
	end,
	function()
		local L_141_, L_142_, L_143_, L_144_, L_145_ = L_2_(6)
		local L_146_, L_147_ = function(L_149_arg0, L_150_arg1, L_151_arg2, L_152_arg3, L_153_arg4)
			return (L_149_arg0 - L_150_arg1) * (L_153_arg4 - L_152_arg3) / (L_151_arg2 - L_150_arg1) + L_152_arg3
		end, function(L_154_arg0, L_155_arg1)
			local L_156_ = game:GetService'Workspace'.CurrentCamera:ScreenPointToRay(L_154_arg0.X, L_154_arg0.Y)
			return L_156_.Origin + L_156_.Direction * L_155_arg1
		end
		local L_148_ = function()
			local L_157_ = game:GetService'Workspace'.CurrentCamera.ViewportSize.Y
			return L_146_(L_157_, 0, 2560, 8, 56)
		end
		return {
			L_147_,
			L_148_
		}
	end,
	[8] = function()
		local L_158_, L_159_, L_160_, L_161_, L_162_ = L_2_(8)
		return {
			Close = 'rbxassetid://9886659671',
			Min = 'rbxassetid://9886659276',
			Max = 'rbxassetid://9886659406',
			Restore = 'rbxassetid://9886659001'
		}
	end,
	[9] = function()
		local L_163_, L_164_, L_165_, L_166_, L_167_ = L_2_(9)
		local L_168_ = L_164_.Parent.Parent
		local L_169_, L_170_ = L_165_(L_168_.Packages.Flipper), L_165_(L_168_.Creator)
		local L_171_, L_172_ = L_170_.New, L_169_.Spring.new
		return function(L_173_arg0, L_174_arg1, L_175_arg2)
			L_175_arg2 = L_175_arg2 or false
			local L_176_ = {}
			L_176_.Title = L_171_('TextLabel', {
				FontFace = Font.new'rbxasset://fonts/families/GothamSSm.json',
				TextColor3 = Color3.fromRGB(200, 200, 200),
				TextSize = 14,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
				ThemeTag = {
					TextColor3 = 'Text'
				}
			})
			L_176_.HoverFrame = L_171_('Frame', {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				ThemeTag = {
					BackgroundColor3 = 'Hover'
				}
			}, {
				L_171_('UICorner', {
					CornerRadius = UDim.new(0, 4)
				})
			})
			L_176_.Frame = L_171_('TextButton', {
				Size = UDim2.new(0, 0, 0, 32),
				Parent = L_174_arg1,
				ThemeTag = {
					BackgroundColor3 = 'DialogButton'
				}
			}, {
				L_171_('UICorner', {
					CornerRadius = UDim.new(0, 4)
				}),
				L_171_('UIStroke', {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Transparency = 0.65,
					ThemeTag = {
						Color = 'DialogButtonBorder'
					}
				}),
				L_176_.HoverFrame,
				L_176_.Title
			})
			local L_177_, L_178_ = L_170_.SpringMotor(1, L_176_.HoverFrame, 'BackgroundTransparency', L_175_arg2)
			L_170_.AddSignal(L_176_.Frame.MouseEnter, function()
				L_178_(0.97)
			end)
			L_170_.AddSignal(L_176_.Frame.MouseLeave, function()
				L_178_(1)
			end)
			L_170_.AddSignal(L_176_.Frame.MouseButton1Down, function()
				L_178_(1)
			end)
			L_170_.AddSignal(L_176_.Frame.MouseButton1Up, function()
				L_178_(0.97)
			end)
			return L_176_
		end
	end,
	[10] = function()
		local L_179_, L_180_, L_181_, L_182_, L_183_ = L_2_(10)
		local L_184_, L_185_, L_186_, L_187_ = game:GetService'UserInputService', game:GetService'Players'.LocalPlayer:GetMouse(), game:GetService'Workspace'.CurrentCamera, L_180_.Parent.Parent
		local L_188_, L_189_ = L_181_(L_187_.Packages.Flipper), L_181_(L_187_.Creator)
		local L_190_, L_191_, L_192_, L_193_ = L_188_.Spring.new, L_188_.Instant.new, L_189_.New, {
			Window = nil
		}
		function L_193_.Init(L_194_arg0, L_195_arg1)
			L_193_.Window = L_195_arg1
			return L_193_
		end
		function L_193_.Create(L_196_arg0)
			local L_197_ = {
				Buttons = 0
			}
			L_197_.TintFrame = L_192_('TextButton', {
				Text = '',
				Size = UDim2.fromScale(1, 1),
				BackgroundColor3 = Color3.fromRGB(0, 0, 0),
				BackgroundTransparency = 1,
				Parent = L_193_.Window.Root
			}, {
				L_192_('UICorner', {
					CornerRadius = UDim.new(0, 8)
				})
			})
			local L_198_, L_199_ = L_189_.SpringMotor(1, L_197_.TintFrame, 'BackgroundTransparency', true)
			L_197_.ButtonHolder = L_192_('Frame', {
				Size = UDim2.new(1, -40, 1, -40),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				BackgroundTransparency = 1
			}, {
				L_192_('UIListLayout', {
					Padding = UDim.new(0, 10),
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder
				})
			})
			L_197_.ButtonHolderFrame = L_192_('Frame', {
				Size = UDim2.new(1, 0, 0, 70),
				Position = UDim2.new(0, 0, 1, -70),
				ThemeTag = {
					BackgroundColor3 = 'DialogHolder'
				}
			}, {
				L_192_('Frame', {
					Size = UDim2.new(1, 0, 0, 1),
					ThemeTag = {
						BackgroundColor3 = 'DialogHolderLine'
					}
				}),
				L_197_.ButtonHolder
			})
			L_197_.Title = L_192_('TextLabel', {
				FontFace = Font.new('rbxasset://fonts/families/GothamSSm.json', Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
				Text = 'Dialog',
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 22,
				TextXAlignment = Enum.TextXAlignment.Left,
				Size = UDim2.new(1, 0, 0, 22),
				Position = UDim2.fromOffset(20, 25),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				ThemeTag = {
					TextColor3 = 'Text'
				}
			})
			L_197_.Scale = L_192_('UIScale', {
				Scale = 1
			})
			local L_200_, L_201_ = L_189_.SpringMotor(1.1, L_197_.Scale, 'Scale')
			L_197_.Root = L_192_('CanvasGroup', {
				Size = UDim2.fromOffset(300, 165),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.fromScale(0.5, 0.5),
				GroupTransparency = 1,
				Parent = L_197_.TintFrame,
				ThemeTag = {
					BackgroundColor3 = 'Dialog'
				}
			}, {
				L_192_('UICorner', {
					CornerRadius = UDim.new(0, 8)
				}),
				L_192_('UIStroke', {
					Transparency = 0.5,
					ThemeTag = {
						Color = 'DialogBorder'
					}
				}),
				L_197_.Scale,
				L_197_.Title,
				L_197_.ButtonHolderFrame
			})
			local L_202_, L_203_ = L_189_.SpringMotor(1, L_197_.Root, 'GroupTransparency')
			function L_197_.Open(L_204_arg0)
				L_181_(L_187_).DialogOpen = true
				L_197_.Scale.Scale = 1.1
				L_199_(0.75)
				L_203_(0)
				L_201_(1)
			end
			function L_197_.Close(L_205_arg0)
				L_181_(L_187_).DialogOpen = false
				L_199_(1)
				L_203_(1)
				L_201_(1.1)
				L_197_.Root.UIStroke:Destroy()
				task.wait(0.15)
				L_197_.TintFrame:Destroy()
			end
			function L_197_.Button(L_206_arg0, L_207_arg1, L_208_arg2)
				L_197_.Buttons = L_197_.Buttons + 1
				L_207_arg1 = L_207_arg1 or 'Button'
				L_208_arg2 = L_208_arg2 or function()
				end
				local L_209_ = L_181_(L_187_.Components.Button)('', L_197_.ButtonHolder, true)
				L_209_.Title.Text = L_207_arg1
				for L_210_forvar0, L_211_forvar1 in next, L_197_.ButtonHolder:GetChildren() do
					if L_211_forvar1:IsA'TextButton' then
						L_211_forvar1.Size = UDim2.new(1 / L_197_.Buttons, -(((L_197_.Buttons - 1) * 10) / L_197_.Buttons), 0, 32)
					end
				end
				L_189_.AddSignal(L_209_.Frame.MouseButton1Click, function()
					L_181_(L_187_):SafeCallback(L_208_arg2)
					pcall(function()
						L_197_:Close()
					end)
				end)
				return L_209_
			end
			return L_197_
		end
		return L_193_
	end,
	[11] = function()
		local L_212_, L_213_, L_214_, L_215_, L_216_ = L_2_(11)
		local L_217_ = L_213_.Parent.Parent
		local L_218_, L_219_ = L_214_(L_217_.Packages.Flipper), L_214_(L_217_.Creator)
		local L_220_, L_221_ = L_219_.New, L_218_.Spring.new
		return function(L_222_arg0, L_223_arg1, L_224_arg2, L_225_arg3)
			local L_226_ = {}
			L_226_.TitleLabel = L_220_('TextLabel', {
				FontFace = Font.new('rbxasset://fonts/families/GothamSSm.json', Enum.FontWeight.Medium, Enum.FontStyle.Normal),
				Text = L_222_arg0,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				Size = UDim2.new(1, 0, 0, 14),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				ThemeTag = {
					TextColor3 = 'Text'
				}
			})
			L_226_.DescLabel = L_220_('TextLabel', {
				FontFace = Font.new'rbxasset://fonts/families/GothamSSm.json',
				Text = L_223_arg1,
				TextColor3 = Color3.fromRGB(200, 200, 200),
				TextSize = 12,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Left,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 14),
				ThemeTag = {
					TextColor3 = 'SubText'
				}
			})
			L_226_.LabelHolder = L_220_('Frame', {
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				Position = UDim2.fromOffset(10, 0),
				Size = UDim2.new(1, -28, 0, 0)
			}, {
				L_220_('UIListLayout', {
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center
				}),
				L_220_('UIPadding', {
					PaddingBottom = UDim.new(0, 13),
					PaddingTop = UDim.new(0, 13)
				}),
				L_226_.TitleLabel,
				L_226_.DescLabel
			})
			L_226_.Border = L_220_('UIStroke', {
				Transparency = 0.5,
				ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
				Color = Color3.fromRGB(0, 0, 0),
				ThemeTag = {
					Color = 'ElementBorder'
				}
			})
			L_226_.Frame = L_220_('TextButton', {
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 0.89,
				BackgroundColor3 = Color3.fromRGB(130, 130, 130),
				Parent = L_224_arg2,
				AutomaticSize = Enum.AutomaticSize.Y,
				Text = '',
				LayoutOrder = 7,
				ThemeTag = {
					BackgroundColor3 = 'Element',
					BackgroundTransparency = 'ElementTransparency'
				}
			}, {
				L_220_('UICorner', {
					CornerRadius = UDim.new(0, 4)
				}),
				L_226_.Border,
				L_226_.LabelHolder
			})
			function L_226_.SetTitle(L_227_arg0, L_228_arg1)
				L_226_.TitleLabel.Text = L_228_arg1
			end
			function L_226_.SetDesc(L_229_arg0, L_230_arg1)
				if L_230_arg1 == nil then
					L_230_arg1 = ''
				end
				if L_230_arg1 == '' then
					L_226_.DescLabel.Visible = false
				else
					L_226_.DescLabel.Visible = true
				end
				L_226_.DescLabel.Text = L_230_arg1
			end
			function L_226_.Destroy(L_231_arg0)
				L_226_.Frame:Destroy()
			end
			L_226_:SetTitle(L_222_arg0)
			L_226_:SetDesc(L_223_arg1)
			if L_225_arg3 then
				local L_232_, L_233_, L_234_ = L_217_.Themes, L_219_.SpringMotor(L_219_.GetThemeProperty'ElementTransparency', L_226_.Frame, 'BackgroundTransparency', false, true)
				L_219_.AddSignal(L_226_.Frame.MouseEnter, function()
					L_234_(L_219_.GetThemeProperty'ElementTransparency' - L_219_.GetThemeProperty'HoverChange')
				end)
				L_219_.AddSignal(L_226_.Frame.MouseLeave, function()
					L_234_(L_219_.GetThemeProperty'ElementTransparency')
				end)
				L_219_.AddSignal(L_226_.Frame.MouseButton1Down, function()
					L_234_(L_219_.GetThemeProperty'ElementTransparency' + L_219_.GetThemeProperty'HoverChange')
				end)
				L_219_.AddSignal(L_226_.Frame.MouseButton1Up, function()
					L_234_(L_219_.GetThemeProperty'ElementTransparency' - L_219_.GetThemeProperty'HoverChange')
				end)
			end
			return L_226_
		end
	end,
	[12] = function()
		local L_235_, L_236_, L_237_, L_238_, L_239_ = L_2_(12)
		local L_240_ = L_236_.Parent.Parent
		local L_241_, L_242_, L_243_ = L_237_(L_240_.Packages.Flipper), L_237_(L_240_.Creator), L_237_(L_240_.Acrylic)
		local L_244_, L_245_, L_246_, L_247_ = L_241_.Spring.new, L_241_.Instant.new, L_242_.New, {}
		function L_247_.Init(L_248_arg0, L_249_arg1)
			L_247_.Holder = L_246_('Frame', {
				Position = UDim2.new(1, -30, 1, -30),
				Size = UDim2.new(0, 310, 1, -30),
				AnchorPoint = Vector2.new(1, 1),
				BackgroundTransparency = 1,
				Parent = L_249_arg1
			}, {
				L_246_('UIListLayout', {
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Bottom,
					Padding = UDim.new(0, 20)
				})
			})
		end
		function L_247_.New(L_250_arg0, L_251_arg1)
			L_251_arg1.Title = L_251_arg1.Title or 'Title'
			L_251_arg1.Content = L_251_arg1.Content or 'Content'
			L_251_arg1.SubContent = L_251_arg1.SubContent or ''
			L_251_arg1.Duration = L_251_arg1.Duration or nil
			L_251_arg1.Buttons = L_251_arg1.Buttons or {}
			local L_252_ = {
				Closed = false
			}
			L_252_.AcrylicPaint = L_243_.AcrylicPaint()
			L_252_.Title = L_246_('TextLabel', {
				Position = UDim2.new(0, 14, 0, 17),
				Text = L_251_arg1.Title,
				RichText = true,
				TextColor3 = Color3.fromRGB(255, 255, 255),
				TextTransparency = 0,
				FontFace = Font.new'rbxasset://fonts/families/GothamSSm.json',
				TextSize = 13,
				TextXAlignment = 'Left',
				TextYAlignment = 'Center',
				Size = UDim2.new(1, -12, 0, 12),
				TextWrapped = true,
				BackgroundTransparency = 1,
				ThemeTag = {
					TextColor3 = 'Text'
				}
			})
			L_252_.ContentLabel = L_246_('TextLabel', {
				FontFace = Font.new'rbxasset://fonts/families/GothamSSm.json',
				Text = L_251_arg1.Content,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, 0, 0, 14),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				TextWrapped = true,
				ThemeTag = {
					TextColor3 = 'Text'
				}
			})
			L_252_.SubContentLabel = L_246_('TextLabel', {
				FontFace = Font.new'rbxasset://fonts/families/GothamSSm.json',
				Text = L_251_arg1.SubContent,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				AutomaticSize = Enum.AutomaticSize.Y,
				Size = UDim2.new(1, 0, 0, 14),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				TextWrapped = true,
				ThemeTag = {
					TextColor3 = 'SubText'
				}
			})
			L_252_.LabelHolder = L_246_('Frame', {
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				Position = UDim2.fromOffset(14, 40),
				Size = UDim2.new(1, -28, 0, 0)
			}, {
				L_246_('UIListLayout', {
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDim.new(0, 3)
				}),
				L_252_.ContentLabel,
				L_252_.SubContentLabel
			})
			L_252_.CloseButton = L_246_('TextButton', {
				Text = '',
				Position = UDim2.new(1, -14, 0, 13),
				Size = UDim2.fromOffset(20, 20),
				AnchorPoint = Vector2.new(1, 0),
				BackgroundTransparency = 1
			}, {
				L_246_('ImageLabel', {
					Image = L_237_(L_236_.Parent.Assets).Close,
					Size = UDim2.fromOffset(16, 16),
					Position = UDim2.fromScale(0.5, 0.5),
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					ThemeTag = {
						ImageColor3 = 'Text'
					}
				})
			})
			L_252_.Root = L_246_('Frame', {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.fromScale(1, 0)
			}, {
				L_252_.AcrylicPaint.Frame,
				L_252_.Title,
				L_252_.CloseButton,
				L_252_.LabelHolder
			})
			if L_251_arg1.Content == '' then
				L_252_.ContentLabel.Visible = false
			end
			if L_251_arg1.SubContent == '' then
				L_252_.SubContentLabel.Visible = false
			end
			L_252_.Holder = L_246_('Frame', {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 200),
				Parent = L_247_.Holder
			}, {
				L_252_.Root
			})
			local L_253_ = L_241_.GroupMotor.new{
				Scale = 1,
				Offset = 60
			}
			L_253_:onStep(function(L_254_arg0)
				L_252_.Root.Position = UDim2.new(L_254_arg0.Scale, L_254_arg0.Offset, 0, 0)
			end)
			L_242_.AddSignal(L_252_.CloseButton.MouseButton1Click, function()
				L_252_:Close()
			end)
			function L_252_.Open(L_255_arg0)
				local L_256_ = L_252_.LabelHolder.AbsoluteSize.Y
				L_252_.Holder.Size = UDim2.new(1, 0, 0, 58 + L_256_)
				L_253_:setGoal{
					Scale = L_244_(0, {
						frequency = 5
					}),
					Offset = L_244_(0, {
						frequency = 5
					})
				}
			end
			function L_252_.Close(L_257_arg0)
				if not L_252_.Closed then
					L_252_.Closed = true
					task.spawn(function()
						L_253_:setGoal{
							Scale = L_244_(1, {
								frequency = 5
							}),
							Offset = L_244_(60, {
								frequency = 5
							})
						}
						task.wait(0.4)
						if L_237_(L_240_).UseAcrylic then
							L_252_.AcrylicPaint.Model:Destroy()
						end
						L_252_.Holder:Destroy()
					end)
				end
			end
			L_252_:Open()
			if L_251_arg1.Duration then
				task.delay(L_251_arg1.Duration, function()
					L_252_:Close()
				end)
			end
			return L_252_
		end
		return L_247_
	end,
	[13] = function()
		local L_258_, L_259_, L_260_, L_261_, L_262_ = L_2_(13)
		local L_263_ = L_259_.Parent.Parent
		local L_264_ = L_260_(L_263_.Creator)
		local L_265_ = L_264_.New
		return function(L_266_arg0, L_267_arg1)
			local L_268_ = {}
			L_268_.Layout = L_265_('UIListLayout', {
				Padding = UDim.new(0, 5)
			})
			L_268_.Container = L_265_('Frame', {
				Size = UDim2.new(1, 0, 0, 26),
				Position = UDim2.fromOffset(0, 24),
				BackgroundTransparency = 1
			}, {
				L_268_.Layout
			})
			L_268_.Root = L_265_('Frame', {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 26),
				LayoutOrder = 7,
				Parent = L_267_arg1
			}, {
				L_265_('TextLabel', {
					RichText = true,
					Text = L_266_arg0,
					TextTransparency = 0,
					FontFace = Font.new('rbxassetid://12187365364', Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
					TextSize = 18,
					TextXAlignment = 'Left',
					TextYAlignment = 'Center',
					Size = UDim2.new(1, -16, 0, 18),
					Position = UDim2.fromOffset(0, 2),
					ThemeTag = {
						TextColor3 = 'Text'
					}
				}),
				L_268_.Container
			})
			L_264_.AddSignal(L_268_.Layout:GetPropertyChangedSignal'AbsoluteContentSize', function()
				L_268_.Container.Size = UDim2.new(1, 0, 0, L_268_.Layout.AbsoluteContentSize.Y)
				L_268_.Root.Size = UDim2.new(1, 0, 0, L_268_.Layout.AbsoluteContentSize.Y + 25)
			end)
			return L_268_
		end
	end,
	[14] = function()
		local L_269_, L_270_, L_271_, L_272_, L_273_ = L_2_(14)
		local L_274_ = L_270_.Parent.Parent
		local L_275_, L_276_ = L_271_(L_274_.Packages.Flipper), L_271_(L_274_.Creator)
		local L_277_, L_278_, L_279_, L_280_, L_281_ = L_276_.New, L_275_.Spring.new, L_275_.Instant.new, L_274_.Components, {
			Window = nil,
			Tabs = {},
			Containers = {},
			SelectedTab = 0,
			TabCount = 0
		}
		function L_281_.Init(L_282_arg0, L_283_arg1)
			L_281_.Window = L_283_arg1
			return L_281_
		end
		function L_281_.GetCurrentTabPos(L_284_arg0)
			local L_285_, L_286_ = L_281_.Window.TabHolder.AbsolutePosition.Y, L_281_.Tabs[L_281_.SelectedTab].Frame.AbsolutePosition.Y
			return L_286_ - L_285_
		end
		function L_281_.New(L_287_arg0, L_288_arg1, L_289_arg2, L_290_arg3)
			local L_291_, L_292_ = L_271_(L_274_), L_281_.Window
			local L_293_ = L_291_.Elements
			L_281_.TabCount = L_281_.TabCount + 1
			local L_294_, L_295_ = L_281_.TabCount, {
				Selected = false,
				Name = L_288_arg1,
				Type = 'Tab'
			}
			if L_291_:GetIcon(L_289_arg2) then
				L_289_arg2 = L_291_:GetIcon(L_289_arg2)
			end
			if L_289_arg2 == '' or nil then
				L_289_arg2 = nil
			end
			L_295_.Frame = L_277_('TextButton', {
				Size = UDim2.new(1, 0, 0, 34),
				BackgroundTransparency = 1,
				Parent = L_290_arg3,
				ThemeTag = {
					BackgroundColor3 = 'Tab'
				}
			}, {
				L_277_('UICorner', {
					CornerRadius = UDim.new(0, 6)
				}),
				L_277_('TextLabel', {
					AnchorPoint = Vector2.new(0, 0.5),
					Position = L_289_arg2 and UDim2.new(0, 30, 0.5, 0) or UDim2.new(0, 12, 0.5, 0),
					Text = L_288_arg1,
					RichText = true,
					TextColor3 = Color3.fromRGB(255, 255, 255),
					TextTransparency = 0,
					FontFace = Font.new('rbxasset://fonts/families/GothamSSm.json', Enum.FontWeight.Regular, Enum.FontStyle.Normal),
					TextSize = 12,
					TextXAlignment = 'Left',
					TextYAlignment = 'Center',
					Size = UDim2.new(1, -12, 1, 0),
					BackgroundTransparency = 1,
					ThemeTag = {
						TextColor3 = 'Text'
					}
				}),
				L_277_('ImageLabel', {
					AnchorPoint = Vector2.new(0, 0.5),
					Size = UDim2.fromOffset(16, 16),
					Position = UDim2.new(0, 8, 0.5, 0),
					BackgroundTransparency = 1,
					Image = L_289_arg2 and L_289_arg2 or nil,
					ThemeTag = {
						ImageColor3 = 'Text'
					}
				})
			})
			local L_296_ = L_277_('UIListLayout', {
				Padding = UDim.new(0, 5),
				SortOrder = Enum.SortOrder.LayoutOrder
			})
			L_295_.ContainerFrame = L_277_('ScrollingFrame', {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				Parent = L_292_.ContainerHolder,
				Visible = false,
				BottomImage = 'rbxassetid://6889812791',
				MidImage = 'rbxassetid://6889812721',
				TopImage = 'rbxassetid://6276641225',
				ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255),
				ScrollBarImageTransparency = 0.95,
				ScrollBarThickness = 3,
				BorderSizePixel = 0,
				CanvasSize = UDim2.fromScale(0, 0),
				ScrollingDirection = Enum.ScrollingDirection.Y
			}, {
				L_296_,
				L_277_('UIPadding', {
					PaddingRight = UDim.new(0, 10),
					PaddingLeft = UDim.new(0, 1),
					PaddingTop = UDim.new(0, 1),
					PaddingBottom = UDim.new(0, 1)
				})
			})
			L_276_.AddSignal(L_296_:GetPropertyChangedSignal'AbsoluteContentSize', function()
				L_295_.ContainerFrame.CanvasSize = UDim2.new(0, 0, 0, L_296_.AbsoluteContentSize.Y + 2)
			end)
			L_295_.Motor, L_295_.SetTransparency = L_276_.SpringMotor(1, L_295_.Frame, 'BackgroundTransparency')
			L_276_.AddSignal(L_295_.Frame.MouseEnter, function()
				L_295_.SetTransparency(L_295_.Selected and 0.85 or 0.89)
			end)
			L_276_.AddSignal(L_295_.Frame.MouseLeave, function()
				L_295_.SetTransparency(L_295_.Selected and 0.89 or 1)
			end)
			L_276_.AddSignal(L_295_.Frame.MouseButton1Down, function()
				L_295_.SetTransparency(0.92)
			end)
			L_276_.AddSignal(L_295_.Frame.MouseButton1Up, function()
				L_295_.SetTransparency(L_295_.Selected and 0.85 or 0.89)
			end)
			L_276_.AddSignal(L_295_.Frame.MouseButton1Click, function()
				L_281_:SelectTab(L_294_)
			end)
			L_281_.Containers[L_294_] = L_295_.ContainerFrame
			L_281_.Tabs[L_294_] = L_295_
			L_295_.Container = L_295_.ContainerFrame
			L_295_.ScrollFrame = L_295_.Container
			function L_295_.AddSection(L_297_arg0, L_298_arg1)
				local L_299_, L_300_ = {
					Type = 'Section'
				}, L_271_(L_280_.Section)(L_298_arg1, L_295_.Container)
				L_299_.Container = L_300_.Container
				L_299_.ScrollFrame = L_295_.Container
				setmetatable(L_299_, L_293_)
				return L_299_
			end
			setmetatable(L_295_, L_293_)
			return L_295_
		end
		function L_281_.SelectTab(L_301_arg0, L_302_arg1)
			local L_303_ = L_281_.Window
			L_281_.SelectedTab = L_302_arg1
			for L_304_forvar0, L_305_forvar1 in next, L_281_.Tabs do
				L_305_forvar1.SetTransparency(1)
				L_305_forvar1.Selected = false
			end
			L_281_.Tabs[L_302_arg1].SetTransparency(0.89)
			L_281_.Tabs[L_302_arg1].Selected = true
			L_303_.TabDisplay.Text = L_281_.Tabs[L_302_arg1].Name
			L_303_.SelectorPosMotor:setGoal(L_278_(L_281_:GetCurrentTabPos(), {
				frequency = 6
			}))
			task.spawn(function()
				L_303_.ContainerPosMotor:setGoal(L_278_(110, {
					frequency = 10
				}))
				L_303_.ContainerBackMotor:setGoal(L_278_(1, {
					frequency = 10
				}))
				task.wait(0.15)
				for L_306_forvar0, L_307_forvar1 in next, L_281_.Containers do
					L_307_forvar1.Visible = false
				end
				L_281_.Containers[L_302_arg1].Visible = true
				L_303_.ContainerPosMotor:setGoal(L_278_(94, {
					frequency = 5
				}))
				L_303_.ContainerBackMotor:setGoal(L_278_(0, {
					frequency = 8
				}))
			end)
		end
		return L_281_
	end,
	[15] = function()
		local L_308_, L_309_, L_310_, L_311_, L_312_ = L_2_(15)
		local L_313_, L_314_ = game:GetService'TextService', L_309_.Parent.Parent
		local L_315_, L_316_ = L_310_(L_314_.Packages.Flipper), L_310_(L_314_.Creator)
		local L_317_ = L_316_.New
		return function(L_318_arg0, L_319_arg1)
			L_319_arg1 = L_319_arg1 or false
			local L_320_ = {}
			L_320_.Input = L_317_('TextBox', {
				FontFace = Font.new'rbxasset://fonts/families/GothamSSm.json',
				TextColor3 = Color3.fromRGB(200, 200, 200),
				TextSize = 14,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				AutomaticSize = Enum.AutomaticSize.Y,
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
				Position = UDim2.fromOffset(10, 0),
				ThemeTag = {
					TextColor3 = 'Text',
					PlaceholderColor3 = 'SubText'
				}
			})
			L_320_.Container = L_317_('Frame', {
				BackgroundTransparency = 1,
				ClipsDescendants = true,
				Position = UDim2.new(0, 6, 0, 0),
				Size = UDim2.new(1, -12, 1, 0)
			}, {
				L_320_.Input
			})
			L_320_.Indicator = L_317_('Frame', {
				Size = UDim2.new(1, -4, 0, 1),
				Position = UDim2.new(0, 2, 1, 0),
				AnchorPoint = Vector2.new(0, 1),
				BackgroundTransparency = L_319_arg1 and 0.5 or 0,
				ThemeTag = {
					BackgroundColor3 = L_319_arg1 and 'InputIndicator' or 'DialogInputLine'
				}
			})
			L_320_.Frame = L_317_('Frame', {
				Size = UDim2.new(0, 0, 0, 30),
				BackgroundTransparency = L_319_arg1 and 0.9 or 0,
				Parent = L_318_arg0,
				ThemeTag = {
					BackgroundColor3 = L_319_arg1 and 'Input' or 'DialogInput'
				}
			}, {
				L_317_('UICorner', {
					CornerRadius = UDim.new(0, 4)
				}),
				L_317_('UIStroke', {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					Transparency = L_319_arg1 and 0.5 or 0.65,
					ThemeTag = {
						Color = L_319_arg1 and 'InElementBorder' or 'DialogButtonBorder'
					}
				}),
				L_320_.Indicator,
				L_320_.Container
			})
			local L_321_ = function()
				local L_322_, L_323_ = 2, L_320_.Container.AbsoluteSize.X
				if not L_320_.Input:IsFocused() or L_320_.Input.TextBounds.X <= L_323_ - 2 * L_322_ then
					L_320_.Input.Position = UDim2.new(0, L_322_, 0, 0)
				else
					local L_324_ = L_320_.Input.CursorPosition
					if L_324_ ~= -1 then
						local L_325_ = string.sub(L_320_.Input.Text, 1, L_324_ - 1)
						local L_326_ = L_313_:GetTextSize(L_325_, L_320_.Input.TextSize, L_320_.Input.Font, Vector2.new(math.huge, math.huge)).X
						local L_327_ = L_320_.Input.Position.X.Offset + L_326_
						if L_327_ < L_322_ then
							L_320_.Input.Position = UDim2.fromOffset(L_322_ - L_326_, 0)
						elseif L_327_ > L_323_ - L_322_ - 1 then
							L_320_.Input.Position = UDim2.fromOffset(L_323_ - L_326_ - L_322_ - 1, 0)
						end
					end
				end
			end
			task.spawn(L_321_)
			L_316_.AddSignal(L_320_.Input:GetPropertyChangedSignal'Text', L_321_)
			L_316_.AddSignal(L_320_.Input:GetPropertyChangedSignal'CursorPosition', L_321_)
			L_316_.AddSignal(L_320_.Input.Focused, function()
				L_321_()
				L_320_.Indicator.Size = UDim2.new(1, -2, 0, 2)
				L_320_.Indicator.Position = UDim2.new(0, 1, 1, 0)
				L_320_.Indicator.BackgroundTransparency = 0
				L_316_.OverrideTag(L_320_.Frame, {
					BackgroundColor3 = L_319_arg1 and 'InputFocused' or 'DialogHolder'
				})
				L_316_.OverrideTag(L_320_.Indicator, {
					BackgroundColor3 = 'Accent'
				})
			end)
			L_316_.AddSignal(L_320_.Input.FocusLost, function()
				L_321_()
				L_320_.Indicator.Size = UDim2.new(1, -4, 0, 1)
				L_320_.Indicator.Position = UDim2.new(0, 2, 1, 0)
				L_320_.Indicator.BackgroundTransparency = 0.5
				L_316_.OverrideTag(L_320_.Frame, {
					BackgroundColor3 = L_319_arg1 and 'Input' or 'DialogInput'
				})
				L_316_.OverrideTag(L_320_.Indicator, {
					BackgroundColor3 = L_319_arg1 and 'InputIndicator' or 'DialogInputLine'
				})
			end)
			return L_320_
		end
	end,
	[16] = function()
		local L_328_, L_329_, L_330_, L_331_, L_332_ = L_2_(16)
		local L_333_, L_334_ = L_329_.Parent.Parent, L_330_(L_329_.Parent.Assets)
		local L_335_, L_336_ = L_330_(L_333_.Creator), L_330_(L_333_.Packages.Flipper)
		local L_337_, L_338_ = L_335_.New, L_335_.AddSignal
		return function(L_339_arg0)
			local L_340_, L_341_, L_342_ = {}, L_330_(L_333_), function(L_343_arg0, L_344_arg1, L_345_arg2, L_346_arg3)
				local L_347_ = {
					Callback = L_346_arg3 or function()
					end
				}
				L_347_.Frame = L_337_('TextButton', {
					Size = UDim2.new(0, 34, 1, -8),
					AnchorPoint = Vector2.new(1, 0),
					BackgroundTransparency = 1,
					Parent = L_345_arg2,
					Position = L_344_arg1,
					Text = '',
					ThemeTag = {
						BackgroundColor3 = 'Text'
					}
				}, {
					L_337_('UICorner', {
						CornerRadius = UDim.new(0, 7)
					}),
					L_337_('ImageLabel', {
						Image = L_343_arg0,
						Size = UDim2.fromOffset(16, 16),
						Position = UDim2.fromScale(0.5, 0.5),
						AnchorPoint = Vector2.new(0.5, 0.5),
						BackgroundTransparency = 1,
						Name = 'Icon',
						ThemeTag = {
							ImageColor3 = 'Text'
						}
					})
				})
				local L_348_, L_349_ = L_335_.SpringMotor(1, L_347_.Frame, 'BackgroundTransparency')
				L_338_(L_347_.Frame.MouseEnter, function()
					L_349_(0.94)
				end)
				L_338_(L_347_.Frame.MouseLeave, function()
					L_349_(1, true)
				end)
				L_338_(L_347_.Frame.MouseButton1Down, function()
					L_349_(0.96)
				end)
				L_338_(L_347_.Frame.MouseButton1Up, function()
					L_349_(0.94)
				end)
				L_338_(L_347_.Frame.MouseButton1Click, L_347_.Callback)
				L_347_.SetCallback = function(L_350_arg0)
					L_347_.Callback = L_350_arg0
				end
				return L_347_
			end
			L_340_.Frame = L_337_('Frame', {
				Size = UDim2.new(1, 0, 0, 42),
				BackgroundTransparency = 1,
				Parent = L_339_arg0.Parent
			}, {
				L_337_('Frame', {
					Size = UDim2.new(1, -16, 1, 0),
					Position = UDim2.new(0, 16, 0, 0),
					BackgroundTransparency = 1
				}, {
					L_337_('UIListLayout', {
						Padding = UDim.new(0, 5),
						FillDirection = Enum.FillDirection.Horizontal,
						SortOrder = Enum.SortOrder.LayoutOrder
					}),
					L_337_('TextLabel', {
						RichText = true,
						Text = L_339_arg0.Title,
						FontFace = Font.new('rbxasset://fonts/families/GothamSSm.json', Enum.FontWeight.Regular, Enum.FontStyle.Normal),
						TextSize = 12,
						TextXAlignment = 'Left',
						TextYAlignment = 'Center',
						Size = UDim2.fromScale(0, 1),
						AutomaticSize = Enum.AutomaticSize.X,
						BackgroundTransparency = 1,
						ThemeTag = {
							TextColor3 = 'Text'
						}
					}),
					L_337_('TextLabel', {
						RichText = true,
						Text = L_339_arg0.SubTitle,
						TextTransparency = 0.4,
						FontFace = Font.new('rbxasset://fonts/families/GothamSSm.json', Enum.FontWeight.Regular, Enum.FontStyle.Normal),
						TextSize = 12,
						TextXAlignment = 'Left',
						TextYAlignment = 'Center',
						Size = UDim2.fromScale(0, 1),
						AutomaticSize = Enum.AutomaticSize.X,
						BackgroundTransparency = 1,
						ThemeTag = {
							TextColor3 = 'Text'
						}
					})
				}),
				L_337_('Frame', {
					BackgroundTransparency = 0.5,
					Size = UDim2.new(1, 0, 0, 1),
					Position = UDim2.new(0, 0, 1, 0),
					ThemeTag = {
						BackgroundColor3 = 'TitleBarLine'
					}
				})
			})
			L_340_.CloseButton = L_342_(L_334_.Close, UDim2.new(1, -4, 0, 4), L_340_.Frame, function()
				L_341_.Window:Dialog{
					Title = 'Close',
					Content = 'Are you sure you want to unload the interface?',
					Buttons = {
						{
							Title = 'Yes',
							Callback = function()
								L_341_:Destroy()
							end
						},
						{
							Title = 'No'
						}
					}
				}
			end)
			L_340_.MaxButton = L_342_(L_334_.Max, UDim2.new(1, -40, 0, 4), L_340_.Frame, function()
				L_339_arg0.Window.Maximize(not L_339_arg0.Window.Maximized)
			end)
			L_340_.MinButton = L_342_(L_334_.Min, UDim2.new(1, -80, 0, 4), L_340_.Frame, function()
				L_341_.Window:Minimize()
			end)
			return L_340_
		end
	end,
	[17] = function()
		local L_351_, L_352_, L_353_, L_354_, L_355_ = L_2_(17)
		local L_356_, L_357_, L_358_, L_359_ = game:GetService'UserInputService', game:GetService'Players'.LocalPlayer:GetMouse(), game:GetService'Workspace'.CurrentCamera, L_352_.Parent.Parent
		local L_360_, L_361_, L_362_, L_363_, L_364_ = L_353_(L_359_.Packages.Flipper), L_353_(L_359_.Creator), L_353_(L_359_.Acrylic), L_353_(L_352_.Parent.Assets), L_352_.Parent
		local L_365_, L_366_, L_367_ = L_360_.Spring.new, L_360_.Instant.new, L_361_.New
		return function(L_368_arg0)
			local L_369_, L_370_, L_371_, L_372_, L_373_, L_374_ = L_353_(L_359_), {
				Minimized = false,
				Maximized = false,
				Size = L_368_arg0.Size,
				CurrentPos = 0,
				Position = UDim2.fromOffset(L_358_.ViewportSize.X / 2 - L_368_arg0.Size.X.Offset / 2, L_358_.ViewportSize.Y / 2 - L_368_arg0.Size.Y.Offset / 2)
			}, false
			local L_375_, L_376_ = false
			local L_377_ = false
			L_370_.AcrylicPaint = L_362_.AcrylicPaint()
			local L_378_, L_379_ = L_367_('Frame', {
				Size = UDim2.fromOffset(4, 0),
				BackgroundColor3 = Color3.fromRGB(76, 194, 255),
				Position = UDim2.fromOffset(0, 17),
				AnchorPoint = Vector2.new(0, 0.5),
				ThemeTag = {
					BackgroundColor3 = 'Accent'
				}
			}, {
				L_367_('UICorner', {
					CornerRadius = UDim.new(0, 2)
				})
			}), L_367_('Frame', {
				Size = UDim2.fromOffset(20, 20),
				BackgroundTransparency = 1,
				Position = UDim2.new(1, -20, 1, -20)
			})
			L_370_.TabHolder = L_367_('ScrollingFrame', {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
				ScrollBarImageTransparency = 1,
				ScrollBarThickness = 0,
				BorderSizePixel = 0,
				CanvasSize = UDim2.fromScale(0, 0),
				ScrollingDirection = Enum.ScrollingDirection.Y
			}, {
				L_367_('UIListLayout', {
					Padding = UDim.new(0, 4)
				})
			})
			local L_380_ = L_367_('Frame', {
				Size = UDim2.new(0, L_368_arg0.TabWidth, 1, -66),
				Position = UDim2.new(0, 12, 0, 54),
				BackgroundTransparency = 1,
				ClipsDescendants = true
			}, {
				L_370_.TabHolder,
				L_378_
			})
			L_370_.TabDisplay = L_367_('TextLabel', {
				RichText = true,
				Text = 'Tab',
				TextTransparency = 0,
				FontFace = Font.new('rbxassetid://12187365364', Enum.FontWeight.SemiBold, Enum.FontStyle.Normal),
				TextSize = 28,
				TextXAlignment = 'Left',
				TextYAlignment = 'Center',
				Size = UDim2.new(1, -16, 0, 28),
				Position = UDim2.fromOffset(L_368_arg0.TabWidth + 26, 56),
				BackgroundTransparency = 1,
				ThemeTag = {
					TextColor3 = 'Text'
				}
			})
			L_370_.ContainerHolder = L_367_('CanvasGroup', {
				Size = UDim2.new(1, -L_368_arg0.TabWidth - 32, 1, -102),
				Position = UDim2.fromOffset(L_368_arg0.TabWidth + 26, 90),
				BackgroundTransparency = 1
			})
			L_370_.Root = L_367_('Frame', {
				BackgroundTransparency = 1,
				Size = L_370_.Size,
				Position = L_370_.Position,
				Parent = L_368_arg0.Parent
			}, {
				L_370_.AcrylicPaint.Frame,
				L_370_.TabDisplay,
				L_370_.ContainerHolder,
				L_380_,
				L_379_
			})
			L_370_.TitleBar = L_353_(L_352_.Parent.TitleBar){
				Title = L_368_arg0.Title,
				SubTitle = L_368_arg0.SubTitle,
				Parent = L_370_.Root,
				Window = L_370_
			}
			if L_353_(L_359_).UseAcrylic then
				L_370_.AcrylicPaint.AddParent(L_370_.Root)
			end
			local L_381_, L_382_ = L_360_.GroupMotor.new{
				X = L_370_.Size.X.Offset,
				Y = L_370_.Size.Y.Offset
			}, L_360_.GroupMotor.new{
				X = L_370_.Position.X.Offset,
				Y = L_370_.Position.Y.Offset
			}
			L_370_.SelectorPosMotor = L_360_.SingleMotor.new(17)
			L_370_.SelectorSizeMotor = L_360_.SingleMotor.new(0)
			L_370_.ContainerBackMotor = L_360_.SingleMotor.new(0)
			L_370_.ContainerPosMotor = L_360_.SingleMotor.new(94)
			L_381_:onStep(function(L_389_arg0)
				L_370_.Root.Size = UDim2.new(0, L_389_arg0.X, 0, L_389_arg0.Y)
			end)
			L_382_:onStep(function(L_390_arg0)
				L_370_.Root.Position = UDim2.new(0, L_390_arg0.X, 0, L_390_arg0.Y)
			end)
			local L_383_, L_384_ = 0, 0
			L_370_.SelectorPosMotor:onStep(function(L_391_arg0)
				L_378_.Position = UDim2.new(0, 0, 0, L_391_arg0 + 17)
				local L_392_ = tick()
				local L_393_ = L_392_ - L_384_
				if L_383_ ~= nil then
					L_370_.SelectorSizeMotor:setGoal(L_365_((math.abs(L_391_arg0 - L_383_) / (L_393_ * 60)) + 16))
					L_383_ = L_391_arg0
				end
				L_384_ = L_392_
			end)
			L_370_.SelectorSizeMotor:onStep(function(L_394_arg0)
				L_378_.Size = UDim2.new(0, 4, 0, L_394_arg0)
			end)
			L_370_.ContainerBackMotor:onStep(function(L_395_arg0)
				L_370_.ContainerHolder.GroupTransparency = L_395_arg0
			end)
			L_370_.ContainerPosMotor:onStep(function(L_396_arg0)
				L_370_.ContainerHolder.Position = UDim2.fromOffset(L_368_arg0.TabWidth + 26, L_396_arg0)
			end)
			local L_385_, L_386_
			L_370_.Maximize = function(L_397_arg0, L_398_arg1, L_399_arg2)
				L_370_.Maximized = L_397_arg0
				L_370_.TitleBar.MaxButton.Frame.Icon.Image = L_397_arg0 and L_363_.Restore or L_363_.Max
				if L_397_arg0 then
					L_385_ = L_370_.Size.X.Offset
					L_386_ = L_370_.Size.Y.Offset
				end
				local L_400_, L_401_ = L_397_arg0 and L_358_.ViewportSize.X or L_385_, L_397_arg0 and L_358_.ViewportSize.Y or L_386_
				L_381_:setGoal{
					X = L_360_[L_399_arg2 and 'Instant' or 'Spring'].new(L_400_, {
						frequency = 6
					}),
					Y = L_360_[L_399_arg2 and 'Instant' or 'Spring'].new(L_401_, {
						frequency = 6
					})
				}
				L_370_.Size = UDim2.fromOffset(L_400_, L_401_)
				if not L_398_arg1 then
					L_382_:setGoal{
						X = L_365_(L_397_arg0 and 0 or L_370_.Position.X.Offset, {
							frequency = 6
						}),
						Y = L_365_(L_397_arg0 and 0 or L_370_.Position.Y.Offset, {
							frequency = 6
						})
					}
				end
			end
			L_361_.AddSignal(L_370_.TitleBar.Frame.InputBegan, function(L_402_arg0)
				if L_402_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_402_arg0.UserInputType == Enum.UserInputType.Touch then
					L_371_ = true
					L_373_ = L_402_arg0.Position
					L_374_ = L_370_.Root.Position
					if L_370_.Maximized then
						L_374_ = UDim2.fromOffset(L_357_.X - (L_357_.X * ((L_385_ - 100) / L_370_.Root.AbsoluteSize.X)), L_357_.Y - (L_357_.Y * (L_386_ / L_370_.Root.AbsoluteSize.Y)))
					end
					L_402_arg0.Changed:Connect(function()
						if L_402_arg0.UserInputState == Enum.UserInputState.End then
							L_371_ = false
						end
					end)
				end
			end)
			L_361_.AddSignal(L_370_.TitleBar.Frame.InputChanged, function(L_403_arg0)
				if L_403_arg0.UserInputType == Enum.UserInputType.MouseMovement or L_403_arg0.UserInputType == Enum.UserInputType.Touch then
					L_372_ = L_403_arg0
				end
			end)
			L_361_.AddSignal(L_379_.InputBegan, function(L_404_arg0)
				if L_404_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_404_arg0.UserInputType == Enum.UserInputType.Touch then
					L_375_ = true
					L_376_ = L_404_arg0.Position
				end
			end)
			L_361_.AddSignal(L_356_.InputChanged, function(L_405_arg0)
				if L_405_arg0 == L_372_ and L_371_ then
					local L_406_ = L_405_arg0.Position - L_373_
					L_370_.Position = UDim2.fromOffset(L_374_.X.Offset + L_406_.X, L_374_.Y.Offset + L_406_.Y)
					L_382_:setGoal{
						X = L_366_(L_370_.Position.X.Offset),
						Y = L_366_(L_370_.Position.Y.Offset)
					}
					if L_370_.Maximized then
						L_370_.Maximize(false, true, true)
					end
				end
				if (L_405_arg0.UserInputType == Enum.UserInputType.MouseMovement or L_405_arg0.UserInputType == Enum.UserInputType.Touch) and L_375_ then
					local L_407_, L_408_ = L_405_arg0.Position - L_376_, L_370_.Size
					local L_409_ = Vector3.new(L_408_.X.Offset, L_408_.Y.Offset, 0) + Vector3.new(1, 1, 0) * L_407_
					local L_410_ = Vector2.new(math.clamp(L_409_.X, 470, 2048), math.clamp(L_409_.Y, 380, 2048))
					L_381_:setGoal{
						X = L_360_.Instant.new(L_410_.X),
						Y = L_360_.Instant.new(L_410_.Y)
					}
				end
			end)
			L_361_.AddSignal(L_356_.InputEnded, function(L_411_arg0)
				if L_375_ == true or L_411_arg0.UserInputType == Enum.UserInputType.Touch then
					L_375_ = false
					L_370_.Size = UDim2.fromOffset(L_381_:getValue().X, L_381_:getValue().Y)
				end
			end)
			L_361_.AddSignal(L_370_.TabHolder.UIListLayout:GetPropertyChangedSignal'AbsoluteContentSize', function()
				L_370_.TabHolder.CanvasSize = UDim2.new(0, 0, 0, L_370_.TabHolder.UIListLayout.AbsoluteContentSize.Y)
			end)
			L_361_.AddSignal(L_356_.InputBegan, function(L_412_arg0)
				if type(L_369_.MinimizeKeybind) == 'table' and L_369_.MinimizeKeybind.Type == 'Keybind' and not L_356_:GetFocusedTextBox() then
					if L_412_arg0.KeyCode.Name == L_369_.MinimizeKeybind.Value or L_369_.MinimizeKeybind.Value == 'RMB' and L_412_arg0.UserInputType == Enum.UserInputType.MouseButton2 then
						L_370_:Minimize()
					end
				elseif (L_412_arg0.KeyCode == L_369_.MinimizeKey or L_369_.MinimizeKeybind.Value == 'RMB' and L_412_arg0.UserInputType == Enum.UserInputType.MouseButton2) and not L_356_:GetFocusedTextBox() then
					L_370_:Minimize()
				end
			end)
			function L_370_.Minimize(L_413_arg0)
				L_370_.Minimized = not L_370_.Minimized
				L_370_.Root.Visible = not L_370_.Minimized
				if not L_377_ then
					L_377_ = true
					local L_414_ = L_369_.MinimizeKeybind and L_369_.MinimizeKeybind.Value or L_369_.MinimizeKey.Name
					L_369_:Notify{
						Title = 'Interface',
						Content = 'Press ' .. L_414_ .. ' to toggle the interface.',
						Duration = 6
					}
				end
			end
			function L_370_.Destroy(L_415_arg0)
				if L_353_(L_359_).UseAcrylic then
					L_370_.AcrylicPaint.Model:Destroy()
				end
				L_370_.Root:Destroy()
			end
			local L_387_ = L_353_(L_364_.Dialog):Init(L_370_)
			function L_370_.Dialog(L_416_arg0, L_417_arg1)
				local L_418_ = L_387_:Create()
				L_418_.Title.Text = L_417_arg1.Title
				local L_419_ = L_367_('TextLabel', {
					FontFace = Font.new'rbxasset://fonts/families/GothamSSm.json',
					Text = L_417_arg1.Content,
					TextColor3 = Color3.fromRGB(240, 240, 240),
					TextSize = 14,
					TextXAlignment = Enum.TextXAlignment.Left,
					TextYAlignment = Enum.TextYAlignment.Top,
					Size = UDim2.new(1, -40, 1, 0),
					Position = UDim2.fromOffset(20, 60),
					BackgroundTransparency = 1,
					Parent = L_418_.Root,
					ClipsDescendants = false,
					ThemeTag = {
						TextColor3 = 'Text'
					}
				})
				L_367_('UISizeConstraint', {
					MinSize = Vector2.new(300, 165),
					MaxSize = Vector2.new(620, math.huge),
					Parent = L_418_.Root
				})
				L_418_.Root.Size = UDim2.fromOffset(L_419_.TextBounds.X + 40, 165)
				if L_419_.TextBounds.X + 40 > L_370_.Size.X.Offset - 120 then
					L_418_.Root.Size = UDim2.fromOffset(L_370_.Size.X.Offset - 120, 165)
					L_419_.TextWrapped = true
					L_418_.Root.Size = UDim2.fromOffset(L_370_.Size.X.Offset - 120, L_419_.TextBounds.Y + 150)
				end
				for L_420_forvar0, L_421_forvar1 in next, L_417_arg1.Buttons do
					L_418_:Button(L_421_forvar1.Title, L_421_forvar1.Callback)
				end
				L_418_:Open()
			end
			local L_388_ = L_353_(L_364_.Tab):Init(L_370_)
			function L_370_.AddTab(L_422_arg0, L_423_arg1)
				return L_388_:New(L_423_arg1.Title, L_423_arg1.Icon, L_370_.TabHolder)
			end
			function L_370_.SelectTab(L_424_arg0, L_425_arg1)
				L_388_:SelectTab(1)
			end
			L_361_.AddSignal(L_370_.TabHolder:GetPropertyChangedSignal'CanvasPosition', function()
				L_383_ = L_388_:GetCurrentTabPos() + 16
				L_384_ = 0
				L_370_.SelectorPosMotor:setGoal(L_366_(L_388_:GetCurrentTabPos()))
			end)
			return L_370_
		end
	end,
	[18] = function()
		local L_426_, L_427_, L_428_, L_429_, L_430_ = L_2_(18)
		local L_431_ = L_427_.Parent
		local L_432_, L_433_, L_434_ = L_428_(L_431_.Themes), L_428_(L_431_.Packages.Flipper), {
			Registry = {},
			Signals = {},
			TransparencyMotors = {},
			DefaultProperties = {
				ScreenGui = {
					ResetOnSpawn = false,
					ZIndexBehavior = Enum.ZIndexBehavior.Sibling
				},
				Frame = {
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderColor3 = Color3.new(0, 0, 0),
					BorderSizePixel = 0
				},
				ScrollingFrame = {
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderColor3 = Color3.new(0, 0, 0),
					ScrollBarImageColor3 = Color3.new(0, 0, 0)
				},
				TextLabel = {
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderColor3 = Color3.new(0, 0, 0),
					Font = Enum.Font.SourceSans,
					Text = '',
					TextColor3 = Color3.new(0, 0, 0),
					BackgroundTransparency = 1,
					TextSize = 14
				},
				TextButton = {
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderColor3 = Color3.new(0, 0, 0),
					AutoButtonColor = false,
					Font = Enum.Font.SourceSans,
					Text = '',
					TextColor3 = Color3.new(0, 0, 0),
					TextSize = 14
				},
				TextBox = {
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderColor3 = Color3.new(0, 0, 0),
					ClearTextOnFocus = false,
					Font = Enum.Font.SourceSans,
					Text = '',
					TextColor3 = Color3.new(0, 0, 0),
					TextSize = 14
				},
				ImageLabel = {
					BackgroundTransparency = 1,
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderColor3 = Color3.new(0, 0, 0),
					BorderSizePixel = 0
				},
				ImageButton = {
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderColor3 = Color3.new(0, 0, 0),
					AutoButtonColor = false
				},
				CanvasGroup = {
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderColor3 = Color3.new(0, 0, 0),
					BorderSizePixel = 0
				}
			}
		}
		local L_435_ = function(L_436_arg0, L_437_arg1)
			if L_437_arg1.ThemeTag then
				L_434_.AddThemeObject(L_436_arg0, L_437_arg1.ThemeTag)
			end
		end
		function L_434_.AddSignal(L_438_arg0, L_439_arg1)
			table.insert(L_434_.Signals, L_438_arg0:Connect(L_439_arg1))
		end
		function L_434_.Disconnect()
			for L_440_forvar0 = #L_434_.Signals, 1, -1 do
				local L_441_ = table.remove(L_434_.Signals, L_440_forvar0)
				L_441_:Disconnect()
			end
		end
		function L_434_.GetThemeProperty(L_442_arg0)
			if L_432_[L_428_(L_431_).Theme][L_442_arg0] then
				return L_432_[L_428_(L_431_).Theme][L_442_arg0]
			end
			return L_432_.Dark[L_442_arg0]
		end
		function L_434_.UpdateTheme()
			for L_443_forvar0, L_444_forvar1 in next, L_434_.Registry do
				for L_445_forvar0, L_446_forvar1 in next, L_444_forvar1.Properties do
					L_443_forvar0[L_445_forvar0] = L_434_.GetThemeProperty(L_446_forvar1)
				end
			end
			for L_447_forvar0, L_448_forvar1 in next, L_434_.TransparencyMotors do
				L_448_forvar1:setGoal(L_433_.Instant.new(L_434_.GetThemeProperty'ElementTransparency'))
			end
		end
		function L_434_.AddThemeObject(L_449_arg0, L_450_arg1)
			local L_451_ = #L_434_.Registry + 1
			local L_452_ = {
				Object = L_449_arg0,
				Properties = L_450_arg1,
				Idx = L_451_
			}
			L_434_.Registry[L_449_arg0] = L_452_
			L_434_.UpdateTheme()
			return L_449_arg0
		end
		function L_434_.OverrideTag(L_453_arg0, L_454_arg1)
			L_434_.Registry[L_453_arg0].Properties = L_454_arg1
			L_434_.UpdateTheme()
		end
		function L_434_.New(L_455_arg0, L_456_arg1, L_457_arg2)
			local L_458_ = Instance.new(L_455_arg0)
			for L_459_forvar0, L_460_forvar1 in next, L_434_.DefaultProperties[L_455_arg0] or {} do
				L_458_[L_459_forvar0] = L_460_forvar1
			end
			for L_461_forvar0, L_462_forvar1 in next, L_456_arg1 or {} do
				if L_461_forvar0 ~= 'ThemeTag' then
					L_458_[L_461_forvar0] = L_462_forvar1
				end
			end
			for L_463_forvar0, L_464_forvar1 in next, L_457_arg2 or {} do
				L_464_forvar1.Parent = L_458_
			end
			L_435_(L_458_, L_456_arg1)
			return L_458_
		end
		function L_434_.SpringMotor(L_465_arg0, L_466_arg1, L_467_arg2, L_468_arg3, L_469_arg4)
			L_468_arg3 = L_468_arg3 or false
			L_469_arg4 = L_469_arg4 or false
			local L_470_ = L_433_.SingleMotor.new(L_465_arg0)
			L_470_:onStep(function(L_472_arg0)
				L_466_arg1[L_467_arg2] = L_472_arg0
			end)
			if L_469_arg4 then
				table.insert(L_434_.TransparencyMotors, L_470_)
			end
			local L_471_ = function(L_473_arg0, L_474_arg1)
				L_474_arg1 = L_474_arg1 or false
				if not L_468_arg3 then
					if not L_474_arg1 then
						if L_467_arg2 == 'BackgroundTransparency' and L_428_(L_431_).DialogOpen then
							return
						end
					end
				end
				L_470_:setGoal(L_433_.Spring.new(L_473_arg0, {
					frequency = 8
				}))
			end
			return L_470_, L_471_
		end
		return L_434_
	end,
	[19] = function()
		local L_475_, L_476_, L_477_, L_478_, L_479_ = L_2_(19)
		local L_480_ = {}
		for L_481_forvar0, L_482_forvar1 in next, L_476_:GetChildren() do
			table.insert(L_480_, L_477_(L_482_forvar1))
		end
		return L_480_
	end,
	[20] = function()
		local L_483_, L_484_, L_485_, L_486_, L_487_ = L_2_(20)
		local L_488_ = L_484_.Parent.Parent
		local L_489_ = L_485_(L_488_.Creator)
		local L_490_, L_491_, L_492_ = L_489_.New, L_488_.Components, {}
		L_492_.__index = L_492_
		L_492_.__type = 'Button'
		function L_492_.New(L_493_arg0, L_494_arg1)
			assert(L_494_arg1.Title, 'Button - Missing Title')
			L_494_arg1.Callback = L_494_arg1.Callback or function()
			end
			local L_495_ = L_485_(L_491_.Element)(L_494_arg1.Title, L_494_arg1.Description, L_493_arg0.Container, true)
			local L_496_ = L_490_('ImageLabel', {
				Image = 'rbxassetid://10709791437',
				Size = UDim2.fromOffset(16, 16),
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, -10, 0.5, 0),
				BackgroundTransparency = 1,
				Parent = L_495_.Frame,
				ThemeTag = {
					ImageColor3 = 'Text'
				}
			})
			L_489_.AddSignal(L_495_.Frame.MouseButton1Click, function()
				L_493_arg0.Library:SafeCallback(L_494_arg1.Callback)
			end)
			return L_495_
		end
		return L_492_
	end,
	[21] = function()
		local L_497_, L_498_, L_499_, L_500_, L_501_ = L_2_(21)
		local L_502_, L_503_, L_504_, L_505_ = game:GetService'UserInputService', game:GetService'TouchInputService', game:GetService'RunService', game:GetService'Players'
		local L_506_, L_507_ = L_504_.RenderStepped, L_505_.LocalPlayer
		local L_508_, L_509_ = L_507_:GetMouse(), L_498_.Parent.Parent
		local L_510_ = L_499_(L_509_.Creator)
		local L_511_, L_512_, L_513_ = L_510_.New, L_509_.Components, {}
		L_513_.__index = L_513_
		L_513_.__type = 'Colorpicker'
		function L_513_.New(L_514_arg0, L_515_arg1, L_516_arg2)
			local L_517_ = L_514_arg0.Library
			assert(L_516_arg2.Title, 'Colorpicker - Missing Title')
			assert(L_516_arg2.Default, 'AddColorPicker: Missing default value.')
			local L_518_ = {
				Value = L_516_arg2.Default,
				Transparency = L_516_arg2.Transparency or 0,
				Type = 'Colorpicker',
				Title = type(L_516_arg2.Title) == 'string' and L_516_arg2.Title or 'Colorpicker',
				Callback = L_516_arg2.Callback or function(L_523_arg0)
				end
			}
			function L_518_.SetHSVFromRGB(L_524_arg0, L_525_arg1)
				local L_526_, L_527_, L_528_ = L_525_arg1:ToHSV()
				L_518_.Hue = L_526_
				L_518_.Sat = L_527_
				L_518_.Vib = L_528_
			end
			L_518_:SetHSVFromRGB(L_518_.Value)
			local L_519_ = L_499_(L_512_.Element)(L_516_arg2.Title, L_516_arg2.Description, L_514_arg0.Container, true)
			L_518_.SetTitle = L_519_.SetTitle
			L_518_.SetDesc = L_519_.SetDesc
			local L_520_ = L_511_('Frame', {
				Size = UDim2.fromScale(1, 1),
				BackgroundColor3 = L_518_.Value,
				Parent = L_519_.Frame
			}, {
				L_511_('UICorner', {
					CornerRadius = UDim.new(0, 4)
				})
			})
			local L_521_, L_522_ = L_511_('ImageLabel', {
				Size = UDim2.fromOffset(26, 26),
				Position = UDim2.new(1, -10, 0.5, 0),
				AnchorPoint = Vector2.new(1, 0.5),
				Parent = L_519_.Frame,
				Image = 'rbxassetid://14204231522',
				ImageTransparency = 0.45,
				ScaleType = Enum.ScaleType.Tile,
				TileSize = UDim2.fromOffset(40, 40)
			}, {
				L_511_('UICorner', {
					CornerRadius = UDim.new(0, 4)
				}),
				L_520_
			}), function()
				local L_529_ = L_499_(L_512_.Dialog):Create()
				L_529_.Title.Text = L_518_.Title
				L_529_.Root.Size = UDim2.fromOffset(430, 330)
				local L_530_, L_531_, L_532_, L_533_, L_534_, L_535_ = L_518_.Hue, L_518_.Sat, L_518_.Vib, L_518_.Transparency, function()
					local L_557_ = L_499_(L_512_.Textbox)()
					L_557_.Frame.Parent = L_529_.Root
					L_557_.Frame.Size = UDim2.new(0, 90, 0, 32)
					return L_557_
				end, function(L_558_arg0, L_559_arg1)
					return L_511_('TextLabel', {
						FontFace = Font.new('rbxasset://fonts/families/GothamSSm.json', Enum.FontWeight.Medium, Enum.FontStyle.Normal),
						Text = L_558_arg0,
						TextColor3 = Color3.fromRGB(240, 240, 240),
						TextSize = 13,
						TextXAlignment = Enum.TextXAlignment.Left,
						Size = UDim2.new(1, 0, 0, 32),
						Position = L_559_arg1,
						BackgroundTransparency = 1,
						Parent = L_529_.Root,
						ThemeTag = {
							TextColor3 = 'Text'
						}
					})
				end
				local L_536_, L_537_ = function()
					local L_560_ = Color3.fromHSV(L_530_, L_531_, L_532_)
					return {
						R = math.floor(L_560_.r * 255),
						G = math.floor(L_560_.g * 255),
						B = math.floor(L_560_.b * 255)
					}
				end, L_511_('ImageLabel', {
					Size = UDim2.new(0, 18, 0, 18),
					ScaleType = Enum.ScaleType.Fit,
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					Image = 'rbxassetid://4805639000'
				})
				local L_538_, L_539_ = L_511_('ImageLabel', {
					Size = UDim2.fromOffset(180, 160),
					Position = UDim2.fromOffset(20, 55),
					Image = 'rbxassetid://4155801252',
					BackgroundColor3 = L_518_.Value,
					BackgroundTransparency = 0,
					Parent = L_529_.Root
				}, {
					L_511_('UICorner', {
						CornerRadius = UDim.new(0, 4)
					}),
					L_537_
				}), L_511_('Frame', {
					BackgroundColor3 = L_518_.Value,
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = L_518_.Transparency
				}, {
					L_511_('UICorner', {
						CornerRadius = UDim.new(0, 4)
					})
				})
				local L_540_, L_541_ = L_511_('ImageLabel', {
					Image = 'rbxassetid://14204231522',
					ImageTransparency = 0.45,
					ScaleType = Enum.ScaleType.Tile,
					TileSize = UDim2.fromOffset(40, 40),
					BackgroundTransparency = 1,
					Position = UDim2.fromOffset(112, 220),
					Size = UDim2.fromOffset(88, 24),
					Parent = L_529_.Root
				}, {
					L_511_('UICorner', {
						CornerRadius = UDim.new(0, 4)
					}),
					L_511_('UIStroke', {
						Thickness = 2,
						Transparency = 0.75
					}),
					L_539_
				}), L_511_('Frame', {
					BackgroundColor3 = L_518_.Value,
					Size = UDim2.fromScale(1, 1),
					BackgroundTransparency = 0
				}, {
					L_511_('UICorner', {
						CornerRadius = UDim.new(0, 4)
					})
				})
				local L_542_, L_543_ = L_511_('ImageLabel', {
					Image = 'rbxassetid://14204231522',
					ImageTransparency = 0.45,
					ScaleType = Enum.ScaleType.Tile,
					TileSize = UDim2.fromOffset(40, 40),
					BackgroundTransparency = 1,
					Position = UDim2.fromOffset(20, 220),
					Size = UDim2.fromOffset(88, 24),
					Parent = L_529_.Root
				}, {
					L_511_('UICorner', {
						CornerRadius = UDim.new(0, 4)
					}),
					L_511_('UIStroke', {
						Thickness = 2,
						Transparency = 0.75
					}),
					L_541_
				}), {}
				for L_561_forvar0 = 0, 1, 0.1 do
					table.insert(L_543_, ColorSequenceKeypoint.new(L_561_forvar0, Color3.fromHSV(L_561_forvar0, 1, 1)))
				end
				local L_544_, L_545_ = L_511_('UIGradient', {
					Color = ColorSequence.new(L_543_),
					Rotation = 90
				}), L_511_('Frame', {
					Size = UDim2.new(1, 0, 1, -10),
					Position = UDim2.fromOffset(0, 5),
					BackgroundTransparency = 1
				})
				local L_546_, L_547_, L_548_ = L_511_('ImageLabel', {
					Size = UDim2.fromOffset(14, 14),
					Image = 'rbxassetid://12266946128',
					Parent = L_545_,
					ThemeTag = {
						ImageColor3 = 'DialogInput'
					}
				}), L_511_('Frame', {
					Size = UDim2.fromOffset(12, 190),
					Position = UDim2.fromOffset(210, 55),
					Parent = L_529_.Root
				}, {
					L_511_('UICorner', {
						CornerRadius = UDim.new(1, 0)
					}),
					L_544_,
					L_545_
				}), L_534_()
				L_548_.Frame.Position = UDim2.fromOffset(L_516_arg2.Transparency and 260 or 240, 55)
				L_535_('Hex', UDim2.fromOffset(L_516_arg2.Transparency and 360 or 340, 55))
				local L_549_ = L_534_()
				L_549_.Frame.Position = UDim2.fromOffset(L_516_arg2.Transparency and 260 or 240, 95)
				L_535_('Red', UDim2.fromOffset(L_516_arg2.Transparency and 360 or 340, 95))
				local L_550_ = L_534_()
				L_550_.Frame.Position = UDim2.fromOffset(L_516_arg2.Transparency and 260 or 240, 135)
				L_535_('Green', UDim2.fromOffset(L_516_arg2.Transparency and 360 or 340, 135))
				local L_551_ = L_534_()
				L_551_.Frame.Position = UDim2.fromOffset(L_516_arg2.Transparency and 260 or 240, 175)
				L_535_('Blue', UDim2.fromOffset(L_516_arg2.Transparency and 360 or 340, 175))
				local L_552_
				if L_516_arg2.Transparency then
					L_552_ = L_534_()
					L_552_.Frame.Position = UDim2.fromOffset(260, 215)
					L_535_('Alpha', UDim2.fromOffset(360, 215))
				end
				local L_553_, L_554_, L_555_
				if L_516_arg2.Transparency then
					local L_562_ = L_511_('Frame', {
						Size = UDim2.new(1, 0, 1, -10),
						Position = UDim2.fromOffset(0, 5),
						BackgroundTransparency = 1
					})
					L_554_ = L_511_('ImageLabel', {
						Size = UDim2.fromOffset(14, 14),
						Image = 'rbxassetid://12266946128',
						Parent = L_562_,
						ThemeTag = {
							ImageColor3 = 'DialogInput'
						}
					})
					L_555_ = L_511_('Frame', {
						Size = UDim2.fromScale(1, 1)
					}, {
						L_511_('UIGradient', {
							Transparency = NumberSequence.new{
								NumberSequenceKeypoint.new(0, 0),
								NumberSequenceKeypoint.new(1, 1)
							},
							Rotation = 270
						}),
						L_511_('UICorner', {
							CornerRadius = UDim.new(1, 0)
						})
					})
					L_553_ = L_511_('Frame', {
						Size = UDim2.fromOffset(12, 190),
						Position = UDim2.fromOffset(230, 55),
						Parent = L_529_.Root,
						BackgroundTransparency = 1
					}, {
						L_511_('UICorner', {
							CornerRadius = UDim.new(1, 0)
						}),
						L_511_('ImageLabel', {
							Image = 'rbxassetid://14204231522',
							ImageTransparency = 0.45,
							ScaleType = Enum.ScaleType.Tile,
							TileSize = UDim2.fromOffset(40, 40),
							BackgroundTransparency = 1,
							Size = UDim2.fromScale(1, 1),
							Parent = L_529_.Root
						}, {
							L_511_('UICorner', {
								CornerRadius = UDim.new(1, 0)
							})
						}),
						L_555_,
						L_562_
					})
				end
				local L_556_ = function()
					L_538_.BackgroundColor3 = Color3.fromHSV(L_530_, 1, 1)
					L_546_.Position = UDim2.new(0, -1, L_530_, -6)
					L_537_.Position = UDim2.new(L_531_, 0, 1 - L_532_, 0)
					L_541_.BackgroundColor3 = Color3.fromHSV(L_530_, L_531_, L_532_)
					L_548_.Input.Text = '#' .. Color3.fromHSV(L_530_, L_531_, L_532_):ToHex()
					L_549_.Input.Text = L_536_().R
					L_550_.Input.Text = L_536_().G
					L_551_.Input.Text = L_536_().B
					if L_516_arg2.Transparency then
						L_555_.BackgroundColor3 = Color3.fromHSV(L_530_, L_531_, L_532_)
						L_541_.BackgroundTransparency = L_533_
						L_554_.Position = UDim2.new(0, -1, 1 - L_533_, -6)
						L_552_.Input.Text = L_499_(L_509_):Round((1 - L_533_) * 100, 0) .. '%'
					end
				end
				L_510_.AddSignal(L_548_.Input.FocusLost, function(L_563_arg0)
					if L_563_arg0 then
						local L_564_, L_565_ = pcall(Color3.fromHex, L_548_.Input.Text)
						if L_564_ and typeof(L_565_) == 'Color3' then
							L_530_, L_531_, L_532_ = L_565_:ToHSV()
						end
					end
					L_556_()
				end)
				L_510_.AddSignal(L_549_.Input.FocusLost, function(L_566_arg0)
					if L_566_arg0 then
						local L_567_ = L_536_()
						local L_568_, L_569_ = pcall(Color3.fromRGB, L_549_.Input.Text, L_567_.G, L_567_.B)
						if L_568_ and typeof(L_569_) == 'Color3' then
							if tonumber(L_549_.Input.Text) <= 255 then
								L_530_, L_531_, L_532_ = L_569_:ToHSV()
							end
						end
					end
					L_556_()
				end)
				L_510_.AddSignal(L_550_.Input.FocusLost, function(L_570_arg0)
					if L_570_arg0 then
						local L_571_ = L_536_()
						local L_572_, L_573_ = pcall(Color3.fromRGB, L_571_.R, L_550_.Input.Text, L_571_.B)
						if L_572_ and typeof(L_573_) == 'Color3' then
							if tonumber(L_550_.Input.Text) <= 255 then
								L_530_, L_531_, L_532_ = L_573_:ToHSV()
							end
						end
					end
					L_556_()
				end)
				L_510_.AddSignal(L_551_.Input.FocusLost, function(L_574_arg0)
					if L_574_arg0 then
						local L_575_ = L_536_()
						local L_576_, L_577_ = pcall(Color3.fromRGB, L_575_.R, L_575_.G, L_551_.Input.Text)
						if L_576_ and typeof(L_577_) == 'Color3' then
							if tonumber(L_551_.Input.Text) <= 255 then
								L_530_, L_531_, L_532_ = L_577_:ToHSV()
							end
						end
					end
					L_556_()
				end)
				if L_516_arg2.Transparency then
					L_510_.AddSignal(L_552_.Input.FocusLost, function(L_578_arg0)
						if L_578_arg0 then
							pcall(function()
								local L_579_ = tonumber(L_552_.Input.Text)
								if L_579_ >= 0 and L_579_ <= 100 then
									L_533_ = 1 - L_579_ * 0.01
								end
							end)
						end
						L_556_()
					end)
				end
				L_510_.AddSignal(L_538_.InputBegan, function(L_580_arg0)
					if L_580_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_580_arg0.UserInputType == Enum.UserInputType.Touch then
						while L_502_:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
							local L_581_ = L_538_.AbsolutePosition.X
							local L_582_ = L_581_ + L_538_.AbsoluteSize.X
							local L_583_, L_584_ = math.clamp(L_508_.X, L_581_, L_582_), L_538_.AbsolutePosition.Y
							local L_585_ = L_584_ + L_538_.AbsoluteSize.Y
							local L_586_ = math.clamp(L_508_.Y, L_584_, L_585_)
							L_531_ = (L_583_ - L_581_) / (L_582_ - L_581_)
							L_532_ = 1 - ((L_586_ - L_584_) / (L_585_ - L_584_))
							L_556_()
							L_506_:Wait()
						end
					end
				end)
				L_510_.AddSignal(L_547_.InputBegan, function(L_587_arg0)
					if L_587_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_587_arg0.UserInputType == Enum.UserInputType.Touch then
						while L_502_:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
							local L_588_ = L_547_.AbsolutePosition.Y
							local L_589_ = L_588_ + L_547_.AbsoluteSize.Y
							local L_590_ = math.clamp(L_508_.Y, L_588_, L_589_)
							L_530_ = ((L_590_ - L_588_) / (L_589_ - L_588_))
							L_556_()
							L_506_:Wait()
						end
					end
				end)
				if L_516_arg2.Transparency then
					L_510_.AddSignal(L_553_.InputBegan, function(L_591_arg0)
						if L_591_arg0.UserInputType == Enum.UserInputType.MouseButton1 then
							while L_502_:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
								local L_592_ = L_553_.AbsolutePosition.Y
								local L_593_ = L_592_ + L_553_.AbsoluteSize.Y
								local L_594_ = math.clamp(L_508_.Y, L_592_, L_593_)
								L_533_ = 1 - ((L_594_ - L_592_) / (L_593_ - L_592_))
								L_556_()
								L_506_:Wait()
							end
						end
					end)
				end
				L_556_()
				L_529_:Button('Done', function()
					L_518_:SetValue({
						L_530_,
						L_531_,
						L_532_
					}, L_533_)
				end)
				L_529_:Button'Cancel'
				L_529_:Open()
			end
			function L_518_.Display(L_595_arg0)
				L_518_.Value = Color3.fromHSV(L_518_.Hue, L_518_.Sat, L_518_.Vib)
				L_520_.BackgroundColor3 = L_518_.Value
				L_520_.BackgroundTransparency = L_518_.Transparency
				L_513_.Library:SafeCallback(L_518_.Callback, L_518_.Value)
				L_513_.Library:SafeCallback(L_518_.Changed, L_518_.Value)
			end
			function L_518_.SetValue(L_596_arg0, L_597_arg1, L_598_arg2)
				local L_599_ = Color3.fromHSV(L_597_arg1[1], L_597_arg1[2], L_597_arg1[3])
				L_518_.Transparency = L_598_arg2 or 0
				L_518_:SetHSVFromRGB(L_599_)
				L_518_:Display()
			end
			function L_518_.SetValueRGB(L_600_arg0, L_601_arg1, L_602_arg2)
				L_518_.Transparency = L_602_arg2 or 0
				L_518_:SetHSVFromRGB(L_601_arg1)
				L_518_:Display()
			end
			function L_518_.OnChanged(L_603_arg0, L_604_arg1)
				L_518_.Changed = L_604_arg1
				L_604_arg1(L_518_.Value)
			end
			function L_518_.Destroy(L_605_arg0)
				L_519_:Destroy()
				L_517_.Options[L_515_arg1] = nil
			end
			L_510_.AddSignal(L_519_.Frame.MouseButton1Click, function()
				L_522_()
			end)
			L_518_:Display()
			L_517_.Options[L_515_arg1] = L_518_
			return L_518_
		end
		return L_513_
	end,
	[22] = function()
		local L_606_, L_607_, L_608_, L_609_, L_610_ = L_2_(22)
		local L_611_, L_612_, L_613_, L_614_, L_615_ = game:GetService'TweenService', game:GetService'UserInputService', game:GetService'Players'.LocalPlayer:GetMouse(), game:GetService'Workspace'.CurrentCamera, L_607_.Parent.Parent
		local L_616_, L_617_ = L_608_(L_615_.Creator), L_608_(L_615_.Packages.Flipper)
		local L_618_, L_619_, L_620_ = L_616_.New, L_615_.Components, {}
		L_620_.__index = L_620_
		L_620_.__type = 'Dropdown'
		function L_620_.New(L_621_arg0, L_622_arg1, L_623_arg2)
			local L_624_, L_625_, L_626_ = L_621_arg0.Library, {
				Values = L_623_arg2.Values,
				Value = L_623_arg2.Default,
				Multi = L_623_arg2.Multi,
				Buttons = {},
				Opened = false,
				Type = 'Dropdown',
				Callback = L_623_arg2.Callback or function()
				end
			}, L_608_(L_619_.Element)(L_623_arg2.Title, L_623_arg2.Description, L_621_arg0.Container, false)
			L_626_.DescLabel.Size = UDim2.new(1, -170, 0, 14)
			L_625_.SetTitle = L_626_.SetTitle
			L_625_.SetDesc = L_626_.SetDesc
			local L_627_, L_628_ = L_618_('TextLabel', {
				FontFace = Font.new('rbxasset://fonts/families/GothamSSm.json', Enum.FontWeight.Regular, Enum.FontStyle.Normal),
				Text = 'Value',
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Left,
				Size = UDim2.new(1, -30, 0, 14),
				Position = UDim2.new(0, 8, 0.5, 0),
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				TextTruncate = Enum.TextTruncate.AtEnd,
				ThemeTag = {
					TextColor3 = 'Text'
				}
			}), L_618_('ImageLabel', {
				Image = 'rbxassetid://10709790948',
				Size = UDim2.fromOffset(16, 16),
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, -8, 0.5, 0),
				BackgroundTransparency = 1,
				ThemeTag = {
					ImageColor3 = 'SubText'
				}
			})
			local L_629_, L_630_ = L_618_('TextButton', {
				Size = UDim2.fromOffset(160, 30),
				Position = UDim2.new(1, -10, 0.5, 0),
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundTransparency = 0.9,
				Parent = L_626_.Frame,
				ThemeTag = {
					BackgroundColor3 = 'DropdownFrame'
				}
			}, {
				L_618_('UICorner', {
					CornerRadius = UDim.new(0, 5)
				}),
				L_618_('UIStroke', {
					Transparency = 0.5,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					ThemeTag = {
						Color = 'InElementBorder'
					}
				}),
				L_628_,
				L_627_
			}), L_618_('UIListLayout', {
				Padding = UDim.new(0, 3)
			})
			local L_631_ = L_618_('ScrollingFrame', {
				Size = UDim2.new(1, -5, 1, -10),
				Position = UDim2.fromOffset(5, 5),
				BackgroundTransparency = 1,
				BottomImage = 'rbxassetid://6889812791',
				MidImage = 'rbxassetid://6889812721',
				TopImage = 'rbxassetid://6276641225',
				ScrollBarImageColor3 = Color3.fromRGB(255, 255, 255),
				ScrollBarImageTransparency = 0.95,
				ScrollBarThickness = 4,
				BorderSizePixel = 0,
				CanvasSize = UDim2.fromScale(0, 0)
			}, {
				L_630_
			})
			local L_632_ = L_618_('Frame', {
				Size = UDim2.fromScale(1, 0.6),
				ThemeTag = {
					BackgroundColor3 = 'DropdownHolder'
				}
			}, {
				L_631_,
				L_618_('UICorner', {
					CornerRadius = UDim.new(0, 7)
				}),
				L_618_('UIStroke', {
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					ThemeTag = {
						Color = 'DropdownBorder'
					}
				}),
				L_618_('ImageLabel', {
					BackgroundTransparency = 1,
					Image = 'rbxassetid://5554236805',
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(23, 23, 277, 277),
					Size = UDim2.fromScale(1, 1) + UDim2.fromOffset(30, 30),
					Position = UDim2.fromOffset(-15, -15),
					ImageColor3 = Color3.fromRGB(0, 0, 0),
					ImageTransparency = 0.1
				})
			})
			local L_633_ = L_618_('Frame', {
				BackgroundTransparency = 1,
				Size = UDim2.fromOffset(170, 300),
				Parent = L_621_arg0.Library.GUI,
				Visible = false
			}, {
				L_632_,
				L_618_('UISizeConstraint', {
					MinSize = Vector2.new(170, 0)
				})
			})
			table.insert(L_624_.OpenFrames, L_633_)
			local L_634_, L_635_ = function()
				local L_640_ = 0
				if L_614_.ViewportSize.Y - L_629_.AbsolutePosition.Y < L_633_.AbsoluteSize.Y - 5 then
					L_640_ = L_633_.AbsoluteSize.Y - 5 - (L_614_.ViewportSize.Y - L_629_.AbsolutePosition.Y) + 40
				end
				L_633_.Position = UDim2.fromOffset(L_629_.AbsolutePosition.X - 1, L_629_.AbsolutePosition.Y - 5 - L_640_)
			end, 0
			local L_636_, L_637_ = function()
				if #L_625_.Values > 10 then
					L_633_.Size = UDim2.fromOffset(L_635_, 392)
				else
					L_633_.Size = UDim2.fromOffset(L_635_, L_630_.AbsoluteContentSize.Y + 10)
				end
			end, function()
				L_631_.CanvasSize = UDim2.fromOffset(0, L_630_.AbsoluteContentSize.Y)
			end
			L_634_()
			L_636_()
			L_616_.AddSignal(L_629_:GetPropertyChangedSignal'AbsolutePosition', L_634_)
			L_616_.AddSignal(L_629_.MouseButton1Click, function()
				L_625_:Open()
			end)
			L_616_.AddSignal(L_612_.InputBegan, function(L_641_arg0)
				if L_641_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_641_arg0.UserInputType == Enum.UserInputType.Touch then
					local L_642_, L_643_ = L_632_.AbsolutePosition, L_632_.AbsoluteSize
					if L_613_.X < L_642_.X or L_613_.X > L_642_.X + L_643_.X or L_613_.Y < (L_642_.Y - 20 - 1) or L_613_.Y > L_642_.Y + L_643_.Y then
						L_625_:Close()
					end
				end
			end)
			local L_638_ = L_621_arg0.ScrollFrame
			function L_625_.Open(L_644_arg0)
				L_625_.Opened = true
				L_638_.ScrollingEnabled = false
				L_633_.Visible = true
				L_611_:Create(L_632_, TweenInfo.new(0.2, Enum.EasingStyle.Quart, Enum.EasingDirection.Out), {
					Size = UDim2.fromScale(1, 1)
				}):Play()
			end
			function L_625_.Close(L_645_arg0)
				L_625_.Opened = false
				L_638_.ScrollingEnabled = true
				L_632_.Size = UDim2.fromScale(1, 0.6)
				L_633_.Visible = false
			end
			function L_625_.Display(L_646_arg0)
				local L_647_, L_648_ = L_625_.Values, ''
				if L_623_arg2.Multi then
					for L_649_forvar0, L_650_forvar1 in next, L_647_ do
						if L_625_.Value[L_650_forvar1] then
							L_648_ = L_648_ .. L_650_forvar1 .. ', '
						end
					end
					L_648_ = L_648_:sub(1, #L_648_ - 2)
				else
					L_648_ = L_625_.Value or ''
				end
				L_627_.Text = (L_648_ == '' and '--' or L_648_)
			end
			function L_625_.GetActiveValues(L_651_arg0)
				if L_623_arg2.Multi then
					local L_652_ = {}
					for L_653_forvar0, L_654_forvar1 in next, L_625_.Value do
						table.insert(L_652_, L_653_forvar0)
					end
					return L_652_
				else
					return L_625_.Value and 1 or 0
				end
			end
			function L_625_.BuildDropdownList(L_655_arg0)
				local L_656_, L_657_ = L_625_.Values, {}
				for L_659_forvar0, L_660_forvar1 in next, L_631_:GetChildren() do
					if not L_660_forvar1:IsA'UIListLayout' then
						L_660_forvar1:Destroy()
					end
				end
				local L_658_ = 0
				for L_661_forvar0, L_662_forvar1 in next, L_656_ do
					local L_663_ = {}
					L_658_ = L_658_ + 1
					local L_664_, L_665_ = L_618_('Frame', {
						Size = UDim2.fromOffset(4, 14),
						BackgroundColor3 = Color3.fromRGB(76, 194, 255),
						Position = UDim2.fromOffset(-1, 16),
						AnchorPoint = Vector2.new(0, 0.5),
						ThemeTag = {
							BackgroundColor3 = 'Accent'
						}
					}, {
						L_618_('UICorner', {
							CornerRadius = UDim.new(0, 2)
						})
					}), L_618_('TextLabel', {
						FontFace = Font.new'rbxasset://fonts/families/GothamSSm.json',
						Text = L_662_forvar1,
						TextColor3 = Color3.fromRGB(200, 200, 200),
						TextSize = 13,
						TextXAlignment = Enum.TextXAlignment.Left,
						BackgroundColor3 = Color3.fromRGB(255, 255, 255),
						AutomaticSize = Enum.AutomaticSize.Y,
						BackgroundTransparency = 1,
						Size = UDim2.fromScale(1, 1),
						Position = UDim2.fromOffset(10, 0),
						Name = 'ButtonLabel',
						ThemeTag = {
							TextColor3 = 'Text'
						}
					})
					local L_666_, L_667_ = (L_618_('TextButton', {
						Size = UDim2.new(1, -5, 0, 32),
						BackgroundTransparency = 1,
						ZIndex = 23,
						Text = '',
						Parent = L_631_,
						ThemeTag = {
							BackgroundColor3 = 'DropdownOption'
						}
					}, {
						L_664_,
						L_665_,
						L_618_('UICorner', {
							CornerRadius = UDim.new(0, 6)
						})
					}))
					if L_623_arg2.Multi then
						L_667_ = L_625_.Value[L_662_forvar1]
					else
						L_667_ = L_625_.Value == L_662_forvar1
					end
					local L_668_, L_669_ = L_616_.SpringMotor(1, L_666_, 'BackgroundTransparency')
					local L_670_, L_671_ = L_616_.SpringMotor(1, L_664_, 'BackgroundTransparency')
					local L_672_ = L_617_.SingleMotor.new(6)
					L_672_:onStep(function(L_673_arg0)
						L_664_.Size = UDim2.new(0, 4, 0, L_673_arg0)
					end)
					L_616_.AddSignal(L_666_.MouseEnter, function()
						L_669_(L_667_ and 0.85 or 0.89)
					end)
					L_616_.AddSignal(L_666_.MouseLeave, function()
						L_669_(L_667_ and 0.89 or 1)
					end)
					L_616_.AddSignal(L_666_.MouseButton1Down, function()
						L_669_(0.92)
					end)
					L_616_.AddSignal(L_666_.MouseButton1Up, function()
						L_669_(L_667_ and 0.85 or 0.89)
					end)
					function L_663_.UpdateButton(L_674_arg0)
						if L_623_arg2.Multi then
							L_667_ = L_625_.Value[L_662_forvar1]
							if L_667_ then
								L_669_(0.89)
							end
						else
							L_667_ = L_625_.Value == L_662_forvar1
							L_669_(L_667_ and 0.89 or 1)
						end
						L_672_:setGoal(L_617_.Spring.new(L_667_ and 14 or 6, {
							frequency = 6
						}))
						L_671_(L_667_ and 0 or 1)
					end
					L_665_.InputBegan:Connect(function(L_675_arg0)
						if L_675_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_675_arg0.UserInputType == Enum.UserInputType.Touch then
							local L_676_ = not L_667_
							if L_625_:GetActiveValues() == 1 and not L_676_ and not L_623_arg2.AllowNull then
							else
								if L_623_arg2.Multi then
									L_667_ = L_676_
									L_625_.Value[L_662_forvar1] = L_667_ and true or nil
								else
									L_667_ = L_676_
									L_625_.Value = L_667_ and L_662_forvar1 or nil
									for L_677_forvar0, L_678_forvar1 in next, L_657_ do
										L_678_forvar1:UpdateButton()
									end
								end
								L_663_:UpdateButton()
								L_625_:Display()
								L_624_:SafeCallback(L_625_.Callback, L_625_.Value)
								L_624_:SafeCallback(L_625_.Changed, L_625_.Value)
							end
						end
					end)
					L_663_:UpdateButton()
					L_625_:Display()
					L_657_[L_666_] = L_663_
				end
				L_635_ = 0
				for L_679_forvar0, L_680_forvar1 in next, L_657_ do
					if L_679_forvar0.ButtonLabel then
						if L_679_forvar0.ButtonLabel.TextBounds.X > L_635_ then
							L_635_ = L_679_forvar0.ButtonLabel.TextBounds.X
						end
					end
				end
				L_635_ = L_635_ + 30
				L_637_()
				L_636_()
			end
			function L_625_.SetValues(L_681_arg0, L_682_arg1)
				if L_682_arg1 then
					L_625_.Values = L_682_arg1
				end
				L_625_:BuildDropdownList()
			end
			function L_625_.OnChanged(L_683_arg0, L_684_arg1)
				L_625_.Changed = L_684_arg1
				L_684_arg1(L_625_.Value)
			end
			function L_625_.SetValue(L_685_arg0, L_686_arg1)
				if L_625_.Multi then
					local L_687_ = {}
					for L_688_forvar0, L_689_forvar1 in next, L_686_arg1 do
						if table.find(L_625_.Values, L_688_forvar0) then
							L_687_[L_688_forvar0] = true
						end
					end
					L_625_.Value = L_687_
				else
					if not L_686_arg1 then
						L_625_.Value = nil
					elseif table.find(L_625_.Values, L_686_arg1) then
						L_625_.Value = L_686_arg1
					end
				end
				L_625_:BuildDropdownList()
				L_624_:SafeCallback(L_625_.Callback, L_625_.Value)
				L_624_:SafeCallback(L_625_.Changed, L_625_.Value)
			end
			function L_625_.Destroy(L_690_arg0)
				L_626_:Destroy()
				L_624_.Options[L_622_arg1] = nil
			end
			L_625_:BuildDropdownList()
			L_625_:Display()
			local L_639_ = {}
			if type(L_623_arg2.Default) == 'string' then
				local L_691_ = table.find(L_625_.Values, L_623_arg2.Default)
				if L_691_ then
					table.insert(L_639_, L_691_)
				end
			elseif type(L_623_arg2.Default) == 'table' then
				for L_692_forvar0, L_693_forvar1 in next, L_623_arg2.Default do
					local L_694_ = table.find(L_625_.Values, L_693_forvar1)
					if L_694_ then
						table.insert(L_639_, L_694_)
					end
				end
			elseif type(L_623_arg2.Default) == 'number' and L_625_.Values[L_623_arg2.Default] ~= nil then
				table.insert(L_639_, L_623_arg2.Default)
			end
			if next(L_639_) then
				for L_695_forvar0 = 1, #L_639_ do
					local L_696_ = L_639_[L_695_forvar0]
					if L_623_arg2.Multi then
						L_625_.Value[L_625_.Values[L_696_]] = true
					else
						L_625_.Value = L_625_.Values[L_696_]
					end
					if not L_623_arg2.Multi then
						break
					end
				end
				L_625_:BuildDropdownList()
				L_625_:Display()
			end
			L_624_.Options[L_622_arg1] = L_625_
			return L_625_
		end
		return L_620_
	end,
	[23] = function()
		local L_697_, L_698_, L_699_, L_700_, L_701_ = L_2_(23)
		local L_702_ = L_698_.Parent.Parent
		local L_703_ = L_699_(L_702_.Creator)
		local L_704_, L_705_, L_706_, L_707_ = L_703_.New, L_703_.AddSignal, L_702_.Components, {}
		L_707_.__index = L_707_
		L_707_.__type = 'Input'
		function L_707_.New(L_708_arg0, L_709_arg1, L_710_arg2)
			local L_711_ = L_708_arg0.Library
			assert(L_710_arg2.Title, 'Input - Missing Title')
			L_710_arg2.Callback = L_710_arg2.Callback or function()
			end
			local L_712_, L_713_ = {
				Value = L_710_arg2.Default or '',
				Numeric = L_710_arg2.Numeric or false,
				Finished = L_710_arg2.Finished or false,
				Callback = L_710_arg2.Callback or function(L_716_arg0)
				end,
				Type = 'Input'
			}, L_699_(L_706_.Element)(L_710_arg2.Title, L_710_arg2.Description, L_708_arg0.Container, false)
			L_712_.SetTitle = L_713_.SetTitle
			L_712_.SetDesc = L_713_.SetDesc
			local L_714_ = L_699_(L_706_.Textbox)(L_713_.Frame, true)
			L_714_.Frame.Position = UDim2.new(1, -10, 0.5, 0)
			L_714_.Frame.AnchorPoint = Vector2.new(1, 0.5)
			L_714_.Frame.Size = UDim2.fromOffset(160, 30)
			L_714_.Input.Text = L_710_arg2.Default or ''
			L_714_.Input.PlaceholderText = L_710_arg2.Placeholder or ''
			local L_715_ = L_714_.Input
			function L_712_.SetValue(L_717_arg0, L_718_arg1)
				if L_710_arg2.MaxLength and #L_718_arg1 > L_710_arg2.MaxLength then
					L_718_arg1 = L_718_arg1:sub(1, L_710_arg2.MaxLength)
				end
				if L_712_.Numeric then
					if (not tonumber(L_718_arg1)) and L_718_arg1:len() > 0 then
						L_718_arg1 = L_712_.Value
					end
				end
				L_712_.Value = L_718_arg1
				L_715_.Text = L_718_arg1
				L_711_:SafeCallback(L_712_.Callback, L_712_.Value)
				L_711_:SafeCallback(L_712_.Changed, L_712_.Value)
			end
			if L_712_.Finished then
				L_705_(L_715_.FocusLost, function(L_719_arg0)
					if not L_719_arg0 then
						return
					end
					L_712_:SetValue(L_715_.Text)
				end)
			else
				L_705_(L_715_:GetPropertyChangedSignal'Text', function()
					L_712_:SetValue(L_715_.Text)
				end)
			end
			function L_712_.OnChanged(L_720_arg0, L_721_arg1)
				L_712_.Changed = L_721_arg1
				L_721_arg1(L_712_.Value)
			end
			function L_712_.Destroy(L_722_arg0)
				L_713_:Destroy()
				L_711_.Options[L_709_arg1] = nil
			end
			L_711_.Options[L_709_arg1] = L_712_
			return L_712_
		end
		return L_707_
	end,
	[24] = function()
		local L_723_, L_724_, L_725_, L_726_, L_727_ = L_2_(24)
		local L_728_, L_729_ = game:GetService'UserInputService', L_724_.Parent.Parent
		local L_730_ = L_725_(L_729_.Creator)
		local L_731_, L_732_, L_733_ = L_730_.New, L_729_.Components, {}
		L_733_.__index = L_733_
		L_733_.__type = 'Keybind'
		function L_733_.New(L_734_arg0, L_735_arg1, L_736_arg2)
			local L_737_ = L_734_arg0.Library
			assert(L_736_arg2.Title, 'KeyBind - Missing Title')
			assert(L_736_arg2.Default, 'KeyBind - Missing default value.')
			local L_738_, L_739_, L_740_ = {
				Value = L_736_arg2.Default,
				Toggled = false,
				Mode = L_736_arg2.Mode or 'Toggle',
				Type = 'Keybind',
				Callback = L_736_arg2.Callback or function(L_743_arg0)
				end,
				ChangedCallback = L_736_arg2.ChangedCallback or function(L_744_arg0)
				end
			}, false, L_725_(L_732_.Element)(L_736_arg2.Title, L_736_arg2.Description, L_734_arg0.Container, true)
			L_738_.SetTitle = L_740_.SetTitle
			L_738_.SetDesc = L_740_.SetDesc
			local L_741_ = L_731_('TextLabel', {
				FontFace = Font.new('rbxasset://fonts/families/GothamSSm.json', Enum.FontWeight.Regular, Enum.FontStyle.Normal),
				Text = L_736_arg2.Default,
				TextColor3 = Color3.fromRGB(240, 240, 240),
				TextSize = 13,
				TextXAlignment = Enum.TextXAlignment.Center,
				Size = UDim2.new(0, 0, 0, 14),
				Position = UDim2.new(0, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				AutomaticSize = Enum.AutomaticSize.X,
				BackgroundTransparency = 1,
				ThemeTag = {
					TextColor3 = 'Text'
				}
			})
			local L_742_ = L_731_('TextButton', {
				Size = UDim2.fromOffset(0, 30),
				Position = UDim2.new(1, -10, 0.5, 0),
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundTransparency = 0.9,
				Parent = L_740_.Frame,
				AutomaticSize = Enum.AutomaticSize.X,
				ThemeTag = {
					BackgroundColor3 = 'Keybind'
				}
			}, {
				L_731_('UICorner', {
					CornerRadius = UDim.new(0, 5)
				}),
				L_731_('UIPadding', {
					PaddingLeft = UDim.new(0, 8),
					PaddingRight = UDim.new(0, 8)
				}),
				L_731_('UIStroke', {
					Transparency = 0.5,
					ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
					ThemeTag = {
						Color = 'InElementBorder'
					}
				}),
				L_741_
			})
			function L_738_.GetState(L_745_arg0)
				if L_728_:GetFocusedTextBox() and L_738_.Mode ~= 'Always' then
					return false
				end
				if L_738_.Mode == 'Always' then
					return true
				elseif L_738_.Mode == 'Hold' then
					if L_738_.Value == 'None' then
						return false
					end
					local L_746_ = L_738_.Value
					if L_746_ == 'RMB' then
						return L_728_:IsMouseButtonPressed(Enum.UserInputType.MouseButton2)
					else
						return L_728_:IsKeyDown(Enum.KeyCode[L_738_.Value])
					end
				else
					return L_738_.Toggled
				end
			end
			function L_738_.SetValue(L_747_arg0, L_748_arg1, L_749_arg2)
				L_748_arg1 = L_748_arg1 or L_738_.Key
				L_749_arg2 = L_749_arg2 or L_738_.Mode
				L_741_.Text = L_748_arg1
				L_738_.Value = L_748_arg1
				L_738_.Mode = L_749_arg2
			end
			function L_738_.OnClick(L_750_arg0, L_751_arg1)
				L_738_.Clicked = L_751_arg1
			end
			function L_738_.OnChanged(L_752_arg0, L_753_arg1)
				L_738_.Changed = L_753_arg1
				L_753_arg1(L_738_.Value)
			end
			function L_738_.DoClick(L_754_arg0)
				L_737_:SafeCallback(L_738_.Callback, L_738_.Toggled)
				L_737_:SafeCallback(L_738_.Clicked, L_738_.Toggled)
			end
			function L_738_.Destroy(L_755_arg0)
				L_740_:Destroy()
				L_737_.Options[L_735_arg1] = nil
			end
			L_730_.AddSignal(L_742_.InputBegan, function(L_756_arg0)
				if L_756_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_756_arg0.UserInputType == Enum.UserInputType.Touch then
					L_739_ = true
					L_741_.Text = '...'
					task.wait(0.2)
					local L_757_
					L_757_ = L_728_.InputBegan:Connect(function(L_758_arg0)
						local L_759_
						if L_758_arg0.UserInputType == Enum.UserInputType.Keyboard then
							L_759_ = L_758_arg0.KeyCode.Name
						elseif L_758_arg0.UserInputType == Enum.UserInputType.MouseButton2 then
							L_759_ = 'RMB'
						end
						local L_760_
						L_760_ = L_728_.InputEnded:Connect(function(L_761_arg0)
							if L_761_arg0.KeyCode.Name == L_759_ or L_759_ == 'RMB' and L_761_arg0.UserInputType == Enum.UserInputType.MouseButton2 then
								L_739_ = false
								L_741_.Text = L_759_
								L_738_.Value = L_759_
								L_737_:SafeCallback(L_738_.ChangedCallback, L_761_arg0.KeyCode ~= Enum.KeyCode.Unknown and L_761_arg0.KeyCode or L_761_arg0.UserInputType)
								L_737_:SafeCallback(L_738_.Changed, L_761_arg0.KeyCode ~= Enum.KeyCode.Unknown and L_761_arg0.KeyCode or L_761_arg0.UserInputType)
								L_757_:Disconnect()
								L_760_:Disconnect()
							end
						end)
					end)
				end
			end)
			L_730_.AddSignal(L_728_.InputBegan, function(L_762_arg0)
				if not L_739_ and not L_728_:GetFocusedTextBox() then
					if L_738_.Mode == 'Toggle' then
						local L_763_ = L_738_.Value
						if L_763_ == 'RMB' and L_762_arg0.UserInputType == Enum.UserInputType.MouseButton2 then
							L_738_.Toggled = not L_738_.Toggled
							L_738_:DoClick()
						elseif L_762_arg0.UserInputType == Enum.UserInputType.Keyboard then
							if L_762_arg0.KeyCode.Name == L_763_ then
								L_738_.Toggled = not L_738_.Toggled
								L_738_:DoClick()
							end
						end
					end
				end
			end)
			L_737_.Options[L_735_arg1] = L_738_
			return L_738_
		end
		return L_733_
	end,
	[25] = function()
		local L_764_, L_765_, L_766_, L_767_, L_768_ = L_2_(25)
		local L_769_ = L_765_.Parent.Parent
		local L_770_, L_771_, L_772_, L_773_ = L_769_.Components, L_766_(L_769_.Packages.Flipper), L_766_(L_769_.Creator), {}
		L_773_.__index = L_773_
		L_773_.__type = 'Paragraph'
		function L_773_.New(L_774_arg0, L_775_arg1)
			assert(L_775_arg1.Title, 'Paragraph - Missing Title')
			L_775_arg1.Content = L_775_arg1.Content or ''
			local L_776_ = L_766_(L_770_.Element)(L_775_arg1.Title, L_775_arg1.Content, L_773_.Container, false)
			L_776_.Frame.BackgroundTransparency = 0.92
			L_776_.Border.Transparency = 0.6
			return L_776_
		end
		return L_773_
	end,
	[26] = function()
		local L_777_, L_778_, L_779_, L_780_, L_781_ = L_2_(26)
		local L_782_, L_783_ = game:GetService'UserInputService', L_778_.Parent.Parent
		local L_784_ = L_779_(L_783_.Creator)
		local L_785_, L_786_, L_787_ = L_784_.New, L_783_.Components, {}
		L_787_.__index = L_787_
		L_787_.__type = 'Slider'
		function L_787_.New(L_788_arg0, L_789_arg1, L_790_arg2)
			local L_791_ = L_788_arg0.Library
			assert(L_790_arg2.Title, 'Slider - Missing Title.')
			assert(L_790_arg2.Default, 'Slider - Missing default value.')
			assert(L_790_arg2.Min, 'Slider - Missing minimum value.')
			assert(L_790_arg2.Max, 'Slider - Missing maximum value.')
			assert(L_790_arg2.Rounding, 'Slider - Missing rounding value.')
			local L_792_, L_793_, L_794_ = {
				Value = nil,
				Min = L_790_arg2.Min,
				Max = L_790_arg2.Max,
				Rounding = L_790_arg2.Rounding,
				Callback = L_790_arg2.Callback or function(L_800_arg0)
				end,
				Type = 'Slider'
			}, false, L_779_(L_786_.Element)(L_790_arg2.Title, L_790_arg2.Description, L_788_arg0.Container, false)
			L_794_.DescLabel.Size = UDim2.new(1, -170, 0, 14)
			L_792_.SetTitle = L_794_.SetTitle
			L_792_.SetDesc = L_794_.SetDesc
			local L_795_ = L_785_('ImageLabel', {
				AnchorPoint = Vector2.new(0, 0.5),
				Position = UDim2.new(0, -7, 0.5, 0),
				Size = UDim2.fromOffset(14, 14),
				Image = 'rbxassetid://12266946128',
				ThemeTag = {
					ImageColor3 = 'Accent'
				}
			})
			local L_796_, L_797_, L_798_ = L_785_('Frame', {
				BackgroundTransparency = 1,
				Position = UDim2.fromOffset(7, 0),
				Size = UDim2.new(1, -14, 1, 0)
			}, {
				L_795_
			}), L_785_('Frame', {
				Size = UDim2.new(0, 0, 1, 0),
				ThemeTag = {
					BackgroundColor3 = 'Accent'
				}
			}, {
				L_785_('UICorner', {
					CornerRadius = UDim.new(1, 0)
				})
			}), L_785_('TextLabel', {
				FontFace = Font.new'rbxasset://fonts/families/GothamSSm.json',
				Text = 'Value',
				TextSize = 12,
				TextWrapped = true,
				TextXAlignment = Enum.TextXAlignment.Right,
				BackgroundColor3 = Color3.fromRGB(255, 255, 255),
				BackgroundTransparency = 1,
				Size = UDim2.new(0, 100, 0, 14),
				Position = UDim2.new(0, -4, 0.5, 0),
				AnchorPoint = Vector2.new(1, 0.5),
				ThemeTag = {
					TextColor3 = 'SubText'
				}
			})
			local L_799_ = L_785_('Frame', {
				Size = UDim2.new(1, 0, 0, 4),
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, -10, 0.5, 0),
				BackgroundTransparency = 0.4,
				Parent = L_794_.Frame,
				ThemeTag = {
					BackgroundColor3 = 'SliderRail'
				}
			}, {
				L_785_('UICorner', {
					CornerRadius = UDim.new(1, 0)
				}),
				L_785_('UISizeConstraint', {
					MaxSize = Vector2.new(150, math.huge)
				}),
				L_798_,
				L_797_,
				L_796_
			})
			L_784_.AddSignal(L_795_.InputBegan, function(L_801_arg0)
				if L_801_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_801_arg0.UserInputType == Enum.UserInputType.Touch then
					L_793_ = true
				end
			end)
			L_784_.AddSignal(L_795_.InputEnded, function(L_802_arg0)
				if L_802_arg0.UserInputType == Enum.UserInputType.MouseButton1 or L_802_arg0.UserInputType == Enum.UserInputType.Touch then
					L_793_ = false
				end
			end)
			L_784_.AddSignal(L_782_.InputChanged, function(L_803_arg0)
				if L_793_ and (L_803_arg0.UserInputType == Enum.UserInputType.MouseMovement or L_803_arg0.UserInputType == Enum.UserInputType.Touch) then
					local L_804_ = math.clamp((L_803_arg0.Position.X - L_796_.AbsolutePosition.X) / L_796_.AbsoluteSize.X, 0, 1)
					L_792_:SetValue(L_792_.Min + ((L_792_.Max - L_792_.Min) * L_804_))
				end
			end)
			function L_792_.OnChanged(L_805_arg0, L_806_arg1)
				L_792_.Changed = L_806_arg1
				L_806_arg1(L_792_.Value)
			end
			function L_792_.SetValue(L_807_arg0, L_808_arg1)
				L_807_arg0.Value = L_791_:Round(math.clamp(L_808_arg1, L_792_.Min, L_792_.Max), L_792_.Rounding)
				L_795_.Position = UDim2.new((L_807_arg0.Value - L_792_.Min) / (L_792_.Max - L_792_.Min), -7, 0.5, 0)
				L_797_.Size = UDim2.fromScale((L_807_arg0.Value - L_792_.Min) / (L_792_.Max - L_792_.Min), 1)
				L_798_.Text = tostring(L_807_arg0.Value)
				L_791_:SafeCallback(L_792_.Callback, L_807_arg0.Value)
				L_791_:SafeCallback(L_792_.Changed, L_807_arg0.Value)
			end
			function L_792_.Destroy(L_809_arg0)
				L_794_:Destroy()
				L_791_.Options[L_789_arg1] = nil
			end
			L_792_:SetValue(L_790_arg2.Default)
			L_791_.Options[L_789_arg1] = L_792_
			return L_792_
		end
		return L_787_
	end,
	[27] = function()
		local L_810_, L_811_, L_812_, L_813_, L_814_ = L_2_(27)
		local L_815_, L_816_ = game:GetService'TweenService', L_811_.Parent.Parent
		local L_817_ = L_812_(L_816_.Creator)
		local L_818_, L_819_, L_820_ = L_817_.New, L_816_.Components, {}
		L_820_.__index = L_820_
		L_820_.__type = 'Toggle'
		function L_820_.New(L_821_arg0, L_822_arg1, L_823_arg2)
			local L_824_ = L_821_arg0.Library
			assert(L_823_arg2.Title, 'Toggle - Missing Title')
			local L_825_, L_826_ = {
				Value = L_823_arg2.Default or false,
				Callback = L_823_arg2.Callback or function(L_830_arg0)
				end,
				Type = 'Toggle'
			}, L_812_(L_819_.Element)(L_823_arg2.Title, L_823_arg2.Description, L_821_arg0.Container, true)
			L_826_.DescLabel.Size = UDim2.new(1, -54, 0, 14)
			L_825_.SetTitle = L_826_.SetTitle
			L_825_.SetDesc = L_826_.SetDesc
			local L_827_, L_828_ = L_818_('ImageLabel', {
				AnchorPoint = Vector2.new(0, 0.5),
				Size = UDim2.fromOffset(14, 14),
				Position = UDim2.new(0, 2, 0.5, 0),
				Image = 'rbxassetid://12266946128',
				ImageTransparency = 0.5,
				ThemeTag = {
					ImageColor3 = 'ToggleSlider'
				}
			}), L_818_('UIStroke', {
				Transparency = 0.5,
				ThemeTag = {
					Color = 'ToggleSlider'
				}
			})
			local L_829_ = L_818_('Frame', {
				Size = UDim2.fromOffset(36, 18),
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, -10, 0.5, 0),
				Parent = L_826_.Frame,
				BackgroundTransparency = 1,
				ThemeTag = {
					BackgroundColor3 = 'Accent'
				}
			}, {
				L_818_('UICorner', {
					CornerRadius = UDim.new(0, 9)
				}),
				L_828_,
				L_827_
			})
			function L_825_.OnChanged(L_831_arg0, L_832_arg1)
				L_825_.Changed = L_832_arg1
				L_832_arg1(L_825_.Value)
			end
			function L_825_.SetValue(L_833_arg0, L_834_arg1)
				L_834_arg1 = not not L_834_arg1
				L_825_.Value = L_834_arg1
				L_817_.OverrideTag(L_828_, {
					Color = L_825_.Value and 'Accent' or 'ToggleSlider'
				})
				L_817_.OverrideTag(L_827_, {
					ImageColor3 = L_825_.Value and 'ToggleToggled' or 'ToggleSlider'
				})
				L_815_:Create(L_827_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
					Position = UDim2.new(0, L_825_.Value and 19 or 2, 0.5, 0)
				}):Play()
				L_815_:Create(L_829_, TweenInfo.new(0.25, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
					BackgroundTransparency = L_825_.Value and 0 or 1
				}):Play()
				L_827_.ImageTransparency = L_825_.Value and 0 or 0.5
				L_824_:SafeCallback(L_825_.Callback, L_825_.Value)
				L_824_:SafeCallback(L_825_.Changed, L_825_.Value)
			end
			function L_825_.Destroy(L_835_arg0)
				L_826_:Destroy()
				L_824_.Options[L_822_arg1] = nil
			end
			L_817_.AddSignal(L_826_.Frame.MouseButton1Click, function()
				L_825_:SetValue(not L_825_.Value)
			end)
			L_825_:SetValue(L_825_.Value)
			L_824_.Options[L_822_arg1] = L_825_
			return L_825_
		end
		return L_820_
	end,
	[28] = function()
		local L_836_, L_837_, L_838_, L_839_, L_840_ = L_2_(28)
		return {
			assets = {['lucide-accessibility'] = 'rbxassetid://10709751939',['lucide-activity'] = 'rbxassetid://10709752035',['lucide-air-vent'] = 'rbxassetid://10709752131',['lucide-airplay'] = 'rbxassetid://10709752254',['lucide-alarm-check'] = 'rbxassetid://10709752405',['lucide-alarm-clock'] = 'rbxassetid://10709752630',['lucide-alarm-clock-off'] = 'rbxassetid://10709752508',['lucide-alarm-minus'] = 'rbxassetid://10709752732',['lucide-alarm-plus'] = 'rbxassetid://10709752825',['lucide-album'] = 'rbxassetid://10709752906',['lucide-alert-circle'] = 'rbxassetid://10709752996',['lucide-alert-octagon'] = 'rbxassetid://10709753064',['lucide-alert-triangle'] = 'rbxassetid://10709753149',['lucide-align-center'] = 'rbxassetid://10709753570',['lucide-align-center-horizontal'] = 'rbxassetid://10709753272',['lucide-align-center-vertical'] = 'rbxassetid://10709753421',['lucide-align-end-horizontal'] = 'rbxassetid://10709753692',['lucide-align-end-vertical'] = 'rbxassetid://10709753808',['lucide-align-horizontal-distribute-center'] = 'rbxassetid://10747779791',['lucide-align-horizontal-distribute-end'] = 'rbxassetid://10747784534',['lucide-align-horizontal-distribute-start'] = 'rbxassetid://10709754118',['lucide-align-horizontal-justify-center'] = 'rbxassetid://10709754204',['lucide-align-horizontal-justify-end'] = 'rbxassetid://10709754317',['lucide-align-horizontal-justify-start'] = 'rbxassetid://10709754436',['lucide-align-horizontal-space-around'] = 'rbxassetid://10709754590',['lucide-align-horizontal-space-between'] = 'rbxassetid://10709754749',['lucide-align-justify'] = 'rbxassetid://10709759610',['lucide-align-left'] = 'rbxassetid://10709759764',['lucide-align-right'] = 'rbxassetid://10709759895',['lucide-align-start-horizontal'] = 'rbxassetid://10709760051',['lucide-align-start-vertical'] = 'rbxassetid://10709760244',['lucide-align-vertical-distribute-center'] = 'rbxassetid://10709760351',['lucide-align-vertical-distribute-end'] = 'rbxassetid://10709760434',['lucide-align-vertical-distribute-start'] = 'rbxassetid://10709760612',['lucide-align-vertical-justify-center'] = 'rbxassetid://10709760814',['lucide-align-vertical-justify-end'] = 'rbxassetid://10709761003',['lucide-align-vertical-justify-start'] = 'rbxassetid://10709761176',['lucide-align-vertical-space-around'] = 'rbxassetid://10709761324',['lucide-align-vertical-space-between'] = 'rbxassetid://10709761434',['lucide-anchor'] = 'rbxassetid://10709761530',['lucide-angry'] = 'rbxassetid://10709761629',['lucide-annoyed'] = 'rbxassetid://10709761722',['lucide-aperture'] = 'rbxassetid://10709761813',['lucide-apple'] = 'rbxassetid://10709761889',['lucide-archive'] = 'rbxassetid://10709762233',['lucide-archive-restore'] = 'rbxassetid://10709762058',['lucide-armchair'] = 'rbxassetid://10709762327',['lucide-arrow-big-down'] = 'rbxassetid://10747796644',['lucide-arrow-big-left'] = 'rbxassetid://10709762574',['lucide-arrow-big-right'] = 'rbxassetid://10709762727',['lucide-arrow-big-up'] = 'rbxassetid://10709762879',['lucide-arrow-down'] = 'rbxassetid://10709767827',['lucide-arrow-down-circle'] = 'rbxassetid://10709763034',['lucide-arrow-down-left'] = 'rbxassetid://10709767656',['lucide-arrow-down-right'] = 'rbxassetid://10709767750',['lucide-arrow-left'] = 'rbxassetid://10709768114',['lucide-arrow-left-circle'] = 'rbxassetid://10709767936',['lucide-arrow-left-right'] = 'rbxassetid://10709768019',['lucide-arrow-right'] = 'rbxassetid://10709768347',['lucide-arrow-right-circle'] = 'rbxassetid://10709768226',['lucide-arrow-up'] = 'rbxassetid://10709768939',['lucide-arrow-up-circle'] = 'rbxassetid://10709768432',['lucide-arrow-up-down'] = 'rbxassetid://10709768538',['lucide-arrow-up-left'] = 'rbxassetid://10709768661',['lucide-arrow-up-right'] = 'rbxassetid://10709768787',['lucide-asterisk'] = 'rbxassetid://10709769095',['lucide-at-sign'] = 'rbxassetid://10709769286',['lucide-award'] = 'rbxassetid://10709769406',['lucide-axe'] = 'rbxassetid://10709769508',['lucide-axis-3d'] = 'rbxassetid://10709769598',['lucide-baby'] = 'rbxassetid://10709769732',['lucide-backpack'] = 'rbxassetid://10709769841',['lucide-baggage-claim'] = 'rbxassetid://10709769935',['lucide-banana'] = 'rbxassetid://10709770005',['lucide-banknote'] = 'rbxassetid://10709770178',['lucide-bar-chart'] = 'rbxassetid://10709773755',['lucide-bar-chart-2'] = 'rbxassetid://10709770317',['lucide-bar-chart-3'] = 'rbxassetid://10709770431',['lucide-bar-chart-4'] = 'rbxassetid://10709770560',['lucide-bar-chart-horizontal'] = 'rbxassetid://10709773669',['lucide-barcode'] = 'rbxassetid://10747360675',['lucide-baseline'] = 'rbxassetid://10709773863',['lucide-bath'] = 'rbxassetid://10709773963',['lucide-battery'] = 'rbxassetid://10709774640',['lucide-battery-charging'] = 'rbxassetid://10709774068',['lucide-battery-full'] = 'rbxassetid://10709774206',['lucide-battery-low'] = 'rbxassetid://10709774370',['lucide-battery-medium'] = 'rbxassetid://10709774513',['lucide-beaker'] = 'rbxassetid://10709774756',['lucide-bed'] = 'rbxassetid://10709775036',['lucide-bed-double'] = 'rbxassetid://10709774864',['lucide-bed-single'] = 'rbxassetid://10709774968',['lucide-beer'] = 'rbxassetid://10709775167',['lucide-bell'] = 'rbxassetid://10709775704',['lucide-bell-minus'] = 'rbxassetid://10709775241',['lucide-bell-off'] = 'rbxassetid://10709775320',['lucide-bell-plus'] = 'rbxassetid://10709775448',['lucide-bell-ring'] = 'rbxassetid://10709775560',['lucide-bike'] = 'rbxassetid://10709775894',['lucide-binary'] = 'rbxassetid://10709776050',['lucide-bitcoin'] = 'rbxassetid://10709776126',['lucide-bluetooth'] = 'rbxassetid://10709776655',['lucide-bluetooth-connected'] = 'rbxassetid://10709776240',['lucide-bluetooth-off'] = 'rbxassetid://10709776344',['lucide-bluetooth-searching'] = 'rbxassetid://10709776501',['lucide-bold'] = 'rbxassetid://10747813908',['lucide-bomb'] = 'rbxassetid://10709781460',['lucide-bone'] = 'rbxassetid://10709781605',['lucide-book'] = 'rbxassetid://10709781824',['lucide-book-open'] = 'rbxassetid://10709781717',['lucide-bookmark'] = 'rbxassetid://10709782154',['lucide-bookmark-minus'] = 'rbxassetid://10709781919',['lucide-bookmark-plus'] = 'rbxassetid://10709782044',['lucide-bot'] = 'rbxassetid://10709782230',['lucide-box'] = 'rbxassetid://10709782497',['lucide-box-select'] = 'rbxassetid://10709782342',['lucide-boxes'] = 'rbxassetid://10709782582',['lucide-briefcase'] = 'rbxassetid://10709782662',['lucide-brush'] = 'rbxassetid://10709782758',['lucide-bug'] = 'rbxassetid://10709782845',['lucide-building'] = 'rbxassetid://10709783051',['lucide-building-2'] = 'rbxassetid://10709782939',['lucide-bus'] = 'rbxassetid://10709783137',['lucide-cake'] = 'rbxassetid://10709783217',['lucide-calculator'] = 'rbxassetid://10709783311',['lucide-calendar'] = 'rbxassetid://10709789505',['lucide-calendar-check'] = 'rbxassetid://10709783474',['lucide-calendar-check-2'] = 'rbxassetid://10709783392',['lucide-calendar-clock'] = 'rbxassetid://10709783577',['lucide-calendar-days'] = 'rbxassetid://10709783673',['lucide-calendar-heart'] = 'rbxassetid://10709783835',['lucide-calendar-minus'] = 'rbxassetid://10709783959',['lucide-calendar-off'] = 'rbxassetid://10709788784',['lucide-calendar-plus'] = 'rbxassetid://10709788937',['lucide-calendar-range'] = 'rbxassetid://10709789053',['lucide-calendar-search'] = 'rbxassetid://10709789200',['lucide-calendar-x'] = 'rbxassetid://10709789407',['lucide-calendar-x-2'] = 'rbxassetid://10709789329',['lucide-camera'] = 'rbxassetid://10709789686',['lucide-camera-off'] = 'rbxassetid://10747822677',['lucide-car'] = 'rbxassetid://10709789810',['lucide-carrot'] = 'rbxassetid://10709789960',['lucide-cast'] = 'rbxassetid://10709790097',['lucide-charge'] = 'rbxassetid://10709790202',['lucide-check'] = 'rbxassetid://10709790644',['lucide-check-circle'] = 'rbxassetid://10709790387',['lucide-check-circle-2'] = 'rbxassetid://10709790298',['lucide-check-square'] = 'rbxassetid://10709790537',['lucide-chef-hat'] = 'rbxassetid://10709790757',['lucide-cherry'] = 'rbxassetid://10709790875',['lucide-chevron-down'] = 'rbxassetid://10709790948',['lucide-chevron-first'] = 'rbxassetid://10709791015',['lucide-chevron-last'] = 'rbxassetid://10709791130',['lucide-chevron-left'] = 'rbxassetid://10709791281',['lucide-chevron-right'] = 'rbxassetid://10709791437',['lucide-chevron-up'] = 'rbxassetid://10709791523',['lucide-chevrons-down'] = 'rbxassetid://10709796864',['lucide-chevrons-down-up'] = 'rbxassetid://10709791632',['lucide-chevrons-left'] = 'rbxassetid://10709797151',['lucide-chevrons-left-right'] = 'rbxassetid://10709797006',['lucide-chevrons-right'] = 'rbxassetid://10709797382',['lucide-chevrons-right-left'] = 'rbxassetid://10709797274',['lucide-chevrons-up'] = 'rbxassetid://10709797622',['lucide-chevrons-up-down'] = 'rbxassetid://10709797508',['lucide-chrome'] = 'rbxassetid://10709797725',['lucide-circle'] = 'rbxassetid://10709798174',['lucide-circle-dot'] = 'rbxassetid://10709797837',['lucide-circle-ellipsis'] = 'rbxassetid://10709797985',['lucide-circle-slashed'] = 'rbxassetid://10709798100',['lucide-citrus'] = 'rbxassetid://10709798276',['lucide-clapperboard'] = 'rbxassetid://10709798350',['lucide-clipboard'] = 'rbxassetid://10709799288',['lucide-clipboard-check'] = 'rbxassetid://10709798443',['lucide-clipboard-copy'] = 'rbxassetid://10709798574',['lucide-clipboard-edit'] = 'rbxassetid://10709798682',['lucide-clipboard-list'] = 'rbxassetid://10709798792',['lucide-clipboard-signature'] = 'rbxassetid://10709798890',['lucide-clipboard-type'] = 'rbxassetid://10709798999',['lucide-clipboard-x'] = 'rbxassetid://10709799124',['lucide-clock'] = 'rbxassetid://10709805144',['lucide-clock-1'] = 'rbxassetid://10709799535',['lucide-clock-10'] = 'rbxassetid://10709799718',['lucide-clock-11'] = 'rbxassetid://10709799818',['lucide-clock-12'] = 'rbxassetid://10709799962',['lucide-clock-2'] = 'rbxassetid://10709803876',['lucide-clock-3'] = 'rbxassetid://10709803989',['lucide-clock-4'] = 'rbxassetid://10709804164',['lucide-clock-5'] = 'rbxassetid://10709804291',['lucide-clock-6'] = 'rbxassetid://10709804435',['lucide-clock-7'] = 'rbxassetid://10709804599',['lucide-clock-8'] = 'rbxassetid://10709804784',['lucide-clock-9'] = 'rbxassetid://10709804996',['lucide-cloud'] = 'rbxassetid://10709806740',['lucide-cloud-cog'] = 'rbxassetid://10709805262',['lucide-cloud-drizzle'] = 'rbxassetid://10709805371',['lucide-cloud-fog'] = 'rbxassetid://10709805477',['lucide-cloud-hail'] = 'rbxassetid://10709805596',['lucide-cloud-lightning'] = 'rbxassetid://10709805727',['lucide-cloud-moon'] = 'rbxassetid://10709805942',['lucide-cloud-moon-rain'] = 'rbxassetid://10709805838',['lucide-cloud-off'] = 'rbxassetid://10709806060',['lucide-cloud-rain'] = 'rbxassetid://10709806277',['lucide-cloud-rain-wind'] = 'rbxassetid://10709806166',['lucide-cloud-snow'] = 'rbxassetid://10709806374',['lucide-cloud-sun'] = 'rbxassetid://10709806631',['lucide-cloud-sun-rain'] = 'rbxassetid://10709806475',['lucide-cloudy'] = 'rbxassetid://10709806859',['lucide-clover'] = 'rbxassetid://10709806995',['lucide-code'] = 'rbxassetid://10709810463',['lucide-code-2'] = 'rbxassetid://10709807111',['lucide-codepen'] = 'rbxassetid://10709810534',['lucide-codesandbox'] = 'rbxassetid://10709810676',['lucide-coffee'] = 'rbxassetid://10709810814',['lucide-cog'] = 'rbxassetid://10709810948',['lucide-coins'] = 'rbxassetid://10709811110',['lucide-columns'] = 'rbxassetid://10709811261',['lucide-command'] = 'rbxassetid://10709811365',['lucide-compass'] = 'rbxassetid://10709811445',['lucide-component'] = 'rbxassetid://10709811595',['lucide-concierge-bell'] = 'rbxassetid://10709811706',['lucide-connection'] = 'rbxassetid://10747361219',['lucide-contact'] = 'rbxassetid://10709811834',['lucide-contrast'] = 'rbxassetid://10709811939',['lucide-cookie'] = 'rbxassetid://10709812067',['lucide-copy'] = 'rbxassetid://10709812159',['lucide-copyleft'] = 'rbxassetid://10709812251',['lucide-copyright'] = 'rbxassetid://10709812311',['lucide-corner-down-left'] = 'rbxassetid://10709812396',['lucide-corner-down-right'] = 'rbxassetid://10709812485',['lucide-corner-left-down'] = 'rbxassetid://10709812632',['lucide-corner-left-up'] = 'rbxassetid://10709812784',['lucide-corner-right-down'] = 'rbxassetid://10709812939',['lucide-corner-right-up'] = 'rbxassetid://10709813094',['lucide-corner-up-left'] = 'rbxassetid://10709813185',['lucide-corner-up-right'] = 'rbxassetid://10709813281',['lucide-cpu'] = 'rbxassetid://10709813383',['lucide-croissant'] = 'rbxassetid://10709818125',['lucide-crop'] = 'rbxassetid://10709818245',['lucide-cross'] = 'rbxassetid://10709818399',['lucide-crosshair'] = 'rbxassetid://10709818534',['lucide-crown'] = 'rbxassetid://10709818626',['lucide-cup-soda'] = 'rbxassetid://10709818763',['lucide-curly-braces'] = 'rbxassetid://10709818847',['lucide-currency'] = 'rbxassetid://10709818931',['lucide-database'] = 'rbxassetid://10709818996',['lucide-delete'] = 'rbxassetid://10709819059',['lucide-diamond'] = 'rbxassetid://10709819149',['lucide-dice-1'] = 'rbxassetid://10709819266',['lucide-dice-2'] = 'rbxassetid://10709819361',['lucide-dice-3'] = 'rbxassetid://10709819508',['lucide-dice-4'] = 'rbxassetid://10709819670',['lucide-dice-5'] = 'rbxassetid://10709819801',['lucide-dice-6'] = 'rbxassetid://10709819896',['lucide-dices'] = 'rbxassetid://10723343321',['lucide-diff'] = 'rbxassetid://10723343416',['lucide-disc'] = 'rbxassetid://10723343537',['lucide-divide'] = 'rbxassetid://10723343805',['lucide-divide-circle'] = 'rbxassetid://10723343636',['lucide-divide-square'] = 'rbxassetid://10723343737',['lucide-dollar-sign'] = 'rbxassetid://10723343958',['lucide-download'] = 'rbxassetid://10723344270',['lucide-download-cloud'] = 'rbxassetid://10723344088',['lucide-droplet'] = 'rbxassetid://10723344432',['lucide-droplets'] = 'rbxassetid://10734883356',['lucide-drumstick'] = 'rbxassetid://10723344737',['lucide-edit'] = 'rbxassetid://10734883598',['lucide-edit-2'] = 'rbxassetid://10723344885',['lucide-edit-3'] = 'rbxassetid://10723345088',['lucide-egg'] = 'rbxassetid://10723345518',['lucide-egg-fried'] = 'rbxassetid://10723345347',['lucide-electricity'] = 'rbxassetid://10723345749',['lucide-electricity-off'] = 'rbxassetid://10723345643',['lucide-equal'] = 'rbxassetid://10723345990',['lucide-equal-not'] = 'rbxassetid://10723345866',['lucide-eraser'] = 'rbxassetid://10723346158',['lucide-euro'] = 'rbxassetid://10723346372',['lucide-expand'] = 'rbxassetid://10723346553',['lucide-external-link'] = 'rbxassetid://10723346684',['lucide-eye'] = 'rbxassetid://10723346959',['lucide-eye-off'] = 'rbxassetid://10723346871',['lucide-factory'] = 'rbxassetid://10723347051',['lucide-fan'] = 'rbxassetid://10723354359',['lucide-fast-forward'] = 'rbxassetid://10723354521',['lucide-feather'] = 'rbxassetid://10723354671',['lucide-figma'] = 'rbxassetid://10723354801',['lucide-file'] = 'rbxassetid://10723374641',['lucide-file-archive'] = 'rbxassetid://10723354921',['lucide-file-audio'] = 'rbxassetid://10723355148',['lucide-file-audio-2'] = 'rbxassetid://10723355026',['lucide-file-axis-3d'] = 'rbxassetid://10723355272',['lucide-file-badge'] = 'rbxassetid://10723355622',['lucide-file-badge-2'] = 'rbxassetid://10723355451',['lucide-file-bar-chart'] = 'rbxassetid://10723355887',['lucide-file-bar-chart-2'] = 'rbxassetid://10723355746',['lucide-file-box'] = 'rbxassetid://10723355989',['lucide-file-check'] = 'rbxassetid://10723356210',['lucide-file-check-2'] = 'rbxassetid://10723356100',['lucide-file-clock'] = 'rbxassetid://10723356329',['lucide-file-code'] = 'rbxassetid://10723356507',['lucide-file-cog'] = 'rbxassetid://10723356830',['lucide-file-cog-2'] = 'rbxassetid://10723356676',['lucide-file-diff'] = 'rbxassetid://10723357039',['lucide-file-digit'] = 'rbxassetid://10723357151',['lucide-file-down'] = 'rbxassetid://10723357322',['lucide-file-edit'] = 'rbxassetid://10723357495',['lucide-file-heart'] = 'rbxassetid://10723357637',['lucide-file-image'] = 'rbxassetid://10723357790',['lucide-file-input'] = 'rbxassetid://10723357933',['lucide-file-json'] = 'rbxassetid://10723364435',['lucide-file-json-2'] = 'rbxassetid://10723364361',['lucide-file-key'] = 'rbxassetid://10723364605',['lucide-file-key-2'] = 'rbxassetid://10723364515',['lucide-file-line-chart'] = 'rbxassetid://10723364725',['lucide-file-lock'] = 'rbxassetid://10723364957',['lucide-file-lock-2'] = 'rbxassetid://10723364861',['lucide-file-minus'] = 'rbxassetid://10723365254',['lucide-file-minus-2'] = 'rbxassetid://10723365086',['lucide-file-output'] = 'rbxassetid://10723365457',['lucide-file-pie-chart'] = 'rbxassetid://10723365598',['lucide-file-plus'] = 'rbxassetid://10723365877',['lucide-file-plus-2'] = 'rbxassetid://10723365766',['lucide-file-question'] = 'rbxassetid://10723365987',['lucide-file-scan'] = 'rbxassetid://10723366167',['lucide-file-search'] = 'rbxassetid://10723366550',['lucide-file-search-2'] = 'rbxassetid://10723366340',['lucide-file-signature'] = 'rbxassetid://10723366741',['lucide-file-spreadsheet'] = 'rbxassetid://10723366962',['lucide-file-symlink'] = 'rbxassetid://10723367098',['lucide-file-terminal'] = 'rbxassetid://10723367244',['lucide-file-text'] = 'rbxassetid://10723367380',['lucide-file-type'] = 'rbxassetid://10723367606',['lucide-file-type-2'] = 'rbxassetid://10723367509',['lucide-file-up'] = 'rbxassetid://10723367734',['lucide-file-video'] = 'rbxassetid://10723373884',['lucide-file-video-2'] = 'rbxassetid://10723367834',['lucide-file-volume'] = 'rbxassetid://10723374172',['lucide-file-volume-2'] = 'rbxassetid://10723374030',['lucide-file-warning'] = 'rbxassetid://10723374276',['lucide-file-x'] = 'rbxassetid://10723374544',['lucide-file-x-2'] = 'rbxassetid://10723374378',['lucide-files'] = 'rbxassetid://10723374759',['lucide-film'] = 'rbxassetid://10723374981',['lucide-filter'] = 'rbxassetid://10723375128',['lucide-fingerprint'] = 'rbxassetid://10723375250',['lucide-flag'] = 'rbxassetid://10723375890',['lucide-flag-off'] = 'rbxassetid://10723375443',['lucide-flag-triangle-left'] = 'rbxassetid://10723375608',['lucide-flag-triangle-right'] = 'rbxassetid://10723375727',['lucide-flame'] = 'rbxassetid://10723376114',['lucide-flashlight'] = 'rbxassetid://10723376471',['lucide-flashlight-off'] = 'rbxassetid://10723376365',['lucide-flask-conical'] = 'rbxassetid://10734883986',['lucide-flask-round'] = 'rbxassetid://10723376614',['lucide-flip-horizontal'] = 'rbxassetid://10723376884',['lucide-flip-horizontal-2'] = 'rbxassetid://10723376745',['lucide-flip-vertical'] = 'rbxassetid://10723377138',['lucide-flip-vertical-2'] = 'rbxassetid://10723377026',['lucide-flower'] = 'rbxassetid://10747830374',['lucide-flower-2'] = 'rbxassetid://10723377305',['lucide-focus'] = 'rbxassetid://10723377537',['lucide-folder'] = 'rbxassetid://10723387563',['lucide-folder-archive'] = 'rbxassetid://10723384478',['lucide-folder-check'] = 'rbxassetid://10723384605',['lucide-folder-clock'] = 'rbxassetid://10723384731',['lucide-folder-closed'] = 'rbxassetid://10723384893',['lucide-folder-cog'] = 'rbxassetid://10723385213',['lucide-folder-cog-2'] = 'rbxassetid://10723385036',['lucide-folder-down'] = 'rbxassetid://10723385338',['lucide-folder-edit'] = 'rbxassetid://10723385445',['lucide-folder-heart'] = 'rbxassetid://10723385545',['lucide-folder-input'] = 'rbxassetid://10723385721',['lucide-folder-key'] = 'rbxassetid://10723385848',['lucide-folder-lock'] = 'rbxassetid://10723386005',['lucide-folder-minus'] = 'rbxassetid://10723386127',['lucide-folder-open'] = 'rbxassetid://10723386277',['lucide-folder-output'] = 'rbxassetid://10723386386',['lucide-folder-plus'] = 'rbxassetid://10723386531',['lucide-folder-search'] = 'rbxassetid://10723386787',['lucide-folder-search-2'] = 'rbxassetid://10723386674',['lucide-folder-symlink'] = 'rbxassetid://10723386930',['lucide-folder-tree'] = 'rbxassetid://10723387085',['lucide-folder-up'] = 'rbxassetid://10723387265',['lucide-folder-x'] = 'rbxassetid://10723387448',['lucide-folders'] = 'rbxassetid://10723387721',['lucide-form-input'] = 'rbxassetid://10723387841',['lucide-forward'] = 'rbxassetid://10723388016',['lucide-frame'] = 'rbxassetid://10723394389',['lucide-framer'] = 'rbxassetid://10723394565',['lucide-frown'] = 'rbxassetid://10723394681',['lucide-fuel'] = 'rbxassetid://10723394846',['lucide-function-square'] = 'rbxassetid://10723395041',['lucide-gamepad'] = 'rbxassetid://10723395457',['lucide-gamepad-2'] = 'rbxassetid://10723395215',['lucide-gauge'] = 'rbxassetid://10723395708',['lucide-gavel'] = 'rbxassetid://10723395896',['lucide-gem'] = 'rbxassetid://10723396000',['lucide-ghost'] = 'rbxassetid://10723396107',['lucide-gift'] = 'rbxassetid://10723396402',['lucide-gift-card'] = 'rbxassetid://10723396225',['lucide-git-branch'] = 'rbxassetid://10723396676',['lucide-git-branch-plus'] = 'rbxassetid://10723396542',['lucide-git-commit'] = 'rbxassetid://10723396812',['lucide-git-compare'] = 'rbxassetid://10723396954',['lucide-git-fork'] = 'rbxassetid://10723397049',['lucide-git-merge'] = 'rbxassetid://10723397165',['lucide-git-pull-request'] = 'rbxassetid://10723397431',['lucide-git-pull-request-closed'] = 'rbxassetid://10723397268',['lucide-git-pull-request-draft'] = 'rbxassetid://10734884302',['lucide-glass'] = 'rbxassetid://10723397788',['lucide-glass-2'] = 'rbxassetid://10723397529',['lucide-glass-water'] = 'rbxassetid://10723397678',['lucide-glasses'] = 'rbxassetid://10723397895',['lucide-globe'] = 'rbxassetid://10723404337',['lucide-globe-2'] = 'rbxassetid://10723398002',['lucide-grab'] = 'rbxassetid://10723404472',['lucide-graduation-cap'] = 'rbxassetid://10723404691',['lucide-grape'] = 'rbxassetid://10723404822',['lucide-grid'] = 'rbxassetid://10723404936',['lucide-grip-horizontal'] = 'rbxassetid://10723405089',['lucide-grip-vertical'] = 'rbxassetid://10723405236',['lucide-hammer'] = 'rbxassetid://10723405360',['lucide-hand'] = 'rbxassetid://10723405649',['lucide-hand-metal'] = 'rbxassetid://10723405508',['lucide-hard-drive'] = 'rbxassetid://10723405749',['lucide-hard-hat'] = 'rbxassetid://10723405859',['lucide-hash'] = 'rbxassetid://10723405975',['lucide-haze'] = 'rbxassetid://10723406078',['lucide-headphones'] = 'rbxassetid://10723406165',['lucide-heart'] = 'rbxassetid://10723406885',['lucide-heart-crack'] = 'rbxassetid://10723406299',['lucide-heart-handshake'] = 'rbxassetid://10723406480',['lucide-heart-off'] = 'rbxassetid://10723406662',['lucide-heart-pulse'] = 'rbxassetid://10723406795',['lucide-help-circle'] = 'rbxassetid://10723406988',['lucide-hexagon'] = 'rbxassetid://10723407092',['lucide-highlighter'] = 'rbxassetid://10723407192',['lucide-history'] = 'rbxassetid://10723407335',['lucide-home'] = 'rbxassetid://10723407389',['lucide-hourglass'] = 'rbxassetid://10723407498',['lucide-ice-cream'] = 'rbxassetid://10723414308',['lucide-image'] = 'rbxassetid://10723415040',['lucide-image-minus'] = 'rbxassetid://10723414487',['lucide-image-off'] = 'rbxassetid://10723414677',['lucide-image-plus'] = 'rbxassetid://10723414827',['lucide-import'] = 'rbxassetid://10723415205',['lucide-inbox'] = 'rbxassetid://10723415335',['lucide-indent'] = 'rbxassetid://10723415494',['lucide-indian-rupee'] = 'rbxassetid://10723415642',['lucide-infinity'] = 'rbxassetid://10723415766',['lucide-info'] = 'rbxassetid://10723415903',['lucide-inspect'] = 'rbxassetid://10723416057',['lucide-italic'] = 'rbxassetid://10723416195',['lucide-japanese-yen'] = 'rbxassetid://10723416363',['lucide-joystick'] = 'rbxassetid://10723416527',['lucide-key'] = 'rbxassetid://10723416652',['lucide-keyboard'] = 'rbxassetid://10723416765',['lucide-lamp'] = 'rbxassetid://10723417513',['lucide-lamp-ceiling'] = 'rbxassetid://10723416922',['lucide-lamp-desk'] = 'rbxassetid://10723417016',['lucide-lamp-floor'] = 'rbxassetid://10723417131',['lucide-lamp-wall-down'] = 'rbxassetid://10723417240',['lucide-lamp-wall-up'] = 'rbxassetid://10723417356',['lucide-landmark'] = 'rbxassetid://10723417608',['lucide-languages'] = 'rbxassetid://10723417703',['lucide-laptop'] = 'rbxassetid://10723423881',['lucide-laptop-2'] = 'rbxassetid://10723417797',['lucide-lasso'] = 'rbxassetid://10723424235',['lucide-lasso-select'] = 'rbxassetid://10723424058',['lucide-laugh'] = 'rbxassetid://10723424372',['lucide-layers'] = 'rbxassetid://10723424505',['lucide-layout'] = 'rbxassetid://10723425376',['lucide-layout-dashboard'] = 'rbxassetid://10723424646',['lucide-layout-grid'] = 'rbxassetid://10723424838',['lucide-layout-list'] = 'rbxassetid://10723424963',['lucide-layout-template'] = 'rbxassetid://10723425187',['lucide-leaf'] = 'rbxassetid://10723425539',['lucide-library'] = 'rbxassetid://10723425615',['lucide-life-buoy'] = 'rbxassetid://10723425685',['lucide-lightbulb'] = 'rbxassetid://10723425852',['lucide-lightbulb-off'] = 'rbxassetid://10723425762',['lucide-line-chart'] = 'rbxassetid://10723426393',['lucide-link'] = 'rbxassetid://10723426722',['lucide-link-2'] = 'rbxassetid://10723426595',['lucide-link-2-off'] = 'rbxassetid://10723426513',['lucide-list'] = 'rbxassetid://10723433811',['lucide-list-checks'] = 'rbxassetid://10734884548',['lucide-list-end'] = 'rbxassetid://10723426886',['lucide-list-minus'] = 'rbxassetid://10723426986',['lucide-list-music'] = 'rbxassetid://10723427081',['lucide-list-ordered'] = 'rbxassetid://10723427199',['lucide-list-plus'] = 'rbxassetid://10723427334',['lucide-list-start'] = 'rbxassetid://10723427494',['lucide-list-video'] = 'rbxassetid://10723427619',['lucide-list-x'] = 'rbxassetid://10723433655',['lucide-loader'] = 'rbxassetid://10723434070',['lucide-loader-2'] = 'rbxassetid://10723433935',['lucide-locate'] = 'rbxassetid://10723434557',['lucide-locate-fixed'] = 'rbxassetid://10723434236',['lucide-locate-off'] = 'rbxassetid://10723434379',['lucide-lock'] = 'rbxassetid://10723434711',['lucide-log-in'] = 'rbxassetid://10723434830',['lucide-log-out'] = 'rbxassetid://10723434906',['lucide-luggage'] = 'rbxassetid://10723434993',['lucide-magnet'] = 'rbxassetid://10723435069',['lucide-mail'] = 'rbxassetid://10734885430',['lucide-mail-check'] = 'rbxassetid://10723435182',['lucide-mail-minus'] = 'rbxassetid://10723435261',['lucide-mail-open'] = 'rbxassetid://10723435342',['lucide-mail-plus'] = 'rbxassetid://10723435443',['lucide-mail-question'] = 'rbxassetid://10723435515',['lucide-mail-search'] = 'rbxassetid://10734884739',['lucide-mail-warning'] = 'rbxassetid://10734885015',['lucide-mail-x'] = 'rbxassetid://10734885247',['lucide-mails'] = 'rbxassetid://10734885614',['lucide-map'] = 'rbxassetid://10734886202',['lucide-map-pin'] = 'rbxassetid://10734886004',['lucide-map-pin-off'] = 'rbxassetid://10734885803',['lucide-maximize'] = 'rbxassetid://10734886735',['lucide-maximize-2'] = 'rbxassetid://10734886496',['lucide-medal'] = 'rbxassetid://10734887072',['lucide-megaphone'] = 'rbxassetid://10734887454',['lucide-megaphone-off'] = 'rbxassetid://10734887311',['lucide-meh'] = 'rbxassetid://10734887603',['lucide-menu'] = 'rbxassetid://10734887784',['lucide-message-circle'] = 'rbxassetid://10734888000',['lucide-message-square'] = 'rbxassetid://10734888228',['lucide-mic'] = 'rbxassetid://10734888864',['lucide-mic-2'] = 'rbxassetid://10734888430',['lucide-mic-off'] = 'rbxassetid://10734888646',['lucide-microscope'] = 'rbxassetid://10734889106',['lucide-microwave'] = 'rbxassetid://10734895076',['lucide-milestone'] = 'rbxassetid://10734895310',['lucide-minimize'] = 'rbxassetid://10734895698',['lucide-minimize-2'] = 'rbxassetid://10734895530',['lucide-minus'] = 'rbxassetid://10734896206',['lucide-minus-circle'] = 'rbxassetid://10734895856',['lucide-minus-square'] = 'rbxassetid://10734896029',['lucide-monitor'] = 'rbxassetid://10734896881',['lucide-monitor-off'] = 'rbxassetid://10734896360',['lucide-monitor-speaker'] = 'rbxassetid://10734896512',['lucide-moon'] = 'rbxassetid://10734897102',['lucide-more-horizontal'] = 'rbxassetid://10734897250',['lucide-more-vertical'] = 'rbxassetid://10734897387',['lucide-mountain'] = 'rbxassetid://10734897956',['lucide-mountain-snow'] = 'rbxassetid://10734897665',['lucide-mouse'] = 'rbxassetid://10734898592',['lucide-mouse-pointer'] = 'rbxassetid://10734898476',['lucide-mouse-pointer-2'] = 'rbxassetid://10734898194',['lucide-mouse-pointer-click'] = 'rbxassetid://10734898355',['lucide-move'] = 'rbxassetid://10734900011',['lucide-move-3d'] = 'rbxassetid://10734898756',['lucide-move-diagonal'] = 'rbxassetid://10734899164',['lucide-move-diagonal-2'] = 'rbxassetid://10734898934',['lucide-move-horizontal'] = 'rbxassetid://10734899414',['lucide-move-vertical'] = 'rbxassetid://10734899821',['lucide-music'] = 'rbxassetid://10734905958',['lucide-music-2'] = 'rbxassetid://10734900215',['lucide-music-3'] = 'rbxassetid://10734905665',['lucide-music-4'] = 'rbxassetid://10734905823',['lucide-navigation'] = 'rbxassetid://10734906744',['lucide-navigation-2'] = 'rbxassetid://10734906332',['lucide-navigation-2-off'] = 'rbxassetid://10734906144',['lucide-navigation-off'] = 'rbxassetid://10734906580',['lucide-network'] = 'rbxassetid://10734906975',['lucide-newspaper'] = 'rbxassetid://10734907168',['lucide-octagon'] = 'rbxassetid://10734907361',['lucide-option'] = 'rbxassetid://10734907649',['lucide-outdent'] = 'rbxassetid://10734907933',['lucide-package'] = 'rbxassetid://10734909540',['lucide-package-2'] = 'rbxassetid://10734908151',['lucide-package-check'] = 'rbxassetid://10734908384',['lucide-package-minus'] = 'rbxassetid://10734908626',['lucide-package-open'] = 'rbxassetid://10734908793',['lucide-package-plus'] = 'rbxassetid://10734909016',['lucide-package-search'] = 'rbxassetid://10734909196',['lucide-package-x'] = 'rbxassetid://10734909375',['lucide-paint-bucket'] = 'rbxassetid://10734909847',['lucide-paintbrush'] = 'rbxassetid://10734910187',['lucide-paintbrush-2'] = 'rbxassetid://10734910030',['lucide-palette'] = 'rbxassetid://10734910430',['lucide-palmtree'] = 'rbxassetid://10734910680',['lucide-paperclip'] = 'rbxassetid://10734910927',['lucide-party-popper'] = 'rbxassetid://10734918735',['lucide-pause'] = 'rbxassetid://10734919336',['lucide-pause-circle'] = 'rbxassetid://10735024209',['lucide-pause-octagon'] = 'rbxassetid://10734919143',['lucide-pen-tool'] = 'rbxassetid://10734919503',['lucide-pencil'] = 'rbxassetid://10734919691',['lucide-percent'] = 'rbxassetid://10734919919',['lucide-person-standing'] = 'rbxassetid://10734920149',['lucide-phone'] = 'rbxassetid://10734921524',['lucide-phone-call'] = 'rbxassetid://10734920305',['lucide-phone-forwarded'] = 'rbxassetid://10734920508',['lucide-phone-incoming'] = 'rbxassetid://10734920694',['lucide-phone-missed'] = 'rbxassetid://10734920845',['lucide-phone-off'] = 'rbxassetid://10734921077',['lucide-phone-outgoing'] = 'rbxassetid://10734921288',['lucide-pie-chart'] = 'rbxassetid://10734921727',['lucide-piggy-bank'] = 'rbxassetid://10734921935',['lucide-pin'] = 'rbxassetid://10734922324',['lucide-pin-off'] = 'rbxassetid://10734922180',['lucide-pipette'] = 'rbxassetid://10734922497',['lucide-pizza'] = 'rbxassetid://10734922774',['lucide-plane'] = 'rbxassetid://10734922971',['lucide-play'] = 'rbxassetid://10734923549',['lucide-play-circle'] = 'rbxassetid://10734923214',['lucide-plus'] = 'rbxassetid://10734924532',['lucide-plus-circle'] = 'rbxassetid://10734923868',['lucide-plus-square'] = 'rbxassetid://10734924219',['lucide-podcast'] = 'rbxassetid://10734929553',['lucide-pointer'] = 'rbxassetid://10734929723',['lucide-pound-sterling'] = 'rbxassetid://10734929981',['lucide-power'] = 'rbxassetid://10734930466',['lucide-power-off'] = 'rbxassetid://10734930257',['lucide-printer'] = 'rbxassetid://10734930632',['lucide-puzzle'] = 'rbxassetid://10734930886',['lucide-quote'] = 'rbxassetid://10734931234',['lucide-radio'] = 'rbxassetid://10734931596',['lucide-radio-receiver'] = 'rbxassetid://10734931402',['lucide-rectangle-horizontal'] = 'rbxassetid://10734931777',['lucide-rectangle-vertical'] = 'rbxassetid://10734932081',['lucide-recycle'] = 'rbxassetid://10734932295',['lucide-redo'] = 'rbxassetid://10734932822',['lucide-redo-2'] = 'rbxassetid://10734932586',['lucide-refresh-ccw'] = 'rbxassetid://10734933056',['lucide-refresh-cw'] = 'rbxassetid://10734933222',['lucide-refrigerator'] = 'rbxassetid://10734933465',['lucide-regex'] = 'rbxassetid://10734933655',['lucide-repeat'] = 'rbxassetid://10734933966',['lucide-repeat-1'] = 'rbxassetid://10734933826',['lucide-reply'] = 'rbxassetid://10734934252',['lucide-reply-all'] = 'rbxassetid://10734934132',['lucide-rewind'] = 'rbxassetid://10734934347',['lucide-rocket'] = 'rbxassetid://10734934585',['lucide-rocking-chair'] = 'rbxassetid://10734939942',['lucide-rotate-3d'] = 'rbxassetid://10734940107',['lucide-rotate-ccw'] = 'rbxassetid://10734940376',['lucide-rotate-cw'] = 'rbxassetid://10734940654',['lucide-rss'] = 'rbxassetid://10734940825',['lucide-ruler'] = 'rbxassetid://10734941018',['lucide-russian-ruble'] = 'rbxassetid://10734941199',['lucide-sailboat'] = 'rbxassetid://10734941354',['lucide-save'] = 'rbxassetid://10734941499',['lucide-scale'] = 'rbxassetid://10734941912',['lucide-scale-3d'] = 'rbxassetid://10734941739',['lucide-scaling'] = 'rbxassetid://10734942072',['lucide-scan'] = 'rbxassetid://10734942565',['lucide-scan-face'] = 'rbxassetid://10734942198',['lucide-scan-line'] = 'rbxassetid://10734942351',['lucide-scissors'] = 'rbxassetid://10734942778',['lucide-screen-share'] = 'rbxassetid://10734943193',['lucide-screen-share-off'] = 'rbxassetid://10734942967',['lucide-scroll'] = 'rbxassetid://10734943448',['lucide-search'] = 'rbxassetid://10734943674',['lucide-send'] = 'rbxassetid://10734943902',['lucide-separator-horizontal'] = 'rbxassetid://10734944115',['lucide-separator-vertical'] = 'rbxassetid://10734944326',['lucide-server'] = 'rbxassetid://10734949856',['lucide-server-cog'] = 'rbxassetid://10734944444',['lucide-server-crash'] = 'rbxassetid://10734944554',['lucide-server-off'] = 'rbxassetid://10734944668',['lucide-settings'] = 'rbxassetid://10734950309',['lucide-settings-2'] = 'rbxassetid://10734950020',['lucide-share'] = 'rbxassetid://10734950813',['lucide-share-2'] = 'rbxassetid://10734950553',['lucide-sheet'] = 'rbxassetid://10734951038',['lucide-shield'] = 'rbxassetid://10734951847',['lucide-shield-alert'] = 'rbxassetid://10734951173',['lucide-shield-check'] = 'rbxassetid://10734951367',['lucide-shield-close'] = 'rbxassetid://10734951535',['lucide-shield-off'] = 'rbxassetid://10734951684',['lucide-shirt'] = 'rbxassetid://10734952036',['lucide-shopping-bag'] = 'rbxassetid://10734952273',['lucide-shopping-cart'] = 'rbxassetid://10734952479',['lucide-shovel'] = 'rbxassetid://10734952773',['lucide-shower-head'] = 'rbxassetid://10734952942',['lucide-shrink'] = 'rbxassetid://10734953073',['lucide-shrub'] = 'rbxassetid://10734953241',['lucide-shuffle'] = 'rbxassetid://10734953451',['lucide-sidebar'] = 'rbxassetid://10734954301',['lucide-sidebar-close'] = 'rbxassetid://10734953715',['lucide-sidebar-open'] = 'rbxassetid://10734954000',['lucide-sigma'] = 'rbxassetid://10734954538',['lucide-signal'] = 'rbxassetid://10734961133',['lucide-signal-high'] = 'rbxassetid://10734954807',['lucide-signal-low'] = 'rbxassetid://10734955080',['lucide-signal-medium'] = 'rbxassetid://10734955336',['lucide-signal-zero'] = 'rbxassetid://10734960878',['lucide-siren'] = 'rbxassetid://10734961284',['lucide-skip-back'] = 'rbxassetid://10734961526',['lucide-skip-forward'] = 'rbxassetid://10734961809',['lucide-skull'] = 'rbxassetid://10734962068',['lucide-slack'] = 'rbxassetid://10734962339',['lucide-slash'] = 'rbxassetid://10734962600',['lucide-slice'] = 'rbxassetid://10734963024',['lucide-sliders'] = 'rbxassetid://10734963400',['lucide-sliders-horizontal'] = 'rbxassetid://10734963191',['lucide-smartphone'] = 'rbxassetid://10734963940',['lucide-smartphone-charging'] = 'rbxassetid://10734963671',['lucide-smile'] = 'rbxassetid://10734964441',['lucide-smile-plus'] = 'rbxassetid://10734964188',['lucide-snowflake'] = 'rbxassetid://10734964600',['lucide-sofa'] = 'rbxassetid://10734964852',['lucide-sort-asc'] = 'rbxassetid://10734965115',['lucide-sort-desc'] = 'rbxassetid://10734965287',['lucide-speaker'] = 'rbxassetid://10734965419',['lucide-sprout'] = 'rbxassetid://10734965572',['lucide-square'] = 'rbxassetid://10734965702',['lucide-star'] = 'rbxassetid://10734966248',['lucide-star-half'] = 'rbxassetid://10734965897',['lucide-star-off'] = 'rbxassetid://10734966097',['lucide-stethoscope'] = 'rbxassetid://10734966384',['lucide-sticker'] = 'rbxassetid://10734972234',['lucide-sticky-note'] = 'rbxassetid://10734972463',['lucide-stop-circle'] = 'rbxassetid://10734972621',['lucide-stretch-horizontal'] = 'rbxassetid://10734972862',['lucide-stretch-vertical'] = 'rbxassetid://10734973130',['lucide-strikethrough'] = 'rbxassetid://10734973290',['lucide-subscript'] = 'rbxassetid://10734973457',['lucide-sun'] = 'rbxassetid://10734974297',['lucide-sun-dim'] = 'rbxassetid://10734973645',['lucide-sun-medium'] = 'rbxassetid://10734973778',['lucide-sun-moon'] = 'rbxassetid://10734973999',['lucide-sun-snow'] = 'rbxassetid://10734974130',['lucide-sunrise'] = 'rbxassetid://10734974522',['lucide-sunset'] = 'rbxassetid://10734974689',['lucide-superscript'] = 'rbxassetid://10734974850',['lucide-swiss-franc'] = 'rbxassetid://10734975024',['lucide-switch-camera'] = 'rbxassetid://10734975214',['lucide-sword'] = 'rbxassetid://10734975486',['lucide-swords'] = 'rbxassetid://10734975692',['lucide-syringe'] = 'rbxassetid://10734975932',['lucide-table'] = 'rbxassetid://10734976230',['lucide-table-2'] = 'rbxassetid://10734976097',['lucide-tablet'] = 'rbxassetid://10734976394',['lucide-tag'] = 'rbxassetid://10734976528',['lucide-tags'] = 'rbxassetid://10734976739',['lucide-target'] = 'rbxassetid://10734977012',['lucide-tent'] = 'rbxassetid://10734981750',['lucide-terminal'] = 'rbxassetid://10734982144',['lucide-terminal-square'] = 'rbxassetid://10734981995',['lucide-text-cursor'] = 'rbxassetid://10734982395',['lucide-text-cursor-input'] = 'rbxassetid://10734982297',['lucide-thermometer'] = 'rbxassetid://10734983134',['lucide-thermometer-snowflake'] = 'rbxassetid://10734982571',['lucide-thermometer-sun'] = 'rbxassetid://10734982771',['lucide-thumbs-down'] = 'rbxassetid://10734983359',['lucide-thumbs-up'] = 'rbxassetid://10734983629',['lucide-ticket'] = 'rbxassetid://10734983868',['lucide-timer'] = 'rbxassetid://10734984606',['lucide-timer-off'] = 'rbxassetid://10734984138',['lucide-timer-reset'] = 'rbxassetid://10734984355',['lucide-toggle-left'] = 'rbxassetid://10734984834',['lucide-toggle-right'] = 'rbxassetid://10734985040',['lucide-tornado'] = 'rbxassetid://10734985247',['lucide-toy-brick'] = 'rbxassetid://10747361919',['lucide-train'] = 'rbxassetid://10747362105',['lucide-trash'] = 'rbxassetid://10747362393',['lucide-trash-2'] = 'rbxassetid://10747362241',['lucide-tree-deciduous'] = 'rbxassetid://10747362534',['lucide-tree-pine'] = 'rbxassetid://10747362748',['lucide-trees'] = 'rbxassetid://10747363016',['lucide-trending-down'] = 'rbxassetid://10747363205',['lucide-trending-up'] = 'rbxassetid://10747363465',['lucide-triangle'] = 'rbxassetid://10747363621',['lucide-trophy'] = 'rbxassetid://10747363809',['lucide-truck'] = 'rbxassetid://10747364031',['lucide-tv'] = 'rbxassetid://10747364593',['lucide-tv-2'] = 'rbxassetid://10747364302',['lucide-type'] = 'rbxassetid://10747364761',['lucide-umbrella'] = 'rbxassetid://10747364971',['lucide-underline'] = 'rbxassetid://10747365191',['lucide-undo'] = 'rbxassetid://10747365484',['lucide-undo-2'] = 'rbxassetid://10747365359',['lucide-unlink'] = 'rbxassetid://10747365771',['lucide-unlink-2'] = 'rbxassetid://10747397871',['lucide-unlock'] = 'rbxassetid://10747366027',['lucide-upload'] = 'rbxassetid://10747366434',['lucide-upload-cloud'] = 'rbxassetid://10747366266',['lucide-usb'] = 'rbxassetid://10747366606',['lucide-user'] = 'rbxassetid://10747373176',['lucide-user-check'] = 'rbxassetid://10747371901',['lucide-user-cog'] = 'rbxassetid://10747372167',['lucide-user-minus'] = 'rbxassetid://10747372346',['lucide-user-plus'] = 'rbxassetid://10747372702',['lucide-user-x'] = 'rbxassetid://10747372992',['lucide-users'] = 'rbxassetid://10747373426',['lucide-utensils'] = 'rbxassetid://10747373821',['lucide-utensils-crossed'] = 'rbxassetid://10747373629',['lucide-venetian-mask'] = 'rbxassetid://10747374003',['lucide-verified'] = 'rbxassetid://10747374131',['lucide-vibrate'] = 'rbxassetid://10747374489',['lucide-vibrate-off'] = 'rbxassetid://10747374269',['lucide-video'] = 'rbxassetid://10747374938',['lucide-video-off'] = 'rbxassetid://10747374721',['lucide-view'] = 'rbxassetid://10747375132',['lucide-voicemail'] = 'rbxassetid://10747375281',['lucide-volume'] = 'rbxassetid://10747376008',['lucide-volume-1'] = 'rbxassetid://10747375450',['lucide-volume-2'] = 'rbxassetid://10747375679',['lucide-volume-x'] = 'rbxassetid://10747375880',['lucide-wallet'] = 'rbxassetid://10747376205',['lucide-wand'] = 'rbxassetid://10747376565',['lucide-wand-2'] = 'rbxassetid://10747376349',['lucide-watch'] = 'rbxassetid://10747376722',['lucide-waves'] = 'rbxassetid://10747376931',['lucide-webcam'] = 'rbxassetid://10747381992',['lucide-wifi'] = 'rbxassetid://10747382504',['lucide-wifi-off'] = 'rbxassetid://10747382268',['lucide-wind'] = 'rbxassetid://10747382750',['lucide-wrap-text'] = 'rbxassetid://10747383065',['lucide-wrench'] = 'rbxassetid://10747383470',['lucide-x'] = 'rbxassetid://10747384394',['lucide-x-circle'] = 'rbxassetid://10747383819',['lucide-x-octagon'] = 'rbxassetid://10747384037',['lucide-x-square'] = 'rbxassetid://10747384217',['lucide-zoom-in'] = 'rbxassetid://10747384552',['lucide-zoom-out'] = 'rbxassetid://10747384679'}
		}
	end,
	[30] = function()
		local L_841_, L_842_, L_843_, L_844_, L_845_ = L_2_(30)
		local L_846_ = {
			SingleMotor = L_843_(L_842_.SingleMotor),
			GroupMotor = L_843_(L_842_.GroupMotor),
			Instant = L_843_(L_842_.Instant),
			Linear = L_843_(L_842_.Linear),
			Spring = L_843_(L_842_.Spring),
			isMotor = L_843_(L_842_.isMotor)
		}
		return L_846_
	end,
	[31] = function()
		local L_847_, L_848_, L_849_, L_850_, L_851_ = L_2_(31)
		local L_852_, L_853_, L_854_, L_855_ = game:GetService'RunService', L_849_(L_848_.Parent.Signal), function()
		end, {}
		L_855_.__index = L_855_
		function L_855_.new()
			return setmetatable({
				_onStep = L_853_.new(),
				_onStart = L_853_.new(),
				_onComplete = L_853_.new()
			}, L_855_)
		end
		function L_855_.onStep(L_856_arg0, L_857_arg1)
			return L_856_arg0._onStep:connect(L_857_arg1)
		end
		function L_855_.onStart(L_858_arg0, L_859_arg1)
			return L_858_arg0._onStart:connect(L_859_arg1)
		end
		function L_855_.onComplete(L_860_arg0, L_861_arg1)
			return L_860_arg0._onComplete:connect(L_861_arg1)
		end
		function L_855_.start(L_862_arg0)
			if not L_862_arg0._connection then
				L_862_arg0._connection = L_852_.RenderStepped:Connect(function(L_863_arg0)
					L_862_arg0:step(L_863_arg0)
				end)
			end
		end
		function L_855_.stop(L_864_arg0)
			if L_864_arg0._connection then
				L_864_arg0._connection:Disconnect()
				L_864_arg0._connection = nil
			end
		end
		L_855_.destroy = L_855_.stop
		L_855_.step = L_854_
		L_855_.getValue = L_854_
		L_855_.setGoal = L_854_
		function L_855_.__tostring(L_865_arg0)
			return 'Motor'
		end
		return L_855_
	end,
	[32] = function()
		local L_866_, L_867_, L_868_, L_869_, L_870_ = L_2_(32)
		return function()
			local L_871_, L_872_ = game:GetService'RunService', L_868_(L_867_.Parent.BaseMotor)
			describe('connection management', function()
				local L_873_ = L_872_.new()
				it('should hook up connections on :start()', function()
					L_873_:start()
					expect(typeof(L_873_._connection)).to.equal'RBXScriptConnection'
				end)
				it('should remove connections on :stop() or :destroy()', function()
					L_873_:stop()
					expect(L_873_._connection).to.equal(nil)
				end)
			end)
			it('should call :step() with deltaTime', function()
				local L_874_, L_875_ = (L_872_.new())
				function L_874_.step(L_877_arg0, ...)
					L_875_ = {
						...
					}
					L_874_:stop()
				end
				L_874_:start()
				local L_876_ = L_871_.RenderStepped:Wait()
				L_871_.RenderStepped:Wait()
				expect(L_875_).to.be.ok()
				expect(L_875_[1]).to.equal(L_876_)
			end)
		end
	end,
	[33] = function()
		local L_878_, L_879_, L_880_, L_881_, L_882_ = L_2_(33)
		local L_883_, L_884_, L_885_ = L_880_(L_879_.Parent.BaseMotor), L_880_(L_879_.Parent.SingleMotor), L_880_(L_879_.Parent.isMotor)
		local L_886_ = setmetatable({}, L_883_)
		L_886_.__index = L_886_
		local L_887_ = function(L_888_arg0)
			if L_885_(L_888_arg0) then
				return L_888_arg0
			end
			local L_889_ = typeof(L_888_arg0)
			if L_889_ == 'number' then
				return L_884_.new(L_888_arg0, false)
			elseif L_889_ == 'table' then
				return L_886_.new(L_888_arg0, false)
			end
			error(('Unable to convert %q to motor; type %s is unsupported'):format(L_888_arg0, L_889_), 2)
		end
		function L_886_.new(L_890_arg0, L_891_arg1)
			assert(L_890_arg0, 'Missing argument #1: initialValues')
			assert(typeof(L_890_arg0) == 'table', 'initialValues must be a table!')
			assert(not L_890_arg0.step, [[initialValues contains disallowed property "step". Did you mean to put a table of values here?]])
			local L_892_ = setmetatable(L_883_.new(), L_886_)
			if L_891_arg1 ~= nil then
				L_892_._useImplicitConnections = L_891_arg1
			else
				L_892_._useImplicitConnections = true
			end
			L_892_._complete = true
			L_892_._motors = {}
			for L_893_forvar0, L_894_forvar1 in pairs(L_890_arg0) do
				L_892_._motors[L_893_forvar0] = L_887_(L_894_forvar1)
			end
			return L_892_
		end
		function L_886_.step(L_895_arg0, L_896_arg1)
			if L_895_arg0._complete then
				return true
			end
			local L_897_ = true
			for L_898_forvar0, L_899_forvar1 in pairs(L_895_arg0._motors) do
				local L_900_ = L_899_forvar1:step(L_896_arg1)
				if not L_900_ then
					L_897_ = false
				end
			end
			L_895_arg0._onStep:fire(L_895_arg0:getValue())
			if L_897_ then
				if L_895_arg0._useImplicitConnections then
					L_895_arg0:stop()
				end
				L_895_arg0._complete = true
				L_895_arg0._onComplete:fire()
			end
			return L_897_
		end
		function L_886_.setGoal(L_901_arg0, L_902_arg1)
			assert(not L_902_arg1.step, [[goals contains disallowed property "step". Did you mean to put a table of goals here?]])
			L_901_arg0._complete = false
			L_901_arg0._onStart:fire()
			for L_903_forvar0, L_904_forvar1 in pairs(L_902_arg1) do
				local L_905_ = assert(L_901_arg0._motors[L_903_forvar0], ('Unknown motor for key %s'):format(L_903_forvar0))
				L_905_:setGoal(L_904_forvar1)
			end
			if L_901_arg0._useImplicitConnections then
				L_901_arg0:start()
			end
		end
		function L_886_.getValue(L_906_arg0)
			local L_907_ = {}
			for L_908_forvar0, L_909_forvar1 in pairs(L_906_arg0._motors) do
				L_907_[L_908_forvar0] = L_909_forvar1:getValue()
			end
			return L_907_
		end
		function L_886_.__tostring(L_910_arg0)
			return 'Motor(Group)'
		end
		return L_886_
	end,
	[34] = function()
		local L_911_, L_912_, L_913_, L_914_, L_915_ = L_2_(34)
		return function()
			local L_916_, L_917_, L_918_ = L_913_(L_912_.Parent.GroupMotor), L_913_(L_912_.Parent.Instant), L_913_(L_912_.Parent.Spring)
			it('should complete when all child motors are complete', function()
				local L_919_ = L_916_.new({
					A = 1,
					B = 2
				}, false)
				expect(L_919_._complete).to.equal(true)
				L_919_:setGoal{
					A = L_917_.new(3),
					B = L_918_.new(4, {
						frequency = 7.5,
						dampingRatio = 1
					})
				}
				expect(L_919_._complete).to.equal(false)
				L_919_:step(1.6666666666666665E-2)
				expect(L_919_._complete).to.equal(false)
				for L_920_forvar0 = 1, 30 do
					L_919_:step(1.6666666666666665E-2)
				end
				expect(L_919_._complete).to.equal(true)
			end)
			it('should start when the goal is set', function()
				local L_921_, L_922_ = L_916_.new({
					A = 0
				}, false), false
				L_921_:onStart(function()
					L_922_ = not L_922_
				end)
				L_921_:setGoal{
					A = L_917_.new(1)
				}
				expect(L_922_).to.equal(true)
				L_921_:setGoal{
					A = L_917_.new(1)
				}
				expect(L_922_).to.equal(false)
			end)
			it('should properly return all values', function()
				local L_923_ = L_916_.new({
					A = 1,
					B = 2
				}, false)
				local L_924_ = L_923_:getValue()
				expect(L_924_.A).to.equal(1)
				expect(L_924_.B).to.equal(2)
			end)
			it('should error when a goal is given to GroupMotor.new', function()
				local L_925_ = pcall(function()
					L_916_.new(L_917_.new(0))
				end)
				expect(L_925_).to.equal(false)
			end)
			it([[should error when a single goal is provided to GroupMotor:step]], function()
				local L_926_ = pcall(function()
					L_916_.new{
						a = 1
					}:setGoal(L_917_.new(0))
				end)
				expect(L_926_).to.equal(false)
			end)
		end
	end,
	[35] = function()
		local L_927_, L_928_, L_929_, L_930_, L_931_ = L_2_(35)
		local L_932_ = {}
		L_932_.__index = L_932_
		function L_932_.new(L_933_arg0)
			return setmetatable({
				_targetValue = L_933_arg0
			}, L_932_)
		end
		function L_932_.step(L_934_arg0)
			return {
				complete = true,
				value = L_934_arg0._targetValue
			}
		end
		return L_932_
	end,
	[36] = function()
		local L_935_, L_936_, L_937_, L_938_, L_939_ = L_2_(36)
		return function()
			local L_940_ = L_937_(L_936_.Parent.Instant)
			it('should return a completed state with the provided value', function()
				local L_941_ = L_940_.new(1.23)
				local L_942_ = L_941_:step(0.1, {
					value = 0,
					complete = false
				})
				expect(L_942_.complete).to.equal(true)
				expect(L_942_.value).to.equal(1.23)
			end)
		end
	end,
	[37] = function()
		local L_943_, L_944_, L_945_, L_946_, L_947_ = L_2_(37)
		local L_948_ = {}
		L_948_.__index = L_948_
		function L_948_.new(L_949_arg0, L_950_arg1)
			assert(L_949_arg0, 'Missing argument #1: targetValue')
			L_950_arg1 = L_950_arg1 or {}
			return setmetatable({
				_targetValue = L_949_arg0,
				_velocity = L_950_arg1.velocity or 1
			}, L_948_)
		end
		function L_948_.step(L_951_arg0, L_952_arg1, L_953_arg2)
			local L_954_, L_955_, L_956_ = L_952_arg1.value, L_951_arg0._velocity, L_951_arg0._targetValue
			local L_957_ = L_953_arg2 * L_955_
			local L_958_ = L_957_ >= math.abs(L_956_ - L_954_)
			L_954_ = L_954_ + L_957_ * (L_956_ > L_954_ and 1 or -1)
			if L_958_ then
				L_954_ = L_951_arg0._targetValue
				L_955_ = 0
			end
			return {
				complete = L_958_,
				value = L_954_,
				velocity = L_955_
			}
		end
		return L_948_
	end,
	[38] = function()
		local L_959_, L_960_, L_961_, L_962_, L_963_ = L_2_(38)
		return function()
			local L_964_, L_965_ = L_961_(L_960_.Parent.SingleMotor), L_961_(L_960_.Parent.Linear)
			describe('completed state', function()
				local L_966_, L_967_ = L_964_.new(0, false), L_965_.new(1, {
					velocity = 1
				})
				L_966_:setGoal(L_967_)
				for L_968_forvar0 = 1, 60 do
					L_966_:step(1.6666666666666665E-2)
				end
				it('should complete', function()
					expect(L_966_._state.complete).to.equal(true)
				end)
				it('should be exactly the goal value when completed', function()
					expect(L_966_._state.value).to.equal(1)
				end)
			end)
			describe('uncompleted state', function()
				local L_969_, L_970_ = L_964_.new(0, false), L_965_.new(1, {
					velocity = 1
				})
				L_969_:setGoal(L_970_)
				for L_971_forvar0 = 1, 59 do
					L_969_:step(1.6666666666666665E-2)
				end
				it('should be uncomplete', function()
					expect(L_969_._state.complete).to.equal(false)
				end)
			end)
			describe('negative velocity', function()
				local L_972_, L_973_ = L_964_.new(1, false), L_965_.new(0, {
					velocity = 1
				})
				L_972_:setGoal(L_973_)
				for L_974_forvar0 = 1, 60 do
					L_972_:step(1.6666666666666665E-2)
				end
				it('should complete', function()
					expect(L_972_._state.complete).to.equal(true)
				end)
				it('should be exactly the goal value when completed', function()
					expect(L_972_._state.value).to.equal(0)
				end)
			end)
		end
	end,
	[39] = function()
		local L_975_, L_976_, L_977_, L_978_, L_979_ = L_2_(39)
		local L_980_ = {}
		L_980_.__index = L_980_
		function L_980_.new(L_982_arg0, L_983_arg1)
			return setmetatable({
				signal = L_982_arg0,
				connected = true,
				_handler = L_983_arg1
			}, L_980_)
		end
		function L_980_.disconnect(L_984_arg0)
			if L_984_arg0.connected then
				L_984_arg0.connected = false
				for L_985_forvar0, L_986_forvar1 in pairs(L_984_arg0.signal._connections) do
					if L_986_forvar1 == L_984_arg0 then
						table.remove(L_984_arg0.signal._connections, L_985_forvar0)
						return
					end
				end
			end
		end
		local L_981_ = {}
		L_981_.__index = L_981_
		function L_981_.new()
			return setmetatable({
				_connections = {},
				_threads = {}
			}, L_981_)
		end
		function L_981_.fire(L_987_arg0, ...)
			for L_988_forvar0, L_989_forvar1 in pairs(L_987_arg0._connections) do
				L_989_forvar1._handler(...)
			end
			for L_990_forvar0, L_991_forvar1 in pairs(L_987_arg0._threads) do
				coroutine.resume(L_991_forvar1, ...)
			end
			L_987_arg0._threads = {}
		end
		function L_981_.connect(L_992_arg0, L_993_arg1)
			local L_994_ = L_980_.new(L_992_arg0, L_993_arg1)
			table.insert(L_992_arg0._connections, L_994_)
			return L_994_
		end
		function L_981_.wait(L_995_arg0)
			table.insert(L_995_arg0._threads, coroutine.running())
			return coroutine.yield()
		end
		return L_981_
	end,
	[40] = function()
		local L_996_, L_997_, L_998_, L_999_, L_1000_ = L_2_(40)
		return function()
			local L_1001_ = L_998_(L_997_.Parent.Signal)
			it('should invoke all connections, instantly', function()
				local L_1002_, L_1003_, L_1004_ = (L_1001_.new())
				L_1002_:connect(function(L_1005_arg0)
					L_1003_ = L_1005_arg0
				end)
				L_1002_:connect(function(L_1006_arg0)
					L_1004_ = L_1006_arg0
				end)
				L_1002_:fire'hello'
				expect(L_1003_).to.equal'hello'
				expect(L_1004_).to.equal'hello'
			end)
			it('should return values when :wait() is called', function()
				local L_1007_ = L_1001_.new()
				task.spawn(function()
					L_1007_:fire(123, 'hello')
				end)
				local L_1008_, L_1009_ = L_1007_:wait()
				expect(L_1008_).to.equal(123)
				expect(L_1009_).to.equal'hello'
			end)
			it('should properly handle disconnections', function()
				local L_1010_, L_1011_ = L_1001_.new(), false
				local L_1012_ = L_1010_:connect(function()
					L_1011_ = true
				end)
				L_1012_:disconnect()
				L_1010_:fire()
				expect(L_1011_).to.equal(false)
			end)
		end
	end,
	[41] = function()
		local L_1013_, L_1014_, L_1015_, L_1016_, L_1017_ = L_2_(41)
		local L_1018_ = L_1015_(L_1014_.Parent.BaseMotor)
		local L_1019_ = setmetatable({}, L_1018_)
		L_1019_.__index = L_1019_
		function L_1019_.new(L_1020_arg0, L_1021_arg1)
			assert(L_1020_arg0, 'Missing argument #1: initialValue')
			assert(typeof(L_1020_arg0) == 'number', 'initialValue must be a number!')
			local L_1022_ = setmetatable(L_1018_.new(), L_1019_)
			if L_1021_arg1 ~= nil then
				L_1022_._useImplicitConnections = L_1021_arg1
			else
				L_1022_._useImplicitConnections = true
			end
			L_1022_._goal = nil
			L_1022_._state = {
				complete = true,
				value = L_1020_arg0
			}
			return L_1022_
		end
		function L_1019_.step(L_1023_arg0, L_1024_arg1)
			if L_1023_arg0._state.complete then
				return true
			end
			local L_1025_ = L_1023_arg0._goal:step(L_1023_arg0._state, L_1024_arg1)
			L_1023_arg0._state = L_1025_
			L_1023_arg0._onStep:fire(L_1025_.value)
			if L_1025_.complete then
				if L_1023_arg0._useImplicitConnections then
					L_1023_arg0:stop()
				end
				L_1023_arg0._onComplete:fire()
			end
			return L_1025_.complete
		end
		function L_1019_.getValue(L_1026_arg0)
			return L_1026_arg0._state.value
		end
		function L_1019_.setGoal(L_1027_arg0, L_1028_arg1)
			L_1027_arg0._state.complete = false
			L_1027_arg0._goal = L_1028_arg1
			L_1027_arg0._onStart:fire()
			if L_1027_arg0._useImplicitConnections then
				L_1027_arg0:start()
			end
		end
		function L_1019_.__tostring(L_1029_arg0)
			return 'Motor(Single)'
		end
		return L_1019_
	end,
	[42] = function()
		local L_1030_, L_1031_, L_1032_, L_1033_, L_1034_ = L_2_(42)
		return function()
			local L_1035_, L_1036_ = L_1032_(L_1031_.Parent.SingleMotor), L_1032_(L_1031_.Parent.Instant)
			it('should assign new state on step', function()
				local L_1037_ = L_1035_.new(0, false)
				L_1037_:setGoal(L_1036_.new(5))
				L_1037_:step(1.6666666666666665E-2)
				expect(L_1037_._state.complete).to.equal(true)
				expect(L_1037_._state.value).to.equal(5)
			end)
			it([[should invoke onComplete listeners when the goal is completed]], function()
				local L_1038_, L_1039_ = L_1035_.new(0, false), false
				L_1038_:onComplete(function()
					L_1039_ = true
				end)
				L_1038_:setGoal(L_1036_.new(5))
				L_1038_:step(1.6666666666666665E-2)
				expect(L_1039_).to.equal(true)
			end)
			it('should start when the goal is set', function()
				local L_1040_, L_1041_ = L_1035_.new(0, false), false
				L_1040_:onStart(function()
					L_1041_ = not L_1041_
				end)
				L_1040_:setGoal(L_1036_.new(5))
				expect(L_1041_).to.equal(true)
				L_1040_:setGoal(L_1036_.new(5))
				expect(L_1041_).to.equal(false)
			end)
		end
	end,
	[43] = function()
		local L_1042_, L_1043_, L_1044_, L_1045_, L_1046_ = L_2_(43)
		local L_1047_, L_1048_, L_1049_, L_1050_ = 0.001, 0.001, 0.0001, {}
		L_1050_.__index = L_1050_
		function L_1050_.new(L_1051_arg0, L_1052_arg1)
			assert(L_1051_arg0, 'Missing argument #1: targetValue')
			L_1052_arg1 = L_1052_arg1 or {}
			return setmetatable({
				_targetValue = L_1051_arg0,
				_frequency = L_1052_arg1.frequency or 4,
				_dampingRatio = L_1052_arg1.dampingRatio or 1
			}, L_1050_)
		end
		function L_1050_.step(L_1053_arg0, L_1054_arg1, L_1055_arg2)
			local L_1056_, L_1057_, L_1058_, L_1059_, L_1060_ = L_1053_arg0._dampingRatio, L_1053_arg0._frequency * 2 * math.pi, L_1053_arg0._targetValue, L_1054_arg1.value, L_1054_arg1.velocity or 0
			local L_1061_, L_1062_, L_1063_, L_1064_ = L_1059_ - L_1058_, (math.exp(-L_1056_ * L_1057_ * L_1055_arg2))
			if L_1056_ == 1 then
				L_1063_ = (L_1061_ * (1 + L_1057_ * L_1055_arg2) + L_1060_ * L_1055_arg2) * L_1062_ + L_1058_
				L_1064_ = (L_1060_ * (1 - L_1057_ * L_1055_arg2) - L_1061_ * (L_1057_ * L_1057_ * L_1055_arg2)) * L_1062_
			elseif L_1056_ < 1 then
				local L_1066_ = math.sqrt(1 - L_1056_ * L_1056_)
				local L_1067_, L_1068_, L_1069_ = math.cos(L_1057_ * L_1066_ * L_1055_arg2), (math.sin(L_1057_ * L_1066_ * L_1055_arg2))
				if L_1066_ > L_1049_ then
					L_1069_ = L_1068_ / L_1066_
				else
					local L_1071_ = L_1055_arg2 * L_1057_
					L_1069_ = L_1071_ + ((L_1071_ * L_1071_) * (L_1066_ * L_1066_) * (L_1066_ * L_1066_) / 20 - L_1066_ * L_1066_) * (L_1071_ * L_1071_ * L_1071_) / 6
				end
				local L_1070_
				if L_1057_ * L_1066_ > L_1049_ then
					L_1070_ = L_1068_ / (L_1057_ * L_1066_)
				else
					local L_1072_ = L_1057_ * L_1066_
					L_1070_ = L_1055_arg2 + ((L_1055_arg2 * L_1055_arg2) * (L_1072_ * L_1072_) * (L_1072_ * L_1072_) / 20 - L_1072_ * L_1072_) * (L_1055_arg2 * L_1055_arg2 * L_1055_arg2) / 6
				end
				L_1063_ = (L_1061_ * (L_1067_ + L_1056_ * L_1069_) + L_1060_ * L_1070_) * L_1062_ + L_1058_
				L_1064_ = (L_1060_ * (L_1067_ - L_1069_ * L_1056_) - L_1061_ * (L_1069_ * L_1057_)) * L_1062_
			else
				local L_1073_ = math.sqrt(L_1056_ * L_1056_ - 1)
				local L_1074_, L_1075_ = -L_1057_ * (L_1056_ - L_1073_), -L_1057_ * (L_1056_ + L_1073_)
				local L_1076_ = (L_1060_ - L_1061_ * L_1074_) / (2 * L_1057_ * L_1073_)
				local L_1077_ = L_1061_ - L_1076_
				local L_1078_, L_1079_ = L_1077_ * math.exp(L_1074_ * L_1055_arg2), L_1076_ * math.exp(L_1075_ * L_1055_arg2)
				L_1063_ = L_1078_ + L_1079_ + L_1058_
				L_1064_ = L_1078_ * L_1074_ + L_1079_ * L_1075_
			end
			local L_1065_ = math.abs(L_1064_) < L_1047_ and math.abs(L_1063_ - L_1058_) < L_1048_
			return {
				complete = L_1065_,
				value = L_1065_ and L_1058_ or L_1063_,
				velocity = L_1064_
			}
		end
		return L_1050_
	end,
	[44] = function()
		local L_1080_, L_1081_, L_1082_, L_1083_, L_1084_ = L_2_(44)
		return function()
			local L_1085_, L_1086_ = L_1082_(L_1081_.Parent.SingleMotor), L_1082_(L_1081_.Parent.Spring)
			describe('completed state', function()
				local L_1087_, L_1088_ = L_1085_.new(0, false), L_1086_.new(1, {
					frequency = 2,
					dampingRatio = 0.75
				})
				L_1087_:setGoal(L_1088_)
				for L_1089_forvar0 = 1, 100 do
					L_1087_:step(1.6666666666666665E-2)
				end
				it('should complete', function()
					expect(L_1087_._state.complete).to.equal(true)
				end)
				it('should be exactly the goal value when completed', function()
					expect(L_1087_._state.value).to.equal(1)
				end)
			end)
			it('should inherit velocity', function()
				local L_1090_ = L_1085_.new(0, false)
				L_1090_._state = {
					complete = false,
					value = 0,
					velocity = -5
				}
				local L_1091_ = L_1086_.new(1, {
					frequency = 2,
					dampingRatio = 1
				})
				L_1090_:setGoal(L_1091_)
				L_1090_:step(1.6666666666666665E-2)
				expect(L_1090_._state.velocity < 0).to.equal(true)
			end)
		end
	end,
	[45] = function()
		local L_1092_, L_1093_, L_1094_, L_1095_, L_1096_ = L_2_(45)
		local L_1097_ = function(L_1098_arg0)
			local L_1099_ = tostring(L_1098_arg0):match'^Motor%((.+)%)$'
			if L_1099_ then
				return true, L_1099_
			else
				return false
			end
		end
		return L_1097_
	end,
	[46] = function()
		local L_1100_, L_1101_, L_1102_, L_1103_, L_1104_ = L_2_(46)
		return function()
			local L_1105_, L_1106_, L_1107_ = L_1102_(L_1101_.Parent.isMotor), L_1102_(L_1101_.Parent.SingleMotor), L_1102_(L_1101_.Parent.GroupMotor)
			local L_1108_, L_1109_ = L_1106_.new(0), L_1107_.new{}
			it('should properly detect motors', function()
				expect(L_1105_(L_1108_)).to.equal(true)
				expect(L_1105_(L_1109_)).to.equal(true)
			end)
			it("shouldn't detect things that aren't motors", function()
				expect(L_1105_{}).to.equal(false)
			end)
			it('should return the proper motor type', function()
				local L_1110_, L_1111_ = L_1105_(L_1108_)
				local L_1112_, L_1113_ = L_1105_(L_1109_)
				expect(L_1111_).to.equal'Single'
				expect(L_1113_).to.equal'Group'
			end)
		end
	end,
	[47] = function()
		local L_1114_, L_1115_, L_1116_, L_1117_, L_1118_ = L_2_(47)
		local L_1119_ = {
			Names = {
				'Dark',
				'Darker',
				'Purple',
				'Aqua',
				'Amethyst',
				'Rose'
			}
		}
		for L_1120_forvar0, L_1121_forvar1 in next, L_1115_:GetChildren() do
			local L_1122_ = L_1116_(L_1121_forvar1)
			L_1119_[L_1122_.Name] = L_1122_
		end
		return L_1119_
	end,
	[48] = function()
		local L_1123_, L_1124_, L_1125_, L_1126_, L_1127_ = L_2_(48)
		return {
			Name = 'Amethyst',
			Accent = Color3.fromRGB(97, 62, 167),
			AcrylicMain = Color3.fromRGB(20, 20, 20),
			AcrylicBorder = Color3.fromRGB(110, 90, 130),
			AcrylicGradient = ColorSequence.new(Color3.fromRGB(85, 57, 139), Color3.fromRGB(40, 25, 65)),
			AcrylicNoise = 0.92,
			TitleBarLine = Color3.fromRGB(95, 75, 110),
			Tab = Color3.fromRGB(160, 140, 180),
			Element = Color3.fromRGB(140, 120, 160),
			ElementBorder = Color3.fromRGB(60, 50, 70),
			InElementBorder = Color3.fromRGB(100, 90, 110),
			ElementTransparency = 0.87,
			ToggleSlider = Color3.fromRGB(140, 120, 160),
			ToggleToggled = Color3.fromRGB(0, 0, 0),
			SliderRail = Color3.fromRGB(140, 120, 160),
			DropdownFrame = Color3.fromRGB(170, 160, 200),
			DropdownHolder = Color3.fromRGB(60, 45, 80),
			DropdownBorder = Color3.fromRGB(50, 40, 65),
			DropdownOption = Color3.fromRGB(140, 120, 160),
			Keybind = Color3.fromRGB(140, 120, 160),
			Input = Color3.fromRGB(140, 120, 160),
			InputFocused = Color3.fromRGB(20, 10, 30),
			InputIndicator = Color3.fromRGB(170, 150, 190),
			Dialog = Color3.fromRGB(60, 45, 80),
			DialogHolder = Color3.fromRGB(45, 30, 65),
			DialogHolderLine = Color3.fromRGB(40, 25, 60),
			DialogButton = Color3.fromRGB(60, 45, 80),
			DialogButtonBorder = Color3.fromRGB(95, 80, 110),
			DialogBorder = Color3.fromRGB(85, 70, 100),
			DialogInput = Color3.fromRGB(70, 55, 85),
			DialogInputLine = Color3.fromRGB(175, 160, 190),
			Text = Color3.fromRGB(240, 240, 240),
			SubText = Color3.fromRGB(170, 170, 170),
			Hover = Color3.fromRGB(140, 120, 160),
			HoverChange = 0.04
		}
	end,
	[49] = function()
		local L_1128_, L_1129_, L_1130_, L_1131_, L_1132_ = L_2_(49)
		return {
			Name = 'Aqua',
			Accent = Color3.fromRGB(60, 165, 165),
			AcrylicMain = Color3.fromRGB(20, 20, 20),
			AcrylicBorder = Color3.fromRGB(50, 100, 100),
			AcrylicGradient = ColorSequence.new(Color3.fromRGB(60, 140, 140), Color3.fromRGB(40, 80, 80)),
			AcrylicNoise = 0.92,
			TitleBarLine = Color3.fromRGB(60, 120, 120),
			Tab = Color3.fromRGB(140, 180, 180),
			Element = Color3.fromRGB(110, 160, 160),
			ElementBorder = Color3.fromRGB(40, 70, 70),
			InElementBorder = Color3.fromRGB(80, 110, 110),
			ElementTransparency = 0.84,
			ToggleSlider = Color3.fromRGB(110, 160, 160),
			ToggleToggled = Color3.fromRGB(0, 0, 0),
			SliderRail = Color3.fromRGB(110, 160, 160),
			DropdownFrame = Color3.fromRGB(160, 200, 200),
			DropdownHolder = Color3.fromRGB(40, 80, 80),
			DropdownBorder = Color3.fromRGB(40, 65, 65),
			DropdownOption = Color3.fromRGB(110, 160, 160),
			Keybind = Color3.fromRGB(110, 160, 160),
			Input = Color3.fromRGB(110, 160, 160),
			InputFocused = Color3.fromRGB(20, 10, 30),
			InputIndicator = Color3.fromRGB(130, 170, 170),
			Dialog = Color3.fromRGB(40, 80, 80),
			DialogHolder = Color3.fromRGB(30, 60, 60),
			DialogHolderLine = Color3.fromRGB(25, 50, 50),
			DialogButton = Color3.fromRGB(40, 80, 80),
			DialogButtonBorder = Color3.fromRGB(80, 110, 110),
			DialogBorder = Color3.fromRGB(50, 100, 100),
			DialogInput = Color3.fromRGB(45, 90, 90),
			DialogInputLine = Color3.fromRGB(130, 170, 170),
			Text = Color3.fromRGB(240, 240, 240),
			SubText = Color3.fromRGB(170, 170, 170),
			Hover = Color3.fromRGB(110, 160, 160),
			HoverChange = 0.04
		}
	end,
	[50] = function()
		local L_1133_, L_1134_, L_1135_, L_1136_, L_1137_ = L_2_(50)
		return {
			Name = 'Dark',
			Accent = Color3.fromRGB(96, 205, 255),
			AcrylicMain = Color3.fromRGB(60, 60, 60),
			AcrylicBorder = Color3.fromRGB(90, 90, 90),
			AcrylicGradient = ColorSequence.new(Color3.fromRGB(40, 40, 40), Color3.fromRGB(40, 40, 40)),
			AcrylicNoise = 0.9,
			TitleBarLine = Color3.fromRGB(75, 75, 75),
			Tab = Color3.fromRGB(120, 120, 120),
			Element = Color3.fromRGB(120, 120, 120),
			ElementBorder = Color3.fromRGB(35, 35, 35),
			InElementBorder = Color3.fromRGB(90, 90, 90),
			ElementTransparency = 0.87,
			ToggleSlider = Color3.fromRGB(120, 120, 120),
			ToggleToggled = Color3.fromRGB(0, 0, 0),
			SliderRail = Color3.fromRGB(120, 120, 120),
			DropdownFrame = Color3.fromRGB(160, 160, 160),
			DropdownHolder = Color3.fromRGB(45, 45, 45),
			DropdownBorder = Color3.fromRGB(35, 35, 35),
			DropdownOption = Color3.fromRGB(120, 120, 120),
			Keybind = Color3.fromRGB(120, 120, 120),
			Input = Color3.fromRGB(160, 160, 160),
			InputFocused = Color3.fromRGB(10, 10, 10),
			InputIndicator = Color3.fromRGB(150, 150, 150),
			Dialog = Color3.fromRGB(45, 45, 45),
			DialogHolder = Color3.fromRGB(35, 35, 35),
			DialogHolderLine = Color3.fromRGB(30, 30, 30),
			DialogButton = Color3.fromRGB(45, 45, 45),
			DialogButtonBorder = Color3.fromRGB(80, 80, 80),
			DialogBorder = Color3.fromRGB(70, 70, 70),
			DialogInput = Color3.fromRGB(55, 55, 55),
			DialogInputLine = Color3.fromRGB(160, 160, 160),
			Text = Color3.fromRGB(240, 240, 240),
			SubText = Color3.fromRGB(170, 170, 170),
			Hover = Color3.fromRGB(120, 120, 120),
			HoverChange = 0.07
		}
	end,
	[51] = function()
		local L_1138_, L_1139_, L_1140_, L_1141_, L_1142_ = L_2_(51)
		return {
			Name = 'Darker',
			Accent = Color3.fromRGB(72, 138, 182),
			AcrylicMain = Color3.fromRGB(30, 30, 30),
			AcrylicBorder = Color3.fromRGB(60, 60, 60),
			AcrylicGradient = ColorSequence.new(Color3.fromRGB(25, 25, 25), Color3.fromRGB(15, 15, 15)),
			AcrylicNoise = 0.94,
			TitleBarLine = Color3.fromRGB(65, 65, 65),
			Tab = Color3.fromRGB(100, 100, 100),
			Element = Color3.fromRGB(70, 70, 70),
			ElementBorder = Color3.fromRGB(25, 25, 25),
			InElementBorder = Color3.fromRGB(55, 55, 55),
			ElementTransparency = 0.82,
			DropdownFrame = Color3.fromRGB(120, 120, 120),
			DropdownHolder = Color3.fromRGB(35, 35, 35),
			DropdownBorder = Color3.fromRGB(25, 25, 25),
			Dialog = Color3.fromRGB(35, 35, 35),
			DialogHolder = Color3.fromRGB(25, 25, 25),
			DialogHolderLine = Color3.fromRGB(20, 20, 20),
			DialogButton = Color3.fromRGB(35, 35, 35),
			DialogButtonBorder = Color3.fromRGB(55, 55, 55),
			DialogBorder = Color3.fromRGB(50, 50, 50),
			DialogInput = Color3.fromRGB(45, 45, 45),
			DialogInputLine = Color3.fromRGB(120, 120, 120)
		}
	end,
	[52] = function()
		local L_1143_, L_1144_, L_1145_, L_1146_, L_1147_ = L_2_(52)
		return {
			Name = 'Purple',
			Accent = Color3.fromRGB(105, 0, 255),
			AcrylicMain = Color3.fromRGB(20, 20, 20),
			AcrylicBorder = Color3.fromRGB(60, 60, 60),
			AcrylicGradient = ColorSequence.new(Color3.fromRGB(20, 20, 20), Color3.fromRGB(15, 15, 15)),
			AcrylicNoise = 0.96,
			TitleBarLine = Color3.fromRGB(60, 60, 60),
			Tab = Color3.fromRGB(100, 100, 100),
			Element = Color3.fromRGB(70, 70, 70),
			ElementBorder = Color3.fromRGB(20, 20, 20),
			InElementBorder = Color3.fromRGB(55, 55, 55),
			ElementTransparency = 0.82,
			DropdownFrame = Color3.fromRGB(120, 120, 120),
			DropdownHolder = Color3.fromRGB(30, 30, 30),
			DropdownBorder = Color3.fromRGB(20, 20, 20),
			Dialog = Color3.fromRGB(30, 30, 30),
			DialogHolder = Color3.fromRGB(20, 20, 20),
			DialogHolderLine = Color3.fromRGB(20, 20, 20),
			DialogButton = Color3.fromRGB(30, 30, 30),
			DialogButtonBorder = Color3.fromRGB(55, 55, 55),
			DialogBorder = Color3.fromRGB(50, 50, 50),
			DialogInput = Color3.fromRGB(45, 45, 45),
			DialogInputLine = Color3.fromRGB(120, 120, 120)
		}
	end,
	[53] = function()
		local L_1148_, L_1149_, L_1150_, L_1151_, L_1152_ = L_2_(53)
		return {
			Name = 'Rose',
			Accent = Color3.fromRGB(180, 55, 90),
			AcrylicMain = Color3.fromRGB(40, 40, 40),
			AcrylicBorder = Color3.fromRGB(130, 90, 110),
			AcrylicGradient = ColorSequence.new(Color3.fromRGB(190, 60, 135), Color3.fromRGB(165, 50, 70)),
			AcrylicNoise = 0.92,
			TitleBarLine = Color3.fromRGB(140, 85, 105),
			Tab = Color3.fromRGB(180, 140, 160),
			Element = Color3.fromRGB(200, 120, 170),
			ElementBorder = Color3.fromRGB(110, 70, 85),
			InElementBorder = Color3.fromRGB(120, 90, 90),
			ElementTransparency = 0.86,
			ToggleSlider = Color3.fromRGB(200, 120, 170),
			ToggleToggled = Color3.fromRGB(0, 0, 0),
			SliderRail = Color3.fromRGB(200, 120, 170),
			DropdownFrame = Color3.fromRGB(200, 160, 180),
			DropdownHolder = Color3.fromRGB(120, 50, 75),
			DropdownBorder = Color3.fromRGB(90, 40, 55),
			DropdownOption = Color3.fromRGB(200, 120, 170),
			Keybind = Color3.fromRGB(200, 120, 170),
			Input = Color3.fromRGB(200, 120, 170),
			InputFocused = Color3.fromRGB(20, 10, 30),
			InputIndicator = Color3.fromRGB(170, 150, 190),
			Dialog = Color3.fromRGB(120, 50, 75),
			DialogHolder = Color3.fromRGB(95, 40, 60),
			DialogHolderLine = Color3.fromRGB(90, 35, 55),
			DialogButton = Color3.fromRGB(120, 50, 75),
			DialogButtonBorder = Color3.fromRGB(155, 90, 115),
			DialogBorder = Color3.fromRGB(100, 70, 90),
			DialogInput = Color3.fromRGB(135, 55, 80),
			DialogInputLine = Color3.fromRGB(190, 160, 180),
			Text = Color3.fromRGB(240, 240, 240),
			SubText = Color3.fromRGB(170, 170, 170),
			Hover = Color3.fromRGB(200, 120, 170),
			HoverChange = 0.04
		}
	end
}
do
	local L_1153_, L_1154_, L_1155_, L_1156_, L_1157_, L_1158_, L_1159_, L_1160_, L_1161_, L_1162_, L_1163_, L_1164_, L_1165_, L_1166_, L_1167_, L_1168_ = task, setmetatable, error, newproxy, getmetatable, next, table, unpack, coroutine, script, type, require, pcall, getfenv, setfenv, rawget
	local L_1169_, L_1170_, L_1171_, L_1172_, L_1173_, L_1174_, L_1175_, L_1176_, L_1177_, L_1178_, L_1179_ = L_1159_.insert, L_1159_.remove, L_1159_.freeze or function(L_1186_arg0)
		return L_1186_arg0
	end, L_1153_ and L_1153_.defer or function(L_1187_arg0, ...)
		local L_1188_ = L_1161_.create(L_1187_arg0)
		L_1161_.resume(L_1188_, ...)
		return L_1188_
	end, '0.0.0-venv', {}, {}, {}, {}, {}, {}
	local L_1180_, L_1181_ = {
		GetChildren = function(L_1189_arg0)
			local L_1190_, L_1191_ = L_1179_[L_1189_arg0], {}
			for L_1192_forvar0 in L_1158_, L_1190_ do
				L_1169_(L_1191_, L_1192_forvar0)
			end
			return L_1191_
		end,
		FindFirstChild = function(L_1193_arg0, L_1194_arg1)
			if not L_1194_arg1 then
				L_1155_('Argument 1 missing or nil', 2)
			end
			for L_1195_forvar0 in L_1158_, L_1179_[L_1193_arg0] do
				if L_1195_forvar0.Name == L_1194_arg1 then
					return L_1195_forvar0
				end
			end
			return
		end,
		GetFullName = function(L_1196_arg0)
			local L_1197_, L_1198_ = L_1196_arg0.Name, L_1196_arg0.Parent
			while L_1198_ do
				L_1197_ = L_1198_.Name .. '.' .. L_1197_
				L_1198_ = L_1198_.Parent
			end
			return 'VirtualEnv.' .. L_1197_
		end
	}, {}
	for L_1199_forvar0, L_1200_forvar1 in L_1158_, L_1180_ do
		L_1181_[L_1199_forvar0] = function(L_1201_arg0, ...)
			if not L_1179_[L_1201_arg0] then
				L_1155_("Expected ':' not '.' calling member function " .. L_1199_forvar0, 1)
			end
			return L_1200_forvar1(L_1201_arg0, ...)
		end
	end
	local L_1182_ = function(L_1202_arg0, L_1203_arg1, L_1204_arg2)
		local L_1205_, L_1206_, L_1207_, L_1208_, L_1209_ = L_1154_({}, {
			__mode = 'k'
		}), function(L_1211_arg0)
			L_1155_(L_1211_arg0 .. ' is not a valid (virtual) member of ' .. L_1202_arg0 .. ' "' .. L_1203_arg1 .. '"', 1)
		end, function(L_1212_arg0)
			L_1155_('Unable to assign (virtual) property ' .. L_1212_arg0 .. '. Property is read only', 1)
		end, (L_1156_(true))
		local L_1210_ = L_1157_(L_1208_)
		L_1210_.__index = function(L_1213_arg0, L_1214_arg1)
			if L_1214_arg1 == 'ClassName' then
				return L_1202_arg0
			elseif L_1214_arg1 == 'Name' then
				return L_1203_arg1
			elseif L_1214_arg1 == 'Parent' then
				return L_1204_arg2
			elseif L_1202_arg0 == 'StringValue' and L_1214_arg1 == 'Value' then
				return L_1209_
			else
				local L_1215_ = L_1181_[L_1214_arg1]
				if L_1215_ then
					return L_1215_
				end
			end
			for L_1216_forvar0 in L_1158_, L_1205_ do
				if L_1216_forvar0.Name == L_1214_arg1 then
					return L_1216_forvar0
				end
			end
			L_1206_(L_1214_arg1)
		end
		L_1210_.__newindex = function(L_1217_arg0, L_1218_arg1, L_1219_arg2)
			if L_1218_arg1 == 'ClassName' then
				L_1207_(L_1218_arg1)
			elseif L_1218_arg1 == 'Name' then
				L_1203_arg1 = L_1219_arg2
			elseif L_1218_arg1 == 'Parent' then
				if L_1219_arg2 == L_1208_ then
					return
				end
				if L_1204_arg2 ~= nil then
					L_1179_[L_1204_arg2][L_1208_] = nil
				end
				L_1204_arg2 = L_1219_arg2
				if L_1219_arg2 ~= nil then
					L_1179_[L_1219_arg2][L_1208_] = true
				end
			elseif L_1202_arg0 == 'StringValue' and L_1218_arg1 == 'Value' then
				L_1209_ = L_1219_arg2
			else
				L_1206_(L_1218_arg1)
			end
		end
		L_1210_.__tostring = function()
			return L_1203_arg1
		end
		L_1179_[L_1208_] = L_1205_
		if L_1204_arg2 ~= nil then
			L_1179_[L_1204_arg2][L_1208_] = true
		end
		return L_1208_
	end
	local function L_1183_func(L_1220_arg0, L_1221_arg1)
		local L_1222_, L_1223_, L_1224_, L_1225_ = L_1220_arg0[1], L_1220_arg0[2], L_1220_arg0[3], L_1220_arg0[4]
		local L_1226_ = L_1170_(L_1224_, 1)
		local L_1227_ = L_1182_(L_1223_, L_1226_, L_1221_arg1)
		L_1174_[L_1222_] = L_1227_
		if L_1224_ then
			for L_1228_forvar0, L_1229_forvar1 in L_1158_, L_1224_ do
				L_1227_[L_1228_forvar0] = L_1229_forvar1
			end
		end
		if L_1225_ then
			for L_1230_forvar0, L_1231_forvar1 in L_1158_, L_1225_ do
				L_1183_func(L_1231_forvar1, L_1227_)
			end
		end
		return L_1227_
	end
	local L_1184_ = {}
	for L_1232_forvar0, L_1233_forvar1 in L_1158_, L_1_ do
		L_1169_(L_1184_, L_1183_func(L_1233_forvar1))
	end
	for L_1234_forvar0, L_1235_forvar1 in L_1158_, L_3_ do
		local L_1236_ = L_1174_[L_1234_forvar0]
		L_1175_[L_1236_] = L_1235_forvar1
		local L_1237_ = L_1236_.ClassName
		if L_1237_ == 'LocalScript' or L_1237_ == 'Script' then
			L_1169_(L_1177_, L_1236_)
		end
	end
	local L_1185_ = function(L_1238_arg0)
		local L_1239_, L_1240_ = L_1238_arg0.ClassName, L_1176_[L_1238_arg0]
		if L_1240_ and L_1239_ == 'ModuleScript' then
			return L_1160_(L_1240_)
		end
		local L_1241_ = L_1175_[L_1238_arg0]
		if not L_1241_ then
			return
		end
		if L_1239_ == 'LocalScript' or L_1239_ == 'Script' then
			L_1241_()
			return
		else
			local L_1242_ = {
				L_1241_()
			}
			L_1176_[L_1238_arg0] = L_1242_
			return L_1160_(L_1242_)
		end
	end
	function L_2_(L_1243_arg0)
		local L_1244_ = L_1174_[L_1243_arg0]
		local L_1245_ = L_1175_[L_1244_]
		if not L_1245_ then
			return
		end
		local L_1246_, L_1247_, L_1248_, L_1249_, L_1250_, L_1251_, L_1252_ = false, L_1171_{
			Version = L_1173_,
			Script = L_1162_,
			Shared = L_1178_,
			GetScript = function()
				return L_1162_
			end,
			GetShared = function()
				return L_1178_
			end
		}, L_1244_, function(L_1255_arg0, ...)
			if L_1179_[L_1255_arg0] and L_1255_arg0.ClassName == 'ModuleScript' and L_1175_[L_1255_arg0] then
				return L_1185_(L_1255_arg0)
			end
			return L_1164_(L_1255_arg0, ...)
		end
		local L_1253_, L_1254_ = function(L_1256_arg0, ...)
			if not L_1246_ then
				L_1252_()
			end
			if L_1163_(L_1256_arg0) == 'number' and L_1256_arg0 >= 0 then
				if L_1256_arg0 == 0 then
					return L_1251_
				else
					L_1256_arg0 = L_1256_arg0 + 1
					local L_1257_, L_1258_ = L_1165_(L_1166_, L_1256_arg0)
					if L_1257_ and L_1258_ == L_1250_ then
						return L_1251_
					end
				end
			end
			return L_1166_(L_1256_arg0, ...)
		end, function(L_1259_arg0, L_1260_arg1, ...)
			if not L_1246_ then
				L_1252_()
			end
			if L_1163_(L_1259_arg0) == 'number' and L_1259_arg0 >= 0 then
				if L_1259_arg0 == 0 then
					return L_1167_(L_1251_, L_1260_arg1)
				else
					L_1259_arg0 = L_1259_arg0 + 1
					local L_1261_, L_1262_ = L_1165_(L_1166_, L_1259_arg0)
					if L_1261_ and L_1262_ == L_1250_ then
						return L_1167_(L_1251_, L_1260_arg1)
					end
				end
			end
			return L_1167_(L_1259_arg0, L_1260_arg1, ...)
		end
		function L_1252_()
			L_1250_ = L_1166_(0)
			local L_1263_ = {
				maui = L_1247_,
				script = L_1248_,
				require = L_1249_,
				getfenv = L_1253_,
				setfenv = L_1254_
			}
			L_1251_ = L_1154_({}, {
				__index = function(L_1264_arg0, L_1265_arg1)
					local L_1266_ = L_1168_(L_1251_, L_1265_arg1)
					if L_1266_ ~= nil then
						return L_1266_
					end
					local L_1267_ = L_1263_[L_1265_arg1]
					if L_1267_ ~= nil then
						return L_1267_
					end
					return L_1250_[L_1265_arg1]
				end
			})
			L_1167_(L_1245_, L_1251_)
			L_1246_ = true
		end
		return L_1247_, L_1248_, L_1249_, L_1253_, L_1254_
	end
	for L_1268_forvar0, L_1269_forvar1 in L_1158_, L_1177_ do
		L_1172_(L_1185_, L_1269_forvar1)
	end
	do
		local L_1270_
		for L_1271_forvar0, L_1272_forvar1 in L_1158_, L_1184_ do
			if L_1272_forvar1.ClassName == 'ModuleScript' and L_1272_forvar1.Name == 'MainModule' then
				L_1270_ = L_1272_forvar1
				break
			end
		end
		if L_1270_ then
			return L_1185_(L_1270_)
		end
	end
end
