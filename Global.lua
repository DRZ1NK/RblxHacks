local G2L = {};

-- StarterGui.GuiGlobalFE
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Name"] = [[GuiGlobalFE]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;


-- StarterGui.GuiGlobalFE.Sync
G2L["2"] = Instance.new("LocalScript", G2L["1"]);
G2L["2"]["Name"] = [[Sync]];


-- StarterGui.GuiGlobalFE.ScriptManager
G2L["3"] = Instance.new("ModuleScript", G2L["1"]);
G2L["3"]["Name"] = [[ScriptManager]];


-- StarterGui.GuiGlobalFE.Main
G2L["4"] = Instance.new("Frame", G2L["1"]);
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4"]["Size"] = UDim2.new(0, 426, 0, 211);
G2L["4"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["4"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4"]["Name"] = [[Main]];


-- StarterGui.GuiGlobalFE.Main.DraggingForSliders
G2L["5"] = Instance.new("LocalScript", G2L["4"]);
G2L["5"]["Name"] = [[DraggingForSliders]];


-- StarterGui.GuiGlobalFE.Main.TitleChanger
G2L["6"] = Instance.new("LocalScript", G2L["4"]);
G2L["6"]["Name"] = [[TitleChanger]];


-- StarterGui.GuiGlobalFE.Main.NameLabel
G2L["7"] = Instance.new("TextLabel", G2L["4"]);
G2L["7"]["TextWrapped"] = true;
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["TextSize"] = 14;
G2L["7"]["TextScaled"] = true;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["7"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["BackgroundTransparency"] = 1;
G2L["7"]["Size"] = UDim2.new(0, 426, 0, 33);
G2L["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7"]["Text"] = [[PRIV]];
G2L["7"]["Name"] = [[NameLabel]];
G2L["7"]["Position"] = UDim2.new(0, 0, -0.1564, 0);


-- StarterGui.GuiGlobalFE.Main.UICorner
G2L["8"] = Instance.new("UICorner", G2L["4"]);
G2L["8"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Main.UIStroke
G2L["9"] = Instance.new("UIStroke", G2L["4"]);
G2L["9"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.Main.Orbit-Frame
G2L["a"] = Instance.new("TextButton", G2L["4"]);
G2L["a"]["TextWrapped"] = true;
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["TextSize"] = 26;
G2L["a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a"]["Size"] = UDim2.new(0, 50, 0, 50);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["Text"] = [[Orbit]];
G2L["a"]["Name"] = [[Orbit-Frame]];
G2L["a"]["Position"] = UDim2.new(0, 10, 0, 10);


-- StarterGui.GuiGlobalFE.Main.Orbit-Frame.OpenOrbit
G2L["b"] = Instance.new("LocalScript", G2L["a"]);
G2L["b"]["Name"] = [[OpenOrbit]];


-- StarterGui.GuiGlobalFE.Main.Orbit-Frame.UIStroke
G2L["c"] = Instance.new("UIStroke", G2L["a"]);
G2L["c"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.Main.UIDragDetector
G2L["d"] = Instance.new("UIDragDetector", G2L["4"]);
-- [ERROR] cannot convert ReferenceUIInstance, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"


-- StarterGui.GuiGlobalFE.Main.esp
G2L["e"] = Instance.new("TextButton", G2L["4"]);
G2L["e"]["TextWrapped"] = true;
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["TextSize"] = 26;
G2L["e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["e"]["Size"] = UDim2.new(0, 50, 0, 50);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Text"] = [[ESP]];
G2L["e"]["Name"] = [[esp]];
G2L["e"]["Position"] = UDim2.new(0, 72, 0, 10);


-- StarterGui.GuiGlobalFE.Main.esp.ToggleESP
G2L["f"] = Instance.new("LocalScript", G2L["e"]);
G2L["f"]["Name"] = [[ToggleESP]];


-- StarterGui.GuiGlobalFE.Main.esp.UIStroke
G2L["10"] = Instance.new("UIStroke", G2L["e"]);
G2L["10"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["10"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.Main.fly
G2L["11"] = Instance.new("TextButton", G2L["4"]);
G2L["11"]["TextWrapped"] = true;
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["TextSize"] = 26;
G2L["11"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["11"]["Size"] = UDim2.new(0, 50, 0, 50);
G2L["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["11"]["Text"] = [[Fly]];
G2L["11"]["Name"] = [[fly]];
G2L["11"]["Position"] = UDim2.new(0, 134, 0, 10);


-- StarterGui.GuiGlobalFE.Main.fly.ToggleFly
G2L["12"] = Instance.new("LocalScript", G2L["11"]);
G2L["12"]["Name"] = [[ToggleFly]];


-- StarterGui.GuiGlobalFE.Main.fly.UIStroke
G2L["13"] = Instance.new("UIStroke", G2L["11"]);
G2L["13"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["13"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.Main.RandoNames
G2L["14"] = Instance.new("TextButton", G2L["4"]);
G2L["14"]["TextWrapped"] = true;
G2L["14"]["BorderSizePixel"] = 0;
G2L["14"]["TextSize"] = 26;
G2L["14"]["TextScaled"] = true;
G2L["14"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["14"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["14"]["Size"] = UDim2.new(0, 50, 0, 50);
G2L["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["14"]["Text"] = [[Random Names]];
G2L["14"]["Name"] = [[RandoNames]];
G2L["14"]["Position"] = UDim2.new(0, 195, 0, 10);


-- StarterGui.GuiGlobalFE.Main.RandoNames.Rando
G2L["15"] = Instance.new("LocalScript", G2L["14"]);
G2L["15"]["Name"] = [[Rando]];


-- StarterGui.GuiGlobalFE.Main.RandoNames.UIStroke
G2L["16"] = Instance.new("UIStroke", G2L["14"]);
G2L["16"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["16"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.Main.WalkspeedSlider
G2L["17"] = Instance.new("Frame", G2L["4"]);
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["Size"] = UDim2.new(0, 14, 0, 168);
G2L["17"]["Position"] = UDim2.new(0.74413, 0, 0.04739, 0);
G2L["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["17"]["Name"] = [[WalkspeedSlider]];


-- StarterGui.GuiGlobalFE.Main.WalkspeedSlider.WalkspeedSliding
G2L["18"] = Instance.new("LocalScript", G2L["17"]);
G2L["18"]["Name"] = [[WalkspeedSliding]];


-- StarterGui.GuiGlobalFE.Main.WalkspeedSlider.UIStroke
G2L["19"] = Instance.new("UIStroke", G2L["17"]);
G2L["19"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.Main.WalkspeedSlider.UICorner
G2L["1a"] = Instance.new("UICorner", G2L["17"]);
G2L["1a"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Main.WalkspeedSlider.Handle
G2L["1b"] = Instance.new("Frame", G2L["17"]);
G2L["1b"]["BorderSizePixel"] = 0;
G2L["1b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Size"] = UDim2.new(0, 26, 0, 12);
G2L["1b"]["Position"] = UDim2.new(-0.42857, 0, 0.46429, 0);
G2L["1b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1b"]["Name"] = [[Handle]];


-- StarterGui.GuiGlobalFE.Main.WalkspeedSlider.Handle.UIStroke
G2L["1c"] = Instance.new("UIStroke", G2L["1b"]);
G2L["1c"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.Main.WalkspeedSlider.Handle.UICorner
G2L["1d"] = Instance.new("UICorner", G2L["1b"]);
G2L["1d"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Main.WalkspeedSlider.WalkspeedLabel
G2L["1e"] = Instance.new("TextLabel", G2L["17"]);
G2L["1e"]["TextWrapped"] = true;
G2L["1e"]["ZIndex"] = 2;
G2L["1e"]["BorderSizePixel"] = 0;
G2L["1e"]["TextSize"] = 14;
G2L["1e"]["TextScaled"] = true;
G2L["1e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1e"]["BackgroundTransparency"] = 1;
G2L["1e"]["Size"] = UDim2.new(0, 88, 0, 33);
G2L["1e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1e"]["Text"] = [[Walkspeed: 0]];
G2L["1e"]["Name"] = [[WalkspeedLabel]];
G2L["1e"]["Position"] = UDim2.new(-21.9391, 0, 0.99692, 0);


-- StarterGui.GuiGlobalFE.Main.Close
G2L["1f"] = Instance.new("TextButton", G2L["4"]);
G2L["1f"]["TextWrapped"] = true;
G2L["1f"]["BorderSizePixel"] = 0;
G2L["1f"]["TextSize"] = 14;
G2L["1f"]["TextScaled"] = true;
G2L["1f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["1f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["1f"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["1f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1f"]["Text"] = [[X]];
G2L["1f"]["Name"] = [[Close]];
G2L["1f"]["Position"] = UDim2.new(0, 386, 0, 10);


-- StarterGui.GuiGlobalFE.Main.Close.CloseGlobal
G2L["20"] = Instance.new("LocalScript", G2L["1f"]);
G2L["20"]["Name"] = [[CloseGlobal]];


-- StarterGui.GuiGlobalFE.Main.Close.UIStroke
G2L["21"] = Instance.new("UIStroke", G2L["1f"]);
G2L["21"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["21"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.Main.JumpHeightSlider
G2L["22"] = Instance.new("Frame", G2L["4"]);
G2L["22"]["BorderSizePixel"] = 0;
G2L["22"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["Size"] = UDim2.new(0, 14, 0, 168);
G2L["22"]["Position"] = UDim2.new(0.83568, 0, 0.04739, 0);
G2L["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["22"]["Name"] = [[JumpHeightSlider]];


-- StarterGui.GuiGlobalFE.Main.JumpHeightSlider.JumpHeightSliding
G2L["23"] = Instance.new("LocalScript", G2L["22"]);
G2L["23"]["Name"] = [[JumpHeightSliding]];


-- StarterGui.GuiGlobalFE.Main.JumpHeightSlider.UIStroke
G2L["24"] = Instance.new("UIStroke", G2L["22"]);
G2L["24"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.Main.JumpHeightSlider.UICorner
G2L["25"] = Instance.new("UICorner", G2L["22"]);
G2L["25"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Main.JumpHeightSlider.Handle
G2L["26"] = Instance.new("Frame", G2L["22"]);
G2L["26"]["BorderSizePixel"] = 0;
G2L["26"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26"]["Size"] = UDim2.new(0, 26, 0, 12);
G2L["26"]["Position"] = UDim2.new(-0.42857, 0, 0.46429, 0);
G2L["26"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["26"]["Name"] = [[Handle]];


-- StarterGui.GuiGlobalFE.Main.JumpHeightSlider.Handle.UIStroke
G2L["27"] = Instance.new("UIStroke", G2L["26"]);
G2L["27"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.Main.JumpHeightSlider.Handle.UICorner
G2L["28"] = Instance.new("UICorner", G2L["26"]);
G2L["28"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Main.JumpHeightSlider.HeightLabel
G2L["29"] = Instance.new("TextLabel", G2L["22"]);
G2L["29"]["TextWrapped"] = true;
G2L["29"]["ZIndex"] = 2;
G2L["29"]["BorderSizePixel"] = 0;
G2L["29"]["TextSize"] = 14;
G2L["29"]["TextScaled"] = true;
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["29"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["29"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["29"]["BackgroundTransparency"] = 1;
G2L["29"]["Size"] = UDim2.new(0, 88, 0, 33);
G2L["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["29"]["Text"] = [[JumpPower: 0]];
G2L["29"]["Name"] = [[HeightLabel]];
G2L["29"]["Position"] = UDim2.new(-16.72482, 0, 0.99692, 0);


-- StarterGui.GuiGlobalFE.Main.ASMRFrame
G2L["2a"] = Instance.new("TextButton", G2L["4"]);
G2L["2a"]["TextWrapped"] = true;
G2L["2a"]["BorderSizePixel"] = 0;
G2L["2a"]["TextSize"] = 26;
G2L["2a"]["TextScaled"] = true;
G2L["2a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["2a"]["Size"] = UDim2.new(0, 50, 0, 50);
G2L["2a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2a"]["Text"] = [[Asmr]];
G2L["2a"]["Name"] = [[ASMRFrame]];
G2L["2a"]["Position"] = UDim2.new(0, 255, 0, 10);


-- StarterGui.GuiGlobalFE.Main.ASMRFrame.OpenAsmr
G2L["2b"] = Instance.new("LocalScript", G2L["2a"]);
G2L["2b"]["Name"] = [[OpenAsmr]];


-- StarterGui.GuiGlobalFE.Main.ASMRFrame.UIStroke
G2L["2c"] = Instance.new("UIStroke", G2L["2a"]);
G2L["2c"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["2c"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.OrbitFrame
G2L["2d"] = Instance.new("Frame", G2L["1"]);
G2L["2d"]["Visible"] = false;
G2L["2d"]["BorderSizePixel"] = 0;
G2L["2d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2d"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2d"]["Size"] = UDim2.new(0, 426, 0, 211);
G2L["2d"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["2d"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2d"]["Name"] = [[OrbitFrame]];


-- StarterGui.GuiGlobalFE.OrbitFrame.UICorner
G2L["2e"] = Instance.new("UICorner", G2L["2d"]);
G2L["2e"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.OrbitFrame.UIStroke
G2L["2f"] = Instance.new("UIStroke", G2L["2d"]);
G2L["2f"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.OrbitFrame.Toggle
G2L["30"] = Instance.new("TextButton", G2L["2d"]);
G2L["30"]["TextWrapped"] = true;
G2L["30"]["BorderSizePixel"] = 0;
G2L["30"]["TextSize"] = 14;
G2L["30"]["TextScaled"] = true;
G2L["30"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["30"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["30"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["30"]["Size"] = UDim2.new(0, 104, 0, 37);
G2L["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["30"]["Text"] = [[Toggle Orbit]];
G2L["30"]["Name"] = [[Toggle]];
G2L["30"]["Position"] = UDim2.new(0, 15, 0, 15);


-- StarterGui.GuiGlobalFE.OrbitFrame.Toggle.ToggleOrbit
G2L["31"] = Instance.new("LocalScript", G2L["30"]);
G2L["31"]["Name"] = [[ToggleOrbit]];


-- StarterGui.GuiGlobalFE.OrbitFrame.Toggle.UIStroke
G2L["32"] = Instance.new("UIStroke", G2L["30"]);
G2L["32"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["32"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.OrbitFrame.DropDown
G2L["33"] = Instance.new("ScrollingFrame", G2L["2d"]);
G2L["33"]["Active"] = true;
G2L["33"]["BorderSizePixel"] = 0;
G2L["33"]["Name"] = [[DropDown]];
G2L["33"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["33"]["Size"] = UDim2.new(0, 107, 0, 141);
G2L["33"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["33"]["Position"] = UDim2.new(0.03169, 0, 0.28436, 0);
G2L["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.GuiGlobalFE.OrbitFrame.DropDown.NameTemp
G2L["34"] = Instance.new("TextButton", G2L["33"]);
G2L["34"]["TextWrapped"] = true;
G2L["34"]["BorderSizePixel"] = 0;
G2L["34"]["TextSize"] = 14;
G2L["34"]["TextScaled"] = true;
G2L["34"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["34"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["34"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["34"]["BackgroundTransparency"] = 1;
G2L["34"]["Size"] = UDim2.new(0, 107, 0, 24);
G2L["34"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["34"]["Text"] = [[Name]];
G2L["34"]["Name"] = [[NameTemp]];
G2L["34"]["Position"] = UDim2.new(-0.01869, 0, 0, 0);


-- StarterGui.GuiGlobalFE.OrbitFrame.DropDown.UIStroke
G2L["35"] = Instance.new("UIStroke", G2L["33"]);
G2L["35"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.OrbitFrame.DropDown.UIListLayout
G2L["36"] = Instance.new("UIListLayout", G2L["33"]);
G2L["36"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.GuiGlobalFE.OrbitFrame.DropDown.UICorner
G2L["37"] = Instance.new("UICorner", G2L["33"]);
G2L["37"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.OrbitFrame.Close
G2L["38"] = Instance.new("TextButton", G2L["2d"]);
G2L["38"]["TextWrapped"] = true;
G2L["38"]["BorderSizePixel"] = 0;
G2L["38"]["TextSize"] = 14;
G2L["38"]["TextScaled"] = true;
G2L["38"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["38"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["38"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["38"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["38"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["38"]["Text"] = [[X]];
G2L["38"]["Name"] = [[Close]];
G2L["38"]["Position"] = UDim2.new(0, 386, 0, 10);


-- StarterGui.GuiGlobalFE.OrbitFrame.Close.CloseOrbit
G2L["39"] = Instance.new("LocalScript", G2L["38"]);
G2L["39"]["Name"] = [[CloseOrbit]];


-- StarterGui.GuiGlobalFE.OrbitFrame.Close.UIStroke
G2L["3a"] = Instance.new("UIStroke", G2L["38"]);
G2L["3a"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["3a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.OrbitFrame.NameLabel
G2L["3b"] = Instance.new("TextLabel", G2L["2d"]);
G2L["3b"]["TextWrapped"] = true;
G2L["3b"]["BorderSizePixel"] = 0;
G2L["3b"]["TextSize"] = 14;
G2L["3b"]["TextScaled"] = true;
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["3b"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3b"]["BackgroundTransparency"] = 1;
G2L["3b"]["Size"] = UDim2.new(0, 426, 0, 33);
G2L["3b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3b"]["Text"] = [[Orbit]];
G2L["3b"]["Name"] = [[NameLabel]];
G2L["3b"]["Position"] = UDim2.new(0, 0, -0.1564, 0);


-- StarterGui.GuiGlobalFE.OrbitFrame.DistanceSlider
G2L["3c"] = Instance.new("Frame", G2L["2d"]);
G2L["3c"]["BorderSizePixel"] = 0;
G2L["3c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3c"]["Size"] = UDim2.new(0, 277, 0, 14);
G2L["3c"]["Position"] = UDim2.new(0.32629, 0, 0.24645, 0);
G2L["3c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3c"]["Name"] = [[DistanceSlider]];


-- StarterGui.GuiGlobalFE.OrbitFrame.DistanceSlider.DistanceSliding
G2L["3d"] = Instance.new("LocalScript", G2L["3c"]);
G2L["3d"]["Name"] = [[DistanceSliding]];


-- StarterGui.GuiGlobalFE.OrbitFrame.DistanceSlider.UIStroke
G2L["3e"] = Instance.new("UIStroke", G2L["3c"]);
G2L["3e"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.OrbitFrame.DistanceSlider.UICorner
G2L["3f"] = Instance.new("UICorner", G2L["3c"]);
G2L["3f"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.OrbitFrame.DistanceSlider.Handle
G2L["40"] = Instance.new("Frame", G2L["3c"]);
G2L["40"]["BorderSizePixel"] = 0;
G2L["40"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["40"]["Size"] = UDim2.new(0, 12, 0, 26);
G2L["40"]["Position"] = UDim2.new(0, 0, -0.42857, 0);
G2L["40"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["40"]["Name"] = [[Handle]];


-- StarterGui.GuiGlobalFE.OrbitFrame.DistanceSlider.Handle.UIStroke
G2L["41"] = Instance.new("UIStroke", G2L["40"]);
G2L["41"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.OrbitFrame.DistanceSlider.Handle.UICorner
G2L["42"] = Instance.new("UICorner", G2L["40"]);
G2L["42"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.OrbitFrame.DistanceSlider.DistanceLabel
G2L["43"] = Instance.new("TextLabel", G2L["3c"]);
G2L["43"]["TextWrapped"] = true;
G2L["43"]["BorderSizePixel"] = 0;
G2L["43"]["TextSize"] = 14;
G2L["43"]["TextScaled"] = true;
G2L["43"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["43"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["43"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["43"]["BackgroundTransparency"] = 1;
G2L["43"]["Size"] = UDim2.new(0, 200, 0, 19);
G2L["43"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["43"]["Text"] = [[Distance: 0]];
G2L["43"]["Name"] = [[DistanceLabel]];
G2L["43"]["Position"] = UDim2.new(0.13691, 0, -1.80665, 0);


-- StarterGui.GuiGlobalFE.OrbitFrame.SpeedSlider
G2L["44"] = Instance.new("Frame", G2L["2d"]);
G2L["44"]["BorderSizePixel"] = 0;
G2L["44"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["44"]["Size"] = UDim2.new(0, 277, 0, 14);
G2L["44"]["Position"] = UDim2.new(0.32629, 0, 0.52607, 0);
G2L["44"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["44"]["Name"] = [[SpeedSlider]];


-- StarterGui.GuiGlobalFE.OrbitFrame.SpeedSlider.SpeedSliding
G2L["45"] = Instance.new("LocalScript", G2L["44"]);
G2L["45"]["Name"] = [[SpeedSliding]];


-- StarterGui.GuiGlobalFE.OrbitFrame.SpeedSlider.UIStroke
G2L["46"] = Instance.new("UIStroke", G2L["44"]);
G2L["46"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.OrbitFrame.SpeedSlider.UICorner
G2L["47"] = Instance.new("UICorner", G2L["44"]);
G2L["47"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.OrbitFrame.SpeedSlider.Handle
G2L["48"] = Instance.new("Frame", G2L["44"]);
G2L["48"]["BorderSizePixel"] = 0;
G2L["48"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["48"]["Size"] = UDim2.new(0, 12, 0, 26);
G2L["48"]["Position"] = UDim2.new(0, 0, -0.42857, 0);
G2L["48"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["48"]["Name"] = [[Handle]];


-- StarterGui.GuiGlobalFE.OrbitFrame.SpeedSlider.Handle.UIStroke
G2L["49"] = Instance.new("UIStroke", G2L["48"]);
G2L["49"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.OrbitFrame.SpeedSlider.Handle.UICorner
G2L["4a"] = Instance.new("UICorner", G2L["48"]);
G2L["4a"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.OrbitFrame.SpeedSlider.SpeedLabel
G2L["4b"] = Instance.new("TextLabel", G2L["44"]);
G2L["4b"]["TextWrapped"] = true;
G2L["4b"]["BorderSizePixel"] = 0;
G2L["4b"]["TextSize"] = 14;
G2L["4b"]["TextScaled"] = true;
G2L["4b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4b"]["BackgroundTransparency"] = 1;
G2L["4b"]["Size"] = UDim2.new(0, 200, 0, 19);
G2L["4b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4b"]["Text"] = [[Speed: 0]];
G2L["4b"]["Name"] = [[SpeedLabel]];
G2L["4b"]["Position"] = UDim2.new(0.13691, 0, -1.907, 0);


-- StarterGui.GuiGlobalFE.OrbitFrame.HeightSlider
G2L["4c"] = Instance.new("Frame", G2L["2d"]);
G2L["4c"]["BorderSizePixel"] = 0;
G2L["4c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4c"]["Size"] = UDim2.new(0, 277, 0, 14);
G2L["4c"]["Position"] = UDim2.new(0.32629, 0, 0.78673, 0);
G2L["4c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4c"]["Name"] = [[HeightSlider]];


-- StarterGui.GuiGlobalFE.OrbitFrame.HeightSlider.HeightSliding
G2L["4d"] = Instance.new("LocalScript", G2L["4c"]);
G2L["4d"]["Name"] = [[HeightSliding]];


-- StarterGui.GuiGlobalFE.OrbitFrame.HeightSlider.UIStroke
G2L["4e"] = Instance.new("UIStroke", G2L["4c"]);
G2L["4e"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.OrbitFrame.HeightSlider.UICorner
G2L["4f"] = Instance.new("UICorner", G2L["4c"]);
G2L["4f"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.OrbitFrame.HeightSlider.Handle
G2L["50"] = Instance.new("Frame", G2L["4c"]);
G2L["50"]["BorderSizePixel"] = 0;
G2L["50"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["50"]["Size"] = UDim2.new(0, 12, 0, 26);
G2L["50"]["Position"] = UDim2.new(0.47292, 0, -0.42857, 0);
G2L["50"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["50"]["Name"] = [[Handle]];


-- StarterGui.GuiGlobalFE.OrbitFrame.HeightSlider.Handle.UIStroke
G2L["51"] = Instance.new("UIStroke", G2L["50"]);
G2L["51"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.OrbitFrame.HeightSlider.Handle.UICorner
G2L["52"] = Instance.new("UICorner", G2L["50"]);
G2L["52"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.OrbitFrame.HeightSlider.HeightLabel
G2L["53"] = Instance.new("TextLabel", G2L["4c"]);
G2L["53"]["TextWrapped"] = true;
G2L["53"]["BorderSizePixel"] = 0;
G2L["53"]["TextSize"] = 14;
G2L["53"]["TextScaled"] = true;
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["53"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["53"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["53"]["BackgroundTransparency"] = 1;
G2L["53"]["Size"] = UDim2.new(0, 200, 0, 19);
G2L["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["53"]["Text"] = [[Height: 0]];
G2L["53"]["Name"] = [[HeightLabel]];
G2L["53"]["Position"] = UDim2.new(0.13691, 0, -2.221, 0);


-- StarterGui.GuiGlobalFE.OrbitFrame.SelectedPlayer
G2L["54"] = Instance.new("StringValue", G2L["2d"]);
G2L["54"]["Name"] = [[SelectedPlayer]];


-- StarterGui.GuiGlobalFE.OrbitFrame.Speed
G2L["55"] = Instance.new("NumberValue", G2L["2d"]);
G2L["55"]["Name"] = [[Speed]];


-- StarterGui.GuiGlobalFE.OrbitFrame.Height
G2L["56"] = Instance.new("NumberValue", G2L["2d"]);
G2L["56"]["Name"] = [[Height]];


-- StarterGui.GuiGlobalFE.OrbitFrame.Distance
G2L["57"] = Instance.new("NumberValue", G2L["2d"]);
G2L["57"]["Name"] = [[Distance]];


-- StarterGui.GuiGlobalFE.Asmr
G2L["58"] = Instance.new("Frame", G2L["1"]);
G2L["58"]["Visible"] = false;
G2L["58"]["BorderSizePixel"] = 0;
G2L["58"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["58"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["58"]["Size"] = UDim2.new(0, 426, 0, 273);
G2L["58"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["58"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["58"]["Name"] = [[Asmr]];


-- StarterGui.GuiGlobalFE.Asmr.NameLabel
G2L["59"] = Instance.new("TextLabel", G2L["58"]);
G2L["59"]["TextWrapped"] = true;
G2L["59"]["BorderSizePixel"] = 0;
G2L["59"]["TextSize"] = 14;
G2L["59"]["TextScaled"] = true;
G2L["59"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["59"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["59"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["59"]["BackgroundTransparency"] = 1;
G2L["59"]["Size"] = UDim2.new(0, 426, 0, 33);
G2L["59"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["59"]["Text"] = [[ASMR]];
G2L["59"]["Name"] = [[NameLabel]];
G2L["59"]["Position"] = UDim2.new(0, 0, -0.12343, 0);


-- StarterGui.GuiGlobalFE.Asmr.UICorner
G2L["5a"] = Instance.new("UICorner", G2L["58"]);
G2L["5a"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Asmr.UIStroke
G2L["5b"] = Instance.new("UIStroke", G2L["58"]);
G2L["5b"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.Asmr.Close
G2L["5c"] = Instance.new("TextButton", G2L["58"]);
G2L["5c"]["TextWrapped"] = true;
G2L["5c"]["BorderSizePixel"] = 0;
G2L["5c"]["TextSize"] = 14;
G2L["5c"]["TextScaled"] = true;
G2L["5c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["5c"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5c"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["5c"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["5c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5c"]["Text"] = [[X]];
G2L["5c"]["Name"] = [[Close]];
G2L["5c"]["Position"] = UDim2.new(0, 386, 0, 10);


-- StarterGui.GuiGlobalFE.Asmr.Close.CloseASMR
G2L["5d"] = Instance.new("LocalScript", G2L["5c"]);
G2L["5d"]["Name"] = [[CloseASMR]];


-- StarterGui.GuiGlobalFE.Asmr.Close.UIStroke
G2L["5e"] = Instance.new("UIStroke", G2L["5c"]);
G2L["5e"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["5e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.Asmr.Close.UICorner
G2L["5f"] = Instance.new("UICorner", G2L["5c"]);
G2L["5f"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Asmr.Close.UIStroke
G2L["60"] = Instance.new("UIStroke", G2L["5c"]);
G2L["60"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["60"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.Asmr.MusicID
G2L["61"] = Instance.new("TextBox", G2L["58"]);
G2L["61"]["CursorPosition"] = -1;
G2L["61"]["Name"] = [[MusicID]];
G2L["61"]["BorderSizePixel"] = 0;
G2L["61"]["TextWrapped"] = true;
G2L["61"]["TextSize"] = 25;
G2L["61"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["61"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["61"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["61"]["PlaceholderText"] = [[Sound ID]];
G2L["61"]["Size"] = UDim2.new(0, 138, 0, 50);
G2L["61"]["Position"] = UDim2.new(0, 10, 0, 10);
G2L["61"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["61"]["Text"] = [[]];
G2L["61"]["BackgroundTransparency"] = 1;


-- StarterGui.GuiGlobalFE.Asmr.MusicID.UIStroke
G2L["62"] = Instance.new("UIStroke", G2L["61"]);
G2L["62"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["62"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.Asmr.MusicID.UICorner
G2L["63"] = Instance.new("UICorner", G2L["61"]);
G2L["63"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Asmr.Play
G2L["64"] = Instance.new("TextButton", G2L["58"]);
G2L["64"]["TextWrapped"] = true;
G2L["64"]["BorderSizePixel"] = 0;
G2L["64"]["TextSize"] = 26;
G2L["64"]["TextScaled"] = true;
G2L["64"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["64"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["64"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["64"]["Size"] = UDim2.new(0, 69, 0, 19);
G2L["64"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["64"]["Text"] = [[Play]];
G2L["64"]["Name"] = [[Play]];
G2L["64"]["Position"] = UDim2.new(0, 10, 0, 64);


-- StarterGui.GuiGlobalFE.Asmr.Play.UIStroke
G2L["65"] = Instance.new("UIStroke", G2L["64"]);
G2L["65"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["65"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.Asmr.Play.UICorner
G2L["66"] = Instance.new("UICorner", G2L["64"]);
G2L["66"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Asmr.Stop
G2L["67"] = Instance.new("TextButton", G2L["58"]);
G2L["67"]["TextWrapped"] = true;
G2L["67"]["BorderSizePixel"] = 0;
G2L["67"]["TextSize"] = 26;
G2L["67"]["TextScaled"] = true;
G2L["67"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["67"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["67"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["67"]["Size"] = UDim2.new(0, 69, 0, 19);
G2L["67"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["67"]["Text"] = [[Stop]];
G2L["67"]["Name"] = [[Stop]];
G2L["67"]["Position"] = UDim2.new(0, 81, 0, 64);


-- StarterGui.GuiGlobalFE.Asmr.Stop.UIStroke
G2L["68"] = Instance.new("UIStroke", G2L["67"]);
G2L["68"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["68"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.Asmr.Stop.UICorner
G2L["69"] = Instance.new("UICorner", G2L["67"]);
G2L["69"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Asmr.MusicManager
G2L["6a"] = Instance.new("LocalScript", G2L["58"]);
G2L["6a"]["Name"] = [[MusicManager]];


-- StarterGui.GuiGlobalFE.Asmr.FOVSlider
G2L["6b"] = Instance.new("Frame", G2L["58"]);
G2L["6b"]["BorderSizePixel"] = 0;
G2L["6b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6b"]["Size"] = UDim2.new(0, 277, 0, 14);
G2L["6b"]["Position"] = UDim2.new(0.02347, 0, 0.91966, 0);
G2L["6b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6b"]["Name"] = [[FOVSlider]];


-- StarterGui.GuiGlobalFE.Asmr.FOVSlider.FOVSliding
G2L["6c"] = Instance.new("LocalScript", G2L["6b"]);
G2L["6c"]["Name"] = [[FOVSliding]];


-- StarterGui.GuiGlobalFE.Asmr.FOVSlider.UIStroke
G2L["6d"] = Instance.new("UIStroke", G2L["6b"]);
G2L["6d"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.Asmr.FOVSlider.UICorner
G2L["6e"] = Instance.new("UICorner", G2L["6b"]);
G2L["6e"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Asmr.FOVSlider.Handle
G2L["6f"] = Instance.new("Frame", G2L["6b"]);
G2L["6f"]["BorderSizePixel"] = 0;
G2L["6f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6f"]["Size"] = UDim2.new(0, 12, 0, 26);
G2L["6f"]["Position"] = UDim2.new(0.47292, 0, -0.5, 0);
G2L["6f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6f"]["Name"] = [[Handle]];


-- StarterGui.GuiGlobalFE.Asmr.FOVSlider.Handle.UIStroke
G2L["70"] = Instance.new("UIStroke", G2L["6f"]);
G2L["70"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.Asmr.FOVSlider.Handle.UICorner
G2L["71"] = Instance.new("UICorner", G2L["6f"]);
G2L["71"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Asmr.FOVSlider.FOVLabel
G2L["72"] = Instance.new("TextLabel", G2L["6b"]);
G2L["72"]["TextWrapped"] = true;
G2L["72"]["BorderSizePixel"] = 0;
G2L["72"]["TextSize"] = 14;
G2L["72"]["TextScaled"] = true;
G2L["72"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["72"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["72"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["72"]["BackgroundTransparency"] = 1;
G2L["72"]["Size"] = UDim2.new(0, 200, 0, 19);
G2L["72"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["72"]["Text"] = [[FOV: ?]];
G2L["72"]["Name"] = [[FOVLabel]];
G2L["72"]["Position"] = UDim2.new(0.13691, 0, -1.87808, 0);


-- StarterGui.GuiGlobalFE.Asmr.MuteGame
G2L["73"] = Instance.new("TextButton", G2L["58"]);
G2L["73"]["TextWrapped"] = true;
G2L["73"]["BorderSizePixel"] = 0;
G2L["73"]["TextSize"] = 26;
G2L["73"]["TextScaled"] = true;
G2L["73"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["73"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["73"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["73"]["Size"] = UDim2.new(0, 54, 0, 30);
G2L["73"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["73"]["Text"] = [[Mute Game]];
G2L["73"]["Name"] = [[MuteGame]];
G2L["73"]["Position"] = UDim2.new(0, 10, 0, 89);


-- StarterGui.GuiGlobalFE.Asmr.MuteGame.UIStroke
G2L["74"] = Instance.new("UIStroke", G2L["73"]);
G2L["74"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["74"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.Asmr.MuteGame.UICorner
G2L["75"] = Instance.new("UICorner", G2L["73"]);
G2L["75"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Asmr.MuteGame.MuteGame
G2L["76"] = Instance.new("LocalScript", G2L["73"]);
G2L["76"]["Name"] = [[MuteGame]];


-- StarterGui.GuiGlobalFE.Asmr.DraggingForSliders
G2L["77"] = Instance.new("LocalScript", G2L["58"]);
G2L["77"]["Name"] = [[DraggingForSliders]];


-- StarterGui.GuiGlobalFE.Asmr.UIDragDetector
G2L["78"] = Instance.new("UIDragDetector", G2L["58"]);
-- [ERROR] cannot convert ReferenceUIInstance, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"


-- StarterGui.GuiGlobalFE.Asmr.GravitySlider
G2L["79"] = Instance.new("Frame", G2L["58"]);
G2L["79"]["BorderSizePixel"] = 0;
G2L["79"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["79"]["Size"] = UDim2.new(0, 277, 0, 14);
G2L["79"]["Position"] = UDim2.new(0.02347, 0, 0.74453, 0);
G2L["79"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["79"]["Name"] = [[GravitySlider]];


-- StarterGui.GuiGlobalFE.Asmr.GravitySlider.GravitySliding
G2L["7a"] = Instance.new("LocalScript", G2L["79"]);
G2L["7a"]["Name"] = [[GravitySliding]];


-- StarterGui.GuiGlobalFE.Asmr.GravitySlider.UIStroke
G2L["7b"] = Instance.new("UIStroke", G2L["79"]);
G2L["7b"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.Asmr.GravitySlider.UICorner
G2L["7c"] = Instance.new("UICorner", G2L["79"]);
G2L["7c"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Asmr.GravitySlider.Handle
G2L["7d"] = Instance.new("Frame", G2L["79"]);
G2L["7d"]["BorderSizePixel"] = 0;
G2L["7d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7d"]["Size"] = UDim2.new(0, 12, 0, 26);
G2L["7d"]["Position"] = UDim2.new(0.47292, 0, -0.5, 0);
G2L["7d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7d"]["Name"] = [[Handle]];


-- StarterGui.GuiGlobalFE.Asmr.GravitySlider.Handle.UIStroke
G2L["7e"] = Instance.new("UIStroke", G2L["7d"]);
G2L["7e"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.Asmr.GravitySlider.Handle.UICorner
G2L["7f"] = Instance.new("UICorner", G2L["7d"]);
G2L["7f"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Asmr.GravitySlider.GravityLabel
G2L["80"] = Instance.new("TextLabel", G2L["79"]);
G2L["80"]["TextWrapped"] = true;
G2L["80"]["BorderSizePixel"] = 0;
G2L["80"]["TextSize"] = 14;
G2L["80"]["TextScaled"] = true;
G2L["80"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["80"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["80"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["80"]["BackgroundTransparency"] = 1;
G2L["80"]["Size"] = UDim2.new(0, 200, 0, 19);
G2L["80"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["80"]["Text"] = [[Gravity: ?]];
G2L["80"]["Name"] = [[GravityLabel]];
G2L["80"]["Position"] = UDim2.new(0.13691, 0, -1.87808, 0);


-- StarterGui.GuiGlobalFE.Asmr.TimeOfDaySlider
G2L["81"] = Instance.new("Frame", G2L["58"]);
G2L["81"]["BorderSizePixel"] = 0;
G2L["81"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["81"]["Size"] = UDim2.new(0, 277, 0, 14);
G2L["81"]["Position"] = UDim2.new(0.02347, 0, 0.57237, 0);
G2L["81"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["81"]["Name"] = [[TimeOfDaySlider]];


-- StarterGui.GuiGlobalFE.Asmr.TimeOfDaySlider.TODSliding
G2L["82"] = Instance.new("LocalScript", G2L["81"]);
G2L["82"]["Name"] = [[TODSliding]];


-- StarterGui.GuiGlobalFE.Asmr.TimeOfDaySlider.UIStroke
G2L["83"] = Instance.new("UIStroke", G2L["81"]);
G2L["83"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.Asmr.TimeOfDaySlider.UICorner
G2L["84"] = Instance.new("UICorner", G2L["81"]);
G2L["84"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Asmr.TimeOfDaySlider.Handle
G2L["85"] = Instance.new("Frame", G2L["81"]);
G2L["85"]["BorderSizePixel"] = 0;
G2L["85"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["85"]["Size"] = UDim2.new(0, 12, 0, 26);
G2L["85"]["Position"] = UDim2.new(0.47292, 0, -0.5, 0);
G2L["85"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["85"]["Name"] = [[Handle]];


-- StarterGui.GuiGlobalFE.Asmr.TimeOfDaySlider.Handle.UIStroke
G2L["86"] = Instance.new("UIStroke", G2L["85"]);
G2L["86"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.Asmr.TimeOfDaySlider.Handle.UICorner
G2L["87"] = Instance.new("UICorner", G2L["85"]);
G2L["87"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Asmr.TimeOfDaySlider.TODLabel
G2L["88"] = Instance.new("TextLabel", G2L["81"]);
G2L["88"]["TextWrapped"] = true;
G2L["88"]["BorderSizePixel"] = 0;
G2L["88"]["TextSize"] = 14;
G2L["88"]["TextScaled"] = true;
G2L["88"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["88"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["88"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["88"]["BackgroundTransparency"] = 1;
G2L["88"]["Size"] = UDim2.new(0, 200, 0, 19);
G2L["88"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["88"]["Text"] = [[Time Of Day: ?]];
G2L["88"]["Name"] = [[TODLabel]];
G2L["88"]["Position"] = UDim2.new(0.13691, 0, -1.87808, 0);


-- StarterGui.GuiGlobalFE.Asmr.Shader
G2L["89"] = Instance.new("TextButton", G2L["58"]);
G2L["89"]["TextWrapped"] = true;
G2L["89"]["BorderSizePixel"] = 0;
G2L["89"]["TextSize"] = 22;
G2L["89"]["TextScaled"] = true;
G2L["89"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["89"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["89"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["89"]["Size"] = UDim2.new(0, 64, 0, 30);
G2L["89"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["89"]["Text"] = [[Shader]];
G2L["89"]["Name"] = [[Shader]];
G2L["89"]["Position"] = UDim2.new(0, 176, 0, 10);


-- StarterGui.GuiGlobalFE.Asmr.Shader.UIStroke
G2L["8a"] = Instance.new("UIStroke", G2L["89"]);
G2L["8a"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["8a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.Asmr.Shader.UICorner
G2L["8b"] = Instance.new("UICorner", G2L["89"]);
G2L["8b"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Asmr.Shader.ShaderApply
G2L["8c"] = Instance.new("LocalScript", G2L["89"]);
G2L["8c"]["Name"] = [[ShaderApply]];


-- Require G2L wrapper
local G2L_REQUIRE = require;
local G2L_MODULES = {};
local function require(Module:ModuleScript)
    local ModuleState = G2L_MODULES[Module];
    if ModuleState then
        if not ModuleState.Required then
            ModuleState.Required = true;
            ModuleState.Value = ModuleState.Closure();
        end
        return ModuleState.Value;
    end;
    return G2L_REQUIRE(Module);
end

G2L_MODULES[G2L["3"]] = {
Closure = function()
    local script = G2L["3"];local ScriptManager = {}
ScriptManager.__index = ScriptManager

function ScriptManager.new(targetGui)
	local self = setmetatable({}, ScriptManager)
	self.Stopped = false
	self.Connections = {}
	self.TargetGui = targetGui

	return self
end

function ScriptManager:SafeConnect(signal, fn)
	if typeof(signal) ~= "RBXScriptSignal" then return nil end

	local conn
	conn = signal:Connect(function(...)
		-- Double check: Is the GUI closed or is the manager stopped?
		if self.Stopped or (self.TargetGui and not self.TargetGui.Enabled) then
			self:CloseAll()
			return
		end
		fn(...)
	end)

	table.insert(self.Connections, conn)
	return conn
end

function ScriptManager:SafeLoop(fn)
	task.spawn(function()
		while not self.Stopped do
			-- Heartbeat check: If GUI is hidden, KILL the loop immediately
			if self.TargetGui and self.TargetGui.Enabled == false then
				self:CloseAll()
				break
			end

			local success, err = pcall(fn)
			if not success then
				warn("[ScriptManager] Loop Error: " .. tostring(err))
				break
			end
			task.wait()
		end
	end)
end

function ScriptManager:CloseAll()
	if self.Stopped then return end -- Prevent double-firing
	self.Stopped = true

	for i = #self.Connections, 1, -1 do
		local conn = self.Connections[i]
		if conn and typeof(conn) == "RBXScriptConnection" then
			conn:Disconnect()
		end
		self.Connections[i] = nil
	end
end

function ScriptManager:Stop()
	self:CloseAll()
end

return ScriptManager
end;
};
-- StarterGui.GuiGlobalFE.Sync
local function C_2()
local script = G2L["2"];
	local Gui = script.Parent
	local RunService = game:GetService("RunService")
	
	local Frames = {
		Gui:WaitForChild("Main"),
		Gui:WaitForChild("OrbitFrame"),
		Gui:WaitForChild("Asmr")
	}
	
	local draggingFrame = nil
	local offsets = {}
	
	local function updateOffsets(activeFrame)
		offsets = {}
		for _, frame in ipairs(Frames) do
			if frame ~= activeFrame then
				offsets[frame] = {
					XScale = frame.Position.X.Scale - activeFrame.Position.X.Scale,
					XOffset = frame.Position.X.Offset - activeFrame.Position.X.Offset,
					YScale = frame.Position.Y.Scale - activeFrame.Position.Y.Scale,
					YOffset = frame.Position.Y.Offset - activeFrame.Position.Y.Offset
				}
			end
		end
	end
	
	for _, frame in ipairs(Frames) do
		frame.InputBegan:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				draggingFrame = frame
				updateOffsets(frame)
			end
		end)
	
		frame.InputEnded:Connect(function(input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
				if draggingFrame == frame then
					draggingFrame = nil
				end
			end
		end)
	end
	
	RunService.RenderStepped:Connect(function()
		if draggingFrame then
			for frame, offset in pairs(offsets) do
				frame.Position = UDim2.new(
					draggingFrame.Position.X.Scale + offset.XScale,
					draggingFrame.Position.X.Offset + offset.XOffset,
					draggingFrame.Position.Y.Scale + offset.YScale,
					draggingFrame.Position.Y.Offset + offset.YOffset
				)
			end
		end
	end)
end;
task.spawn(C_2);
-- StarterGui.GuiGlobalFE.Main.DraggingForSliders
local function C_5()
local script = G2L["5"];
	local frame = script.Parent
	local drag = frame:WaitForChild("UIDragDetector")
	
	for _,v in pairs(frame:GetChildren()) do
		if v:IsA("Frame") then
			v.MouseEnter:Connect(function()
				drag.Enabled = false
			end)
	
			v.MouseLeave:Connect(function()
				drag.Enabled = true
			end)
		end
	end
end;
task.spawn(C_5);
-- StarterGui.GuiGlobalFE.Main.TitleChanger
local function C_6()
local script = G2L["6"];
	
	local Title = script.Parent:WaitForChild("NameLabel")
	local emoji = {
		["01 01"] = "🎆",      -- New Year
		["03 17"] = "☘️",     -- St. Patrick's Day
		["04 30"] = "🔥",      -- Walpurgis Night (Valborg)
		["06 24"] = "🌸",      -- Midsommar (June 24)
		["10 31"] = "🎃",      -- Halloween
		["12 13"] = "🕯️",     -- Lucia Day
		["12 25"] = "🎄"       -- Christmas
	}
	
	local today = os.date("%m %d")
	local todayEmoji = emoji[today]
	
	if todayEmoji then
		Title.Text = ("%s %s %s"):format(todayEmoji, Title.Text, todayEmoji)
	end
end;
task.spawn(C_6);
-- StarterGui.GuiGlobalFE.Main.Orbit-Frame.OpenOrbit
local function C_b()
local script = G2L["b"];
	local player = game:GetService("Players").LocalPlayer
	local gui = player:WaitForChild("PlayerGui"):WaitForChild("GuiGlobalFE")
	local Main = gui:WaitForChild("Main")
	local Frame = gui:WaitForChild("OrbitFrame")
	local DropDown = Frame:WaitForChild("DropDown")
	local Template = DropDown:WaitForChild("NameTemp")
	local NameValueFrame = Frame:WaitForChild("SelectedPlayer")
	local Button = script.Parent
	Template.Visible = false
	
	local function refreshDropdown()
		-- Clear old buttons except the template
		for _, child in pairs(DropDown:GetChildren()) do
			if child:IsA("TextButton") and child ~= Template then
				child:Destroy()
			end
		end
	
		-- Clone template for each player
		for _, p in pairs(game:GetService("Players"):GetPlayers()) do
			if p ~= player then
				local btn = Template:Clone()
				btn.Visible = true
				btn.Text = p.DisplayName
				btn.Parent = DropDown
			
				if NameValueFrame.Value == p.Name then
					btn.Font = Enum.Font.SourceSansBold
				else
					btn.Font = Enum.Font.SourceSans
				end
	
				btn.MouseButton1Click:Connect(function()
					NameValueFrame.Value = p.Name
					refreshDropdown()
				end)
			end
		end
	end
	
	-- Only refresh when opening
	Button.MouseButton1Click:Connect(function()
		if Main.Visible then
			Frame.Visible = true
			Main.Visible = false
		else
			Frame.Visible = false
			Main.Visible = true
		end
		
		if Frame.Visible then
			refreshDropdown()
		end
	end)
	
	if Frame.Visible then
		refreshDropdown()
	end
end;
task.spawn(C_b);
-- StarterGui.GuiGlobalFE.Main.esp.ToggleESP
local function C_f()
local script = G2L["f"];
	local Players = game:GetService("Players")
	local Player = Players.LocalPlayer
	local Gui = Player:WaitForChild("PlayerGui"):WaitForChild("GuiGlobalFE")
	local MyManager = require(Gui:WaitForChild("ScriptManager")).new(Gui)
	
	local ESPColor = Color3.fromRGB(255,0,0)
	local espEnabled = false
	local highlights = {}
	
	local function updateESP(p)
		if highlights[p] then highlights[p]:Destroy() end
		if espEnabled and p ~= Player and p.Character then
			local h = Instance.new("Highlight")
			h.Adornee = p.Character
			h.FillColor = ESPColor
			h.OutlineColor = ESPColor
			h.Parent = Gui
			highlights[p] = h
		end
	end
	
	MyManager:SafeConnect(script.Parent.MouseButton1Click, function()
		espEnabled = not espEnabled
		if espEnabled then 
			for _,p in ipairs(Players:GetPlayers()) do updateESP(p) end 
		else 
			for _,h in pairs(highlights) do h:Destroy() end
			highlights = {}
		end
	end)
	
	MyManager:SafeConnect(Players.PlayerAdded, function(p)
		MyManager:SafeConnect(p.CharacterAdded, function() updateESP(p) end)
	end)
end;
task.spawn(C_f);
-- StarterGui.GuiGlobalFE.Main.fly.ToggleFly
local function C_12()
local script = G2L["12"];
	local Player = game.Players.LocalPlayer
	local Gui = Player:WaitForChild("PlayerGui"):WaitForChild("GuiGlobalFE")
	local MyManager = require(Gui:WaitForChild("ScriptManager")).new(Gui)
	local UserInputService = game:GetService("UserInputService")
	local Camera = workspace.CurrentCamera
	
	local Character = Player.Character or Player.CharacterAdded:Wait()
	local HRP = Character:WaitForChild("HumanoidRootPart")
	local Humanoid = Character:WaitForChild("Humanoid")
	
	local Speed = 50
	local flying = false
	local FlyForce = nil
	local keys = {W=false, A=false, S=false, D=false, Space=false, Shift=false}
	
	-- Function to safely reset the player to a non-flying state
	local function stopFlying()
		flying = false
		if FlyForce then 
			FlyForce:Destroy() 
			FlyForce = nil 
		end
		if Humanoid then 
			Humanoid.PlatformStand = false 
		end
	end
	
	-- Toggle Fly logic
	MyManager:SafeConnect(script.Parent.MouseButton1Click, function()
		flying = not flying
		if flying then
			FlyForce = Instance.new("BodyVelocity")
			FlyForce.MaxForce = Vector3.new(1e5, 1e5, 1e5)
			FlyForce.Parent = HRP
			Humanoid.PlatformStand = true
		else
			stopFlying()
		end
	end)
	
	-- Input Handling
	MyManager:SafeConnect(UserInputService.InputBegan, function(input, proc)
		if proc then return end
		local k = input.KeyCode
		if k == Enum.KeyCode.W then keys.W=true end
		if k == Enum.KeyCode.A then keys.A=true end
		if k == Enum.KeyCode.S then keys.S=true end
		if k == Enum.KeyCode.D then keys.D=true end
		if k == Enum.KeyCode.Space then keys.Space=true end
		if k == Enum.KeyCode.LeftShift then keys.Shift=true end
	end)
	
	MyManager:SafeConnect(UserInputService.InputEnded, function(input)
		local k = input.KeyCode
		if k == Enum.KeyCode.W then keys.W=false end
		if k == Enum.KeyCode.A then keys.A=false end
		if k == Enum.KeyCode.S then keys.S=false end
		if k == Enum.KeyCode.D then keys.D=false end
		if k == Enum.KeyCode.Space then keys.Space=false end
		if k == Enum.KeyCode.LeftShift then keys.Shift=false end
	end)
	
	-- The Flying Loop
	MyManager:SafeLoop(function()
		-- If the GUI is closed, the manager sets MyManager.Stopped to true.
		-- We check that here to clean up before the loop fully dies.
		if MyManager.Stopped then
			stopFlying()
			return
		end
	
		if not flying or not FlyForce then return end
	
		local moveDir = Vector3.zero
		local look, right = Camera.CFrame.LookVector, Camera.CFrame.RightVector
	
		if keys.W then moveDir += look end
		if keys.S then moveDir -= look end
		if keys.A then moveDir -= right end
		if keys.D then moveDir += right end
		if keys.Space then moveDir += Vector3.new(0, 1, 0) end
		if keys.Shift then moveDir -= Vector3.new(0, 1, 0) end
	
		FlyForce.Velocity = moveDir.Magnitude > 0 and moveDir.Unit * Speed or Vector3.zero
	end)
end;
task.spawn(C_12);
-- StarterGui.GuiGlobalFE.Main.RandoNames.Rando
local function C_15()
local script = G2L["15"];
	local Players = game:GetService("Players")
	
	local function randomName()
		local letters = "abcdefghijklmnopqrstuvwxyz1234567890!#¤%&/()=?´åäö.,-'´^*_:;<>|\@£${[]}"
		local name = ""
		for i = 1,8 do
			local r = math.random(1,#letters)
			name = name .. letters:sub(r,r)
		end
		return name
	end
	
	script.Parent.MouseButton1Click:Connect(function()
		for _,plr in pairs(Players:GetPlayers()) do
			if plr.Character and plr.Character:FindFirstChild("Humanoid") then
				plr.Character.Humanoid.DisplayName = randomName()
			end
		end
	end)
end;
task.spawn(C_15);
-- StarterGui.GuiGlobalFE.Main.WalkspeedSlider.WalkspeedSliding
local function C_18()
local script = G2L["18"];
	local Player = game.Players.LocalPlayer
	local Gui = Player:WaitForChild("PlayerGui"):WaitForChild("GuiGlobalFE")
	local UserInputService = game:GetService("UserInputService")
	local GuiService = game:GetService("GuiService")
	local MyManager = require(Gui:WaitForChild("ScriptManager")).new(Gui)
	
	local slider = script.Parent
	local handle = slider:WaitForChild("Handle")
	local WalkspeedLabel = slider:WaitForChild("WalkspeedLabel")
	
	local minValue, maxValue, step = 1, 100, 1
	local dragging = false
	
	MyManager:SafeConnect(handle.InputBegan, function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = true end
	end)
	
	MyManager:SafeConnect(UserInputService.InputEnded, function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
	end)
	
	MyManager:SafeLoop(function()
		if not dragging then return end
	
		-- FIX: Account for the TopBar Inset
		local mousePos = UserInputService:GetMouseLocation()
		local inset = GuiService:GetGuiInset()
		local actualMouseY = mousePos.Y - inset.Y 
	
		local sliderY = slider.AbsolutePosition.Y
		local sliderH = slider.AbsoluteSize.Y - handle.AbsoluteSize.Y
	
		if sliderH <= 0 then return end
	
		local clampedY = math.clamp(actualMouseY - sliderY - (handle.AbsoluteSize.Y/2), 0, sliderH)
		handle.Position = UDim2.new(handle.Position.X.Scale, handle.Position.X.Offset, 0, clampedY)
	
		local val = math.round((1 - (clampedY/sliderH)) * (maxValue - minValue) + minValue)
		WalkspeedLabel.Text = "WalkSpeed: " .. val
	
		if Player.Character and Player.Character:FindFirstChild("Humanoid") then
			Player.Character.Humanoid.WalkSpeed = val
		end
	end)
end;
task.spawn(C_18);
-- StarterGui.GuiGlobalFE.Main.Close.CloseGlobal
local function C_20()
local script = G2L["20"];
	local Player = game.Players.LocalPlayer
	local Camera = workspace.CurrentCamera
	local Lighting = game:GetService("Lighting")
	local SoundService = game:GetService("SoundService")
	local Gui = script.Parent.Parent.Parent
	local MyManager = require(Gui:WaitForChild("ScriptManager")).new(Gui)
	local CloseButton = script.Parent
	
	local function fullReset()
		-- 1. KILL the Manager
		MyManager:Stop()
	
		-- 2. HARD RESET Environment
		workspace.Gravity = 196.2
		Lighting.ClockTime = 14
		Camera.FieldOfView = 70
	
		-- 3. DESTROY Shaders
		local effectNames = {"ColorCorrectionEffect", "BloomEffect", "SunRaysEffect", "BlurEffect", "DepthOfFieldEffect"}
		for _, child in ipairs(Lighting:GetChildren()) do
			for _, effectName in ipairs(effectNames) do
				if child:IsA(effectName) then child:Destroy() end
			end
		end
	
		-- 4. CLEAN Character
		local character = Player.Character
		if character then
			local humanoid = character:FindFirstChildOfClass("Humanoid")
			local hrp = character:FindFirstChild("HumanoidRootPart")
			if humanoid then
				humanoid.WalkSpeed = 16
				if humanoid.UseJumpPower then humanoid.JumpPower = 50 else humanoid.JumpHeight = 7.2 end
				humanoid.PlatformStand = false
			end
			if hrp then
				for _, obj in ipairs(hrp:GetChildren()) do
					if obj:IsA("BodyVelocity") or obj:IsA("BodyGyro") or obj:IsA("BodyPosition") or obj:IsA("LinearVelocity") or obj:IsA("AngularVelocity") then
						obj:Destroy()
					end
				end
			end
		end
	
		-- 5. STOP MENU MUSIC
		for _, obj in ipairs(Gui:GetDescendants()) do
			if obj:IsA("Sound") then obj:Destroy() end
		end
	
		-- 6. RESTORE GAME SOUNDS (Unmute)
		-- Restore the main volume to 1 (Max)
		SoundService.AmbientReverb = Enum.ReverbType.NoReverb
	
		-- If you used a script that individually muted every sound in the game:
		for _, sound in ipairs(game:GetDescendants()) do
			if sound:IsA("Sound") and not sound:IsDescendantOf(Gui) then
				-- We only unmute sounds that AREN'T part of your music menu
				if sound.Volume == 0 then
					sound.Volume = 0.5 -- Sets to a standard audible level
				end
			end
		end
	
		-- 7. SHUT DOWN UI
		Gui.Enabled = false
	end
	
	CloseButton.MouseButton1Click:Connect(fullReset)
end;
task.spawn(C_20);
-- StarterGui.GuiGlobalFE.Main.JumpHeightSlider.JumpHeightSliding
local function C_23()
local script = G2L["23"];
	local Player = game.Players.LocalPlayer
	local Gui = Player:WaitForChild("PlayerGui"):WaitForChild("GuiGlobalFE")
	local UserInputService = game:GetService("UserInputService")
	local GuiService = game:GetService("GuiService")
	local MyManager = require(Gui:WaitForChild("ScriptManager")).new(Gui)
	
	local slider = script.Parent
	local handle = slider:WaitForChild("Handle")
	local HeightLabel = slider:WaitForChild("HeightLabel")
	
	local minValue, maxValue, step = 1, 100, 1
	local dragging = false
	
	MyManager:SafeConnect(handle.InputBegan, function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = true end
	end)
	
	MyManager:SafeConnect(UserInputService.InputEnded, function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
	end)
	
	MyManager:SafeLoop(function()
		if not dragging then return end
	
		-- FIX: Account for the TopBar Inset
		local mousePos = UserInputService:GetMouseLocation()
		local inset = GuiService:GetGuiInset()
		local actualMouseY = mousePos.Y - inset.Y
	
		local sliderY = slider.AbsolutePosition.Y
		local sliderH = slider.AbsoluteSize.Y - handle.AbsoluteSize.Y
	
		if sliderH <= 0 then return end
	
		local clampedY = math.clamp(actualMouseY - sliderY - (handle.AbsoluteSize.Y/2), 0, sliderH)
		handle.Position = UDim2.new(handle.Position.X.Scale, handle.Position.X.Offset, 0, clampedY)
	
		local val = math.round((1 - (clampedY/sliderH)) * (maxValue - minValue) + minValue)
		HeightLabel.Text = "JumpPower: " .. val
	
		local char = Player.Character
		if char and char:FindFirstChildOfClass("Humanoid") then
			local hum = char:FindFirstChildOfClass("Humanoid")
			if hum.UseJumpPower then hum.JumpPower = val else hum.JumpHeight = val end
		end
	end)
end;
task.spawn(C_23);
-- StarterGui.GuiGlobalFE.Main.ASMRFrame.OpenAsmr
local function C_2b()
local script = G2L["2b"];
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent:WaitForChild("Main").Visible = false
		script.Parent.Parent.Parent:WaitForChild("Asmr").Visible = true
	end)
end;
task.spawn(C_2b);
-- StarterGui.GuiGlobalFE.OrbitFrame.Toggle.ToggleOrbit
local function C_31()
local script = G2L["31"];
	local RunService = game:GetService("RunService")
	local Players = game:GetService("Players")
	local LocalPlayer = Players.LocalPlayer
	local Gui = script.Parent.Parent
	local Gui1 = LocalPlayer.PlayerGui:WaitForChild("GuiGlobalFE")
	local MyManager = require(Gui1:WaitForChild("ScriptManager")).new(Gui1)
	
	local targetUsername = Gui:WaitForChild("SelectedPlayer")
	local Enabled = false
	local orbitAngle = 0
	
	MyManager:SafeConnect(script.Parent.MouseButton1Click, function()
		Enabled = not Enabled
	end)
	
	MyManager:SafeLoop(function()
		if not Enabled or targetUsername.Value == "" then return end
		local target = Players:FindFirstChild(targetUsername.Value)
		if target and target.Character and LocalPlayer.Character then
			local tRoot = target.Character:FindFirstChild("HumanoidRootPart")
			local mRoot = LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
			if tRoot and mRoot then
				orbitAngle = orbitAngle + (Gui.Speed.Value/10) * RunService.Heartbeat:Wait()
				local offset = Vector3.new(math.cos(orbitAngle)*Gui.Distance.Value, Gui.Height.Value, math.sin(orbitAngle)*Gui.Distance.Value)
				mRoot.CFrame = CFrame.new(tRoot.Position + offset, tRoot.Position)
			end
		end
	end)
end;
task.spawn(C_31);
-- StarterGui.GuiGlobalFE.OrbitFrame.Close.CloseOrbit
local function C_39()
local script = G2L["39"];
	local player = game:GetService("Players").LocalPlayer
	local gui = player:WaitForChild("PlayerGui"):WaitForChild("GuiGlobalFE")
	local Main = gui:WaitForChild("Main")
	local Orbit = gui:WaitForChild("OrbitFrame")
	script.Parent.MouseButton1Click:Connect(function()
		if Orbit.Visible then
			Orbit.Visible = false
			Main.Visible = true
		end
	end)
end;
task.spawn(C_39);
-- StarterGui.GuiGlobalFE.OrbitFrame.DistanceSlider.DistanceSliding
local function C_3d()
local script = G2L["3d"];
	local Player = game.Players.LocalPlayer
	local Gui = Player:WaitForChild("PlayerGui"):WaitForChild("GuiGlobalFE")
	local UserInputService = game:GetService("UserInputService")
	local MyManager = require(Gui:WaitForChild("ScriptManager")).new(Gui)
	
	local slider = script.Parent
	local handle = slider:WaitForChild("Handle")
	local DistanceLabel = slider:WaitForChild("DistanceLabel")
	local valueObj = slider.Parent:FindFirstChild("Distance")
	
	local minValue, maxValue, step = 0, 100, 1
	local dragging = false
	
	MyManager:SafeConnect(handle.InputBegan, function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = true end
	end)
	
	MyManager:SafeConnect(UserInputService.InputEnded, function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
	end)
	
	MyManager:SafeLoop(function()
		if not dragging then return end
		local mouseX = UserInputService:GetMouseLocation().X
		local sliderX, sliderW = slider.AbsolutePosition.X, slider.AbsoluteSize.X - handle.AbsoluteSize.X
		if sliderW <= 0 then return end
	
		local clampedX = math.clamp(mouseX - sliderX - (handle.AbsoluteSize.X/2), 0, sliderW)
		handle.Position = UDim2.new(0, clampedX, handle.Position.Y.Scale, handle.Position.Y.Offset)
	
		local val = math.round((clampedX/sliderW) * (maxValue - minValue) + minValue)
		DistanceLabel.Text = "Distance: " .. val
		if valueObj then valueObj.Value = val end
	end)
end;
task.spawn(C_3d);
-- StarterGui.GuiGlobalFE.OrbitFrame.SpeedSlider.SpeedSliding
local function C_45()
local script = G2L["45"];
	local Player = game.Players.LocalPlayer
	local Gui = Player:WaitForChild("PlayerGui"):WaitForChild("GuiGlobalFE")
	local UserInputService = game:GetService("UserInputService")
	local MyManager = require(Gui:WaitForChild("ScriptManager")).new(Gui)
	
	local slider = script.Parent
	local handle = slider:WaitForChild("Handle")
	local SpeedLabel = slider:WaitForChild("SpeedLabel") -- Fixed label name
	local valueObj = slider.Parent:FindFirstChild("Speed") -- Fixed value object reference
	
	local minValue, maxValue, step = 0, 100, 1
	local dragging = false
	
	-- Orbit Speed is horizontal (X), so we cache Y
	local originalYScale = handle.Position.Y.Scale
	local originalYOffset = handle.Position.Y.Offset
	
	-- InputBegan: Start dragging
	MyManager:SafeConnect(handle.InputBegan, function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then 
			dragging = true 
		end
	end)
	
	-- Global InputEnded: Prevents stuck handle
	MyManager:SafeConnect(UserInputService.InputEnded, function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then 
			dragging = false 
		end
	end)
	
	-- Managed Loop for Orbit Speed (Horizontal)
	MyManager:SafeLoop(function()
		if not dragging then return end
	
		local mouseX = UserInputService:GetMouseLocation().X
		local sliderX = slider.AbsolutePosition.X
		local maxDelta = slider.AbsoluteSize.X - handle.AbsoluteSize.X
	
		if maxDelta <= 0 then return end
	
		-- Calculate relative horizontal position and clamp it
		local relativeX = mouseX - sliderX - (handle.AbsoluteSize.X / 2)
		local clampedX = math.clamp(relativeX, 0, maxDelta)
	
		-- Apply horizontal movement
		handle.Position = UDim2.new(0, clampedX, originalYScale, originalYOffset)
	
		-- Math: (Current / Max) * Range + Min
		local percentage = clampedX / maxDelta
		local finalValue = math.round(((percentage * (maxValue - minValue)) + minValue) / step) * step
	
		-- Update Label and Value Object
		SpeedLabel.Text = "Speed: " .. finalValue
		if valueObj then 
			valueObj.Value = finalValue 
		end
	end)
end;
task.spawn(C_45);
-- StarterGui.GuiGlobalFE.OrbitFrame.HeightSlider.HeightSliding
local function C_4d()
local script = G2L["4d"];
	local Player = game.Players.LocalPlayer
	local Gui = Player:WaitForChild("PlayerGui"):WaitForChild("GuiGlobalFE")
	local UserInputService = game:GetService("UserInputService")
	local MyManager = require(Gui:WaitForChild("ScriptManager")).new(Gui)
	
	local slider = script.Parent
	local handle = slider:WaitForChild("Handle")
	local HeightLabel = slider:WaitForChild("HeightLabel")
	local valueObj = slider.Parent:FindFirstChild("Height")
	
	local minValue, maxValue, step = -100, 100, 1
	local dragging = false
	
	MyManager:SafeConnect(handle.InputBegan, function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = true end
	end)
	
	MyManager:SafeConnect(UserInputService.InputEnded, function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
	end)
	
	MyManager:SafeLoop(function()
		if not dragging then return end
		local mouseX = UserInputService:GetMouseLocation().X
		local sliderX, sliderW = slider.AbsolutePosition.X, slider.AbsoluteSize.X - handle.AbsoluteSize.X
		if sliderW <= 0 then return end
	
		local clampedX = math.clamp(mouseX - sliderX - (handle.AbsoluteSize.X/2), 0, sliderW)
		handle.Position = UDim2.new(0, clampedX, handle.Position.Y.Scale, handle.Position.Y.Offset)
	
		local val = math.round((clampedX/sliderW) * (maxValue - minValue) + minValue)
		HeightLabel.Text = "Height: " .. val
		if valueObj then valueObj.Value = val end
	end)
end;
task.spawn(C_4d);
-- StarterGui.GuiGlobalFE.Asmr.Close.CloseASMR
local function C_5d()
local script = G2L["5d"];
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent:WaitForChild("Asmr").Visible = false
		script.Parent.Parent.Parent:WaitForChild("Main").Visible = true
	end)
end;
task.spawn(C_5d);
-- StarterGui.GuiGlobalFE.Asmr.MusicManager
local function C_6a()
local script = G2L["6a"];
	local Player = game.Players.LocalPlayer
	local Gui = Player:WaitForChild("PlayerGui"):WaitForChild("GuiGlobalFE")
	local MyManager = require(Gui:WaitForChild("ScriptManager")).new(Gui)
	
	local MarketplaceService = game:GetService("MarketplaceService")
	local StarterGui = game:GetService("StarterGui")
	
	local Play = script.Parent:WaitForChild("Play")
	local Stop = script.Parent:WaitForChild("Stop")
	local MusicBox = script.Parent:WaitForChild("MusicID")
	
	local Sound = Instance.new("Sound")
	Sound.Name = "MenuMusic"
	Sound.Parent = script.Parent
	
	local function sendNotification(title, text)
		StarterGui:SetCore("SendNotification", {
			Title = title;
			Text = text;
			Duration = 3;
		})
	end
	
	MyManager:SafeConnect(Play.MouseButton1Click, function()
		local id = string.match(MusicBox.Text, "%d+") 
	
		if id then
			Sound.SoundId = "rbxassetid://" .. id
			Sound:Play()
	
			task.spawn(function()
				local success, info = pcall(function()
					return MarketplaceService:GetProductInfoAsync(tonumber(id))
				end)
	
				if success and info then
					sendNotification("Now Playing", info.Name)
				else
					sendNotification("Now Playing", "Unknown Track (ID: " .. id .. ")")
				end
			end)
		else
			sendNotification("Error", "Please enter a valid Numeric ID\nNow Playing Raining Tacos")
			Sound.SoundId = "rbxassetid://142376088"
			Sound:Play()
		end
	end)
	
	MyManager:SafeConnect(Stop.MouseButton1Click, function()
		Sound:Stop()
	end)
	
	MyManager:SafeLoop(function()
		if MyManager.Stopped then
			Sound:Stop()
		end
	end)
end;
task.spawn(C_6a);
-- StarterGui.GuiGlobalFE.Asmr.FOVSlider.FOVSliding
local function C_6c()
local script = G2L["6c"];
	local Player = game.Players.LocalPlayer
	local Gui = Player:WaitForChild("PlayerGui"):WaitForChild("GuiGlobalFE")
	local MyManager = require(Gui:WaitForChild("ScriptManager")).new(Gui)
	local Camera = workspace.CurrentCamera
	local TweenService = game:GetService("TweenService")
	local UserInputService = game:GetService("UserInputService")
	
	local slider = script.Parent
	local handle = slider:WaitForChild("Handle")
	local FOVLabel = slider:WaitForChild("FOVLabel")
	
	local minFOV, maxFOV = 30, 120
	local dragging = false
	
	MyManager:SafeConnect(handle.InputBegan, function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then 
			dragging = true 
		end
	end)
	
	MyManager:SafeConnect(UserInputService.InputEnded, function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then 
			dragging = false 
		end
	end)
	
	MyManager:SafeLoop(function()
		if not dragging then return end
	
		local mouseX = UserInputService:GetMouseLocation().X
		local sliderX = slider.AbsolutePosition.X
		local sliderW = slider.AbsoluteSize.X - handle.AbsoluteSize.X
	
		if sliderW <= 0 then return end
	
		local clampedX = math.clamp(mouseX - sliderX - (handle.AbsoluteSize.X/2), 0, sliderW)
		handle.Position = UDim2.new(0, clampedX, handle.Position.Y.Scale, handle.Position.Y.Offset)
	
		local val = math.round((clampedX/sliderW) * (maxFOV - minFOV) + minFOV)
		FOVLabel.Text = "FOV: " .. val
	
		TweenService:Create(Camera, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {FieldOfView = val}):Play()
	end)
	
	MyManager:SafeLoop(function()
		if MyManager.Stopped then
			TweenService:Create(Camera, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {FieldOfView = 70}):Play()
		end
	end)
end;
task.spawn(C_6c);
-- StarterGui.GuiGlobalFE.Asmr.MuteGame.MuteGame
local function C_76()
local script = G2L["76"];
	local Player = game.Players.LocalPlayer
	local Gui = Player:WaitForChild("PlayerGui"):WaitForChild("GuiGlobalFE")
	local MyManager = require(Gui:WaitForChild("ScriptManager")).new(Gui)
	
	local MuteButton = script.Parent
	local muted = false
	local originalVolumes = {}
	
	local function muteAll()
		for _, sound in ipairs(workspace:GetDescendants()) do
			if sound:IsA("Sound") then
				originalVolumes[sound] = sound.Volume
				sound.Volume = 0
			end
		end
	end
	
	local function unmuteAll()
		for sound, vol in pairs(originalVolumes) do
			if sound and sound.Parent then
				sound.Volume = vol
			end
		end
		table.clear(originalVolumes)
	end
	
	MyManager:SafeConnect(MuteButton.MouseButton1Click, function()
		muted = not muted
		if muted then
			MuteButton.Text = "Unmute Game"
			muteAll()
		else
			MuteButton.Text = "Mute Game"
			unmuteAll()
		end
	end)
	
	MyManager:SafeLoop(function()
		if MyManager.Stopped then
			unmuteAll()
		end
	end)
end;
task.spawn(C_76);
-- StarterGui.GuiGlobalFE.Asmr.DraggingForSliders
local function C_77()
local script = G2L["77"];
	local frame = script.Parent
	local drag = frame:WaitForChild("UIDragDetector")
	
	for _,v in pairs(frame:GetChildren()) do
		if v:IsA("Frame") then
			v.MouseEnter:Connect(function()
				drag.Enabled = false
			end)
	
			v.MouseLeave:Connect(function()
				drag.Enabled = true
			end)
		end
	end
end;
task.spawn(C_77);
-- StarterGui.GuiGlobalFE.Asmr.GravitySlider.GravitySliding
local function C_7a()
local script = G2L["7a"];
	local Player = game.Players.LocalPlayer
	local Gui = Player:WaitForChild("PlayerGui"):WaitForChild("GuiGlobalFE")
	local MyManager = require(Gui:WaitForChild("ScriptManager")).new(Gui)
	local UserInputService = game:GetService("UserInputService")
	
	local slider = script.Parent
	local handle = slider:WaitForChild("Handle")
	local GravLabel = slider:WaitForChild("GravityLabel")
	
	local dragging = false
	local currentGrav = 196.2
	
	MyManager:SafeConnect(handle.InputBegan, function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = true end
	end)
	
	MyManager:SafeConnect(UserInputService.InputEnded, function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
	end)
	
	MyManager:SafeLoop(function()
		if dragging then
			local mouseX = UserInputService:GetMouseLocation().X
			local sliderX = slider.AbsolutePosition.X
			local sliderW = slider.AbsoluteSize.X - handle.AbsoluteSize.X
			if sliderW > 0 then
				local clampedX = math.clamp(mouseX - sliderX - (handle.AbsoluteSize.X/2), 0, sliderW)
				handle.Position = UDim2.new(0, clampedX, handle.Position.Y.Scale, handle.Position.Y.Offset)
				currentGrav = math.round((1 - (clampedX / sliderW)) * 196.2)
			end
		end
		workspace.Gravity = currentGrav
		GravLabel.Text = "Gravity: " .. currentGrav
	end)
	
	MyManager:SafeLoop(function()
		if MyManager.Stopped then
			workspace.Gravity = 196.2
		end
	end)
end;
task.spawn(C_7a);
-- StarterGui.GuiGlobalFE.Asmr.TimeOfDaySlider.TODSliding
local function C_82()
local script = G2L["82"];
	local Player = game.Players.LocalPlayer
	local Gui = Player:WaitForChild("PlayerGui"):WaitForChild("GuiGlobalFE")
	local MyManager = require(Gui:WaitForChild("ScriptManager")).new(Gui)
	local UserInputService = game:GetService("UserInputService")
	local Lighting = game:GetService("Lighting")
	
	local slider = script.Parent
	local handle = slider:WaitForChild("Handle")
	local TimeLabel = slider:WaitForChild("TODLabel")
	
	local dragging = false
	local currentMinutes = 840
	
	MyManager:SafeConnect(handle.InputBegan, function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = true end
	end)
	
	MyManager:SafeConnect(UserInputService.InputEnded, function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then dragging = false end
	end)
	
	MyManager:SafeLoop(function()
		if dragging then
			local mouseX = UserInputService:GetMouseLocation().X
			local sliderX = slider.AbsolutePosition.X
			local sliderW = slider.AbsoluteSize.X - handle.AbsoluteSize.X
			if sliderW > 0 then
				local clampedX = math.clamp(mouseX - sliderX - (handle.AbsoluteSize.X/2), 0, sliderW)
				handle.Position = UDim2.new(0, clampedX, handle.Position.Y.Scale, handle.Position.Y.Offset)
				currentMinutes = math.round((clampedX / sliderW) * 1440)
			end
		end
	
		Lighting:SetMinutesAfterMidnight(currentMinutes)
		local hours = math.floor(currentMinutes / 60)
		local mins = currentMinutes % 60
		TimeLabel.Text = string.format("Time: %02d:%02d", hours, mins)
	end)
	
	MyManager:SafeLoop(function()
		if MyManager.Stopped then
			Lighting.ClockTime = 14
		end
	end)
end;
task.spawn(C_82);
-- StarterGui.GuiGlobalFE.Asmr.Shader.ShaderApply
local function C_8c()
local script = G2L["8c"];
	local Player = game.Players.LocalPlayer
	local Gui = Player:WaitForChild("PlayerGui"):WaitForChild("GuiGlobalFE")
	local MyManager = require(Gui:WaitForChild("ScriptManager")).new(Gui)
	local Lighting = game:GetService("Lighting")
	
	local Button = script.Parent
	local active = false
	
	local ColorEff = Instance.new("ColorCorrectionEffect")
	local BloomEff = Instance.new("BloomEffect")
	local SunRays = Instance.new("SunRaysEffect")
	
	local function updateShader(time)
		if time >= 6 and time <= 18 then
			-- Day/Sunset Settings
			ColorEff.TintColor = Color3.fromRGB(255, 245, 230)
			ColorEff.Brightness = 0.05
			ColorEff.Saturation = 0.2
			BloomEff.Intensity = 0.8
			BloomEff.Threshold = 0.8
			SunRays.Enabled = true
		else
			-- Night Settings
			ColorEff.TintColor = Color3.fromRGB(180, 200, 255)
			ColorEff.Brightness = -0.05
			ColorEff.Saturation = -0.1
			BloomEff.Intensity = 1.2
			BloomEff.Threshold = 0.5
			SunRays.Enabled = false
		end
	end
	
	MyManager:SafeConnect(Button.MouseButton1Click, function()
		active = not active
	
		if active then
			Button.Text = "Shader: ON"
			Button.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Button.TextColor3 = Color3.fromRGB(0, 0, 0)
	
			ColorEff.Parent = Lighting
			BloomEff.Parent = Lighting
			SunRays.Parent = Lighting
		else
			Button.Text = "Shader: OFF"
			Button.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Button.TextColor3 = Color3.fromRGB(255, 255, 255)
	
			ColorEff.Parent = nil
			BloomEff.Parent = nil
			SunRays.Parent = nil
		end
	end)
	
	MyManager:SafeLoop(function()
		if active then
			updateShader(Lighting.ClockTime)
		end
	end)
	
	MyManager:SafeLoop(function()
		if MyManager.Stopped then
			ColorEff:Destroy()
			BloomEff:Destroy()
			SunRays:Destroy()
		end
	end)
end;
task.spawn(C_8c);

return G2L["1"], require;
