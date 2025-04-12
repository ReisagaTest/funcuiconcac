local a
a = {
	cache = {},
	load = function(b)
		if not a.cache[b] then
			a.cache[b] = {
				c = a[b]()
			}
		end
		return a.cache[b].c
	end
}
do
	function a.a()
		return {
			Dark = {
				Name = 'Dark',
				Accent = '#131313',
				Outline = '#FFFFFF',
				Text = '#FFFFFF',
				PlaceholderText = '#999999'
			},
			Light = {
				Name = 'Light',
				Accent = '#FFFFFF',
				Outline = '#000000',
				Text = '#000000',
				PlaceholderText = '#777777'
			},
			Rose = {
				Name = 'Rose',
				Accent = '#500830',
				Outline = '#FFFFFF',
				Text = '#FFFFFF',
				PlaceholderText = '#6B7280'
			},
			Plant = {
				Name = 'Plant',
				Accent = '#102d04',
				Outline = '#FFFFFF',
				Text = '#e6ffe5',
				PlaceholderText = '#7d977d'
			},
			Red = {
				Name = 'Red',
				Accent = '#28050a',
				Outline = '#FFFFFF',
				Text = '#ffeded',
				PlaceholderText = '#977d7d'
			},
            Plant = {
				Name = 'Sky',
				Accent = '#00fee3',
				Outline = '#FFFFFF',
				Text = '##007bfe',
				PlaceholderText = '#00d0fe'
			}
		}
	end
	function a.b()
		local b = game:GetService'RunService'
		local c, d, e, f = b.Heartbeat, game:GetService'UserInputService', game:GetService'TweenService', loadstring(game:HttpGetAsync[[https://raw.githubusercontent.com/Footagesus/Icons/main/Main.lua]])()
		f.SetIconsType'lucide'
		local g = {
			Font = 'rbxassetid://12187365364',
			CanDraggable = true,
			Theme = nil,
			Objects = {},
			FontObjects = {},
			DefaultProperties = {
				ScreenGui = {
					ResetOnSpawn = false,
					ZIndexBehavior = 'Sibling'
				},
				CanvasGroup = {
					BorderSizePixel = 0,
					BackgroundColor3 = Color3.new(1, 1, 1)
				},
				Frame = {
					BorderSizePixel = 0,
					BackgroundColor3 = Color3.new(1, 1, 1)
				},
				TextLabel = {
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderSizePixel = 0,
					Text = '',
					RichText = true,
					TextColor3 = Color3.new(1, 1, 1),
					TextSize = 14
				},
				TextButton = {
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderSizePixel = 0,
					Text = '',
					AutoButtonColor = false,
					TextColor3 = Color3.new(1, 1, 1),
					TextSize = 14
				},
				TextBox = {
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderColor3 = Color3.new(0, 0, 0),
					ClearTextOnFocus = false,
					Text = '',
					TextColor3 = Color3.new(0, 0, 0),
					TextSize = 14
				},
				ImageLabel = {
					BackgroundTransparency = 1,
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderSizePixel = 0
				},
				ImageButton = {
					BackgroundColor3 = Color3.new(1, 1, 1),
					BorderSizePixel = 0,
					AutoButtonColor = false
				},
				UIListLayout = {
					SortOrder = 'LayoutOrder'
				}
			},
			Colors = {
				Red = '#e53935',
				Orange = '#f57c00',
				Green = '#43a047',
				Blue = '#039be5',
				White = '#ffffff',
				Grey = '#616161'
			}
		}
		function g.SetTheme(h)
			g.Theme = h
			g.UpdateTheme(nil, true)
		end
		function g.AddFontObject(h)
			table.insert(g.FontObjects, h)
			g.UpdateFont(g.Font)
		end
		function g.UpdateFont(h)
			g.Font = h
			for i, j in next, g.FontObjects do
				j.FontFace = Font.new(h, j.FontFace.Weight, j.FontFace.Style)
			end
		end
		function g.GetThemeProperty(h, i)
			return i[h]
		end
		function g.AddThemeObject(h, i)
			g.Objects[h] = {
				Object = h,
				Properties = i
			}
			g.UpdateTheme(h)
			return h
		end
		function g.UpdateTheme(h, i)
			local j = function(j)
				for k, l in pairs(j.Properties or {}) do
					local m = g.GetThemeProperty(l, g.Theme)
					if m then
						if not i then
							j.Object[k] = Color3.fromHex(m)
						else
							g.Tween(j.Object, 0.08, {
								[k] = Color3.fromHex(m)
							}):Play()
						end
					end
				end
			end
			if h then
				local k = g.Objects[h]
				if k then
					j(k)
				end
			else
				for k, l in pairs(g.Objects) do
					j(l)
				end
			end
		end
		function g.Icon(h)
			return f.Icon(h)
		end
		function g.New(h, i, j)
			local k = Instance.new(h)
			for l, m in next, g.DefaultProperties[h] or {} do
				k[l] = m
			end
			for n, o in next, i or {} do
				if n ~= 'ThemeTag' then
					k[n] = o
				end
			end
			for p, q in next, j or {} do
				q.Parent = k
			end
			if i and i.ThemeTag then
				g.AddThemeObject(k, i.ThemeTag)
			end
			if i and i.FontFace then
				g.AddFontObject(k)
			end
			return k
		end
		function g.Tween(h, i, j, ...)
			return e:Create(h, TweenInfo.new(i, ...), j)
		end
		local h, i = g.New, g.Tween
		function g.SetDraggable(j)
			g.CanDraggable = j
		end
		function g.ToolTip(j)
			local k = {
				Title = j.Title or 'ToolTip',
				Container = nil,
				ToolTipSize = 16
			}
			local n, o = h('TextLabel', {
				AutomaticSize = 'XY',
				TextWrapped = true,
				BackgroundTransparency = 1,
				FontFace = Font.new(g.Font, Enum.FontWeight.Medium),
				Text = k.Title,
				TextSize = 17,
				ThemeTag = {
					TextColor3 = 'Text'
				}
			}), h('UIScale', {
				Scale = 0.9
			})
			local p = h('CanvasGroup', {
				AnchorPoint = Vector2.new(0.5, 0),
				AutomaticSize = 'XY',
				BackgroundTransparency = 1,
				Parent = j.Parent,
				GroupTransparency = 1,
				Visible = false
			}, {
				h('UISizeConstraint', {
					MaxSize = Vector2.new(400, math.huge)
				}),
				h('Frame', {
					AutomaticSize = 'XY',
					BackgroundTransparency = 1,
					LayoutOrder = 99,
					Visible = false
				}, {
					h('ImageLabel', {
						Size = UDim2.new(0, k.ToolTipSize, 0, k.ToolTipSize / 2),
						BackgroundTransparency = 1,
						Rotation = 180,
						Image = 'rbxassetid://89524607682719',
						ThemeTag = {
							ImageColor3 = 'Accent'
						}
					}, {
						h('ImageLabel', {
							Size = UDim2.new(0, k.ToolTipSize, 0, k.ToolTipSize / 2),
							BackgroundTransparency = 1,
							LayoutOrder = 99,
							ImageTransparency = 0.9,
							Image = 'rbxassetid://89524607682719',
							ThemeTag = {
								ImageColor3 = 'Text'
							}
						})
					})
				}),
				h('Frame', {
					AutomaticSize = 'XY',
					ThemeTag = {
						BackgroundColor3 = 'Accent'
					}
				}, {
					h('UICorner', {
						CornerRadius = UDim.new(0, 16)
					}),
					h('Frame', {
						ThemeTag = {
							BackgroundColor3 = 'Text'
						},
						AutomaticSize = 'XY',
						BackgroundTransparency = 0.9
					}, {
						h('UICorner', {
							CornerRadius = UDim.new(0, 16)
						}),
						h('UIListLayout', {
							Padding = UDim.new(0, 12),
							FillDirection = 'Horizontal',
							VerticalAlignment = 'Center'
						}),
						n,
						h('UIPadding', {
							PaddingTop = UDim.new(0, 12),
							PaddingLeft = UDim.new(0, 12),
							PaddingRight = UDim.new(0, 12),
							PaddingBottom = UDim.new(0, 12)
						})
					})
				}),
				o,
				h('UIListLayout', {
					Padding = UDim.new(0, 0),
					FillDirection = 'Vertical',
					VerticalAlignment = 'Center',
					HorizontalAlignment = 'Center'
				})
			})
			k.Container = p
			function k.Open(q)
				p.Visible = true
				i(p, 0.25, {
					GroupTransparency = 0
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				i(o, 0.25, {
					Scale = 1
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
			end
			function k.Close(q)
				i(p, 0.25, {
					GroupTransparency = 1
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				i(o, 0.25, {
					Scale = 0.9
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				task.wait(0.25)
				p.Visible = false
				p:Destroy()
			end
			return k
		end
		function g.Drag(j, k)
			local n, o, p, q, r = {
				CanDraggable = true
			}
			local s = function(s)
				local t = s.Position - q
				g.Tween(j, 0.08, {
					Position = UDim2.new(r.X.Scale, r.X.Offset + t.X, r.Y.Scale, r.Y.Offset + t.Y)
				}):Play()
			end
			j.InputBegan:Connect(function(t)
				if t.UserInputType == Enum.UserInputType.MouseButton1 or t.UserInputType == Enum.UserInputType.Touch then
					o = true
					q = t.Position
					r = j.Position
					t.Changed:Connect(function()
						if t.UserInputState == Enum.UserInputState.End then
							o = false
						end
					end)
				end
			end)
			j.InputChanged:Connect(function(t)
				if t.UserInputType == Enum.UserInputType.MouseMovement or t.UserInputType == Enum.UserInputType.Touch then
					p = t
				end
			end)
			d.InputChanged:Connect(function(t)
				if t == p and o then
					if k then
						if g.CanDraggable then
							s(t)
						end
					elseif n.CanDraggable then
						s(t)
					end
				end
			end)
			function n.Set(t, u)
				n.CanDraggable = u
			end
			return n
		end
		return g
	end
	function a.c()
		local b = a.load'b'
		local c, d, e = b.New, b.Tween, {
			UICorner = 14,
			UIPadding = 12,
			Holder = nil,
			Window = nil
		}
		function e.Init(f)
			e.Window = f
			return e
		end
		function e.Create(f)
			local g = {
				UICorner = 16,
				UIPadding = 16,
				UIElements = {}
			}
			if f then
				g.UIPadding = 0
			end
			if f then
				g.UICorner = 22
			end
			if not f then
				g.UIElements.FullScreen = c('Frame', {
					ZIndex = 999,
					BackgroundTransparency = 1,
					BackgroundColor3 = Color3.fromHex'#2a2a2a',
					Size = UDim2.new(1, 0, 1, 0),
					Active = false,
					Visible = false,
					Parent = f and e.Window or e.Window.UIElements.Main.Main
				}, {
					c('UICorner', {
						CornerRadius = UDim.new(0, e.Window.UICorner)
					})
				})
			end
			g.UIElements.Main = c('Frame', {
				ThemeTag = {
					BackgroundColor3 = 'Accent'
				},
				AutomaticSize = 'XY',
				BackgroundTransparency = 0.7
			}, {
				c('UIPadding', {
					PaddingTop = UDim.new(0, g.UIPadding),
					PaddingLeft = UDim.new(0, g.UIPadding),
					PaddingRight = UDim.new(0, g.UIPadding),
					PaddingBottom = UDim.new(0, g.UIPadding)
				})
			})
			g.UIElements.MainContainer = c('CanvasGroup', {
				Visible = false,
				GroupTransparency = 1,
				BackgroundTransparency = f and 0.15 or 0,
				Parent = f and e.Window or g.UIElements.FullScreen,
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				AutomaticSize = 'XY',
				ThemeTag = {
					BackgroundColor3 = 'Accent'
				}
			}, {
				g.UIElements.Main,
				c('UIScale', {
					Scale = 0.9
				}),
				c('UICorner', {
					CornerRadius = UDim.new(0, g.UICorner)
				}),
				c('UIStroke', {
					Thickness = 0.8,
					ThemeTag = {
						Color = 'Outline'
					},
					Transparency = 1
				})
			})
			function g.Open(h)
				if not f then
					g.UIElements.FullScreen.Visible = true
					g.UIElements.FullScreen.Active = true
				end
				task.spawn(function()
					task.wait(0.1)
					g.UIElements.MainContainer.Visible = true
					if not f then
						d(g.UIElements.FullScreen, 0.1, {
							BackgroundTransparency = 0.5
						}):Play()
					end
					d(g.UIElements.MainContainer, 0.1, {
						GroupTransparency = 0
					}):Play()
					d(g.UIElements.MainContainer.UIScale, 0.1, {
						Scale = 1
					}):Play()
					d(g.UIElements.MainContainer.UIStroke, 0.1, {
						Transparency = 1
					}):Play()
				end)
			end
			function g.Close(h)
				if not f then
					d(g.UIElements.FullScreen, 0.1, {
						BackgroundTransparency = 1
					}):Play()
					g.UIElements.FullScreen.Active = false
					task.spawn(function()
						task.wait(0.1)
						g.UIElements.FullScreen.Visible = false
					end)
				end
				d(g.UIElements.MainContainer, 0.1, {
					GroupTransparency = 1
				}):Play()
				d(g.UIElements.MainContainer.UIScale, 0.1, {
					Scale = 0.9
				}):Play()
				d(g.UIElements.MainContainer.UIStroke, 0.1, {
					Transparency = 1
				}):Play()
				return function()
					task.spawn(function()
						task.wait(0.1)
						if not f then
							g.UIElements.FullScreen:Destroy()
						else
							g.UIElements.MainContainer:Destroy()
						end
					end)
				end
			end
			return g
		end
		return e
	end
	function a.d()
		local b, c = {}, a.load'b'
		local d, e = c.New, c.Tween
		function b.new(f, g, h)
			local i = a.load'c'.Init(f.WindUI.ScreenGui.KeySystem)
			local j, k, n = i.Create(true), 200, 430
			if f.KeySystem.Thumbnail and f.KeySystem.Thumbnail.Image then
				n = 430 + (k / 2)
			end
			j.UIElements.Main.AutomaticSize = 'Y'
			j.UIElements.Main.Size = UDim2.new(0, n, 0, 0)
			local o
			if f.Icon then
				local p = {
					ImageColor3 = 'Text'
				}
				if string.find(f.Icon, 'rbxassetid://') or not c.Icon(tostring(f.Icon))[1] then
					p = nil
				end
				o = d('ImageLabel', {
					Size = UDim2.new(0, 24, 0, 24),
					BackgroundTransparency = 1,
					LayoutOrder = -1,
					ThemeTag = p
				})
				if string.find(f.Icon, 'rbxassetid://') or string.find(f.Icon, 'http://www.roblox.com/asset/?id=') then
					o.Image = f.Icon
				elseif string.find(f.Icon, 'http') then
					local q, r = pcall(function()
						if not isfile('WindUI/' .. Window.Folder .. '/Assets/.Icon.png') then
							local q = request{
								Url = f.Icon,
								Method = 'GET'
							}.Body
							writefile('WindUI/' .. Window.Folder .. '/Assets/.Icon.png', q)
						end
						o.Image = getcustomasset('WindUI/' .. Window.Folder .. '/Assets/.Icon.png')
					end)
					if not q then
						o:Destroy()
						warn("[ WindUI ]  '" .. identifyexecutor() .. "' doesnt support the URL Images. Error: " .. r)
					end
				else
					if c.Icon(tostring(f.Icon))[1] then
						o.Image = c.Icon(f.Icon)[1]
						o.ImageRectOffset = c.Icon(f.Icon)[2].ImageRectPosition
						o.ImageRectSize = c.Icon(f.Icon)[2].ImageRectSize
					end
				end
			end
			local p, q = d('TextLabel', {
				AutomaticSize = 'XY',
				BackgroundTransparency = 1,
				Text = f.Title,
				FontFace = Font.new(c.Font, Enum.FontWeight.SemiBold),
				ThemeTag = {
					TextColor3 = 'Text'
				},
				TextSize = 20
			}), d('TextLabel', {
				AutomaticSize = 'XY',
				BackgroundTransparency = 1,
				Text = 'Key System',
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, 0, 0.5, 0),
				TextTransparency = 1,
				FontFace = Font.new(c.Font, Enum.FontWeight.Medium),
				ThemeTag = {
					TextColor3 = 'Text'
				},
				TextSize = 16
			})
			local r = d('Frame', {
				BackgroundTransparency = 1,
				AutomaticSize = 'XY'
			}, {
				d('UIListLayout', {
					Padding = UDim.new(0, 14),
					FillDirection = 'Horizontal',
					VerticalAlignment = 'Center'
				}),
				o,
				p
			})
			local s, t = d('Frame', {
				AutomaticSize = 'Y',
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1
			}, {
				r,
				q
			}), d('TextBox', {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				Text = '',
				TextXAlignment = 'Left',
				PlaceholderText = 'Enter Key...',
				FontFace = Font.new(c.Font, Enum.FontWeight.Medium),
				ThemeTag = {
					TextColor3 = 'Text',
					PlaceholderColor3 = 'PlaceholderText'
				},
				TextSize = 18
			})
			local u, v = (d('Frame', {
				BackgroundTransparency = 0.95,
				Size = UDim2.new(1, 0, 0, 42),
				ThemeTag = {
					BackgroundColor3 = 'Text'
				}
			}, {
				d('UIStroke', {
					Thickness = 1.3,
					ThemeTag = {
						Color = 'Text'
					},
					Transparency = 0.9
				}),
				d('UICorner', {
					CornerRadius = UDim.new(0, 12)
				}),
				t,
				d('UIPadding', {
					PaddingLeft = UDim.new(0, 12),
					PaddingRight = UDim.new(0, 12)
				})
			}))
			if f.KeySystem.Note and f.KeySystem.Note ~= '' then
				v = d('TextLabel', {
					Size = UDim2.new(1, 0, 0, 0),
					AutomaticSize = 'Y',
					FontFace = Font.new(c.Font, Enum.FontWeight.Medium),
					TextXAlignment = 'Left',
					Text = f.KeySystem.Note,
					TextSize = 18,
					TextTransparency = 0.4,
					ThemeTag = {
						TextColor3 = 'Text'
					},
					BackgroundTransparency = 1,
					RichText = true
				})
			end
			local w, x, y = d('Frame', {
				Size = UDim2.new(1, 0, 0, 42),
				BackgroundTransparency = 1
			}, {
				d('Frame', {
					BackgroundTransparency = 1,
					AutomaticSize = 'X',
					Size = UDim2.new(0, 0, 1, 0)
				}, {
					d('UIListLayout', {
						Padding = UDim.new(0, 9),
						FillDirection = 'Horizontal'
					})
				})
			}), function(w, x, y, z, A)
				local B = 'Text'
				local C = d('TextButton', {
					Size = UDim2.new(0, 0, 1, 0),
					AutomaticSize = 'XY',
					Parent = A,
					ThemeTag = {
						BackgroundColor3 = B
					},
					BackgroundTransparency = z == 'Primary' and 0.1 or z == 'Secondary' and 0.85 or 0.95
				}, {
					d('UICorner', {
						CornerRadius = UDim.new(0, 12)
					}),
					d('Frame', {
						Size = UDim2.new(1, 0, 1, 0),
						ThemeTag = {
							BackgroundColor3 = z == 'Primary' and 'Accent' or B
						},
						BackgroundTransparency = 1
					}, {
						d('UIStroke', {
							Thickness = 1.3,
							ThemeTag = {
								Color = 'Text'
							},
							Transparency = z == 'Tertiary' and 0.9 or 1
						}),
						d('UIPadding', {
							PaddingLeft = UDim.new(0, 12),
							PaddingRight = UDim.new(0, 12)
						}),
						d('UICorner', {
							CornerRadius = UDim.new(0, 12)
						}),
						d('UIListLayout', {
							FillDirection = 'Horizontal',
							Padding = UDim.new(0, 12),
							VerticalAlignment = 'Center',
							HorizontalAlignment = 'Center'
						}),
						d('ImageLabel', {
							Image = c.Icon(x)[1],
							ImageRectSize = c.Icon(x)[2].ImageRectSize,
							ImageRectOffset = c.Icon(x)[2].ImageRectPosition,
							Size = UDim2.new(0, 21, 0, 21),
							BackgroundTransparency = 1,
							ThemeTag = {
								ImageColor3 = z ~= 'Primary' and B or 'Accent'
							}
						}),
						d('TextLabel', {
							BackgroundTransparency = 1,
							FontFace = Font.new(c.Font, Enum.FontWeight.Medium),
							Text = w,
							ThemeTag = {
								TextColor3 = z ~= 'Primary' and B or 'Accent'
							},
							AutomaticSize = 'XY',
							TextSize = 18
						})
					})
				})
				C.MouseEnter:Connect(function()
					e(C.Frame, 0.067, {
						BackgroundTransparency = 0.9
					}):Play()
				end)
				C.MouseLeave:Connect(function()
					e(C.Frame, 0.067, {
						BackgroundTransparency = 1
					}):Play()
				end)
				C.MouseButton1Up:Connect(function()
					y()
				end)
				return C
			end
			if f.KeySystem.Thumbnail and f.KeySystem.Thumbnail.Image then
				local z
				if f.KeySystem.Thumbnail.Title then
					z = d('TextLabel', {
						Text = f.KeySystem.Thumbnail.Title,
						ThemeTag = {
							TextColor3 = 'Text'
						},
						TextSize = 18,
						FontFace = Font.new(c.Font, Enum.FontWeight.Medium),
						BackgroundTransparency = 1,
						AutomaticSize = 'XY',
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 0.5, 0)
					})
				end
				y = d('ImageLabel', {
					Image = f.KeySystem.Thumbnail.Image,
					BackgroundTransparency = 1,
					Size = UDim2.new(0, k, 1, 0),
					Parent = j.UIElements.Main,
					ScaleType = 'Crop'
				}, {
					z,
					d('UICorner', {
						CornerRadius = UDim.new(0, 0)
					})
				})
			end
			local z, A = d('Frame', {
				Size = UDim2.new(1, y and -k or 0, 1, 0),
				Position = UDim2.new(0, y and k or 0, 0, 0),
				BackgroundTransparency = 1,
				Parent = j.UIElements.Main
			}, {
				d('Frame', {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1
				}, {
					d('UIListLayout', {
						Padding = UDim.new(0, 18),
						FillDirection = 'Vertical'
					}),
					s,
					v,
					u,
					w,
					d('UIPadding', {
						PaddingTop = UDim.new(0, 16),
						PaddingLeft = UDim.new(0, 16),
						PaddingRight = UDim.new(0, 16),
						PaddingBottom = UDim.new(0, 16)
					})
				})
			}), x('Exit', 'log-out', function()
				j:Close()()
			end, 'Tertiary', w.Frame)
			if y then
				A.Parent = y
				A.Size = UDim2.new(0, 0, 0, 42)
				A.Position = UDim2.new(0, 16, 1, -16)
				A.AnchorPoint = Vector2.new(0, 1)
			end
			if f.KeySystem.URL then
				x('Get key', 'key', function()
					setclipboard(f.KeySystem.URL)
				end, 'Secondary', w.Frame)
			end
			local B = x('Submit', 'arrow-right', function()
				local B = t.Text
				local C = tostring(f.KeySystem.Key) == tostring(B)
				if type(f.KeySystem.Key) == 'table' then
					C = table.find(f.KeySystem.Key, tostring(B))
				end
				if C then
					j:Close()()
					if f.KeySystem.SaveKey then
						local D = f.Folder or f.Title
						writefile(D .. '/' .. g .. '.key', tostring(B))
					end
					task.wait(0.4)
					h(true)
				else
					local D, E = u.UIStroke.Color, u.BackgroundColor3
					e(u.UIStroke, 0.1, {
						Color = Color3.fromHex'#ff1e1e',
						Transparency = 0.65
					}):Play()
					e(u, 0.1, {
						BackgroundColor3 = Color3.fromHex'#ff1e1e',
						Transparency = 0.8
					}):Play()
					task.wait(0.5)
					e(u.UIStroke, 0.15, {
						Color = D,
						Transparency = 0.9
					}):Play()
					e(u, 0.15, {
						BackgroundColor3 = E,
						Transparency = 0.95
					}):Play()
				end
			end, 'Primary', w)
			B.AnchorPoint = Vector2.new(1, 0.5)
			B.Position = UDim2.new(1, 0, 0.5, 0)
			j:Open()
		end
		return b
	end
	function a.e()
		local b = a.load'b'
		local c, d, e = b.New, b.Tween, {
			Size = UDim2.new(0, 300, 1, -156),
			SizeLower = UDim2.new(0, 300, 1, -56),
			UICorner = 16,
			UIPadding = 14,
			ButtonPadding = 9,
			Holder = nil,
			NotificationIndex = 0,
			Notifications = {}
		}
		function e.Init(f)
			local g = {
				Lower = false
			}
			function g.SetLower(h)
				g.Lower = h
				g.Frame.Size = h and e.SizeLower or e.Size
			end
			g.Frame = c('Frame', {
				Position = UDim2.new(1, -29, 0, 56),
				AnchorPoint = Vector2.new(1, 0),
				Size = e.Size,
				Parent = f,
				BackgroundTransparency = 1
			}, {
				c('UIListLayout', {
					HorizontalAlignment = 'Center',
					SortOrder = 'LayoutOrder',
					VerticalAlignment = 'Bottom',
					Padding = UDim.new(0, 8)
				}),
				c('UIPadding', {
					PaddingBottom = UDim.new(0, 29)
				})
			})
			return g
		end
		function e.New(f)
			local g = {
				Title = f.Title or 'Notification',
				Content = f.Content or nil,
				Icon = f.Icon or nil,
				Background = f.Background,
				Duration = f.Duration or 5,
				Buttons = f.Buttons or {},
				CanClose = true,
				UIElements = {},
				Closed = false
			}
			if g.CanClose == nil then
				g.CanClose = true
			end
			e.NotificationIndex = e.NotificationIndex + 1
			e.Notifications[e.NotificationIndex] = g
			local h, i, j = c('UICorner', {
				CornerRadius = UDim.new(0, e.UICorner)
			}), (c('UIStroke', {
				ThemeTag = {
					Color = 'Text'
				},
				Transparency = 1,
				Thickness = 0.6
			}))
			if g.Icon then
				if b.Icon(g.Icon) and b.Icon(g.Icon)[2] then
					j = c('ImageLabel', {
						Size = UDim2.new(0, 26, 0, 26),
						Position = UDim2.new(0, e.UIPadding, 0, e.UIPadding),
						BackgroundTransparency = 1,
						Image = b.Icon(g.Icon)[1],
						ImageRectSize = b.Icon(g.Icon)[2].ImageRectSize,
						ImageRectOffset = b.Icon(g.Icon)[2].ImageRectPosition,
						ThemeTag = {
							ImageColor3 = 'Text'
						}
					})
				elseif string.find(g.Icon, 'rbxassetid') then
					j = c('ImageLabel', {
						Size = UDim2.new(0, 26, 0, 26),
						BackgroundTransparency = 1,
						Position = UDim2.new(0, e.UIPadding, 0, e.UIPadding),
						Image = g.Icon
					})
				end
			end
			local k
			if g.CanClose then
				k = c('ImageButton', {
					Image = b.Icon'x'[1],
					ImageRectSize = b.Icon'x'[2].ImageRectSize,
					ImageRectOffset = b.Icon'x'[2].ImageRectPosition,
					BackgroundTransparency = 1,
					Size = UDim2.new(0, 16, 0, 16),
					Position = UDim2.new(1, -e.UIPadding, 0, e.UIPadding),
					AnchorPoint = Vector2.new(1, 0),
					ThemeTag = {
						ImageColor3 = 'Text'
					}
				}, {
					c('TextButton', {
						Size = UDim2.new(1, 8, 1, 8),
						BackgroundTransparency = 1,
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Text = ''
					})
				})
			end
			local n, o = c('Frame', {
				Size = UDim2.new(1, 0, 0, 3),
				BackgroundTransparency = 0.9,
				ThemeTag = {
					BackgroundColor3 = 'Text'
				}
			}), c('Frame', {
				Size = UDim2.new(1, g.Icon and -28 - e.UIPadding or 0, 1, 0),
				Position = UDim2.new(1, 0, 0, 0),
				AnchorPoint = Vector2.new(1, 0),
				BackgroundTransparency = 1,
				AutomaticSize = 'Y'
			}, {
				c('UIPadding', {
					PaddingTop = UDim.new(0, e.UIPadding),
					PaddingLeft = UDim.new(0, e.UIPadding),
					PaddingRight = UDim.new(0, e.UIPadding),
					PaddingBottom = UDim.new(0, e.UIPadding)
				}),
				c('TextLabel', {
					AutomaticSize = 'Y',
					Size = UDim2.new(1, -30 - e.UIPadding, 0, 0),
					TextWrapped = true,
					TextXAlignment = 'Left',
					RichText = true,
					BackgroundTransparency = 1,
					TextSize = 16,
					ThemeTag = {
						TextColor3 = 'Text'
					},
					Text = g.Title,
					FontFace = Font.new(b.Font, Enum.FontWeight.SemiBold)
				}),
				c('UIListLayout', {
					Padding = UDim.new(0, e.UIPadding / 3)
				})
			})
			if g.Content then
				c('TextLabel', {
					AutomaticSize = 'Y',
					Size = UDim2.new(1, 0, 0, 0),
					TextWrapped = true,
					TextXAlignment = 'Left',
					RichText = true,
					BackgroundTransparency = 1,
					TextTransparency = 0.4,
					TextSize = 15,
					ThemeTag = {
						TextColor3 = 'Text'
					},
					Text = g.Content,
					FontFace = Font.new(b.Font, Enum.FontWeight.Medium),
					Parent = o
				})
			end
			local p = c('CanvasGroup', {
				Size = UDim2.new(1, 0, 0, 0),
				Position = UDim2.new(2, 0, 1, 0),
				AnchorPoint = Vector2.new(0, 1),
				AutomaticSize = 'Y',
				BackgroundTransparency = 0.25,
				ThemeTag = {
					BackgroundColor3 = 'Accent'
				}
			}, {
				c('ImageLabel', {
					Name = 'Background',
					Image = g.Background,
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, 0),
					ScaleType = 'Crop'
				}),
				i,
				h,
				o,
				j,
				k,
				n
			})
			local q = c('Frame', {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 0),
				Parent = f.Holder
			}, {
				p
			})
			function g.Close(r)
				if not g.Closed then
					g.Closed = true
					d(q, 0.45, {
						Size = UDim2.new(1, 0, 0, -8)
					}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
					d(p, 0.55, {
						Position = UDim2.new(2, 0, 1, 0)
					}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
					task.wait(0.45)
					q:Destroy()
				end
			end
			task.spawn(function()
				task.wait()
				d(q, 0.45, {
					Size = UDim2.new(1, 0, 0, p.AbsoluteSize.Y)
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				d(p, 0.45, {
					Position = UDim2.new(0, 0, 1, 0)
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				if g.Duration then
					d(n, g.Duration, {
						Size = UDim2.new(0, 0, 0, 3)
					}, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut):Play()
					task.wait(g.Duration)
					g:Close()
				end
			end)
			if k then
				k.TextButton.MouseButton1Click:Connect(function()
					g:Close()
				end)
			end
			return g
		end
		return e
	end
	function a.f()
		local b, c = {}, a.load'b'
		local d, e = c.New, c.Tween
		function b.new(f)
			local g, h = {
				Title = f.Title or 'Dialog',
				Content = f.Content,
				Icon = f.Icon,
				Thumbnail = f.Thumbnail,
				Buttons = f.Buttons
			}, a.load'c'.Init(f.WindUI.ScreenGui.Popups)
			local i, j, k = h.Create(true), 200, 430
			if g.Thumbnail and g.Thumbnail.Image then
				k = 430 + (j / 2)
			end
			i.UIElements.Main.AutomaticSize = 'Y'
			i.UIElements.Main.Size = UDim2.new(0, k, 0, 0)
			local n
			if g.Icon then
				local o = {
					ImageColor3 = 'Text'
				}
				if string.find(g.Icon, 'rbxassetid://') or not c.Icon(tostring(g.Icon))[1] then
					o = nil
				end
				n = d('ImageLabel', {
					Size = UDim2.new(0, 24, 0, 24),
					BackgroundTransparency = 1,
					LayoutOrder = -1,
					ThemeTag = o
				})
				if string.find(g.Icon, 'rbxassetid://') or string.find(g.Icon, 'http://www.roblox.com/asset/?id=') then
					n.Image = g.Icon
				elseif string.find(g.Icon, 'http') then
					local p, q = pcall(function()
						if not isfile('WindUI/' .. Window.Folder .. '/Assets/.Icon.png') then
							local p = request{
								Url = g.Icon,
								Method = 'GET'
							}.Body
							writefile('WindUI/' .. Window.Folder .. '/Assets/.Icon.png', p)
						end
						n.Image = getcustomasset('WindUI/' .. Window.Folder .. '/Assets/.Icon.png')
					end)
					if not p then
						n:Destroy()
						warn("[ WindUI ]  '" .. identifyexecutor() .. "' doesnt support the URL Images. Error: " .. q)
					end
				else
					if c.Icon(tostring(g.Icon))[1] then
						n.Image = c.Icon(g.Icon)[1]
						n.ImageRectOffset = c.Icon(g.Icon)[2].ImageRectPosition
						n.ImageRectSize = c.Icon(g.Icon)[2].ImageRectSize
					end
				end
			end
			local o = d('TextLabel', {
				AutomaticSize = 'XY',
				BackgroundTransparency = 1,
				Text = g.Title,
				FontFace = Font.new(c.Font, Enum.FontWeight.SemiBold),
				ThemeTag = {
					TextColor3 = 'Text'
				},
				TextSize = 20
			})
			local p = d('Frame', {
				BackgroundTransparency = 1,
				AutomaticSize = 'XY'
			}, {
				d('UIListLayout', {
					Padding = UDim.new(0, 14),
					FillDirection = 'Horizontal',
					VerticalAlignment = 'Center'
				}),
				n,
				o
			})
			local q, r = (d('Frame', {
				AutomaticSize = 'Y',
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1
			}, {
				p
			}))
			if g.Content and g.Content ~= '' then
				r = d('TextLabel', {
					Size = UDim2.new(1, 0, 0, 0),
					AutomaticSize = 'Y',
					FontFace = Font.new(c.Font, Enum.FontWeight.Medium),
					TextXAlignment = 'Left',
					Text = g.Content,
					TextSize = 18,
					TextTransparency = 0.4,
					ThemeTag = {
						TextColor3 = 'Text'
					},
					BackgroundTransparency = 1,
					RichText = true
				})
			end
			local s, t = (d('Frame', {
				Size = UDim2.new(1, 0, 0, 42),
				BackgroundTransparency = 1
			}, {
				d('UIListLayout', {
					Padding = UDim.new(0, 9),
					FillDirection = 'Horizontal',
					HorizontalAlignment = 'Right'
				})
			}))
			if g.Thumbnail and g.Thumbnail.Image then
				local u
				if g.Thumbnail.Title then
					u = d('TextLabel', {
						Text = g.Thumbnail.Title,
						ThemeTag = {
							TextColor3 = 'Text'
						},
						TextSize = 18,
						FontFace = Font.new(c.Font, Enum.FontWeight.Medium),
						BackgroundTransparency = 1,
						AutomaticSize = 'XY',
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 0.5, 0)
					})
				end
				t = d('ImageLabel', {
					Image = g.Thumbnail.Image,
					BackgroundTransparency = 1,
					Size = UDim2.new(0, j, 1, 0),
					Parent = i.UIElements.Main,
					ScaleType = 'Crop'
				}, {
					u,
					d('UICorner', {
						CornerRadius = UDim.new(0, 0)
					})
				})
			end
			local u, v = d('Frame', {
				Size = UDim2.new(1, t and -j or 0, 1, 0),
				Position = UDim2.new(0, t and j or 0, 0, 0),
				BackgroundTransparency = 1,
				Parent = i.UIElements.Main
			}, {
				d('Frame', {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1
				}, {
					d('UIListLayout', {
						Padding = UDim.new(0, 18),
						FillDirection = 'Vertical'
					}),
					q,
					r,
					s,
					d('UIPadding', {
						PaddingTop = UDim.new(0, 16),
						PaddingLeft = UDim.new(0, 16),
						PaddingRight = UDim.new(0, 16),
						PaddingBottom = UDim.new(0, 16)
					})
				})
			}), function(u, v, w, x, y)
				local z, A = 'Text'
				if v and v ~= '' then
					A = d('ImageLabel', {
						Image = c.Icon(v)[1],
						ImageRectSize = c.Icon(v)[2].ImageRectSize,
						ImageRectOffset = c.Icon(v)[2].ImageRectPosition,
						Size = UDim2.new(0, 21, 0, 21),
						BackgroundTransparency = 1,
						ThemeTag = {
							ImageColor3 = x ~= 'Primary' and z or 'Accent'
						}
					})
				end
				local B = d('TextButton', {
					Size = UDim2.new(0, 0, 1, 0),
					AutomaticSize = 'XY',
					Parent = y,
					ThemeTag = {
						BackgroundColor3 = z
					},
					BackgroundTransparency = x == 'Primary' and 0.1 or x == 'Secondary' and 0.85 or 0.95
				}, {
					d('UICorner', {
						CornerRadius = UDim.new(0, 12)
					}),
					d('Frame', {
						Size = UDim2.new(1, 0, 1, 0),
						ThemeTag = {
							BackgroundColor3 = x == 'Primary' and 'Accent' or z
						},
						BackgroundTransparency = 1
					}, {
						d('UIStroke', {
							Thickness = 1.3,
							ThemeTag = {
								Color = 'Text'
							},
							Transparency = x == 'Tertiary' and 0.9 or 1
						}),
						d('UIPadding', {
							PaddingLeft = UDim.new(0, 12),
							PaddingRight = UDim.new(0, 12)
						}),
						d('UICorner', {
							CornerRadius = UDim.new(0, 12)
						}),
						d('UIListLayout', {
							FillDirection = 'Horizontal',
							Padding = UDim.new(0, 12),
							VerticalAlignment = 'Center',
							HorizontalAlignment = 'Center'
						}),
						A,
						d('TextLabel', {
							BackgroundTransparency = 1,
							FontFace = Font.new(c.Font, Enum.FontWeight.Medium),
							Text = u,
							ThemeTag = {
								TextColor3 = x ~= 'Primary' and z or 'Accent'
							},
							AutomaticSize = 'XY',
							TextSize = 18
						})
					})
				})
				B.MouseEnter:Connect(function()
					e(B.Frame, 0.067, {
						BackgroundTransparency = 0.9
					}):Play()
				end)
				B.MouseLeave:Connect(function()
					e(B.Frame, 0.067, {
						BackgroundTransparency = 1
					}):Play()
				end)
				B.MouseButton1Up:Connect(function()
					i:Close()
					w()
				end)
				return B
			end
			for w, x in next, g.Buttons do
				v(x.Title, x.Icon, x.Callback, x.Variant, s)
			end
			i:Open()
		end
		return b
	end
	function a.g()
		local b = a.load'b'
		local c, d, e = b.New, b.Tween, game:GetService'UserInputService'
		return function(f)
			local g = {
				Title = f.Title,
				Desc = f.Desc or nil,
				Hover = f.Hover,
				Color = f.Color,
				Image = f.Image,
				ImageSize = f.ImageSize or 30,
				UIPadding = 12,
				UIElements = {}
			}
			local h, i, j, k = g.ImageSize, true, false
			if g.Image then
				local n = c('ImageLabel', {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					ThemeTag = b.Icon(g.Image) and {
						ImageColor3 = not g.Color and 'Text'
					} or nil,
					ImageColor3 = g.Color and (g.Color == 'White' and Color3.new(0, 0, 0) or Color3.new(1, 1, 1))
				}, {
					c('UICorner', {
						CornerRadius = UDim.new(0, 11)
					})
				})
				k = c('Frame', {
					Size = UDim2.new(0, h, 0, h),
					AutomaticSize = 'XY',
					BackgroundTransparency = 1
				}, {
					n
				})
				if b.Icon(g.Image) then
					n.Image = b.Icon(g.Image)[1]
					n.ImageRectOffset = b.Icon(g.Image)[2].ImageRectPosition
					n.ImageRectSize = b.Icon(g.Image)[2].ImageRectSize
				end
				if string.find(g.Image, 'http') then
					local o, p = pcall(function()
						if not isfile('WindUI/' .. f.Window.Folder .. '/Assets/.' .. g.Title .. '.png') then
							local o = request{
								Url = g.Image,
								Method = 'GET'
							}.Body
							writefile('WindUI/' .. f.Window.Folder .. '/Assets/.' .. g.Title .. '.png', o)
						end
						n.Image = getcustomasset('WindUI/' .. f.Window.Folder .. '/Assets/.' .. g.Title .. '.png')
					end)
					if not o then
						n:Destroy()
						warn("[ WindUI ]  '" .. identifyexecutor() .. "' doesnt support the URL Images. Error: " .. p)
					end
				elseif string.find(g.Image, 'rbxassetid') then
					n.Image = g.Image
				end
			end
			g.UIElements.Main = c('TextButton', {
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = 'Y',
				BackgroundTransparency = not g.Color and 0.95 or 0.1,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				ThemeTag = {
					BackgroundColor3 = not g.Color and 'Text' or nil
				},
				BackgroundColor3 = g.Color and Color3.fromHex(b.Colors[g.Color])
			}, {
				c('UICorner', {
					CornerRadius = UDim.new(0, 11)
				}),
				c('UIScale', {
					Scale = 0.98
				}),
				k,
				c('Frame', {
					Size = UDim2.new(1, g.Image and -(h + g.UIPadding), 0, 0),
					AutomaticSize = 'Y',
					AnchorPoint = Vector2.new(0, 0),
					Position = UDim2.new(0, g.Image and h + g.UIPadding or 0, 0, 0),
					BackgroundTransparency = 1,
					Name = 'Title'
				}, {
					c('UIListLayout', {
						Padding = UDim.new(0, 6)
					}),
					c('TextLabel', {
						Text = g.Title,
						ThemeTag = {
							TextColor3 = not g.Color and 'Text' or nil
						},
						TextColor3 = g.Color and (g.Color == 'White' and Color3.new(0, 0, 0) or Color3.new(1, 1, 1)),
						TextSize = 15,
						TextWrapped = true,
						RichText = true,
						LayoutOrder = 0,
						Name = 'Title',
						TextXAlignment = 'Left',
						Size = UDim2.new(1, -f.TextOffset, 0, 0),
						FontFace = Font.new(b.Font, Enum.FontWeight.Medium),
						BackgroundTransparency = 1,
						AutomaticSize = 'Y'
					})
				}),
				c('UIStroke', {
					Thickness = 1,
					Color = Color3.new(0, 0, 0),
					Transparency = g.Color ~= 'White' and 1 or 0.88,
					ApplyStrokeMode = 'Border'
				}),
				c('Frame', {
					Size = UDim2.new(1, g.UIPadding * 2, 1, g.UIPadding * 2 + 4),
					ThemeTag = {
						BackgroundColor3 = 'Text'
					},
					Position = UDim2.new(0.5, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					Name = 'Highlight'
				}, {
					c('UICorner', {
						CornerRadius = UDim.new(0, 11)
					})
				}),
				c('Frame', {
					Size = UDim2.new(1, g.UIPadding * 2, 1, g.UIPadding * 2 + 4),
					BackgroundColor3 = Color3.new(0, 0, 0),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					ZIndex = 999999,
					Name = 'Lock'
				}, {
					c('UICorner', {
						CornerRadius = UDim.new(0, 11)
					}),
					c('ImageLabel', {
						Image = b.Icon'lock'[1],
						ImageRectOffset = b.Icon'lock'[2].ImageRectPosition,
						ImageRectSize = b.Icon'lock'[2].ImageRectSize,
						Size = UDim2.new(0, 22, 0, 22),
						ImageTransparency = 1,
						BackgroundTransparency = 1,
						Active = false
					}),
					c('TextLabel', {
						BackgroundTransparency = 1,
						Text = 'Locked',
						TextTransparency = 1,
						AutomaticSize = 'XY',
						FontFace = Font.new(b.Font, Enum.FontWeight.SemiBold),
						TextSize = 16,
						Active = false,
						TextColor3 = Color3.new(1, 1, 1)
					}),
					c('UIListLayout', {
						Padding = UDim.new(0, g.UIPadding),
						FillDirection = 'Horizontal',
						VerticalAlignment = 'Center',
						HorizontalAlignment = 'Center'
					})
				}),
				c('UIPadding', {
					PaddingTop = UDim.new(0, g.UIPadding + 2),
					PaddingLeft = UDim.new(0, g.UIPadding),
					PaddingRight = UDim.new(0, g.UIPadding),
					PaddingBottom = UDim.new(0, g.UIPadding + 2)
				})
			})
			g.UIElements.MainContainer = c('CanvasGroup', {
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = 'Y',
				BackgroundTransparency = 1,
				Parent = f.Parent,
				GroupTransparency = 1
			}, {
				g.UIElements.Main,
				c('UIPadding', {
					PaddingTop = UDim.new(0, 2),
					PaddingLeft = UDim.new(0, 2),
					PaddingRight = UDim.new(0, 2),
					PaddingBottom = UDim.new(0, 2)
				})
			})
			local n
			if g.Desc then
				n = c('TextLabel', {
					Text = g.Desc,
					ThemeTag = {
						TextColor3 = not g.Color and 'Text' or nil
					},
					TextColor3 = g.Color and (g.Color == 'White' and Color3.new(0, 0, 0) or Color3.new(1, 1, 1)),
					TextTransparency = 0.4,
					TextSize = 15,
					TextWrapped = true,
					RichText = true,
					LayoutOrder = 9999,
					Name = 'Desc',
					TextXAlignment = 'Left',
					Size = UDim2.new(1, -f.TextOffset, 0, 0),
					FontFace = Font.new(b.Font, Enum.FontWeight.Medium),
					BackgroundTransparency = 1,
					AutomaticSize = 'Y',
					Parent = g.UIElements.Main.Title
				})
			else
				g.UIElements.Main.Title.AnchorPoint = Vector2.new(0, f.IsButtons and 0 or 0.5)
				g.UIElements.Main.Title.Size = UDim2.new(1, g.Image and -(h + g.UIPadding), 0, 0)
				g.UIElements.Main.Title.Position = UDim2.new(0, g.Image and h + g.UIPadding or 0, f.IsButtons and 0 or 0.5, 0)
			end
			if g.Hover then
				g.UIElements.Main.MouseEnter:Connect(function()
					if i then
						d(g.UIElements.Main.Highlight, 0.066, {
							BackgroundTransparency = 0.97
						}):Play()
					end
				end)
				g.UIElements.Main.MouseButton1Down:Connect(function()
					if i then
						j = true
						d(g.UIElements.Main.UIScale, 0.11, {
							Scale = 0.98
						}, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out):Play()
					end
				end)
				g.UIElements.Main.InputEnded:Connect(function()
					if i then
						d(g.UIElements.Main.Highlight, 0.066, {
							BackgroundTransparency = 1
						}):Play()
						d(g.UIElements.Main.UIScale, 0.175, {
							Scale = 1
						}, Enum.EasingStyle.Back, Enum.EasingDirection.Out):Play()
						task.wait(0.16)
						j = false
					end
				end)
			end
			local o = g.UIElements.Main:GetPropertyChangedSignal'AbsoluteSize':Connect(function()
				if not j then
					g.UIElements.MainContainer.Size = UDim2.new(1, 0, 0, g.UIElements.Main.AbsoluteSize.Y)
				end
			end)
			function g.SetTitle(p, q)
				g.UIElements.Main.Title.Title.Text = q
			end
			function g.SetDesc(p, q)
				if n then
					n.Text = q
				else
					n = c('TextLabel', {
						Text = q,
						ThemeTag = {
							TextColor3 = not g.Color and 'Text' or nil
						},
						TextColor3 = g.Color and (g.Color == 'White' and Color3.new(0, 0, 0) or Color3.new(1, 1, 1)),
						TextTransparency = 0.4,
						TextSize = 15,
						TextWrapped = true,
						TextXAlignment = 'Left',
						Size = UDim2.new(1, -f.TextOffset, 0, 0),
						FontFace = Font.new(b.Font, Enum.FontWeight.Medium),
						BackgroundTransparency = 1,
						AutomaticSize = 'Y',
						Parent = g.UIElements.Main.Title
					})
				end
			end
			function g.Show(p)
				d(g.UIElements.MainContainer, 0.1, {
					GroupTransparency = 0
				}):Play()
				d(g.UIElements.Main.UIScale, 0.1, {
					Scale = 1
				}):Play()
			end
			function g.Destroy(p)
				d(g.UIElements.MainContainer, 0.15, {
					GroupTransparency = 1
				}):Play()
				d(g.UIElements.Main.UIScale, 0.15, {
					Scale = 0.98
				}):Play()
				o:Disconnect()
				g.UIElements.MainContainer.AutomaticSize = 'None'
				task.wait(0.1)
				d(g.UIElements.MainContainer, 0.18, {
					Size = UDim2.new(1, 0, 0, -6)
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut):Play()
				task.wait(0.23)
				g.UIElements.MainContainer:Destroy()
			end
			function g.Lock(p)
				d(g.UIElements.Main.Lock, 0.08, {
					BackgroundTransparency = 0.6
				}):Play()
				d(g.UIElements.Main.Lock.ImageLabel, 0.08, {
					ImageTransparency = 0
				}):Play()
				d(g.UIElements.Main.Lock.TextLabel, 0.08, {
					TextTransparency = 0
				}):Play()
				g.UIElements.Main.Lock.Active = true
				i = false
			end
			function g.Unlock(p)
				d(g.UIElements.Main.Lock, 0.08, {
					BackgroundTransparency = 1
				}):Play()
				d(g.UIElements.Main.Lock.ImageLabel, 0.08, {
					ImageTransparency = 1
				}):Play()
				d(g.UIElements.Main.Lock.TextLabel, 0.08, {
					TextTransparency = 1
				}):Play()
				g.UIElements.Main.Lock.Active = false
				i = true
			end
			task.wait(0.015)
			g:Show()
			return g
		end
	end
	function a.h()
		local b = a.load'b'
		local c, d = b.New, {}
		function d.New(e, f)
			local g, h = {
				__type = 'Button',
				Title = f.Title or 'Button',
				Desc = f.Desc or nil,
				Locked = f.Locked or false,
				Callback = f.Callback or function()
				end,
				UIElements = {}
			}, true
			g.ButtonFrame = a.load'g'{
				Title = g.Title,
				Desc = g.Desc,
				Parent = f.Parent,
				TextOffset = 20,
				Hover = true
			}
			g.UIElements.ButtonIcon = c('ImageLabel', {
				Image = b.Icon'mouse-pointer-click'[1],
				ImageRectOffset = b.Icon'mouse-pointer-click'[2].ImageRectPosition,
				ImageRectSize = b.Icon'mouse-pointer-click'[2].ImageRectSize,
				BackgroundTransparency = 1,
				Parent = g.ButtonFrame.UIElements.Main,
				Size = UDim2.new(0, 20, 0, 20),
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, 0, 0.5, 0),
				ThemeTag = {
					ImageColor3 = 'Text'
				}
			})
			function g.Lock(i)
				h = false
				return g.ButtonFrame:Lock()
			end
			function g.Unlock(i)
				h = true
				return g.ButtonFrame:Unlock()
			end
			if g.Locked then
				g:Lock()
			end
			g.ButtonFrame.UIElements.Main.MouseButton1Click:Connect(function()
				if h then
					task.spawn(function()
						g.Callback()
					end)
				end
			end)
			return g.__type, g
		end
		return d
	end
	function a.i()
		local b = a.load'b'
		local c, d, e = b.New, b.Tween, {}
		function e.New(f, g)
			local h = {
				__type = 'Toggle',
				Title = g.Title or 'Toggle',
				Desc = g.Desc or nil,
				Value = g.Value,
				Icon = g.Icon or nil,
				Callback = g.Callback or function()
				end,
				UIElements = {}
			}
			h.ToggleFrame = a.load'g'{
				Title = h.Title,
				Desc = h.Desc,
				Parent = g.Parent,
				TextOffset = 44,
				Hover = true
			}
			local i = true
			if h.Value == nil then
				h.Value = false
			end
			local j
			if h.Icon then
				j = c('ImageLabel', {
					Size = UDim2.new(1, -8, 1, -8),
					BackgroundTransparency = 1,
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Image = b.Icon(h.Icon)[1],
					ImageRectOffset = b.Icon(h.Icon)[2].ImageRectPosition,
					ImageRectSize = b.Icon(h.Icon)[2].ImageRectSize,
					ImageTransparency = 1,
					ThemeTag = {
						ImageColor3 = 'Text'
					}
				})
			end
			h.UIElements.Toggle = c('Frame', {
				BackgroundTransparency = 0.95,
				ThemeTag = {
					BackgroundColor3 = 'Text'
				},
				Parent = h.ToggleFrame.UIElements.Main,
				Size = UDim2.new(0, 44, 0, 24),
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, 0, 0.5, 0)
			}, {
				c('Frame', {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Name = 'Stroke'
				}, {
					c('UICorner', {
						CornerRadius = UDim.new(1, 0)
					}),
					c('UIStroke', {
						ThemeTag = {
							Color = 'Text'
						},
						Transparency = 1,
						Thickness = 1.2
					})
				}),
				c('UICorner', {
					CornerRadius = UDim.new(1, 0)
				}),
				c('UIStroke', {
					ThemeTag = {
						Color = 'Text'
					},
					Transparency = 0.93,
					Thickness = 1.2
				}),
				c('Frame', {
					Size = UDim2.new(0, 18, 0, 18),
					Position = UDim2.new(0, 3, 0.5, 0),
					AnchorPoint = Vector2.new(0, 0.5),
					BackgroundTransparency = 0.15,
					ThemeTag = {
						BackgroundColor3 = 'Text'
					}
				}, {
					c('UICorner', {
						CornerRadius = UDim.new(1, 0)
					}),
					c('Frame', {
						Size = UDim2.new(1, 0, 1, 0),
						BackgroundTransparency = 1,
						ThemeTag = {
							BackgroundColor3 = 'Accent'
						}
					}, {
						c('UICorner', {
							CornerRadius = UDim.new(1, 0)
						})
					}),
					j
				})
			})
			function h.Lock(k)
				i = false
				return h.ToggleFrame:Lock()
			end
			function h.Unlock(k)
				i = true
				return h.ToggleFrame:Unlock()
			end
			if h.Locked then
				h:Lock()
			end
			local k = h.Value
			function h.SetValue(n, o)
				k = o or k
				if k then
					d(h.UIElements.Toggle.Frame, 0.1, {
						Position = UDim2.new(1, -22, 0.5, 0),
						BackgroundTransparency = 1,
						Size = UDim2.new(0, 20, 0, 20)
					}, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut):Play()
					d(h.UIElements.Toggle.Frame.Frame, 0.1, {
						BackgroundTransparency = 0.15
					}):Play()
					d(h.UIElements.Toggle, 0.1, {
						BackgroundTransparency = 0.15
					}):Play()
					d(h.UIElements.Toggle.Stroke.UIStroke, 0.1, {
						Transparency = 0
					}):Play()
					if j then
						d(j, 0.1, {
							ImageTransparency = 0
						}):Play()
					end
				else
					d(h.UIElements.Toggle.Frame, 0.1, {
						Position = UDim2.new(0, 3, 0.5, 0),
						BackgroundTransparency = 0.15,
						Size = UDim2.new(0, 18, 0, 18)
					}, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut):Play()
					d(h.UIElements.Toggle.Frame.Frame, 0.1, {
						BackgroundTransparency = 1
					}):Play()
					d(h.UIElements.Toggle, 0.1, {
						BackgroundTransparency = 0.95
					}):Play()
					d(h.UIElements.Toggle.Stroke.UIStroke, 0.1, {
						Transparency = 1
					}):Play()
					if j then
						d(j, 0.1, {
							ImageTransparency = 1
						}):Play()
					end
				end
				task.spawn(function()
					h.Callback(k)
				end)
				k = not k
			end
			h:SetValue(k)
			h.ToggleFrame.UIElements.Main.MouseButton1Click:Connect(function()
				if i then
					h:SetValue(k)
				end
			end)
			return h.__type, h
		end
		return e
	end
	function a.j()
		local b = a.load'b'
		local c, d, e, f = b.New, b.Tween, {}, false
		function e.New(g, h)
			local i, j, k, n = {
				__type = 'Slider',
				Title = h.Title or 'Slider',
				Desc = h.Desc or nil,
				Locked = h.Locked or nil,
				Value = h.Value or {},
				Step = h.Step or 1,
				Callback = h.Callback or function()
				end,
				UIElements = {},
				IsFocusing = false
			}
			local o = i.Value.Default or i.Value.Min or 0
			local p, q, r = o, (o - (i.Value.Min or 0)) / ((i.Value.Max or 100) - (i.Value.Min or 0)), true
			i.SliderFrame = a.load'g'{
				Title = i.Title,
				Desc = i.Desc,
				Parent = h.Parent,
				TextOffset = 160,
				Hover = false
			}
			i.UIElements.SliderIcon = c('ImageLabel', {
				ImageTransparency = 0.9,
				BackgroundTransparency = 1,
				Image = 'rbxassetid://18747052224',
				ScaleType = 'Crop',
				Size = UDim2.new(0, 126, 0, 3),
				Name = 'Frame',
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				ThemeTag = {
					ImageColor3 = 'Text'
				}
			}, {
				c('UICorner', {
					CornerRadius = UDim.new(1, 0)
				}),
				c('ImageLabel', {
					Name = 'Frame',
					Size = UDim2.new(q, 0, 1, 0),
					Image = 'rbxassetid://18747052224',
					ScaleType = 'Crop',
					BackgroundTransparency = 1,
					ImageTransparency = 0.4,
					ThemeTag = {
						ImageColor3 = 'Text'
					}
				}, {
					c('UICorner', {
						CornerRadius = UDim.new(1, 0)
					}),
					c('ImageLabel', {
						Size = UDim2.new(0, 13, 0, 13),
						Position = UDim2.new(1, 0, 0.5, 0),
						AnchorPoint = Vector2.new(0.5, 0.5),
						Image = 'rbxassetid://18747052224',
						BackgroundTransparency = 1,
						ThemeTag = {
							ImageColor3 = 'Text'
						}
					})
				})
			})
			i.UIElements.SliderContainer = c('Frame', {
				Size = UDim2.new(0, 0, 0, 0),
				AutomaticSize = 'XY',
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, 0, 0.5, 0),
				BackgroundTransparency = 1,
				Parent = i.SliderFrame.UIElements.Main
			}, {
				c('UIListLayout', {
					Padding = UDim.new(0, 8),
					FillDirection = 'Horizontal',
					VerticalAlignment = 'Center'
				}),
				i.UIElements.SliderIcon,
				c('TextBox', {
					Size = UDim2.new(0, 60, 0, 0),
					TextXAlignment = 'Right',
					Text = tostring(o),
					ThemeTag = {
						TextColor3 = 'Text'
					},
					TextTransparency = 0.4,
					AutomaticSize = 'Y',
					TextSize = 15,
					FontFace = Font.new(b.Font, Enum.FontWeight.Medium),
					BackgroundTransparency = 1,
					LayoutOrder = -1
				})
			})
			function i.Lock(s)
				r = false
				return i.SliderFrame:Lock()
			end
			function i.Unlock(s)
				r = true
				return i.SliderFrame:Unlock()
			end
			if i.Locked then
				i:Lock()
			end
			function i.Set(s, t, u)
				if r then
					if not i.IsFocusing and not f and (not u or (u.UserInputType == Enum.UserInputType.MouseButton1 or u.UserInputType == Enum.UserInputType.Touch)) then
						t = math.clamp(t, i.Value.Min or 0, i.Value.Max or 100)
						local v = math.clamp((t - (i.Value.Min or 0)) / ((i.Value.Max or 100) - (i.Value.Min or 0)), 0, 1)
						t = math.floor((i.Value.Min + v * (i.Value.Max - i.Value.Min)) / i.Step + 0.5) * i.Step
						if t ~= p then
							d(i.UIElements.SliderIcon.Frame, 0.08, {
								Size = UDim2.new(v, 0, 1, 0)
							}):Play()
							i.UIElements.SliderContainer.TextBox.Text = tostring(t)
							p = t
							i.Callback(t)
						end
						if u then
							j = (u.UserInputType == Enum.UserInputType.Touch)
							i.SliderFrame.UIElements.Main.Parent.Parent.ScrollingEnabled = false
							f = true
							k = game:GetService'RunService'.RenderStepped:Connect(function()
								local w = j and u.Position.X or game:GetService'UserInputService':GetMouseLocation().X
								local x = math.clamp((w - i.UIElements.SliderIcon.AbsolutePosition.X) / i.UIElements.SliderIcon.Size.X.Offset, 0, 1)
								t = math.floor((i.Value.Min + x * (i.Value.Max - i.Value.Min)) / i.Step + 0.5) * i.Step
								if t ~= p then
									d(i.UIElements.SliderIcon.Frame, 0.08, {
										Size = UDim2.new(x, 0, 1, 0)
									}):Play()
									i.UIElements.SliderContainer.TextBox.Text = tostring(t)
									p = t
									i.Callback(t)
								end
							end)
							n = game:GetService'UserInputService'.InputEnded:Connect(function(w)
								if (w.UserInputType == Enum.UserInputType.MouseButton1 or w.UserInputType == Enum.UserInputType.Touch) and u == w then
									k:Disconnect()
									n:Disconnect()
									f = false
									i.SliderFrame.UIElements.Main.Parent.Parent.ScrollingEnabled = true
								end
							end)
						end
					end
				end
			end
			i.UIElements.SliderContainer.TextBox.FocusLost:Connect(function(s)
				if s then
					local t = tonumber(i.UIElements.SliderContainer.TextBox.Text)
					if t then
						i:Set(t)
					else
						i.UIElements.SliderContainer.TextBox.Text = tostring(p)
					end
				end
			end)
			i.UIElements.SliderContainer.InputBegan:Connect(function(s)
				i:Set(o, s)
			end)
			return i.__type, i
		end
		return e
	end
	function a.k()
		local b, c = game:GetService'UserInputService', a.load'b'
		local d, e, f = c.New, c.Tween, {
			UICorner = 6,
			UIPadding = 8
		}
		function f.New(g, h)
			local i, j = {
				__type = 'Keybind',
				Title = h.Title or 'Keybind',
				Desc = h.Desc or nil,
				Locked = h.Locked or false,
				Value = h.Value or 'F',
				Callback = h.Callback or function()
				end,
				CanChange = h.CanChange or true,
				Picking = false,
				UIElements = {}
			}, true
			i.KeybindFrame = a.load'g'{
				Title = i.Title,
				Desc = i.Desc,
				Parent = h.Parent,
				TextOffset = 85,
				Hover = i.CanChange
			}
			i.UIElements.Keybind = d('TextLabel', {
				BackgroundTransparency = 0.95,
				Text = i.Value,
				TextSize = 15,
				TextXAlignment = 'Right',
				FontFace = Font.new(c.Font),
				Parent = i.KeybindFrame.UIElements.Main,
				Size = UDim2.new(0, 0, 0, 0),
				AnchorPoint = Vector2.new(1, 0.5),
				Position = UDim2.new(1, 0, 0.5, 0),
				ThemeTag = {
					BackgroundColor3 = 'Text',
					TextColor3 = 'Text'
				},
				ZIndex = 2
			}, {
				d('UICorner', {
					CornerRadius = UDim.new(0, f.UICorner)
				}),
				d('UIStroke', {
					ThemeTag = {
						Color = 'Text'
					},
					Transparency = 0.93,
					ApplyStrokeMode = 'Border',
					Thickness = 1
				}),
				d('UIPadding', {
					PaddingTop = UDim.new(0, f.UIPadding),
					PaddingLeft = UDim.new(0, f.UIPadding),
					PaddingRight = UDim.new(0, f.UIPadding),
					PaddingBottom = UDim.new(0, f.UIPadding)
				})
			})
			i.UIElements.Keybind:GetPropertyChangedSignal'TextBounds':Connect(function()
				i.UIElements.Keybind.Size = UDim2.new(0, i.UIElements.Keybind.TextBounds.X + (f.UIPadding * 2), 0, i.UIElements.Keybind.TextBounds.Y + (f.UIPadding * 2))
			end)
			function i.Lock(k)
				j = false
				return i.KeybindFrame:Lock()
			end
			function i.Unlock(k)
				j = true
				return i.KeybindFrame:Unlock()
			end
			if i.Locked then
				i:Lock()
			end
			i.KeybindFrame.UIElements.Main.MouseButton1Click:Connect(function()
				if j then
					if i.CanChange then
						i.Picking = true
						i.UIElements.Keybind.Text = '...'
						task.wait(0.2)
						local k
						k = b.InputBegan:Connect(function(n)
							local o
							if n.UserInputType == Enum.UserInputType.Keyboard then
								o = n.KeyCode.Name
							elseif n.UserInputType == Enum.UserInputType.MouseButton1 then
								o = 'MouseLeft'
							elseif n.UserInputType == Enum.UserInputType.MouseButton2 then
								o = 'MouseRight'
							end
							local p
							p = b.InputEnded:Connect(function(q)
								if q.KeyCode.Name == o or o == 'MouseLeft' and q.UserInputType == Enum.UserInputType.MouseButton1 or o == 'MouseRight' and q.UserInputType == Enum.UserInputType.MouseButton2 then
									i.Picking = false
									i.UIElements.Keybind.Text = o
									i.Value = o
									k:Disconnect()
									p:Disconnect()
								end
							end)
						end)
					end
				end
			end)
			b.InputBegan:Connect(function(k)
				if j then
					if k.KeyCode.Name == i.Value then
						i.Callback(k.KeyCode.Name)
					end
				end
			end)
			return i.__type, i
		end
		return f
	end
	function a.l()
		local b = a.load'b'
		local c, d, e = b.New, b.Tween, {
			UICorner = 8,
			UIPadding = 8
		}
		function e.New(f, g)
			local h, i = {
				__type = 'Input',
				Title = g.Title or 'Input',
				Desc = g.Desc or nil,
				Locked = g.Locked or false,
				PlaceholderText = g.PlaceholderText or 'Enter Text...',
				Value = g.Value or '',
				Callback = g.Callback or function()
				end,
				ClearTextOnFocus = g.ClearTextOnFocus or false,
				UIElements = {}
			}, true
			h.InputFrame = a.load'g'{
				Title = h.Title,
				Desc = h.Desc,
				Parent = g.Parent,
				TextOffset = 160,
				Hover = false
			}
			h.UIElements.Input = c('Frame', {
				BackgroundTransparency = 0.95,
				Parent = h.InputFrame.UIElements.Main,
				Size = UDim2.new(0, 150, 0, 30),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(1, -75, 0.5, 0),
				ThemeTag = {
					BackgroundColor3 = 'Text'
				},
				ZIndex = 2
			}, {
				c('TextBox', {
					MultiLine = false,
					Size = UDim2.new(1, 0, 0, 0),
					AutomaticSize = 'Y',
					BackgroundTransparency = 1,
					Position = UDim2.new(0, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0, 0.5),
					ClearTextOnFocus = h.ClearTextOnFocus,
					Text = h.Value,
					TextSize = 15,
					ClipsDescendants = true,
					TextXAlignment = 'Left',
					FontFace = Font.new(b.Font),
					PlaceholderText = h.PlaceholderText,
					ThemeTag = {
						TextColor3 = 'Text',
						PlaceholderColor3 = 'PlaceholderText'
					}
				}),
				c('UICorner', {
					CornerRadius = UDim.new(0, e.UICorner)
				}),
				c('UIStroke', {
					ThemeTag = {
						Color = 'Text'
					},
					Transparency = 0.93,
					ApplyStrokeMode = 'Border',
					Thickness = 1
				}),
				c('UIPadding', {
					PaddingTop = UDim.new(0, e.UIPadding),
					PaddingLeft = UDim.new(0, e.UIPadding),
					PaddingRight = UDim.new(0, e.UIPadding),
					PaddingBottom = UDim.new(0, e.UIPadding)
				}),
				c('UIScale', {
					Scale = 1
				})
			})
			function h.Lock(j)
				i = false
				return h.InputFrame:Lock()
			end
			function h.Unlock(j)
				i = true
				return h.InputFrame:Unlock()
			end
			function h.Set(j, k)
				if i then
					h.Callback(k)
					h.Value = k
				end
			end
			if h.Locked then
				h:Lock()
			end
			h.UIElements.Input.TextBox.Focused:Connect(function()
				if not i then
					h.UIElements.Input.TextBox:ReleaseFocus()
					return
				end
				d(h.UIElements.Input.UIStroke, 0.1, {
					Transparency = 0.85
				}):Play()
				d(h.UIElements.Input, 0.1, {
					BackgroundTransparency = 0.93
				}):Play()
				d(h.UIElements.Input.UIScale, 0.1, {
					Scale = 1.04
				}):Play()
			end)
			h.UIElements.Input.TextBox.FocusLost:Connect(function()
				h:Set(h.UIElements.Input.TextBox.Text)
				d(h.UIElements.Input.UIStroke, 0.1, {
					Transparency = 0.93
				}):Play()
				d(h.UIElements.Input, 0.1, {
					BackgroundTransparency = 0.95
				}):Play()
				d(h.UIElements.Input.UIScale, 0.1, {
					Scale = 1
				}):Play()
			end)
			return h.__type, h
		end
		return e
	end
	function a.m()
		local b, c, d, e = game:GetService'UserInputService', game:GetService'Players'.LocalPlayer:GetMouse(), game:GetService'Workspace'.CurrentCamera, a.load'b'
		local f, g, h = e.New, e.Tween, {
			UICorner = 8,
			UIPadding = 8,
			MenuCorner = 14,
			MenuPadding = 7,
			TabPadding = 10
		}
		function h.New(i, j)
			local k, n = {
				__type = 'Dropdown',
				Title = j.Title or 'Dropdown',
				Desc = j.Desc or nil,
				Locked = j.Locked or false,
				Values = j.Values or {},
				Value = j.Value,
				AllowNone = j.AllowNone,
				Multi = j.Multi,
				Callback = j.Callback or function()
				end,
				UIElements = {},
				Opened = false,
				Tabs = {}
			}, true
			k.DropdownFrame = a.load'g'{
				Title = k.Title,
				Desc = k.Desc,
				Parent = j.Parent,
				TextOffset = 160,
				Hover = false
			}
			k.UIElements.Dropdown = f('TextButton', {
				BackgroundTransparency = 0.95,
				Text = '',
				FontFace = Font.new(e.Font, Enum.FontWeight.Medium),
				TextSize = 15,
				TextTransparency = 0.4,
				TextXAlignment = 'Left',
				Parent = k.DropdownFrame.UIElements.Main,
				Size = UDim2.new(0, 150, 0, 30),
				AnchorPoint = Vector2.new(1, 0.5),
				TextTruncate = 'AtEnd',
				Position = UDim2.new(1, 0, 0.5, 0),
				ThemeTag = {
					BackgroundColor3 = 'Text',
					TextColor3 = 'Text'
				},
				ZIndex = 2
			}, {
				f('UICorner', {
					CornerRadius = UDim.new(0, h.UICorner)
				}),
				f('UIStroke', {
					ThemeTag = {
						Color = 'Text'
					},
					Transparency = 0.93,
					ApplyStrokeMode = 'Border',
					Thickness = 1
				}),
				f('UIPadding', {
					PaddingTop = UDim.new(0, h.UIPadding),
					PaddingLeft = UDim.new(0, h.UIPadding),
					PaddingRight = UDim.new(0, h.UIPadding * 2 + 18),
					PaddingBottom = UDim.new(0, h.UIPadding)
				}),
				f('ImageLabel', {
					Image = e.Icon'chevron-down'[1],
					ImageRectOffset = e.Icon'chevron-down'[2].ImageRectPosition,
					ImageRectSize = e.Icon'chevron-down'[2].ImageRectSize,
					Size = UDim2.new(0, 18, 0, 18),
					Position = UDim2.new(1, h.UIPadding + 18, 0.5, 0),
					ThemeTag = {
						ImageColor3 = 'Text'
					},
					AnchorPoint = Vector2.new(1, 0.5)
				})
			})
			k.UIElements.UIListLayout = f('UIListLayout', {
				Padding = UDim.new(0, h.MenuPadding / 1.5),
				FillDirection = 'Vertical'
			})
			k.UIElements.Menu = f('Frame', {
				ThemeTag = {
					BackgroundColor3 = 'Accent'
				},
				BackgroundTransparency = 0.15,
				Size = UDim2.new(1, 0, 1, 0)
			}, {
				f('UICorner', {
					CornerRadius = UDim.new(0, h.MenuCorner)
				}),
				f('UIStroke', {
					Thickness = 1,
					Transparency = 0.93,
					ThemeTag = {
						Color = 'Text'
					}
				}),
				f('Frame', {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, 0),
					Name = 'CanvasGroup',
					ClipsDescendants = true
				}, {
					f('UIPadding', {
						PaddingTop = UDim.new(0, h.MenuPadding),
						PaddingLeft = UDim.new(0, h.MenuPadding),
						PaddingRight = UDim.new(0, h.MenuPadding),
						PaddingBottom = UDim.new(0, h.MenuPadding)
					}),
					f('ScrollingFrame', {
						Size = UDim2.new(1, 0, 1, 0),
						ScrollBarThickness = 0,
						ScrollingDirection = 'Y',
						AutomaticCanvasSize = 'Y',
						CanvasSize = UDim2.new(0, 0, 0, 0),
						BackgroundTransparency = 1
					}, {
						k.UIElements.UIListLayout
					})
				})
			})
			k.UIElements.MenuCanvas = f('CanvasGroup', {
				Size = UDim2.new(0, 190, 0, 300),
				BackgroundTransparency = 1,
				Position = UDim2.new(-10, 0, -10, 0),
				Visible = false,
				Active = false,
				GroupTransparency = 1,
				Parent = j.Window.SuperParent.Parent.Dropdowns
			}, {
				k.UIElements.Menu,
				f('UIPadding', {
					PaddingTop = UDim.new(0, 1),
					PaddingLeft = UDim.new(0, 1),
					PaddingRight = UDim.new(0, 1),
					PaddingBottom = UDim.new(0, 1)
				}),
				f('UISizeConstraint', {
					MinSize = Vector2.new(190, 0)
				})
			})
			function k.Lock(o)
				n = false
				return k.DropdownFrame:Lock()
			end
			function k.Unlock(o)
				n = true
				return k.DropdownFrame:Unlock()
			end
			if k.Locked then
				k:Lock()
			end
			local o, p = function()
				k.UIElements.Menu.CanvasGroup.ScrollingFrame.CanvasSize = UDim2.fromOffset(0, k.UIElements.UIListLayout.AbsoluteContentSize.Y)
			end, function()
				if #k.Values > 10 then
					k.UIElements.MenuCanvas.Size = UDim2.fromOffset(k.UIElements.UIListLayout.AbsoluteContentSize.X, 392)
				else
					k.UIElements.MenuCanvas.Size = UDim2.fromOffset(k.UIElements.UIListLayout.AbsoluteContentSize.X, k.UIElements.UIListLayout.AbsoluteContentSize.Y + h.MenuPadding * 2 + 1)
				end
			end
			function UpdatePosition()
				local q = -35
				if d.ViewportSize.Y - k.UIElements.Dropdown.AbsolutePosition.Y + q < k.UIElements.MenuCanvas.AbsoluteSize.Y + 10 then
					q = k.UIElements.MenuCanvas.AbsoluteSize.Y - (d.ViewportSize.Y - k.UIElements.Dropdown.AbsolutePosition.Y) + 10
				end
				k.UIElements.MenuCanvas.Position = UDim2.fromOffset(k.UIElements.Dropdown.AbsolutePosition.X - 1, k.UIElements.Dropdown.AbsolutePosition.Y - q)
			end
			function k.Display(q)
				local r, s = k.Values, ''
				if k.Multi then
					for t, u in next, r do
						if table.find(k.Value, u) then
							s = s .. u .. ', '
						end
					end
					s = s:sub(1, #s - 2)
				else
					s = k.Value or ''
				end
				k.UIElements.Dropdown.Text = (s == '' and '--' or s)
			end
			function k.Refresh(q, r)
				for s, t in next, k.UIElements.Menu.CanvasGroup.ScrollingFrame:GetChildren() do
					if not t:IsA'UIListLayout' then
						t:Destroy()
					end
				end
				k.Tabs = {}
				for u, v in next, r do
					local w = {
						Name = v,
						Selected = false,
						UIElements = {}
					}
					w.UIElements.TabItem = f('TextButton', {
						Size = UDim2.new(1, 0, 0, 34),
						BackgroundTransparency = 1,
						Parent = k.UIElements.Menu.CanvasGroup.ScrollingFrame,
						Text = ''
					}, {
						f('UIPadding', {
							PaddingTop = UDim.new(0, h.TabPadding),
							PaddingLeft = UDim.new(0, h.TabPadding),
							PaddingRight = UDim.new(0, h.TabPadding),
							PaddingBottom = UDim.new(0, h.TabPadding)
						}),
						f('UICorner', {
							CornerRadius = UDim.new(0, h.MenuCorner - h.MenuPadding)
						}),
						f('ImageLabel', {
							Image = e.Icon'check'[1],
							ImageRectSize = e.Icon'check'[2].ImageRectSize,
							ImageRectOffset = e.Icon'check'[2].ImageRectPosition,
							ThemeTag = {
								ImageColor3 = 'Text'
							},
							ImageTransparency = 1,
							Size = UDim2.new(0, 18, 0, 18),
							AnchorPoint = Vector2.new(0, 0.5),
							Position = UDim2.new(0, 0, 0.5, 0),
							BackgroundTransparency = 1
						}),
						f('TextLabel', {
							Text = v,
							TextXAlignment = 'Left',
							FontFace = Font.new(e.Font, Enum.FontWeight.Medium),
							ThemeTag = {
								TextColor3 = 'Text',
								BackgroundColor3 = 'Text'
							},
							TextSize = 15,
							BackgroundTransparency = 1,
							TextTransparency = 0.4,
							AutomaticSize = 'Y',
							TextTruncate = 'AtEnd',
							Size = UDim2.new(1, -18 - h.TabPadding * 3, 0, 0),
							AnchorPoint = Vector2.new(0, 0.5),
							Position = UDim2.new(0, 0, 0.5, 0)
						})
					})
					if k.Multi then
						w.Selected = table.find(k.Value or {}, w.Name)
					else
						w.Selected = k.Value == w.Name
					end
					if w.Selected then
						w.UIElements.TabItem.BackgroundTransparency = 0.93
						w.UIElements.TabItem.ImageLabel.ImageTransparency = 0.1
						w.UIElements.TabItem.TextLabel.Position = UDim2.new(0, 18 + h.TabPadding, 0.5, 0)
						w.UIElements.TabItem.TextLabel.TextTransparency = 0
					end
					k.Tabs[u] = w
					k:Display()
					local x = function()
						k:Display()
						task.spawn(function()
							k.Callback(k.Value)
						end)
					end
					w.UIElements.TabItem.MouseButton1Click:Connect(function()
						if k.Multi then
							if not w.Selected then
								w.Selected = true
								g(w.UIElements.TabItem, 0.1, {
									BackgroundTransparency = 0.93
								}):Play()
								g(w.UIElements.TabItem.ImageLabel, 0.1, {
									ImageTransparency = 0.1
								}):Play()
								g(w.UIElements.TabItem.TextLabel, 0.1, {
									Position = UDim2.new(0, 18 + h.TabPadding, 0.5, 0),
									TextTransparency = 0
								}):Play()
								table.insert(k.Value, w.Name)
							else
								if not k.AllowNone and #k.Value == 1 then
									return
								end
								w.Selected = false
								g(w.UIElements.TabItem, 0.1, {
									BackgroundTransparency = 1
								}):Play()
								g(w.UIElements.TabItem.ImageLabel, 0.1, {
									ImageTransparency = 1
								}):Play()
								g(w.UIElements.TabItem.TextLabel, 0.1, {
									Position = UDim2.new(0, 0, 0.5, 0),
									TextTransparency = 0.4
								}):Play()
								for y, z in ipairs(k.Value) do
									if z == w.Name then
										table.remove(k.Value, y)
										break
									end
								end
							end
						else
							for y, z in next, k.Tabs do
								g(z.UIElements.TabItem, 0.1, {
									BackgroundTransparency = 1
								}):Play()
								g(z.UIElements.TabItem.ImageLabel, 0.1, {
									ImageTransparency = 1
								}):Play()
								g(z.UIElements.TabItem.TextLabel, 0.1, {
									Position = UDim2.new(0, 0, 0.5, 0),
									TextTransparency = 0.4
								}):Play()
								z.Selected = false
							end
							w.Selected = true
							g(w.UIElements.TabItem, 0.1, {
								BackgroundTransparency = 0.93
							}):Play()
							g(w.UIElements.TabItem.ImageLabel, 0.1, {
								ImageTransparency = 0.1
							}):Play()
							g(w.UIElements.TabItem.TextLabel, 0.1, {
								Position = UDim2.new(0, 18 + h.TabPadding, 0.5, 0),
								TextTransparency = 0
							}):Play()
							k.Value = w.Name
						end
						x()
					end)
					o()
					p()
				end
			end
			k:Refresh(k.Values)
			function k.Select(q, r)
				if r then
					k.Value = r
				end
				k:Refresh(k.Values)
			end
			p()
			function k.Open(q)
				k.Opened = true
				k.UIElements.MenuCanvas.Visible = true
				k.UIElements.MenuCanvas.Active = true
				k.UIElements.Menu.Size = UDim2.new(1, 0, 0, 0)
				g(k.UIElements.Menu, 0.1, {
					Size = UDim2.new(1, 0, 1, 0)
				}, Enum.EasingStyle.Quart, Enum.EasingDirection.Out):Play()
				g(k.UIElements.Dropdown.ImageLabel, 0.15, {
					Rotation = 180
				}):Play()
				g(k.UIElements.MenuCanvas, 0.15, {
					GroupTransparency = 0
				}):Play()
				UpdatePosition()
			end
			function k.Close(q)
				k.Opened = false
				g(k.UIElements.Menu, 0.1, {
					Size = UDim2.new(1, 0, 0.8, 0)
				}, Enum.EasingStyle.Quart, Enum.EasingDirection.Out):Play()
				g(k.UIElements.Dropdown.ImageLabel, 0.15, {
					Rotation = 0
				}):Play()
				g(k.UIElements.MenuCanvas, 0.15, {
					GroupTransparency = 1
				}):Play()
				task.wait(0.1)
				k.UIElements.MenuCanvas.Visible = false
				k.UIElements.MenuCanvas.Active = false
			end
			k.UIElements.Dropdown.MouseButton1Click:Connect(function()
				if n then
					k:Open()
				end
			end)
			b.InputBegan:Connect(function(q)
				if q.UserInputType == Enum.UserInputType.MouseButton1 or q.UserInputType == Enum.UserInputType.Touch then
					local r, s = k.UIElements.MenuCanvas.AbsolutePosition, k.UIElements.MenuCanvas.AbsoluteSize
					if j.Window.CanDropdown and (c.X < r.X or c.X > r.X + s.X or c.Y < (r.Y - 20 - 1) or c.Y > r.Y + s.Y) then
						k:Close()
					end
				end
			end)
			k.UIElements.Dropdown:GetPropertyChangedSignal'AbsolutePosition':Connect(UpdatePosition)
			return k.__type, k
		end
		return h
	end
	function a.n()
		local b, c, d = {}, {
			lua = {
				'and',
				'break',
				'or',
				'else',
				'elseif',
				'if',
				'then',
				'until',
				'repeat',
				'while',
				'do',
				'for',
				'in',
				'end',
				'local',
				'return',
				'function',
				'export'
			},
			rbx = {
				'game',
				'workspace',
				'script',
				'math',
				'string',
				'table',
				'task',
				'wait',
				'select',
				'next',
				'Enum',
				'error',
				'warn',
				'tick',
				'assert',
				'shared',
				'loadstring',
				'tonumber',
				'tostring',
				'type',
				'typeof',
				'unpack',
				'print',
				'Instance',
				'CFrame',
				'Vector3',
				'Vector2',
				'Color3',
				'UDim',
				'UDim2',
				'Ray',
				'BrickColor',
				'OverlapParams',
				'RaycastParams',
				'Axes',
				'Random',
				'Region3',
				'Rect',
				'TweenInfo',
				'collectgarbage',
				'not',
				'utf8',
				'pcall',
				'xpcall',
				'_G',
				'setmetatable',
				'getmetatable',
				'os',
				'pairs',
				'ipairs'
			},
			operators = {
				'#',
				'+',
				'-',
				'*',
				'%',
				'/',
				'^',
				'=',
				'~',
				'=',
				'<',
				'>'
			}
		}, {
			numbers = Color3.fromHex'#79c0ff',
			boolean = Color3.fromHex'#79c0ff',
			operator = Color3.fromHex'#ff7b72',
			lua = Color3.fromHex'#ff7b72',
			rbx = Color3.fromHex'#c9d1d9',
			str = Color3.fromHex'#a5d6ff',
			comment = Color3.fromHex'#8b949e',
			null = Color3.fromHex'#79c0ff',
			call = Color3.fromHex'#d2a8ff',
			self_call = Color3.fromHex'#d2a8ff',
			local_property = Color3.fromHex'#ff7b72'
		}
		local e = function(e)
			local f = {}
			for g, h in ipairs(e) do
				f[h] = true
			end
			return f
		end
		local f, g, h = e(c.lua), e(c.rbx), e(c.operators)
		local i = function(i, j)
			local k = i[j]
			if d[k .. '_color'] then
				return d[k .. '_color']
			end
			if tonumber(k) then
				return d.numbers
			elseif k == 'nil' then
				return d.null
			elseif k:sub(1, 2) == '--' then
				return d.comment
			elseif h[k] then
				return d.operator
			elseif f[k] then
				return d.lua
			elseif g[k] then
				return d.rbx
			elseif k:sub(1, 1) == '"' or k:sub(1, 1) == "'" then
				return d.str
			elseif k == 'true' or k == 'false' then
				return d.boolean
			end
			if i[j + 1] == '(' then
				if i[j - 1] == ':' then
					return d.self_call
				end
				return d.call
			end
			if i[j - 1] == '.' then
				if i[j - 2] == 'Enum' then
					return d.rbx
				end
				return d.local_property
			end
		end
		function b.run(j)
			local k, n, o, p, q = {}, '', false, false, false
			for r = 1, #j do
				local s = j:sub(r, r)
				if p then
					if s == '\n' and not q then
						table.insert(k, n)
						table.insert(k, s)
						n = ''
						p = false
					elseif j:sub(r - 1, r) == ']]' and q then
						n ..= ']'
						table.insert(k, n)
						n = ''
						p = false
						q = false
					else
						n = n .. s
					end
				elseif o then
					if s == o and j:sub(r - 1, r - 1) ~= '\\' or s == '\n' then
						n = n .. s
						o = false
					else
						n = n .. s
					end
				else
					if j:sub(r, r + 1) == '--' then
						table.insert(k, n)
						n = '-'
						p = true
						q = j:sub(r + 2, r + 3) == '[['
					elseif s == '"' or s == "'" then
						table.insert(k, n)
						n = s
						o = s
					elseif h[s] then
						table.insert(k, n)
						table.insert(k, s)
						n = ''
					elseif s:match'[%w_]' then
						n = n .. s
					else
						table.insert(k, n)
						table.insert(k, s)
						n = ''
					end
				end
			end
			table.insert(k, n)
			local r = {}
			for s, t in ipairs(k) do
				local u = i(k, s)
				if u then
					local v = string.format('<font color = "#%s">%s</font>', u:ToHex(), t:gsub('<', '&lt;'):gsub('>', '&gt;'))
					table.insert(r, v)
				else
					table.insert(r, t)
				end
			end
			return table.concat(r)
		end
		return b
	end
	function a.o()
		local b = a.load'b'
		local c, d, e = b.New, a.load'n', {}
		function e.New(f, g)
			local h, i = {
				__type = 'Code',
				Title = g.Title,
				Code = g.Code or nil,
				Locked = g.Locked or false,
				UIElements = {}
			}, true
			h.CodeFrame = a.load'g'{
				Title = h.Title,
				Desc = h.Code,
				Parent = g.Parent,
				TextOffset = 40,
				Hover = false
			}
			h.CodeFrame.UIElements.Main.Title.Desc:Destroy()
			local j, k, n = c('Frame', {
				Size = UDim2.new(1, h.CodeFrame.UIPadding * 2, 0, 1),
				BackgroundTransparency = 1,
				ThemeTag = {
					BackgroundColor3 = 'Text'
				},
				Parent = h.CodeFrame.UIElements.Main.Title,
				LayoutOrder = 1
			}), c('ImageLabel', {
				Image = b.Icon'clipboard'[1],
				ImageRectSize = b.Icon'clipboard'[2].ImageRectSize,
				ImageRectOffset = b.Icon'clipboard'[2].ImageRectPosition,
				BackgroundTransparency = 1,
				Size = UDim2.new(0, 16, 0, 16),
				Position = UDim2.new(1, 40, 0, 0),
				AnchorPoint = Vector2.new(1, 0),
				Parent = h.CodeFrame.UIElements.Main.Title.Title
			}, {
				c('TextButton', {
					BackgroundTransparency = 1,
					Size = UDim2.new(0, 20, 0, 20),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Text = ''
				})
			}), c('TextLabel', {
				Text = '',
				TextColor3 = Color3.fromHex'#c9d1d9',
				TextTransparency = 0,
				TextSize = 13,
				TextWrapped = false,
				LineHeight = 1.15,
				RichText = true,
				TextXAlignment = 'Left',
				Size = UDim2.new(0, 0, 0, 0),
				BackgroundTransparency = 1,
				AutomaticSize = 'XY'
			})
			n.Font = 'Code'
			local o = c('ScrollingFrame', {
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 1,
				AutomaticCanvasSize = 'X',
				ScrollingDirection = 'X',
				ElasticBehavior = 'Never',
				CanvasSize = UDim2.new(0, 0, 0, 0),
				ScrollBarThickness = 0
			}, {
				n
			})
			c('Frame', {
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = 'Y',
				BackgroundColor3 = Color3.fromRGB(13, 17, 23),
				BackgroundTransparency = 0.2,
				Parent = h.CodeFrame.UIElements.Main.Title,
				LayoutOrder = 9999
			}, {
				o,
				c('UICorner', {
					CornerRadius = UDim.new(0, 8)
				}),
				c('UIPadding', {
					PaddingTop = UDim.new(0, 9),
					PaddingLeft = UDim.new(0, 9),
					PaddingRight = UDim.new(0, 9),
					PaddingBottom = UDim.new(0, 9)
				})
			})
			n:GetPropertyChangedSignal'TextBounds':Connect(function()
				o.Size = UDim2.new(1, 0, 0, n.TextBounds.Y)
			end)
			n.Text = d.run(h.Code)
			function h.Lock(p)
				i = false
				return h.CodeFrame:Lock()
			end
			function h.Unlock(p)
				i = true
				return h.CodeFrame:Unlock()
			end
			function h.SetCode(p, q)
				n.Text = d.run(q)
			end
			if h.Locked then
				h:Lock()
			end
			k.TextButton.MouseButton1Click:Connect(function()
				if i then
					local p, q = pcall(function()
						toclipboard(h.Code)
					end)
					if p then
						g.WindUI:Notify{
							Title = 'Success',
							Content = "The '" .. h.Title .. "' copied to your clipboard.",
							Icon = 'check',
							Duration = 5
						}
					else
						g.WindUI:Notify{
							Title = 'Error',
							Content = "The '" .. h.Title .. "' is not copied. Error: " .. q,
							Icon = 'x',
							Duration = 5
						}
					end
				end
			end)
			return h.__type, h
		end
		return e
	end
	function a.p()
		local b = a.load'b'
		local c, d, e, f, g, h = b.New, b.Tween, game:GetService'UserInputService', game:GetService'TouchInputService', game:GetService'RunService', game:GetService'Players'
		local i, j = g.RenderStepped, h.LocalPlayer
		local k, n = j:GetMouse(), {
			UICorner = 8,
			UIPadding = 8
		}
		function n.Colorpicker(o, p, q)
			local r = {
				__type = 'Colorpicker',
				Title = p.Title,
				Desc = p.Desc,
				Default = p.Default,
				Callback = p.Callback,
				Transparency = p.Transparency,
				UIElements = p.UIElements
			}
			function r.SetHSVFromRGB(s, t)
				local u, v, w = Color3.toHSV(t)
				r.Hue = u
				r.Sat = v
				r.Vib = w
			end
			r:SetHSVFromRGB(r.Default)
			local s = a.load'c'.Init(p.Window)
			local t = s.Create()
			r.ColorpickerFrame = t
			local u, v, w = r.Hue, r.Sat, r.Vib
			r.UIElements.Title = c('TextLabel', {
				Text = r.Title,
				TextSize = 20,
				FontFace = Font.new(b.Font, Enum.FontWeight.SemiBold),
				TextXAlignment = 'Left',
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = 'Y',
				ThemeTag = {
					TextColor3 = 'Text'
				},
				BackgroundTransparency = 1,
				Parent = t.UIElements.Main
			})
			local x = c('ImageLabel', {
				Size = UDim2.new(0, 18, 0, 18),
				ScaleType = Enum.ScaleType.Fit,
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				Image = 'http://www.roblox.com/asset/?id=4805639000'
			})
			r.UIElements.SatVibMap = c('ImageLabel', {
				Size = UDim2.fromOffset(160, 158),
				Position = UDim2.fromOffset(0, 40),
				Image = 'rbxassetid://4155801252',
				BackgroundColor3 = Color3.fromHSV(u, 1, 1),
				BackgroundTransparency = 0,
				Parent = t.UIElements.Main
			}, {
				c('UICorner', {
					CornerRadius = UDim.new(0, 8)
				}),
				c('UIStroke', {
					Thickness = 0.6,
					ThemeTag = {
						Color = 'Text'
					},
					Transparency = 0.8
				}),
				x
			})
			r.UIElements.Inputs = c('Frame', {
				AutomaticSize = 'XY',
				Position = UDim2.fromOffset(r.Transparency and 240 or 210, 40),
				BackgroundTransparency = 1,
				Parent = t.UIElements.Main
			}, {
				c('UIListLayout', {
					Padding = UDim.new(0, 10),
					FillDirection = 'Vertical'
				})
			})
			local y = c('Frame', {
				BackgroundColor3 = r.Default,
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = r.Transparency
			}, {
				c('UICorner', {
					CornerRadius = UDim.new(0, 8)
				})
			})
			local z, A = c('ImageLabel', {
				Image = 'http://www.roblox.com/asset/?id=14204231522',
				ImageTransparency = 0.45,
				ScaleType = Enum.ScaleType.Tile,
				TileSize = UDim2.fromOffset(40, 40),
				BackgroundTransparency = 1,
				Position = UDim2.fromOffset(85, 208),
				Size = UDim2.fromOffset(75, 24),
				Parent = t.UIElements.Main
			}, {
				c('UICorner', {
					CornerRadius = UDim.new(0, 8)
				}),
				c('UIStroke', {
					Thickness = 1,
					Transparency = 0.8,
					ThemeTag = {
						Color = 'Text'
					}
				}),
				y
			}), c('Frame', {
				BackgroundColor3 = r.Default,
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 0,
				ZIndex = 9
			}, {
				c('UICorner', {
					CornerRadius = UDim.new(0, 8)
				})
			})
			local B, C = c('ImageLabel', {
				Image = 'http://www.roblox.com/asset/?id=14204231522',
				ImageTransparency = 0.45,
				ScaleType = Enum.ScaleType.Tile,
				TileSize = UDim2.fromOffset(40, 40),
				BackgroundTransparency = 1,
				Position = UDim2.fromOffset(0, 208),
				Size = UDim2.fromOffset(75, 24),
				Parent = t.UIElements.Main
			}, {
				c('UICorner', {
					CornerRadius = UDim.new(0, 8)
				}),
				c('UIStroke', {
					Thickness = 1,
					Transparency = 0.8,
					ThemeTag = {
						Color = 'Text'
					}
				}),
				A
			}), {}
			for D = 0, 1, 0.1 do
				table.insert(C, ColorSequenceKeypoint.new(D, Color3.fromHSV(D, 1, 1)))
			end
			local D, E = c('UIGradient', {
				Color = ColorSequence.new(C),
				Rotation = 90
			}), c('Frame', {
				Size = UDim2.new(1, 0, 1, 0),
				Position = UDim2.new(0, 0, 0, 0),
				BackgroundTransparency = 1
			})
			local F, G = c('Frame', {
				Size = UDim2.new(0, 14, 0, 14),
				AnchorPoint = Vector2.new(0.5, 0.5),
				Position = UDim2.new(0.5, 0, 0, 0),
				Parent = E,
				BackgroundColor3 = r.Default
			}, {
				c('UIStroke', {
					Thickness = 2,
					Transparency = 0.1,
					ThemeTag = {
						Color = 'Text'
					}
				}),
				c('UICorner', {
					CornerRadius = UDim.new(1, 0)
				})
			}), c('Frame', {
				Size = UDim2.fromOffset(10, 192),
				Position = UDim2.fromOffset(180, 40),
				Parent = t.UIElements.Main
			}, {
				c('UICorner', {
					CornerRadius = UDim.new(1, 0)
				}),
				D,
				E
			})
			function CreateInput(H, I)
				local J = c('Frame', {
					Size = UDim2.new(0, 120, 0, 28),
					BackgroundTransparency = 1,
					Parent = r.UIElements.Inputs
				}, {
					c('UIListLayout', {
						Padding = UDim.new(0, 10),
						FillDirection = 'Vertical'
					}),
					c('Frame', {
						BackgroundTransparency = 0.95,
						Size = UDim2.new(1, 0, 0, 30),
						AnchorPoint = Vector2.new(1, 0.5),
						Position = UDim2.new(1, 0, 0.5, 0),
						ThemeTag = {
							BackgroundColor3 = 'Text'
						},
						ZIndex = 2
					}, {
						c('TextBox', {
							MultiLine = false,
							Size = UDim2.new(1, -40, 0, 0),
							AutomaticSize = 'Y',
							BackgroundTransparency = 1,
							Position = UDim2.new(0, 0, 0.5, 0),
							AnchorPoint = Vector2.new(0, 0.5),
							ClearTextOnFocus = false,
							Text = I,
							TextSize = 15,
							ClipsDescendants = true,
							TextXAlignment = 'Left',
							FontFace = Font.new(b.Font),
							PlaceholderText = '',
							ThemeTag = {
								TextColor3 = 'Text'
							}
						}),
						c('TextLabel', {
							Text = H,
							TextSize = 16,
							FontFace = Font.new(b.Font, Enum.FontWeight.Medium),
							ThemeTag = {
								TextColor3 = 'Text'
							},
							BackgroundTransparency = 1,
							TextXAlignment = 'Right',
							Position = UDim2.new(1, 0, 0.5, 0),
							AnchorPoint = Vector2.new(1, 0.5),
							Size = UDim2.new(0, 0, 0, 0),
							TextTransparency = 0.4,
							AutomaticSize = 'XY'
						}),
						c('UICorner', {
							CornerRadius = UDim.new(0, n.UICorner)
						}),
						c('UIStroke', {
							ThemeTag = {
								Color = 'Text'
							},
							Transparency = 0.93,
							ApplyStrokeMode = 'Border',
							Thickness = 1
						}),
						c('UIPadding', {
							PaddingTop = UDim.new(0, n.UIPadding),
							PaddingLeft = UDim.new(0, n.UIPadding),
							PaddingRight = UDim.new(0, n.UIPadding),
							PaddingBottom = UDim.new(0, n.UIPadding)
						})
					})
				})
				return J
			end
			local H, I = function(H)
				return {
					R = math.floor(H.R * 255),
					G = math.floor(H.G * 255),
					B = math.floor(H.B * 255)
				}
			end, CreateInput('Hex', '#' .. r.Default:ToHex())
			local J, K, L, M = CreateInput('Red', H(r.Default).R), CreateInput('Green', H(r.Default).G), (CreateInput('Blue', H(r.Default).B))
			if r.Transparency then
				M = CreateInput('Alpha', ((1 - r.Transparency) * 100) .. '%')
			end
			local N, O = c('Frame', {
				Size = UDim2.new(1, 0, 0, 32),
				AutomaticSize = 'Y',
				Position = UDim2.new(0, 0, 0, 254),
				BackgroundTransparency = 1,
				Parent = t.UIElements.Main,
				LayoutOrder = 4
			}, {
				c('UIListLayout', {
					Padding = UDim.new(0, 8),
					FillDirection = 'Horizontal',
					HorizontalAlignment = 'Center'
				})
			}), {
				{
					Title = 'Cancel',
					Callback = function()
					end
				},
				{
					Title = 'Apply',
					Variant = 'Primary',
					Callback = function()
						q(Color3.fromHSV(r.Hue, r.Sat, r.Vib), r.Transparency)
					end
				}
			}
			for P, Q in next, O do
				if Q.Variant == nil or Q.Variant == '' then
					Q.Variant = 'Secondary'
				end
				local R = c('TextButton', {
					Text = Q.Title or 'Button',
					TextSize = 16,
					FontFace = Font.new(b.Font, Enum.FontWeight.Medium),
					ThemeTag = {
						TextColor3 = Q.Variant == 'Secondary' and 'Text' or 'Accent',
						BackgroundColor3 = 'Text'
					},
					BackgroundTransparency = Q.Variant == 'Secondary' and 0.93 or 0.1,
					Parent = N,
					Size = UDim2.new(1 / #O, -(((#O - 1) * 10) / #O), 1, 0)
				}, {
					c('UICorner', {
						CornerRadius = UDim.new(0, t.UICorner - 5)
					}),
					c('UIPadding', {
						PaddingTop = UDim.new(0, 0),
						PaddingLeft = UDim.new(0, t.UIPadding / 1.85),
						PaddingRight = UDim.new(0, t.UIPadding / 1.85),
						PaddingBottom = UDim.new(0, 0)
					}),
					c('Frame', {
						Size = UDim2.new(1, (t.UIPadding / 1.85) * 2, 1, 0),
						Position = UDim2.new(0.5, 0, 0.5, 0),
						AnchorPoint = Vector2.new(0.5, 0.5),
						ThemeTag = {
							BackgroundColor3 = Q.Variant == 'Secondary' and 'Text' or 'Accent'
						},
						BackgroundTransparency = 1
					}, {
						c('UICorner', {
							CornerRadius = UDim.new(0, t.UICorner - 5)
						})
					})
				})
				R.MouseEnter:Connect(function()
					d(R.Frame, 0.08, {
						BackgroundTransparency = 0.9
					}):Play()
				end)
				R.MouseLeave:Connect(function()
					d(R.Frame, 0.08, {
						BackgroundTransparency = 1
					}):Play()
				end)
				R.MouseButton1Click:Connect(function()
					t:Close()()
					task.spawn(function()
						Q.Callback()
					end)
				end)
			end
			local R, S, T
			if r.Transparency then
				local U = c('Frame', {
					Size = UDim2.new(1, 0, 1, 0),
					Position = UDim2.fromOffset(0, 0),
					BackgroundTransparency = 1
				})
				S = c('ImageLabel', {
					Size = UDim2.new(0, 14, 0, 14),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0, 0),
					ThemeTag = {
						BackgroundColor3 = 'Text'
					},
					Parent = U
				}, {
					c('UIStroke', {
						Thickness = 2,
						Transparency = 0.1,
						ThemeTag = {
							Color = 'Text'
						}
					}),
					c('UICorner', {
						CornerRadius = UDim.new(1, 0)
					})
				})
				T = c('Frame', {
					Size = UDim2.fromScale(1, 1)
				}, {
					c('UIGradient', {
						Transparency = NumberSequence.new{
							NumberSequenceKeypoint.new(0, 0),
							NumberSequenceKeypoint.new(1, 1)
						},
						Rotation = 270
					}),
					c('UICorner', {
						CornerRadius = UDim.new(0, 6)
					})
				})
				R = c('Frame', {
					Size = UDim2.fromOffset(10, 192),
					Position = UDim2.fromOffset(210, 40),
					Parent = t.UIElements.Main,
					BackgroundTransparency = 1
				}, {
					c('UICorner', {
						CornerRadius = UDim.new(1, 0)
					}),
					c('ImageLabel', {
						Image = 'rbxassetid://14204231522',
						ImageTransparency = 0.45,
						ScaleType = Enum.ScaleType.Tile,
						TileSize = UDim2.fromOffset(40, 40),
						BackgroundTransparency = 1,
						Size = UDim2.fromScale(1, 1)
					}, {
						c('UICorner', {
							CornerRadius = UDim.new(1, 0)
						})
					}),
					T,
					U
				})
			end
			function r.Round(U, V, W)
				if W == 0 then
					return math.floor(V)
				end
				V = tostring(V)
				return V:find'%.' and tonumber(V:sub(1, V:find'%.' + W)) or V
			end
			function r.Update(U, V, W)
				if V then
					u, v, w = Color3.toHSV(V)
				else
					u, v, w = r.Hue, r.Sat, r.Vib
				end
				r.UIElements.SatVibMap.BackgroundColor3 = Color3.fromHSV(u, 1, 1)
				x.Position = UDim2.new(v, 0, 1 - w, 0)
				A.BackgroundColor3 = Color3.fromHSV(u, v, w)
				F.BackgroundColor3 = Color3.fromHSV(u, 1, 1)
				F.Position = UDim2.new(0.5, 0, u, 0)
				I.Frame.TextBox.Text = '#' .. Color3.fromHSV(u, v, w):ToHex()
				J.Frame.TextBox.Text = H(Color3.fromHSV(u, v, w)).R
				K.Frame.TextBox.Text = H(Color3.fromHSV(u, v, w)).G
				L.Frame.TextBox.Text = H(Color3.fromHSV(u, v, w)).B
				if W or r.Transparency then
					A.BackgroundTransparency = r.Transparency or W
					T.BackgroundColor3 = Color3.fromHSV(u, v, w)
					S.BackgroundColor3 = Color3.fromHSV(u, v, w)
					S.BackgroundTransparency = r.Transparency or W
					S.Position = UDim2.new(0.5, 0, 1 - r.Transparency or W, 0)
					M.Frame.TextBox.Text = r:Round((1 - r.Transparency or W) * 100, 0) .. '%'
				end
			end
			r:Update(r.Default, r.Transparency)
			local U = function()
				local U = Color3.fromHSV(r.Hue, r.Sat, r.Vib)
				return {
					R = math.floor(U.r * 255),
					G = math.floor(U.g * 255),
					B = math.floor(U.b * 255)
				}
			end
			I.Frame.TextBox.FocusLost:Connect(function(V)
				if V then
					local W = I.Frame.TextBox.Text:gsub('#', '')
					local X, Y = pcall(Color3.fromHex, W)
					if X and typeof(Y) == 'Color3' then
						r.Hue, r.Sat, r.Vib = Color3.toHSV(Y)
						r:Update()
						r.Default = Y
					end
				end
			end)
			J.Frame.TextBox.FocusLost:Connect(function(V)
				if V then
					local W = U()
					local X, Y = pcall(Color3.fromRGB, tonumber(J.Frame.TextBox.Text), W.G, W.B)
					if X and typeof(Y) == 'Color3' then
						if tonumber(J.Frame.TextBox.Text) <= 255 then
							r.Hue, r.Sat, r.Vib = Color3.toHSV(Y)
							r:Update()
						end
					end
				end
			end)
			K.Frame.TextBox.FocusLost:Connect(function(V)
				if V then
					local W = U()
					local X, Y = pcall(Color3.fromRGB, W.R, tonumber(K.Frame.TextBox.Text), W.B)
					if X and typeof(Y) == 'Color3' then
						if tonumber(K.Frame.TextBox.Text) <= 255 then
							r.Hue, r.Sat, r.Vib = Color3.toHSV(Y)
							r:Update()
						end
					end
				end
			end)
			L.Frame.TextBox.FocusLost:Connect(function(V)
				if V then
					local W = U()
					local X, Y = pcall(Color3.fromRGB, W.R, W.G, tonumber(L.Frame.TextBox.Text))
					if X and typeof(Y) == 'Color3' then
						if tonumber(L.Frame.TextBox.Text) <= 255 then
							r.Hue, r.Sat, r.Vib = Color3.toHSV(Y)
							r:Update()
						end
					end
				end
			end)
			if r.Transparency then
				M.Frame.TextBox.FocusLost:Connect(function(V)
					if V then
						pcall(function()
							local W = tonumber(M.Frame.TextBox.Text)
							if W >= 0 and W <= 100 then
								r.Transparency = 1 - W * 0.01
								r:Update(nil, r.Transparency)
							end
						end)
					end
				end)
			end
			local V = r.UIElements.SatVibMap
			V.InputBegan:Connect(function(W)
				if W.UserInputType == Enum.UserInputType.MouseButton1 or W.UserInputType == Enum.UserInputType.Touch then
					while e:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
						local X = V.AbsolutePosition.X
						local Y = X + V.AbsoluteSize.X
						local Z, _ = math.clamp(k.X, X, Y), V.AbsolutePosition.Y
						local aa = _ + V.AbsoluteSize.Y
						local ab = math.clamp(k.Y, _, aa)
						r.Sat = (Z - X) / (Y - X)
						r.Vib = 1 - ((ab - _) / (aa - _))
						r:Update()
						i:Wait()
					end
				end
			end)
			G.InputBegan:Connect(function(aa)
				if aa.UserInputType == Enum.UserInputType.MouseButton1 or aa.UserInputType == Enum.UserInputType.Touch then
					while e:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
						local ab = G.AbsolutePosition.Y
						local W = ab + G.AbsoluteSize.Y
						local X = math.clamp(k.Y, ab, W)
						r.Hue = ((X - ab) / (W - ab))
						r:Update()
						i:Wait()
					end
				end
			end)
			if r.Transparency then
				R.InputBegan:Connect(function(aa)
					if aa.UserInputType == Enum.UserInputType.MouseButton1 or aa.UserInputType == Enum.UserInputType.Touch then
						while e:IsMouseButtonPressed(Enum.UserInputType.MouseButton1) do
							local ab = R.AbsolutePosition.Y
							local W = ab + R.AbsoluteSize.Y
							local X = math.clamp(k.Y, ab, W)
							r.Transparency = 1 - ((X - ab) / (W - ab))
							r:Update()
							i:Wait()
						end
					end
				end)
			end
			return r
		end
		function n.New(aa, ab)
			local o, p = {
				__type = 'Colorpicker',
				Title = ab.Title or 'Colorpicker',
				Desc = ab.Desc or nil,
				Locked = ab.Locked or false,
				Default = ab.Default or Color3.new(1, 1, 1),
				Callback = ab.Callback or function()
				end,
				Window = ab.Window,
				Transparency = ab.Transparency,
				UIElements = {}
			}, true
			o.ColorpickerFrame = a.load'g'{
				Title = o.Title,
				Desc = o.Desc,
				Parent = ab.Parent,
				TextOffset = 40,
				Hover = false
			}
			o.UIElements.Colorpicker = c('TextButton', {
				BackgroundTransparency = 0,
				Text = '',
				FontFace = Font.new(b.Font, Enum.FontWeight.Medium),
				TextSize = 15,
				TextTransparency = 0.4,
				Active = false,
				TextXAlignment = 'Left',
				BackgroundColor3 = o.Default,
				Parent = o.ColorpickerFrame.UIElements.Main,
				Size = UDim2.new(0, 30, 0, 30),
				AnchorPoint = Vector2.new(1, 0.5),
				TextTruncate = 'AtEnd',
				Position = UDim2.new(1, 0, 0.5, 0),
				ThemeTag = {
					TextColor3 = 'Text'
				},
				ZIndex = 2
			}, {
				c('UICorner', {
					CornerRadius = UDim.new(0, n.UICorner)
				}),
				c('UIStroke', {
					ThemeTag = {
						Color = 'Text'
					},
					Transparency = 0.93,
					ApplyStrokeMode = 'Border',
					Thickness = 1
				})
			})
			function o.Lock(q)
				p = false
				return o.ColorpickerFrame:Lock()
			end
			function o.Unlock(q)
				p = true
				return o.ColorpickerFrame:Unlock()
			end
			if o.Locked then
				o:Lock()
			end
			function o.Update(q, r, s)
				o.UIElements.Colorpicker.BackgroundTransparency = s or 0
				o.UIElements.Colorpicker.BackgroundColor3 = r
				o.Default = r
				if s then
					o.Transparency = s
				end
			end
			o.UIElements.Colorpicker.MouseButton1Click:Connect(function()
				if p then
					n:Colorpicker(o, function(q, r)
						if p then
							o:Update(q, r)
							o.Default = q
							o.Transparency = r
							o.Callback(q, r)
						end
					end).ColorpickerFrame:Open()
				end
			end)
			return o.__type, o
		end
		return n
	end
	function a.q()
		local aa = a.load'b'
		local ab, b, c = aa.New, aa.Tween, {}
		function c.New(d, e)
			local f = {
				__type = 'Section',
				Title = e.Title or 'Section',
				TextXAlignment = e.TextXAlignment or 'Left',
				TextSize = e.TextSize or 17,
				UIElements = {}
			}
			f.UIElements.Main = ab('TextLabel', {
				BackgroundTransparency = 1,
				TextXAlignment = f.TextXAlignment,
				AutomaticSize = 'Y',
				TextSize = f.TextSize,
				ThemeTag = {
					TextColor3 = 'Text'
				},
				FontFace = Font.new(aa.Font, Enum.FontWeight.SemiBold),
				Parent = e.Parent,
				Size = UDim2.new(1, 0, 0, 0),
				Text = f.Title
			}, {
				ab('UIPadding', {
					PaddingTop = UDim.new(0, 4),
					PaddingBottom = UDim.new(0, 2)
				})
			})
			function f.SetTitle(g, h)
				f.UIElements.Main.Text = h
			end
			function f.Destroy(g)
				f.UIElements.Main.AutomaticSize = 'None'
				f.UIElements.Main.Size = UDim2.new(1, 0, 0, f.UIElements.Main.TextBounds.Y)
				b(f.UIElements.Main, 0.1, {
					TextTransparency = 1
				}):Play()
				task.wait(0.1)
				b(f.UIElements.Main, 0.15, {
					Size = UDim2.new(1, 0, 0, 0)
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut):Play()
			end
			return f.__type, f
		end
		return c
	end
	function a.r()
		local aa, ab, b = game:GetService'UserInputService', game.Players.LocalPlayer:GetMouse(), a.load'b'
		local c, d, e = b.New, b.Tween, {
			Window = nil,
			WindUI = nil,
			Tabs = {},
			Containers = {},
			SelectedTab = nil,
			TabCount = 0,
			ToolTipParent = nil,
			TabHighlight = nil,
			OnChangeFunc = function(c)
			end
		}
		function e.Init(f, g, h, i)
			e.Window = f
			e.WindUI = g
			e.ToolTipParent = h
			e.TabHighlight = i
			return e
		end
		function e.New(f)
			local g, h, i = {
				Title = f.Title or 'Tab',
				Desc = f.Desc,
				Icon = f.Icon,
				Locked = f.Locked,
				Selected = false,
				Index = nil,
				Parent = f.Parent,
				UIElements = {},
				Elements = {},
				ContainerFrame = nil
			}, e.Window, e.WindUI
			e.TabCount = e.TabCount + 1
			local j = e.TabCount
			g.Index = j
			g.UIElements.Main = c('TextButton', {
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 0, 0),
				AutomaticSize = 'Y',
				Parent = f.Parent
			}, {
				c('UIListLayout', {
					SortOrder = 'LayoutOrder',
					Padding = UDim.new(0, 10),
					FillDirection = 'Horizontal',
					VerticalAlignment = 'Center'
				}),
				c('TextLabel', {
					Text = g.Title,
					ThemeTag = {
						TextColor3 = 'Text'
					},
					TextTransparency = not g.Locked and 0.4 or 0.7,
					TextSize = 15,
					Size = UDim2.new(1, 0, 0, 0),
					FontFace = Font.new(b.Font, Enum.FontWeight.Medium),
					TextWrapped = true,
					RichText = true,
					AutomaticSize = 'Y',
					LayoutOrder = 2,
					TextXAlignment = 'Left',
					BackgroundTransparency = 1
				}),
				c('UIPadding', {
					PaddingTop = UDim.new(0, 6),
					PaddingBottom = UDim.new(0, 6)
				})
			})
			local k = 0
			if g.Icon and b.Icon(g.Icon) then
				c('ImageLabel', {
					ImageTransparency = not g.Locked and 0.4 or 0.7,
					Image = b.Icon(g.Icon)[1],
					ImageRectOffset = b.Icon(g.Icon)[2].ImageRectPosition,
					ImageRectSize = b.Icon(g.Icon)[2].ImageRectSize,
					Size = UDim2.new(0, 18, 0, 18),
					LayoutOrder = 1,
					ThemeTag = {
						ImageColor3 = 'Text'
					},
					BackgroundTransparency = 1,
					Parent = g.UIElements.Main
				})
				g.UIElements.Main.TextLabel.Size = UDim2.new(1, -30, 0, 0)
				k = -30
			elseif g.Icon and string.find(g.Icon, 'rbxassetid://') then
				c('ImageLabel', {
					ImageTransparency = not g.Locked and 0.4 or 0.7,
					Image = g.Icon,
					Size = UDim2.new(0, 18, 0, 18),
					LayoutOrder = 1,
					ThemeTag = {
						ImageColor3 = 'Text'
					},
					BackgroundTransparency = 1,
					Parent = g.UIElements.Main
				})
				g.UIElements.Main.TextLabel.Size = UDim2.new(1, -30, 0, 0)
				k = -30
			end
			g.UIElements.ContainerFrame = c('ScrollingFrame', {
				Size = UDim2.new(1, -h.UIPadding, 1, 0),
				BackgroundTransparency = 1,
				ScrollBarThickness = 0,
				ElasticBehavior = 'Never',
				CanvasSize = UDim2.new(0, 0, 0, 0),
				AutomaticCanvasSize = 'Y',
				ScrollingDirection = 'Y'
			}, {
				c('UIPadding', {
					PaddingTop = UDim.new(0, h.UIPadding),
					PaddingLeft = UDim.new(0, h.UIPadding),
					PaddingRight = UDim.new(0, 0),
					PaddingBottom = UDim.new(0, h.UIPadding)
				}),
				c('UIListLayout', {
					SortOrder = 'LayoutOrder',
					Padding = UDim.new(0, 6)
				})
			})
			local n, o = c('Frame', {
				Size = UDim2.new(0, 2, 1, -h.UIPadding * 2),
				BackgroundTransparency = 1,
				Position = UDim2.new(1, -h.UIPadding / 3, 0, h.UIPadding),
				AnchorPoint = Vector2.new(1, 0)
			}), c('Frame', {
				Size = UDim2.new(1, 12, 1, 12),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				Active = true
			})
			local p = c('ImageLabel', {
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 0.85,
				ThemeTag = {
					BackgroundColor3 = 'Text'
				},
				Parent = n
			}, {
				c('UICorner', {
					CornerRadius = UDim.new(1, 0)
				}),
				o
			})
			g.UIElements.ContainerFrameCanvas = c('Frame', {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				Visible = false,
				Parent = h.UIElements.MainBar
			}, {
				g.UIElements.ContainerFrame,
				n
			})
			e.Containers[j] = g.UIElements.ContainerFrameCanvas
			e.Tabs[j] = g
			g.ContainerFrame = ContainerFrameCanvas
			g.UIElements.Main.MouseButton1Click:Connect(function()
				if not g.Locked then
					e:SelectTab(j)
				end
			end)
			local q, r = function()
				local q = g.UIElements.ContainerFrame
				local r = math.clamp(q.AbsoluteWindowSize.Y / q.AbsoluteCanvasSize.Y, 0, 1)
				p.Size = UDim2.new(1, 0, r, 0)
				p.Visible = r < 1
			end, function()
				local q, r = p.Position.Y.Scale, math.max(g.UIElements.ContainerFrame.AbsoluteCanvasSize.Y - g.UIElements.ContainerFrame.AbsoluteWindowSize.Y, 1)
				g.UIElements.ContainerFrame.CanvasPosition = Vector2.new(0, q * r)
			end
			o.InputBegan:Connect(function(s)
				if s.UserInputType == Enum.UserInputType.MouseButton1 or s.UserInputType == Enum.UserInputType.Touch then
					local t, u = (s.Position.Y - p.AbsolutePosition.Y)
					u = aa.InputChanged:Connect(function(v)
						if v.UserInputType == Enum.UserInputType.MouseMovement or v.UserInputType == Enum.UserInputType.Touch then
							local w, x = n.AbsoluteSize.Y, n.AbsolutePosition.Y
							local y = (v.Position.Y - x - t) / w
							y = math.clamp(y, 0, 1)
							p.Position = UDim2.new(0, 0, y, 0)
							r()
						end
					end)
					local v
					v = aa.InputEnded:Connect(function(w)
						if w.UserInputType == Enum.UserInputType.MouseButton1 or w.UserInputType == Enum.UserInputType.Touch then
							u:Disconnect()
							v:Disconnect()
						end
					end)
				end
			end)
			g.UIElements.ContainerFrame:GetPropertyChangedSignal'CanvasPosition':Connect(function()
				local s, t = g.UIElements.ContainerFrame.CanvasPosition.Y, g.UIElements.ContainerFrame.AbsoluteCanvasSize.Y - g.UIElements.ContainerFrame.AbsoluteWindowSize.Y
				local u = s / t
				p.Position = UDim2.new(0, 0, u, 0)
			end)
			p:GetPropertyChangedSignal'AbsoluteSize':Connect(function()
				n.Size = UDim2.new(0, n.Size.X.Offset, 1, -p.AbsoluteSize.Y - h.UIPadding * 2)
			end)
			g.UIElements.ContainerFrame:GetPropertyChangedSignal'AbsoluteCanvasSize':Connect(q)
			g.UIElements.ContainerFrame:GetPropertyChangedSignal'AbsoluteWindowSize':Connect(q)
			q()
			local s, t, u, v = false
			local w = function()
				s = false
				if u then
					task.cancel(u)
					u = nil
				end
				if v then
					v:Disconnect()
					v = nil
				end
				if t then
					t:Close()
					t = nil
				end
			end
			g.UIElements.Main.InputBegan:Connect(function()
				s = true
				u = task.spawn(function()
					task.wait(0.35)
					if s and not t then
						t = b.ToolTip{
							Title = g.Desc,
							Parent = e.ToolTipParent
						}
						local x = function()
							if t then
								t.Container.Position = UDim2.new(0, ab.X, 0, ab.Y - 20)
							end
						end
						x()
						v = ab.Move:Connect(x)
						t:Open()
					end
				end)
			end)
			g.UIElements.Main.InputEnded:Connect(w)
			function g.Paragraph(x, y)
				y.Parent = g.UIElements.ContainerFrame
				y.Window = h
				y.Hover = false
				y.TextOffset = 0
				y.IsButtons = y.Buttons and #y.Buttons > 0 and true or false
				local z, A = {
					__type = 'Paragraph',
					Title = y.Title or 'Input',
					Desc = y.Desc or nil,
					Locked = y.Locked or false
				}, a.load'g'(y)
				z.ParagraphFrame = A
				if y.Buttons and #y.Buttons > 0 then
					local B = c('Frame', {
						Size = UDim2.new(1, 0, 0, 0),
						BackgroundTransparency = 1,
						Position = UDim2.new(0, 0, 0, y.Image and A.ImageSize > A.UIElements.Main.Title.AbsoluteSize.Y and A.ImageSize + A.UIPadding or A.UIElements.Main.Title.AbsoluteSize.Y + A.UIPadding),
						AutomaticSize = 'Y',
						Parent = A.UIElements.Main
					}, {
						c('UIListLayout', {
							Padding = UDim.new(0, 10),
							FillDirection = 'Horizontal'
						})
					})
					for C, D in next, y.Buttons do
						local E = c('TextButton', {
							Text = D.Title,
							TextSize = 16,
							AutomaticSize = 'XY',
							ThemeTag = not y.Color and {
								TextColor3 = 'Accent',
								BackgroundColor3 = 'Text'
							},
							TextColor3 = y.Color and Color3.fromHex'#131313',
							BackgroundColor3 = y.Color and Color3.new(1, 1, 1),
							FontFace = Font.new(b.Font, Enum.FontWeight.Medium),
							BackgroundTransparency = 0.1,
							Size = UDim2.new(0, 0, 0, 30),
							Parent = B
						}, {
							c('UICorner', {
								CornerRadius = UDim.new(0, 8)
							}),
							c('UIPadding', {
								PaddingLeft = UDim.new(0, 10),
								PaddingRight = UDim.new(0, 10)
							}),
							c('UIStroke', {
								Thickness = 1,
								Color = Color3.new(0, 0, 0),
								Transparency = y.Color ~= 'White' and 1 or 0.88,
								ApplyStrokeMode = 'Border'
							})
						})
						E.MouseEnter:Connect(function()
							d(E, 0.08, {
								BackgroundTransparency = 0.3
							}):Play()
						end)
						E.MouseLeave:Connect(function()
							d(E, 0.08, {
								BackgroundTransparency = 0.1
							}):Play()
						end)
						E.MouseButton1Click:Connect(function()
							if D.Callback then
								D.Callback()
							end
						end)
					end
				end
				function z.SetTitle(B, C)
					z.ParagraphFrame:SetTitle(C)
				end
				function z.SetDesc(B, C)
					z.ParagraphFrame:SetDesc(C)
				end
				function z.Destroy(B)
					z.ParagraphFrame:Destroy()
				end
				table.insert(g.Elements, z)
				return z
			end
			function g.Button(x, y)
				y.Parent = g.UIElements.ContainerFrame
				local z, A = a.load'h':New(y)
				table.insert(g.Elements, A)
				function A.SetTitle(B, C)
					A.ButtonFrame:SetTitle(C)
				end
				function A.SetDesc(B, C)
					A.ButtonFrame:SetDesc(C)
				end
				function A.Destroy(B)
					A.ButtonFrame:Destroy()
				end
				return A
			end
			function g.Toggle(x, y)
				y.Parent = g.UIElements.ContainerFrame
				local z, A = a.load'i':New(y)
				table.insert(g.Elements, A)
				function A.SetTitle(B, C)
					A.ToggleFrame:SetTitle(C)
				end
				function A.SetDesc(B, C)
					A.ToggleFrame:SetDesc(C)
				end
				function A.Destroy(B)
					A.ToggleFrame:Destroy()
				end
				return A
			end
			function g.Slider(x, y)
				y.Parent = g.UIElements.ContainerFrame
				local z, A = a.load'j':New(y)
				table.insert(g.Elements, A)
				function A.SetTitle(B, C)
					A.SliderFrame:SetTitle(C)
				end
				function A.SetDesc(B, C)
					A.SliderFrame:SetDesc(C)
				end
				function A.Destroy(B)
					A.SliderFrame:Destroy()
				end
				return A
			end
			function g.Keybind(x, y)
				y.Parent = g.UIElements.ContainerFrame
				local z, A = a.load'k':New(y)
				table.insert(g.Elements, A)
				function A.SetTitle(B, C)
					A.KeybindFrame:SetTitle(C)
				end
				function A.SetDesc(B, C)
					A.KeybindFrame:SetDesc(C)
				end
				function A.Destroy(B)
					A.KeybindFrame:Destroy()
				end
				return A
			end
			function g.Input(x, y)
				y.Parent = g.UIElements.ContainerFrame
				local z, A = a.load'l':New(y)
				table.insert(g.Elements, A)
				function A.SetTitle(B, C)
					A.InputFrame:SetTitle(C)
				end
				function A.SetDesc(B, C)
					A.InputFrame:SetDesc(C)
				end
				function A.Destroy(B)
					A.InputFrame:Destroy()
				end
				return A
			end
			function g.Dropdown(x, y)
				y.Parent = g.UIElements.ContainerFrame
				y.Window = h
				local z, A = a.load'm':New(y)
				table.insert(g.Elements, A)
				function A.SetTitle(B, C)
					A.DropdownFrame:SetTitle(C)
				end
				function A.SetDesc(B, C)
					A.DropdownFrame:SetDesc(C)
				end
				function A.Destroy(B)
					A.DropdownFrame:Destroy()
				end
				return A
			end
			function g.Code(x, y)
				y.Parent = g.UIElements.ContainerFrame
				y.Window = h
				y.WindUI = i
				local z, A = a.load'o':New(y)
				table.insert(g.Elements, A)
				function A.SetTitle(B, C)
					A.CodeFrame:SetTitle(C)
				end
				function A.SetDesc(B, C)
					A.CodeFrame:SetDesc(C)
				end
				function A.Destroy(B)
					A.CodeFrame:Destroy()
				end
				return A
			end
			function g.Colorpicker(x, y)
				y.Parent = g.UIElements.ContainerFrame
				y.Window = h
				local z, A = a.load'p':New(y)
				table.insert(g.Elements, A)
				function A.SetTitle(B, C)
					A.ColorpickerFrame:SetTitle(C)
				end
				function A.SetDesc(B, C)
					A.ColorpickerFrame:SetDesc(C)
				end
				function A.Destroy(B)
					A.ColorpickerFrame:Destroy()
				end
				return A
			end
			function g.Section(x, y)
				y.Parent = g.UIElements.ContainerFrame
				local z, A = a.load'q':New(y)
				table.insert(g.Elements, A)
				return A
			end
			task.spawn(function()
				local x = c('Frame', {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, -h.UIElements.Main.Main.Topbar.AbsoluteSize.Y),
					Parent = g.UIElements.ContainerFrame
				}, {
					c('UIListLayout', {
						Padding = UDim.new(0, 8),
						SortOrder = 'LayoutOrder',
						VerticalAlignment = 'Center',
						HorizontalAlignment = 'Center',
						FillDirection = 'Vertical'
					}),
					c('ImageLabel', {
						Size = UDim2.new(0, 48, 0, 48),
						Image = b.Icon'frown'[1],
						ImageRectOffset = b.Icon'frown'[2].ImageRectPosition,
						ImageRectSize = b.Icon'frown'[2].ImageRectSize,
						ThemeTag = {
							ImageColor3 = 'Text'
						},
						BackgroundTransparency = 1,
						ImageTransparency = 0.4
					}),
					c('TextLabel', {
						AutomaticSize = 'XY',
						Text = 'This tab is empty',
						ThemeTag = {
							TextColor3 = 'Text'
						},
						TextSize = 18,
						TextTransparency = 0.4,
						BackgroundTransparency = 1,
						FontFace = Font.new(b.Font, Enum.FontWeight.Medium)
					})
				})
				g.UIElements.ContainerFrame.ChildAdded:Connect(function()
					x.Visible = false
				end)
			end)
			return g
		end
		function e.OnChange(f, g)
			e.OnChangeFunc = g
		end
		function e.SelectTab(f, g)
			if not e.Tabs[g].Locked then
				e.SelectedTab = g
				for h, i in next, e.Tabs do
					if not i.Locked then
						d(i.UIElements.Main.TextLabel, 0.15, {
							TextTransparency = 0.4
						}):Play()
						if i.Icon and b.Icon(i.Icon) then
							d(i.UIElements.Main.ImageLabel, 0.15, {
								ImageTransparency = 0.4
							}):Play()
						end
						i.Selected = false
					end
				end
				d(e.Tabs[g].UIElements.Main.TextLabel, 0.15, {
					TextTransparency = 0
				}):Play()
				if e.Tabs[g].Icon and b.Icon(e.Tabs[g].Icon) then
					d(e.Tabs[g].UIElements.Main.ImageLabel, 0.15, {
						ImageTransparency = 0
					}):Play()
				end
				e.Tabs[g].Selected = true
				d(e.TabHighlight, 0.25, {
					Position = UDim2.new(0, 0, 0, e.Tabs[g].UIElements.Main.AbsolutePosition.Y - e.Tabs[g].Parent.AbsolutePosition.Y),
					Size = UDim2.new(1, -13, 0, e.Tabs[g].UIElements.Main.AbsoluteSize.Y)
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				task.spawn(function()
					for j, k in next, e.Containers do
						k.AnchorPoint = Vector2.new(0, 0.05)
						k.Visible = false
					end
					e.Containers[g].Visible = true
					d(e.Containers[g], 0.15, {
						AnchorPoint = Vector2.new(0, 0)
					}, Enum.EasingStyle.Quart, Enum.EasingDirection.Out):Play()
				end)
				e.OnChangeFunc(g)
			end
		end
		return e
	end
	function a.s()
		local aa, ab, b = game:GetService'UserInputService', {
			Margin = 8,
			Padding = 9
		}, a.load'b'
		local c, d = b.New, b.Tween
		function ab.new(e, f, g, h, i)
			local j, k, n = {
				IconSize = 18
			}, c('UIScale', {
				Scale = 0.9
			}), c('UIStroke', {
				Thickness = 1.3,
				ThemeTag = {
					Color = 'Text'
				},
				Transparency = 1
			})
			local o = c('CanvasGroup', {
				Size = UDim2.new(0.3, 0, 0, 52 - (ab.Margin * 2)),
				Position = UDim2.new(1, -ab.Margin, 0, (((52 - (ab.Margin * 2)) / 2) + ab.Margin) + 52),
				AnchorPoint = Vector2.new(1, 0.5),
				BackgroundTransparency = 0.93,
				ThemeTag = {
					BackgroundColor3 = 'Text'
				},
				Parent = f,
				ZIndex = 99999,
				Active = true,
				GroupTransparency = 1,
				Visible = false
			}, {
				c('UICorner', {
					CornerRadius = UDim.new(0, 12)
				}),
				c('ImageLabel', {
					Size = UDim2.new(0, j.IconSize, 0, j.IconSize),
					Position = UDim2.new(0, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0, 0.5),
					BackgroundTransparency = 1,
					Image = b.Icon'search'[1],
					ImageRectOffset = b.Icon'search'[2].ImageRectPosition,
					ImageRectSize = b.Icon'search'[2].ImageRectSize,
					ThemeTag = {
						ImageColor3 = 'PlaceholderText'
					}
				}),
				c('TextBox', {
					Size = UDim2.new(1, -((ab.Padding * 2) + j.IconSize + ab.Padding), 1, 0),
					Position = UDim2.new(0, 0, 0, 0),
					AnchorPoint = Vector2.new(1, 0),
					BackgroundTransparency = 1,
					TextXAlignment = 'Left',
					FontFace = Font.new(b.Font, Enum.FontWeight.Medium),
					TextSize = 17,
					BackgroundTransparency = 1,
					MultiLine = false,
					PlaceholderText = 'Search in ' .. g,
					ThemeTag = {
						TextColor3 = 'Text',
						PlaceholderColor3 = 'PlaceholderText'
					}
				}),
				k,
				c('UISizeConstraint', {
					MaxSize = Vector2.new(f.AbsoluteSize.X, math.huge),
					MinSize = Vector2.new(160, 0)
				}),
				c('UIListLayout', {
					Padding = UDim.new(0, ab.Padding),
					FillDirection = 'Horizontal',
					VerticalAlignment = 'Center'
				}),
				c('UIPadding', {
					PaddingLeft = UDim.new(0, ab.Padding),
					PaddingRight = UDim.new(0, ab.Padding)
				})
			})
			function j.Open(p)
				o.Visible = true
				d(o, 0.35, {
					GroupTransparency = 0
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				d(k, 0.35, {
					Scale = 1
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				d(n, 0.35, {
					Transparency = 0.95
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				o.Size = UDim2.new(0, ((ab.Padding * 2) + j.IconSize + ab.Padding + o.TextBox.TextBounds.X), 0, 52 - (ab.Margin * 2))
			end
			function j.Close(p)
				d(o, 0.35, {
					GroupTransparency = 1
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				d(k, 0.35, {
					Scale = 0.9
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				d(n, 0.35, {
					Transparency = 1
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				task.wait(0.35)
				o.Visible = false
				o:Destroy()
			end
			function j.Search(p, q)
				o.Size = UDim2.new(0, ((ab.Padding * 2) + j.IconSize + ab.Padding + o.TextBox.TextBounds.X), 0, 52 - (ab.Margin * 2))
				for r, s in next, e do
					local t, u, v = string.find(string.lower(s.Title or ''), string.lower(q)), s.Desc and string.find(string.lower(s.Desc or ''), string.lower(q)), s[s.__type .. 'Frame']
					if v then
						v.UIElements.MainContainer.Visible = t or u or false
					else
						s.UIElements.Main.Visible = t or u or false
					end
				end
			end
			o.TextBox:GetPropertyChangedSignal'Text':Connect(function()
				j:Search(o.TextBox.Text)
			end)
			local p
			p = aa.InputBegan:Connect(function(q, r)
				if r then
					return
				end
				if q.UserInputType == Enum.UserInputType.MouseButton1 or q.UserInputType == Enum.UserInputType.Touch then
					local s = aa:GetMouseLocation()
					local t, u = s.X >= o.AbsolutePosition.X and s.X <= (o.AbsolutePosition.X + o.AbsoluteSize.X) and s.Y >= o.AbsolutePosition.Y and s.Y <= (o.AbsolutePosition.Y + o.AbsoluteSize.Y), i and s.X >= i.AbsolutePosition.X and s.X <= (i.AbsolutePosition.X + i.AbsoluteSize.X) and s.Y >= i.AbsolutePosition.Y and s.Y <= (i.AbsolutePosition.Y + i.AbsoluteSize.Y)
					if not t and not u then
						for v, w in pairs(e) do
							local x = w[w.__type .. 'Frame']
							if x then
								x.UIElements.MainContainer.Visible = true
							else
								w.UIElements.Main.Visible = true
							end
						end
						h()
						j:Close()
						if p then
							p:Disconnect()
							p = nil
						end
					end
				end
			end)
			j:Open()
			return j
		end
		return ab
	end
	function a.t()
		local aa, ab, b = game:GetService'UserInputService', game:GetService'RunService', a.load'b'
		local c, d, e = b.New, b.Tween, false
		return function(f)
			local g = {
				Title = f.Title or 'UI Library',
				Author = f.Author,
				Icon = f.Icon,
				Folder = f.Folder,
				Background = f.Background,
				UserEnabled = f.UserEnabled,
				Size = f.Size and UDim2.new(0, math.clamp(f.Size.X.Offset, 480, 700), 0, math.clamp(f.Size.Y.Offset, 350, 520)) or UDim2.new(0, 580, 0, 460),
				ToggleKey = f.ToggleKey or Enum.KeyCode.G,
				Transparent = f.Transparent or false,
				Position = UDim2.new(0.5, 0, 0.5, 0),
				UICorner = 16,
				UIPadding = 14,
				SideBarWidth = f.SideBarWidth or 200,
				UIElements = {},
				CanDropdown = true,
				Closed = false,
				HasOutline = f.HasOutline or false,
				SuperParent = f.Parent,
				Destroyed = false,
				IsFullscreen = false,
				IsOpenButtonEnabled = true,
				CurrentTab = nil,
				TopBarButtons = {}
			}
			if g.Folder then
				makefolder('WindUI/' .. g.Folder)
			end
			local h, i, j, k, n, o = c('UICorner', {
				CornerRadius = UDim.new(0, g.UICorner)
			}), c('Frame', {
				Size = UDim2.new(0, 32, 0, 32),
				Position = UDim2.new(1, 0, 1, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				ZIndex = 99,
				Active = true
			}, {
				c('ImageLabel', {
					Size = UDim2.new(0, 96, 0, 96),
					BackgroundTransparency = 1,
					Image = 'rbxassetid://120997033468887',
					Position = UDim2.new(0.5, -16, 0.5, -16),
					AnchorPoint = Vector2.new(0.5, 0.5),
					ImageTransparency = 0.8
				})
			}), c('Frame', {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				BackgroundColor3 = Color3.new(0, 0, 0),
				ZIndex = 98,
				Active = false
			}, {
				c('ImageLabel', {
					Size = UDim2.new(0, 70, 0, 70),
					Image = b.Icon'expand'[1],
					ImageRectOffset = b.Icon'expand'[2].ImageRectPosition,
					ImageRectSize = b.Icon'expand'[2].ImageRectSize,
					BackgroundTransparency = 1,
					Position = UDim2.new(0.5, 0, 0.5, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					ImageTransparency = 1
				}),
				c('UICorner', {
					CornerRadius = UDim.new(0, g.UICorner)
				})
			}), c('Frame', {
				Size = UDim2.new(0, 2, 1, -g.UIPadding * 2),
				BackgroundTransparency = 1,
				Position = UDim2.new(1, -g.UIPadding / 3, 0, g.UIPadding),
				AnchorPoint = Vector2.new(1, 0)
			}), (c('Frame', {
				Size = UDim2.new(1, 12, 1, 12),
				Position = UDim2.new(0.5, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0.5, 0.5),
				BackgroundTransparency = 1,
				Active = true
			}))
			local p, q = c('ImageLabel', {
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 0.85,
				ThemeTag = {
					BackgroundColor3 = 'Text'
				},
				Parent = k
			}, {
				c('UICorner', {
					CornerRadius = UDim.new(1, 0)
				}),
				n
			}), c('Frame', {
				Size = UDim2.new(1, 0, 0, 0),
				BackgroundTransparency = 0.95,
				ThemeTag = {
					BackgroundColor3 = 'Text'
				}
			}, {
				c('UICorner', {
					CornerRadius = UDim.new(0, 11)
				})
			})
			g.UIElements.SideBar = c('ScrollingFrame', {
				Size = UDim2.new(1, -g.UIPadding + 2, 1, 0),
				BackgroundTransparency = 1,
				ScrollBarThickness = 0,
				ElasticBehavior = 'Never',
				CanvasSize = UDim2.new(0, 0, 0, 0),
				AutomaticCanvasSize = 'Y',
				ScrollingDirection = 'Y',
				ClipsDescendants = true
			}, {
				c('CanvasGroup', {
					BackgroundTransparency = 1,
					AutomaticSize = 'Y',
					Size = UDim2.new(1, 0, 0, 0),
					Name = 'Frame',
					ClipsDescendants = true
				}, {
					c('UICorner', {
						CornerRadius = UDim.new(0, 9)
					}),
					c('UIPadding', {
						PaddingTop = UDim.new(0, g.UIPadding),
						PaddingLeft = UDim.new(0, 7),
						PaddingBottom = UDim.new(0, g.UIPadding - 5)
					}),
					c('UIListLayout', {
						SortOrder = 'LayoutOrder',
						Padding = UDim.new(0, 8)
					})
				}),
				c('UIPadding', {
					PaddingLeft = UDim.new(0, g.UIPadding - 3),
					PaddingRight = UDim.new(0, g.UIPadding - 3)
				}),
				q
			})
			local r, s = game.Players:GetUserThumbnailAsync(game.Players.LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
			g.UIElements.SideBarContainer = c('CanvasGroup', {
				Size = UDim2.new(0, g.SideBarWidth - g.UIPadding + 4, 1, g.UserEnabled and -94 - (g.UIPadding * 2) or -52),
				Position = UDim2.new(0, 0, 0, 52),
				BackgroundTransparency = 1,
				GroupTransparency = 0
			}, {
				g.UIElements.SideBar,
				k
			})
			local t, u = function()
				local t = g.UIElements.SideBar
				local u = math.clamp(t.AbsoluteWindowSize.Y / t.AbsoluteCanvasSize.Y, 0, 1)
				p.Size = UDim2.new(1, 0, u, 0)
				p.Visible = u < 1
			end, function()
				local t, u = p.Position.Y.Scale, math.max(g.UIElements.SideBar.AbsoluteCanvasSize.Y - g.UIElements.SideBar.AbsoluteWindowSize.Y, 1)
				g.UIElements.SideBar.CanvasPosition = Vector2.new(0, t * u)
			end
			n.InputBegan:Connect(function(v)
				if v.UserInputType == Enum.UserInputType.MouseButton1 or v.UserInputType == Enum.UserInputType.Touch then
					local w, x = (v.Position.Y - p.AbsolutePosition.Y)
					x = aa.InputChanged:Connect(function(y)
						if y.UserInputType == Enum.UserInputType.MouseMovement or y.UserInputType == Enum.UserInputType.Touch then
							local z, A = k.AbsoluteSize.Y, k.AbsolutePosition.Y
							local B = (y.Position.Y - A - w) / z
							B = math.clamp(B, 0, 1)
							p.Position = UDim2.new(0, 0, B, 0)
							u()
						end
					end)
					local y
					y = aa.InputEnded:Connect(function(z)
						if z.UserInputType == Enum.UserInputType.MouseButton1 or z.UserInputType == Enum.UserInputType.Touch then
							x:Disconnect()
							y:Disconnect()
						end
					end)
				end
			end)
			g.UIElements.SideBar:GetPropertyChangedSignal'CanvasPosition':Connect(function()
				local v, w = g.UIElements.SideBar.CanvasPosition.Y, g.UIElements.SideBar.AbsoluteCanvasSize.Y - g.UIElements.SideBar.AbsoluteWindowSize.Y
				local x = v / w
				p.Position = UDim2.new(0, 0, x, 0)
			end)
			p:GetPropertyChangedSignal'AbsoluteSize':Connect(function()
				k.Size = UDim2.new(0, k.Size.X.Offset, 1, -p.AbsoluteSize.Y - g.UIPadding * 2)
			end)
			g.UIElements.SideBar:GetPropertyChangedSignal'AbsoluteCanvasSize':Connect(t)
			g.UIElements.SideBar:GetPropertyChangedSignal'AbsoluteWindowSize':Connect(t)
			t()
			g.UIElements.MainBar = c('Frame', {
				Size = UDim2.new(1, -g.UIElements.SideBarContainer.AbsoluteSize.X, 1, -52),
				Position = UDim2.new(1, 0, 1, 0),
				AnchorPoint = Vector2.new(1, 1),
				BackgroundTransparency = 1
			})
			local v, w, x = c('Frame', {
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				ZIndex = 3,
				Name = 'Gradient',
				Visible = false
			}, {
				c('UIGradient', {
					Color = ColorSequence.new(Color3.new(0, 0, 0), Color3.new(0, 0, 0)),
					Rotation = 90,
					Transparency = NumberSequence.new{
						NumberSequenceKeypoint.new(0, 1),
						NumberSequenceKeypoint.new(1, g.Transparent and 0.85 or 0.7)
					}
				}),
				c('UICorner', {
					CornerRadius = UDim.new(0, g.UICorner)
				})
			}), (c('ImageLabel', {
				Image = 'rbxassetid://8992230677',
				ImageColor3 = Color3.new(0, 0, 0),
				ImageTransparency = 1,
				Size = UDim2.new(1, 120, 1, 116),
				Position = UDim2.new(0, -60, 0, -58),
				ScaleType = 'Slice',
				SliceCenter = Rect.new(99, 99, 99, 99),
				BackgroundTransparency = 1
			}))
			if aa.TouchEnabled and not aa.KeyboardEnabled then
				x = false
			elseif aa.KeyboardEnabled then
				x = true
			else
				x = nil
			end
			local y, z, A, B
			if not x then
				A = c('ImageLabel', {
					Image = '',
					Size = UDim2.new(0, 22, 0, 22),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					LayoutOrder = -1,
					AnchorPoint = Vector2.new(0.5, 0.5),
					BackgroundTransparency = 1,
					Name = 'Icon'
				})
				OpenButtonTitle = c('TextLabel', {
					Text = g.Title,
					TextSize = 17,
					FontFace = Font.new(b.Font, Enum.FontWeight.Medium),
					BackgroundTransparency = 1,
					AutomaticSize = 'XY'
				})
				OpenButtonDrag = c('Frame', {
					Size = UDim2.new(0, 36, 0, 36),
					BackgroundTransparency = 1,
					Name = 'Drag'
				}, {
					c('ImageLabel', {
						Image = b.Icon'move'[1],
						ImageRectOffset = b.Icon'move'[2].ImageRectPosition,
						ImageRectSize = b.Icon'move'[2].ImageRectSize,
						Size = UDim2.new(0, 18, 0, 18),
						BackgroundTransparency = 1,
						Position = UDim2.new(0.5, 0, 0.5, 0),
						AnchorPoint = Vector2.new(0.5, 0.5)
					})
				})
				OpenButtonDivider = c('Frame', {
					Size = UDim2.new(0, 1, 1, 0),
					Position = UDim2.new(0, 36, 0.5, 0),
					AnchorPoint = Vector2.new(0, 0.5),
					BackgroundColor3 = Color3.new(1, 1, 1),
					BackgroundTransparency = 0.9
				})
				y = c('Frame', {
					Size = UDim2.new(0, 0, 0, 0),
					Position = UDim2.new(0.5, 0, 0, 28),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Parent = f.Parent,
					BackgroundTransparency = 1,
					Active = true,
					Visible = false
				})
				z = c('TextButton', {
					Size = UDim2.new(0, 0, 0, 44),
					AutomaticSize = 'X',
					Parent = y,
					Active = false,
					BackgroundTransparency = 0.25,
					ZIndex = 99,
					BackgroundColor3 = Color3.new(0, 0, 0)
				}, {
					c('UICorner', {
						CornerRadius = UDim.new(1, 0)
					}),
					c('UIStroke', {
						Thickness = 1,
						ApplyStrokeMode = 'Border',
						Color = Color3.new(1, 1, 1),
						Transparency = 0
					}, {
						c('UIGradient', {
							Color = ColorSequence.new(Color3.fromHex'40c9ff', Color3.fromHex'e81cff')
						})
					}),
					OpenButtonDrag,
					OpenButtonDivider,
					c('UIListLayout', {
						Padding = UDim.new(0, 4),
						FillDirection = 'Horizontal',
						VerticalAlignment = 'Center'
					}),
					c('TextButton', {
						AutomaticSize = 'XY',
						Active = true,
						BackgroundTransparency = 1,
						Size = UDim2.new(0, 0, 0, 36),
						BackgroundColor3 = Color3.new(1, 1, 1)
					}, {
						c('UICorner', {
							CornerRadius = UDim.new(1, -4)
						}),
						A,
						c('UIListLayout', {
							Padding = UDim.new(0, g.UIPadding),
							FillDirection = 'Horizontal',
							VerticalAlignment = 'Center'
						}),
						OpenButtonTitle,
						c('UIPadding', {
							PaddingLeft = UDim.new(0, 12),
							PaddingRight = UDim.new(0, 12)
						})
					}),
					c('UIPadding', {
						PaddingLeft = UDim.new(0, 4),
						PaddingRight = UDim.new(0, 4)
					})
				})
				local C = z and z.UIStroke.UIGradient or nil
				ab.RenderStepped:Connect(function(D)
					if g.UIElements.Main and y and y.Parent ~= nil then
						if C then
							C.Rotation = (C.Rotation + 1) % 360
						end
						if B and B.Parent ~= nil and B.UIGradient then
							B.UIGradient.Rotation = (B.UIGradient.Rotation + 1) % 360
						end
					end
				end)
				z:GetPropertyChangedSignal'AbsoluteSize':Connect(function()
					y.Size = UDim2.new(0, z.AbsoluteSize.X, 0, z.AbsoluteSize.Y)
				end)
				z.TextButton.MouseEnter:Connect(function()
					d(z.TextButton, 0.1, {
						BackgroundTransparency = 0.93
					}):Play()
				end)
				z.TextButton.MouseLeave:Connect(function()
					d(z.TextButton, 0.1, {
						BackgroundTransparency = 1
					}):Play()
				end)
			end
			local C
			if g.UserEnabled then
				C = c('Frame', {
					Size = UDim2.new(0, g.UIElements.SideBarContainer.AbsoluteSize.X, 0, 42 + (g.UIPadding * 2)),
					BackgroundTransparency = 1,
					Position = UDim2.new(0, 0, 1, 0),
					AnchorPoint = Vector2.new(0, 1),
					Name = 'UserIcon'
				}, {
					c('ImageLabel', {
						Image = r,
						BackgroundTransparency = 1,
						Size = UDim2.new(0, 42, 0, 42),
						ThemeTag = {
							BackgroundColor3 = 'Text'
						},
						BackgroundTransparency = 0.93
					}, {
						c('UICorner', {
							CornerRadius = UDim.new(1, 0)
						})
					}),
					c('Frame', {
						AutomaticSize = 'XY',
						BackgroundTransparency = 1
					}, {
						c('TextLabel', {
							Text = game.Players.LocalPlayer.DisplayName,
							TextSize = 17,
							ThemeTag = {
								TextColor3 = 'Text'
							},
							FontFace = Font.new(b.Font, Enum.FontWeight.SemiBold),
							AutomaticSize = 'XY',
							BackgroundTransparency = 1
						}),
						c('TextLabel', {
							Text = game.Players.LocalPlayer.Name,
							TextSize = 15,
							TextTransparency = 0.4,
							ThemeTag = {
								TextColor3 = 'Text'
							},
							FontFace = Font.new(b.Font, Enum.FontWeight.Medium),
							AutomaticSize = 'XY',
							BackgroundTransparency = 1
						}),
						c('UIListLayout', {
							Padding = UDim.new(0, 4),
							HorizontalAlignment = 'Left'
						})
					}),
					c('UIListLayout', {
						Padding = UDim.new(0, g.UIPadding),
						FillDirection = 'Horizontal',
						VerticalAlignment = 'Center'
					}),
					c('UIPadding', {
						PaddingLeft = UDim.new(0, g.UIPadding),
						PaddingRight = UDim.new(0, g.UIPadding)
					})
				})
			end
			local D, E
			if g.HasOutline then
				D = c('Frame', {
					Name = 'Outline',
					Size = UDim2.new(1, g.UIPadding + 8, 0, 1),
					Position = UDim2.new(0, -g.UIPadding, 1, g.UIPadding),
					BackgroundTransparency = 0.9,
					AnchorPoint = Vector2.new(0, 0.5),
					ThemeTag = {
						BackgroundColor3 = 'Outline'
					}
				})
				E = c('Frame', {
					Name = 'Outline',
					Size = UDim2.new(0, 1, 1, -52),
					Position = UDim2.new(0, g.SideBarWidth - g.UIPadding / 2, 0, 52),
					BackgroundTransparency = 0.9,
					AnchorPoint = Vector2.new(0.5, 0),
					ThemeTag = {
						BackgroundColor3 = 'Outline'
					}
				})
			end
			local F = c('TextLabel', {
				Text = g.Title,
				FontFace = Font.new(b.Font, Enum.FontWeight.SemiBold),
				BackgroundTransparency = 1,
				AutomaticSize = 'XY',
				Name = 'Title',
				TextXAlignment = 'Left',
				TextSize = 16,
				ThemeTag = {
					TextColor3 = 'Text'
				}
			})
			g.UIElements.Main = c('Frame', {
				Size = g.Size,
				Position = g.Position,
				BackgroundTransparency = 1,
				Parent = f.Parent,
				AnchorPoint = Vector2.new(0.5, 0.5),
				Active = true
			}, {
				w,
				v,
				c('Frame', {
					BackgroundTransparency = 1,
					Size = UDim2.new(1, 0, 1, 0),
					AnchorPoint = Vector2.new(0.5, 0.5),
					Position = UDim2.new(0.5, 0, 0.5, 0),
					Name = 'Background',
					ThemeTag = {
						BackgroundColor3 = 'Accent'
					},
					ZIndex = 2
				}, {
					c('UICorner', {
						CornerRadius = UDim.new(0, g.UICorner)
					}),
					c('ImageLabel', {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 1, 0),
						Image = g.Background,
						ImageTransparency = 1,
						ScaleType = 'Crop'
					}, {
						c('UICorner', {
							CornerRadius = UDim.new(0, g.UICorner)
						})
					}),
					c('UIScale', {
						Scale = 0.95
					})
				}),
				o,
				h,
				i,
				j,
				c('Frame', {
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					Name = 'Main',
					Visible = false,
					ZIndex = 97
				}, {
					c('UICorner', {
						CornerRadius = UDim.new(0, g.UICorner)
					}),
					g.UIElements.SideBarContainer,
					g.UIElements.MainBar,
					C,
					E,
					c('Frame', {
						Size = UDim2.new(1, 0, 0, 52),
						BackgroundTransparency = 1,
						BackgroundColor3 = Color3.fromRGB(50, 50, 50),
						Name = 'Topbar'
					}, {
						D,
						c('Frame', {
							AutomaticSize = 'X',
							Size = UDim2.new(0, 0, 1, 0),
							BackgroundTransparency = 1,
							Name = 'Left'
						}, {
							c('UIListLayout', {
								Padding = UDim.new(0, 10),
								SortOrder = 'LayoutOrder',
								FillDirection = 'Horizontal',
								VerticalAlignment = 'Center'
							}),
							c('Frame', {
								AutomaticSize = 'XY',
								BackgroundTransparency = 1,
								Name = 'Title',
								Size = UDim2.new(0, 0, 1, 0),
								LayoutOrder = 2
							}, {
								c('UIListLayout', {
									Padding = UDim.new(0, 0),
									SortOrder = 'LayoutOrder',
									FillDirection = 'Vertical',
									VerticalAlignment = 'Top'
								}),
								F
							}),
							c('UIPadding', {
								PaddingLeft = UDim.new(0, 4)
							})
						}),
						c('Frame', {
							AutomaticSize = 'XY',
							BackgroundTransparency = 1,
							Position = UDim2.new(1, 0, 0.5, 0),
							AnchorPoint = Vector2.new(1, 0.5),
							Name = 'Right'
						}, {
							c('UIListLayout', {
								Padding = UDim.new(0, 9),
								FillDirection = 'Horizontal',
								SortOrder = 'LayoutOrder'
							})
						}),
						c('UIPadding', {
							PaddingTop = UDim.new(0, g.UIPadding),
							PaddingLeft = UDim.new(0, g.UIPadding),
							PaddingRight = UDim.new(0, 8),
							PaddingBottom = UDim.new(0, g.UIPadding)
						})
					})
				})
			})
			function g.CreateTopbarButton(G, H, I, J)
				local K = c('TextButton', {
					Size = UDim2.new(0, 36, 0, 36),
					BackgroundTransparency = 1,
					LayoutOrder = J or 999,
					Parent = g.UIElements.Main.Main.Topbar.Right,
					ZIndex = 9999,
					ThemeTag = {
						BackgroundColor3 = 'Text'
					},
					BackgroundTransparency = 1
				}, {
					c('UICorner', {
						CornerRadius = UDim.new(0, 9)
					}),
					c('ImageLabel', {
						Image = b.Icon(H)[1],
						ImageRectOffset = b.Icon(H)[2].ImageRectPosition,
						ImageRectSize = b.Icon(H)[2].ImageRectSize,
						BackgroundTransparency = 1,
						Size = UDim2.new(0, 16, 0, 16),
						ThemeTag = {
							ImageColor3 = 'Text'
						},
						AnchorPoint = Vector2.new(0.5, 0.5),
						Position = UDim2.new(0.5, 0, 0.5, 0),
						Active = false,
						ImageTransparency = 0.2
					})
				})
				g.TopBarButtons[100 - J] = K
				K.MouseButton1Click:Connect(function()
					I()
				end)
				K.MouseEnter:Connect(function()
					d(K, 0.15, {
						BackgroundTransparency = 0.93
					}):Play()
					d(K.ImageLabel, 0.15, {
						ImageTransparency = 0
					}):Play()
				end)
				K.MouseLeave:Connect(function()
					d(K, 0.1, {
						BackgroundTransparency = 1
					}):Play()
					d(K.ImageLabel, 0.1, {
						ImageTransparency = 0.2
					}):Play()
				end)
				return K
			end
			b.Drag(g.UIElements.Main, true)
			local G
			if not x then
				G = b.Drag(y)
			end
			if g.Author then
				c('TextLabel', {
					Text = g.Author,
					FontFace = Font.new(b.Font, Enum.FontWeight.Medium),
					BackgroundTransparency = 1,
					TextTransparency = 0.4,
					AutomaticSize = 'XY',
					Parent = g.UIElements.Main.Main.Topbar.Left.Title,
					TextXAlignment = 'Left',
					TextSize = 14,
					LayoutOrder = 2,
					ThemeTag = {
						TextColor3 = 'Text'
					}
				})
			end
			task.spawn(function()
				if g.Icon then
					local H = {
						ImageColor3 = 'Text'
					}
					if string.find(g.Icon, 'rbxassetid://') or not b.Icon(tostring(g.Icon))[1] then
						H = nil
					end
					local I = c('ImageLabel', {
						Parent = g.UIElements.Main.Main.Topbar.Left,
						Size = UDim2.new(0, 22, 0, 22),
						BackgroundTransparency = 1,
						LayoutOrder = 1,
						ThemeTag = H
					})
					if string.find(g.Icon, 'rbxassetid://') or string.find(g.Icon, 'http://www.roblox.com/asset/?id=') then
						I.Image = g.Icon
						A.Image = g.Icon
					elseif string.find(g.Icon, 'http') then
						local J, K = pcall(function()
							if not isfile('WindUI/.' .. g.Folder .. '/Assets/Icon.png') then
								local J = request{
									Url = g.Icon,
									Method = 'GET'
								}.Body
								writefile('WindUI/.' .. g.Folder .. '/Assets/Icon.png', J)
							end
							I.Image = getcustomasset('WindUI/.' .. g.Folder .. '/Assets/Icon.png')
							A.Image = getcustomasset('WindUI/.' .. g.Folder .. '/Assets/Icon.png')
						end)
						if not J then
							I:Destroy()
							warn("[ WindUI ]  '" .. identifyexecutor() .. "' doesnt support the URL Images. Error: " .. K)
						end
					else
						if b.Icon(tostring(g.Icon))[1] then
							I.Image = b.Icon(g.Icon)[1]
							I.ImageRectOffset = b.Icon(g.Icon)[2].ImageRectPosition
							I.ImageRectSize = b.Icon(g.Icon)[2].ImageRectSize
							A.Image = b.Icon(g.Icon)[1]
							A.ImageRectOffset = b.Icon(g.Icon)[2].ImageRectPosition
							A.ImageRectSize = b.Icon(g.Icon)[2].ImageRectSize
						end
					end
				else
					A.Visible = false
				end
			end)
			function g.SetToggleKey(H, I)
				g.ToggleKey = I
			end
			function g.SetBackgroundImage(H, I)
				g.UIElements.Main.Background.ImageLabel.Image = I
			end
			local H, I, J, K, L = b.Icon'minimize', (b.Icon'maximize')
			L = g:CreateTopbarButton('maximize', function()
				local M = g.IsFullscreen
				b.SetDraggable(M)
				if not M then
					J = g.UIElements.Main.Position
					K = g.UIElements.Main.Size
					L.ImageLabel.Image = H[1]
					L.ImageLabel.ImageRectOffset = H[2].ImageRectPosition
					L.ImageLabel.ImageRectSize = H[2].ImageRectSize
				else
					L.ImageLabel.Image = I[1]
					L.ImageLabel.ImageRectOffset = I[2].ImageRectPosition
					L.ImageLabel.ImageRectSize = I[2].ImageRectSize
				end
				d(g.UIElements.Main, 0.45, {
					Size = M and K or UDim2.new(1, -20, 1, -72)
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				d(g.UIElements.Main, 0.45, {
					Position = M and J or UDim2.new(0.5, 0, 0.5, 26)
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				g.IsFullscreen = not M
			end, 998)
			g:CreateTopbarButton('minus', function()
				g:Close()
				task.spawn(function()
					task.wait(0.3)
					if not x and g.IsOpenButtonEnabled then
						y.Visible = true
					end
				end)
				local M = x and 'Press ' .. g.ToggleKey.Name .. ' to open the Window' or 'Click the Button to open the Window'
				if not g.IsOpenButtonEnabled then
					e = true
				end
				if not e then
					e = not e
					f.WindUI:Notify{
						Title = 'Minimize',
						Content = "You've closed the Window. " .. M,
						Icon = 'eye-off',
						Duration = 5
					}
				end
			end, 997)
			function g.Open(M)
				g.Closed = false
				d(g.UIElements.Main.Background, 0.25, {
					BackgroundTransparency = f.Transparent and f.WindUI.TransparencyValue or 0
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				d(g.UIElements.Main.Background.ImageLabel, 0.2, {
					ImageTransparency = 0
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				d(g.UIElements.Main.Background.UIScale, 0.2, {
					Scale = 1
				}, Enum.EasingStyle.Back, Enum.EasingDirection.Out):Play()
				d(v, 0.25, {
					BackgroundTransparency = 0
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				d(w, 0.25, {
					ImageTransparency = 0.7
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				if o then
					d(o, 0.25, {
						Transparency = 0.8
					}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				end
				g.CanDropdown = true
				g.UIElements.Main.Visible = true
				task.wait(0.1)
				g.UIElements.Main.Main.Visible = true
			end
			function g.Close(M)
				local N = {}
				g.UIElements.Main.Main.Visible = false
				g.CanDropdown = false
				g.Closed = true
				d(g.UIElements.Main.Background, 0.25, {
					BackgroundTransparency = 1
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				d(g.UIElements.Main.Background.UIScale, 0.19, {
					Scale = 0.95
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				d(g.UIElements.Main.Background.ImageLabel, 0.2, {
					ImageTransparency = 1
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				d(v, 0.25, {
					BackgroundTransparency = 1
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				d(w, 0.25, {
					ImageTransparency = 1
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				if o then
					d(o, 0.25, {
						Transparency = 1
					}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				end
				task.spawn(function()
					task.wait(0.25)
					g.UIElements.Main.Visible = false
				end)
				function N.Destroy(O)
					g.Destroyed = true
					task.wait(0.25)
					f.Parent.Parent:Destroy()
				end
				return N
			end
			if not x and g.IsOpenButtonEnabled then
				z.TextButton.MouseButton1Click:Connect(function()
					g:Open()
					y.Visible = false
				end)
			end
			aa.InputBegan:Connect(function(M, N)
				if N then
					return
				end
				if M.KeyCode == g.ToggleKey then
					if g.Closed then
						g:Open()
					else
						g:Close()
					end
				end
			end)
			task.spawn(function()
				g:Open()
			end)
			function g.EditOpenButton(M, N)
				if z and z.Parent ~= nil then
					local O = {
						Title = N.Title,
						Icon = N.Icon or g.Icon,
						Enabled = N.Enabled,
						Position = N.Position,
						Draggable = N.Draggable,
						OnlyMobile = N.OnlyMobile,
						CornerRadius = N.CornerRadius or UDim.new(1, 0),
						StrokeThickness = N.StrokeThickness or 2,
						Color = N.Color or ColorSequence.new(Color3.fromHex'40c9ff', Color3.fromHex'e81cff')
					}
					if O.Enabled == false then
						g.IsOpenButtonEnabled = false
					end
					if O.Draggable == false and OpenButtonDrag and OpenButtonDivider then
						OpenButtonDrag.Visible = O.Draggable
						OpenButtonDivider.Visible = O.Draggable
						if G then
							G:Set(O.Draggable)
						end
					end
					if O.Position and y then
						y.Position = O.Position
					end
					local P = aa.KeyboardEnabled or not aa.TouchEnabled
					z.Visible = not O.OnlyMobile or not P
					if not z.Visible then
						return
					end
					if OpenButtonTitle then
						if O.Title then
							OpenButtonTitle.Text = O.Title
						elseif O.Title == nil then
						end
					end
					if b.Icon(O.Icon) and A then
						A.Visible = true
						A.Image = b.Icon(O.Icon)[1]
						A.ImageRectOffset = b.Icon(O.Icon)[2].ImageRectPosition
						A.ImageRectSize = b.Icon(O.Icon)[2].ImageRectSize
					end
					z.UIStroke.UIGradient.Color = O.Color
					if B then
						B.UIGradient.Color = O.Color
					end
					z.UICorner.CornerRadius = O.CornerRadius
					z.TextButton.UICorner.CornerRadius = UDim.new(O.CornerRadius.Scale, O.CornerRadius.Offset - 4)
					z.UIStroke.Thickness = O.StrokeThickness
				end
			end
			local M = a.load'r'.Init(g, f.WindUI, f.Parent.Parent.ToolTips, q)
			M:OnChange(function(N)
				g.CurrentTab = N
			end)
			function g.Tab(N, O)
				return M.New{
					Title = O.Title,
					Icon = O.Icon,
					Desc = O.Desc,
					Locked = O.Locked,
					Parent = g.UIElements.SideBar.Frame
				}
			end
			function g.SelectTab(N, O)
				M:SelectTab(O)
			end
			function g.Divider(N)
				local O = c('Frame', {
					Size = UDim2.new(1, 0, 0, 1),
					Position = UDim2.new(0.5, 0, 0, 0),
					AnchorPoint = Vector2.new(0.5, 0),
					BackgroundTransparency = 0.8,
					ThemeTag = {
						BackgroundColor3 = 'Text'
					}
				})
				c('Frame', {
					Parent = g.UIElements.SideBar.Frame,
					Size = UDim2.new(1, 0, 0, 1),
					BackgroundTransparency = 1
				}, {
					O
				})
			end
			local N = a.load'c'.Init(g)
			function g.Dialog(O, P)
				local Q, R = {
					Title = P.Title or 'Dialog',
					Content = P.Content,
					Buttons = P.Buttons or {}
				}, N.Create()
				local S, T = (c('Frame', {
					Size = UDim2.new(1, 0, 0, 0),
					AutomaticSize = 'Y',
					BackgroundTransparency = 1,
					Parent = R.UIElements.Main
				}, {
					c('UIListLayout', {
						FillDirection = 'Horizontal',
						Padding = UDim.new(0, R.UIPadding),
						VerticalAlignment = 'Center'
					})
				}))
				if P.Icon and b.Icon(P.Icon)[2] then
					T = c('ImageLabel', {
						Image = b.Icon(P.Icon)[1],
						ImageRectSize = b.Icon(P.Icon)[2].ImageRectSize,
						ImageRectOffset = b.Icon(P.Icon)[2].ImageRectPosition,
						ThemeTag = {
							ImageColor3 = 'Text'
						},
						Size = UDim2.new(0, 26, 0, 26),
						BackgroundTransparency = 1,
						Parent = S
					})
				end
				R.UIElements.UIListLayout = c('UIListLayout', {
					Padding = UDim.new(0, 18.4),
					FillDirection = 'Vertical',
					HorizontalAlignment = 'Left',
					Parent = R.UIElements.Main
				})
				c('UISizeConstraint', {
					MinSize = Vector2.new(180, 20),
					MaxSize = Vector2.new(620, math.huge),
					Parent = R.UIElements.Main
				})
				R.UIElements.Title = c('TextLabel', {
					Text = Q.Title,
					TextSize = 19,
					FontFace = Font.new(b.Font, Enum.FontWeight.SemiBold),
					TextXAlignment = 'Left',
					TextWrapped = true,
					RichText = true,
					Size = UDim2.new(1, T and -26 - R.UIPadding or 0, 0, 0),
					AutomaticSize = 'Y',
					ThemeTag = {
						TextColor3 = 'Text'
					},
					BackgroundTransparency = 1,
					Parent = S
				})
				if Q.Content then
					c('TextLabel', {
						Text = Q.Content,
						TextSize = 17,
						TextTransparency = 0.4,
						TextWrapped = true,
						RichText = true,
						FontFace = Font.new(b.Font, Enum.FontWeight.Medium),
						TextXAlignment = 'Left',
						Size = UDim2.new(1, 0, 0, 0),
						AutomaticSize = 'Y',
						LayoutOrder = 2,
						ThemeTag = {
							TextColor3 = 'Text'
						},
						BackgroundTransparency = 1,
						Parent = R.UIElements.Main
					})
				end
				local U = c('Frame', {
					Size = UDim2.new(1, 0, 0, 32),
					AutomaticSize = 'None',
					BackgroundTransparency = 1,
					Parent = R.UIElements.Main,
					LayoutOrder = 4
				}, {
					c('UIListLayout', {
						Padding = UDim.new(0, 10),
						FillDirection = 'Horizontal',
						HorizontalAlignment = 'Center'
					})
				})
				for V, W in next, Q.Buttons do
					if W.Variant == nil or W.Variant == '' then
						W.Variant = 'Secondary'
					end
					local X = c('TextButton', {
						Text = W.Title or 'Button',
						TextSize = 16,
						FontFace = Font.new(b.Font, Enum.FontWeight.Medium),
						ThemeTag = {
							TextColor3 = W.Variant == 'Secondary' and 'Text' or 'Accent',
							BackgroundColor3 = 'Text'
						},
						BackgroundTransparency = W.Variant == 'Secondary' and 0.93 or 0.1,
						Parent = U,
						Size = UDim2.new(1 / #Q.Buttons, -(((#Q.Buttons - 1) * 10) / #Q.Buttons), 1, 0)
					}, {
						c('UICorner', {
							CornerRadius = UDim.new(0, R.UICorner - 5)
						}),
						c('UIPadding', {
							PaddingTop = UDim.new(0, 0),
							PaddingLeft = UDim.new(0, R.UIPadding / 1.85),
							PaddingRight = UDim.new(0, R.UIPadding / 1.85),
							PaddingBottom = UDim.new(0, 0)
						}),
						c('Frame', {
							Size = UDim2.new(1, (R.UIPadding / 1.85) * 2, 1, 0),
							Position = UDim2.new(0.5, 0, 0.5, 0),
							AnchorPoint = Vector2.new(0.5, 0.5),
							ThemeTag = {
								BackgroundColor3 = W.Variant == 'Secondary' and 'Text' or 'Accent'
							},
							BackgroundTransparency = 1
						}, {
							c('UICorner', {
								CornerRadius = UDim.new(0, R.UICorner - 5)
							})
						})
					})
					X.MouseEnter:Connect(function()
						d(X.Frame, 0.1, {
							BackgroundTransparency = 0.9
						}):Play()
					end)
					X.MouseLeave:Connect(function()
						d(X.Frame, 0.1, {
							BackgroundTransparency = 1
						}):Play()
					end)
					X.MouseButton1Click:Connect(function()
						R:Close()
						task.spawn(function()
							W.Callback()
						end)
					end)
				end
				return R
			end
			local O = g:Dialog{
				Icon = 'trash-2',
				Title = 'Close Window',
				Content = [[Do you want to close this window? You will not be able to open it again.]],
				Buttons = {
					{
						Title = 'Cancel',
						Callback = function()
						end,
						Variant = 'Secondary'
					},
					{
						Title = 'Close Window',
						Callback = function()
							g:Close():Destroy()
						end,
						Variant = 'Primary'
					}
				}
			}
			g:CreateTopbarButton('x', function()
				d(g.UIElements.Main, 0.35, {
					Position = UDim2.new(0.5, 0, 0.5, 0)
				}, Enum.EasingStyle.Quint, Enum.EasingDirection.Out):Play()
				O:Open()
			end, 999)
			local P = function(P)
				if not isFullscreen then
					isResizing = true
					j.Active = true
					initialSize = g.UIElements.Main.Size
					initialInputPosition = P.Position
					d(j, 0.2, {
						BackgroundTransparency = 0.65
					}):Play()
					d(j.ImageLabel, 0.2, {
						ImageTransparency = 0
					}):Play()
					d(i.ImageLabel, 0.2, {
						ImageTransparency = 0.35
					}):Play()
					P.Changed:Connect(function()
						if P.UserInputState == Enum.UserInputState.End then
							isResizing = false
							j.Active = false
							d(j, 0.2, {
								BackgroundTransparency = 1
							}):Play()
							d(j.ImageLabel, 0.2, {
								ImageTransparency = 1
							}):Play()
							d(i.ImageLabel, 0.2, {
								ImageTransparency = 0.8
							}):Play()
						end
					end)
				end
			end
			i.InputBegan:Connect(function(Q)
				if Q.UserInputType == Enum.UserInputType.MouseButton1 or Q.UserInputType == Enum.UserInputType.Touch then
					P(Q)
				end
			end)
			aa.InputChanged:Connect(function(Q)
				if isResizing and not isFullscreen then
					if Q.UserInputType == Enum.UserInputType.MouseMovement or Q.UserInputType == Enum.UserInputType.Touch then
						local R = Q.Position - initialInputPosition
						local S = UDim2.new(0, initialSize.X.Offset + R.X * 2, 0, initialSize.Y.Offset + R.Y * 2)
						d(g.UIElements.Main, 0.06, {
							Size = UDim2.new(0, math.clamp(S.X.Offset, 480, 700), 0, math.clamp(S.Y.Offset, 350, 520))
						}):Play()
					end
				end
			end)
			local Q, R, S, T, U = a.load's', true, false
			U = g:CreateTopbarButton('search', function()
				if not R and not S then
					return
				end
				if not g.CurrentTab then
					return
				end
				local V = function()
					R = true
					S = false
					g.UIElements.SideBarContainer.Visible = true
					d(g.UIElements.MainBar, 0.25, {
						Size = UDim2.new(1, -g.UIElements.SideBarContainer.AbsoluteSize.X, g.UIElements.SideBarContainer.Size.Y.Scale, g.UIElements.SideBarContainer.Size.Y.Offset)
					}, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut):Play()
					g.UIElements.SideBarContainer.GroupTransparency = 0
					if C then
						C.Visible = true
					end
					if E then
						d(E, 0.15, {
							BackgroundTransparency = 0.9
						}):Play()
					end
				end
				if not S then
					R = false
					S = true
					d(g.UIElements.MainBar, 0.25, {
						Size = UDim2.new(1, 0, g.UIElements.SideBarContainer.Size.Y.Scale, g.UIElements.SideBarContainer.Size.Y.Offset - 52)
					}, Enum.EasingStyle.Quint, Enum.EasingDirection.InOut):Play()
					g.UIElements.SideBarContainer.GroupTransparency = 1
					if C then
						C.Visible = false
					end
					T = Q.new(M.Tabs[g.CurrentTab].Elements, g.UIElements.Main, M.Tabs[g.CurrentTab].Title, V, M.Tabs[g.CurrentTab].ContainerFrame)
					if E then
						d(E, 0.1, {
							BackgroundTransparency = 1
						}):Play()
					end
				else
					V()
					if T then
						T:Close()
						T:Search''
						T = nil
					end
				end
				g.UIElements.SideBarContainer.Visible = not S
			end, 996)
			return g
		end
	end
end
local aa, ab, b, c, d = {
	Window = nil,
	Theme = nil,
	Themes = nil,
	Transparent = false,
	TransparencyValue = 0.25
}, game:GetService'RunService', a.load'a', a.load'd', a.load'b'
local e, f, g = d.New, d.Tween, game:GetService'Players' and game:GetService'Players'.LocalPlayer or nil
aa.Themes = b
local h = protectgui or (syn and syn.protect_gui) or function()
end
aa.ScreenGui = e('ScreenGui', {
	Name = 'WindUI',
	Parent = gethui and gethui() or game.CoreGui,
	IgnoreGuiInset = true
}, {
	e('Folder', {
		Name = 'Window'
	}),
	e('Folder', {
		Name = 'Notifications'
	}),
	e('Folder', {
		Name = 'Dropdowns'
	}),
	e('Folder', {
		Name = 'KeySystem'
	}),
	e('Folder', {
		Name = 'Popups'
	}),
	e('Folder', {
		Name = 'ToolTips'
	})
})
h(aa.ScreenGui)
local i = a.load'e'
local j = i.Init(aa.ScreenGui.Notifications)
function aa.Notify(k, n)
	n.Holder = j.Frame
	n.Window = aa.Window
	n.WindUI = aa
	return i.New(n)
end
function aa.SetNotificationLower(k, n)
	j.SetLower(n)
end
function aa.SetFont(k, n)
	d.UpdateFont(n)
end
function aa.AddTheme(k, n)
	b[n.Name] = n
	return n
end
function aa.SetTheme(k, n)
	if b[n] then
		aa.Theme = b[n]
		d.SetTheme(b[n])
		d.UpdateTheme()
		return b[n]
	end
	return nil
end
aa:SetTheme'Dark'
function aa.GetThemes(k)
	return b
end
function aa.GetCurrentTheme(k)
	return aa.Theme.Name
end
function aa.GetTransparency(k)
	return aa.Transparent or false
end
function aa.GetWindowSize(k)
	return Window.UIElements.Main.Size
end
function aa.Popup(k, n)
	n.WindUI = aa
	return a.load'f'.new(n)
end
function aa.CreateWindow(k, n)
	local o = a.load't'
	if not isfolder'WindUI' then
		makefolder'WindUI'
	end
	if n.Folder then
		makefolder(n.Folder)
	else
		makefolder(n.Title)
	end
	n.WindUI = aa
	n.Parent = aa.ScreenGui.Window
	if aa.Window then
		warn'You cannot create more than one window'
		return
	end
	local p, q = true, b[n.Theme or 'Dark']
	aa.Theme = q
	d.SetTheme(q)
	local r = g.Name or 'Unknown'
	if n.KeySystem then
		p = false
		if n.KeySystem.SaveKey and n.Folder then
			if isfile(n.Folder .. '/' .. r .. '.key') then
				local s = tostring(n.KeySystem.Key) == tostring(readfile(n.Folder .. '/' .. r .. '.key'))
				if type(n.KeySystem.Key) == 'table' then
					s = table.find(n.KeySystem.Key, readfile(n.Folder .. '/' .. r .. '.key'))
				end
				if s then
					p = true
				end
			else
				c.new(n, r, function(s)
					p = s
				end)
			end
		else
			c.new(n, r, function(s)
				p = s
			end)
		end
		repeat
			task.wait()
		until p
	end
	local s = o(n)
	aa.Transparent = n.Transparent
	aa.Window = s
	function s.ToggleTransparency(t, u)
		aa.Transparent = u
		aa.Window.Transparent = u
		s.UIElements.Main.Background.BackgroundTransparency = u and aa.TransparencyValue or 0
		s.UIElements.Main.Background.ImageLabel.ImageTransparency = u and aa.TransparencyValue or 0
		s.UIElements.Main.Gradient.UIGradient.Transparency = NumberSequence.new{
			NumberSequenceKeypoint.new(0, 1),
			NumberSequenceKeypoint.new(1, u and 0.85 or 0.7)
		}
	end
	return s
end
return aa