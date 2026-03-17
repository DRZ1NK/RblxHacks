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


-- StarterGui.GuiGlobalFE.Devil
G2L["4"] = Instance.new("LocalScript", G2L["1"]);
G2L["4"]["Enabled"] = false;
G2L["4"]["Name"] = [[Devil]];
G2L["4"]["Disabled"] = true;


-- StarterGui.GuiGlobalFE.Devil.Devil
G2L["5"] = Instance.new("Model", G2L["4"]);
G2L["5"]["WorldPivot"] = CFrame.new(Vector3.new(0, 7.87846, -1.38918), Vector3.new(0, -0.17365, -0.98481));
G2L["5"]["Name"] = [[Devil]];
-- [ERROR] cannot convert PrimaryPart, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"


-- StarterGui.GuiGlobalFE.Devil.Devil.Humanoid
G2L["6"] = Instance.new("Humanoid", G2L["5"]);
G2L["6"]["DisplayDistanceType"] = Enum.HumanoidDisplayDistanceType.None;


-- StarterGui.GuiGlobalFE.Devil.Devil.Humanoid.Animator
G2L["7"] = Instance.new("Animator", G2L["6"]);



-- StarterGui.GuiGlobalFE.Devil.Devil.Humanoid.HumanoidDescription
G2L["8"] = Instance.new("HumanoidDescription", G2L["6"]);
G2L["8"]["RightArmColor"] = Color3.fromRGB(18, 18, 18);
G2L["8"]["TorsoColor"] = Color3.fromRGB(18, 18, 18);
G2L["8"]["HeightScale"] = 1.05;
G2L["8"]["RightLegColor"] = Color3.fromRGB(18, 18, 18);
G2L["8"]["LeftLegColor"] = Color3.fromRGB(18, 18, 18);
G2L["8"]["BodyTypeScale"] = 1;
G2L["8"]["LeftArmColor"] = Color3.fromRGB(18, 18, 18);
G2L["8"]["HeadColor"] = Color3.fromRGB(18, 18, 18);
G2L["8"]["Pants"] = 81496251;


-- StarterGui.GuiGlobalFE.Devil.Devil.Humanoid.HumanoidDescription.BodyPartDescription
G2L["9"] = Instance.new("BodyPartDescription", G2L["8"]);
G2L["9"]["Color"] = Color3.fromRGB(18, 18, 18);


-- StarterGui.GuiGlobalFE.Devil.Devil.Humanoid.HumanoidDescription.BodyPartDescription
G2L["a"] = Instance.new("BodyPartDescription", G2L["8"]);
G2L["a"]["Color"] = Color3.fromRGB(18, 18, 18);
G2L["a"]["BodyPart"] = Enum.BodyPart.LeftArm;


-- StarterGui.GuiGlobalFE.Devil.Devil.Humanoid.HumanoidDescription.BodyPartDescription
G2L["b"] = Instance.new("BodyPartDescription", G2L["8"]);
G2L["b"]["Color"] = Color3.fromRGB(18, 18, 18);
G2L["b"]["BodyPart"] = Enum.BodyPart.RightArm;


-- StarterGui.GuiGlobalFE.Devil.Devil.Humanoid.HumanoidDescription.BodyPartDescription
G2L["c"] = Instance.new("BodyPartDescription", G2L["8"]);
G2L["c"]["Color"] = Color3.fromRGB(18, 18, 18);
G2L["c"]["BodyPart"] = Enum.BodyPart.Torso;


-- StarterGui.GuiGlobalFE.Devil.Devil.Humanoid.HumanoidDescription.BodyPartDescription
G2L["d"] = Instance.new("BodyPartDescription", G2L["8"]);
G2L["d"]["Color"] = Color3.fromRGB(18, 18, 18);
G2L["d"]["BodyPart"] = Enum.BodyPart.LeftLeg;


-- StarterGui.GuiGlobalFE.Devil.Devil.Humanoid.HumanoidDescription.BodyPartDescription
G2L["e"] = Instance.new("BodyPartDescription", G2L["8"]);
G2L["e"]["Color"] = Color3.fromRGB(18, 18, 18);
G2L["e"]["BodyPart"] = Enum.BodyPart.RightLeg;


-- StarterGui.GuiGlobalFE.Devil.Devil.Pants
G2L["f"] = Instance.new("Pants", G2L["5"]);
G2L["f"]["PantsTemplate"] = [[http://www.roblox.com/asset/?id=81496250]];
G2L["f"]["Name"] = [[Pants]];


-- StarterGui.GuiGlobalFE.Devil.Devil.Body Colors
G2L["10"] = Instance.new("BodyColors", G2L["5"]);
-- [ERROR] cannot convert RightLegColor, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
-- [ERROR] cannot convert LeftLegColor, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["10"]["HeadColor3"] = Color3.fromRGB(18, 18, 18);
G2L["10"]["LeftLegColor3"] = Color3.fromRGB(18, 18, 18);
-- [ERROR] cannot convert LeftArmColor, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
-- [ERROR] cannot convert RightArmColor, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["10"]["LeftArmColor3"] = Color3.fromRGB(18, 18, 18);
-- [ERROR] cannot convert HeadColor, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
-- [ERROR] cannot convert TorsoColor, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["10"]["TorsoColor3"] = Color3.fromRGB(18, 18, 18);
G2L["10"]["RightLegColor3"] = Color3.fromRGB(18, 18, 18);
G2L["10"]["RightArmColor3"] = Color3.fromRGB(18, 18, 18);


-- StarterGui.GuiGlobalFE.Devil.Devil.Accessory (Dark Deer Skull)
G2L["11"] = Instance.new("Accessory", G2L["5"]);
G2L["11"]["Name"] = [[Accessory (Dark Deer Skull)]];
G2L["11"]["AttachmentPoint"] = CFrame.new(Vector3.new(0.00472, -0.17845, 0.43598), Vector3.new(0, 0, -1));


-- StarterGui.GuiGlobalFE.Devil.Devil.Accessory (Dark Deer Skull).Handle
G2L["12"] = Instance.new("Part", G2L["11"]);
G2L["12"]["BottomSurface"] = Enum.SurfaceType.Smooth;
G2L["12"]["CanCollide"] = false;
G2L["12"]["Transparency"] = 1;
G2L["12"]["TopSurface"] = Enum.SurfaceType.Smooth;
G2L["12"]["CFrame"] = CFrame.new(Vector3.new(-0.00472, 10.09036, -2.04991), Vector3.new(-0, 0, -1));
G2L["12"]["Size"] = Vector3.new(1, 1, 1);
-- [ERROR] cannot convert BrickColor, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["12"]["Color"] = Color3.fromRGB(249, 249, 249);
G2L["12"]["Reflectance"] = 1;
G2L["12"]["Name"] = [[Handle]];
G2L["12"]["CastShadow"] = false;


-- StarterGui.GuiGlobalFE.Devil.Devil.Accessory (Dark Deer Skull).Handle.SpecialMesh
G2L["13"] = Instance.new("SpecialMesh", G2L["12"]);
G2L["13"]["MeshId"] = [[rbxassetid://103569262102909]];
G2L["13"]["TextureId"] = [[http://www.roblox.com/asset/?id=121053141678317]];
G2L["13"]["Name"] = [[SpecialMesh]];
G2L["13"]["MeshType"] = Enum.MeshType.FileMesh;


-- StarterGui.GuiGlobalFE.Devil.Devil.Accessory (Dark Deer Skull).Handle.AvatarPartScaleType
G2L["14"] = Instance.new("StringValue", G2L["12"]);
G2L["14"]["Name"] = [[AvatarPartScaleType]];
G2L["14"]["Value"] = [[Classic]];


-- StarterGui.GuiGlobalFE.Devil.Devil.Accessory (Dark Deer Skull).Handle.HatAttachment
G2L["15"] = Instance.new("Attachment", G2L["12"]);
G2L["15"]["CFrame"] = CFrame.new(Vector3.new(0.00472, -0.17845, 0.43598), Vector3.new(0, 0, -1));
G2L["15"]["Axis"] = Vector3.new(1, 0, 0);
G2L["15"]["WorldSecondaryAxis"] = Vector3.new(0, 1, 0);
G2L["15"]["WorldCFrame"] = CFrame.new(Vector3.new(0, 9.91191, -1.61393), Vector3.new(0, 0, -1));
G2L["15"]["Name"] = [[HatAttachment]];


-- StarterGui.GuiGlobalFE.Devil.Devil.Accessory (Dark Deer Skull).Handle.AccessoryWeld
G2L["16"] = Instance.new("Weld", G2L["12"]);
-- [ERROR] cannot convert Part1, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["16"]["Name"] = [[AccessoryWeld]];
-- [ERROR] cannot convert Part0, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["16"]["C0"] = CFrame.new(Vector3.new(0.00472, -0.17845, 0.43598), Vector3.new(0, 0, -1));
G2L["16"]["C1"] = CFrame.new(Vector3.new(0, 0.6, 0), Vector3.new(0, 0, -1));


-- StarterGui.GuiGlobalFE.Devil.Devil.Accessory (Dark Deer Skull).Handle.TouchInterest
G2L["17"] = Instance.new("TouchTransmitter", G2L["12"]);
-- [ERROR] cannot convert Capabilities, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["17"]["Name"] = [[TouchInterest]];
G2L["17"]["Archivable"] = true;
G2L["17"]["Sandboxed"] = false;


-- StarterGui.GuiGlobalFE.Devil.Devil.Highlight
G2L["18"] = Instance.new("Highlight", G2L["5"]);
G2L["18"]["OutlineTransparency"] = 1;
G2L["18"]["DepthMode"] = Enum.HighlightDepthMode.Occluded;
G2L["18"]["FillTransparency"] = 0.15;
G2L["18"]["FillColor"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.GuiGlobalFE.Devil.Devil.Head
G2L["19"] = Instance.new("Part", G2L["5"]);
G2L["19"]["CanCollide"] = false;
G2L["19"]["Transparency"] = 0.65;
G2L["19"]["CanQuery"] = false;
G2L["19"]["TopSurface"] = Enum.SurfaceType.Smooth;
G2L["19"]["CFrame"] = CFrame.new(Vector3.new(0, 9.31191, -1.61393), Vector3.new(0, 0, -1));
G2L["19"]["Size"] = Vector3.new(2, 1, 1);
-- [ERROR] cannot convert BrickColor, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["19"]["Color"] = Color3.fromRGB(18, 18, 18);
G2L["19"]["CanTouch"] = false;
G2L["19"]["Name"] = [[Head]];
G2L["19"]["AudioCanCollide"] = false;
G2L["19"]["CastShadow"] = false;


-- StarterGui.GuiGlobalFE.Devil.Devil.Head.Mesh
G2L["1a"] = Instance.new("SpecialMesh", G2L["19"]);
G2L["1a"]["Scale"] = Vector3.new(1.25, 1.25, 1.25);


-- StarterGui.GuiGlobalFE.Devil.Devil.Head.HairAttachment
G2L["1b"] = Instance.new("Attachment", G2L["19"]);
G2L["1b"]["CFrame"] = CFrame.new(Vector3.new(0, 0.6, 0), Vector3.new(0, 0, -1));
G2L["1b"]["WorldSecondaryAxis"] = Vector3.new(0, 1, 0);
G2L["1b"]["WorldCFrame"] = CFrame.new(Vector3.new(0, 9.91191, -1.61393), Vector3.new(0, 0, -1));
G2L["1b"]["Name"] = [[HairAttachment]];


-- StarterGui.GuiGlobalFE.Devil.Devil.Head.HatAttachment
G2L["1c"] = Instance.new("Attachment", G2L["19"]);
G2L["1c"]["CFrame"] = CFrame.new(Vector3.new(0, 0.6, 0), Vector3.new(0, 0, -1));
G2L["1c"]["WorldSecondaryAxis"] = Vector3.new(0, 1, 0);
G2L["1c"]["WorldCFrame"] = CFrame.new(Vector3.new(0, 9.91191, -1.61393), Vector3.new(0, 0, -1));
G2L["1c"]["Name"] = [[HatAttachment]];


-- StarterGui.GuiGlobalFE.Devil.Devil.Head.FaceFrontAttachment
G2L["1d"] = Instance.new("Attachment", G2L["19"]);
G2L["1d"]["CFrame"] = CFrame.new(Vector3.new(0, 0, -0.6), Vector3.new(0, 0, -1));
G2L["1d"]["WorldSecondaryAxis"] = Vector3.new(0, 1, 0);
G2L["1d"]["WorldCFrame"] = CFrame.new(Vector3.new(0, 9.31191, -2.21393), Vector3.new(0, 0, -1));
G2L["1d"]["Name"] = [[FaceFrontAttachment]];


-- StarterGui.GuiGlobalFE.Devil.Devil.Head.FaceCenterAttachment
G2L["1e"] = Instance.new("Attachment", G2L["19"]);
G2L["1e"]["WorldSecondaryAxis"] = Vector3.new(0, 1, 0);
G2L["1e"]["WorldCFrame"] = CFrame.new(Vector3.new(0, 9.31191, -1.61393), Vector3.new(0, 0, -1));
G2L["1e"]["Name"] = [[FaceCenterAttachment]];


-- StarterGui.GuiGlobalFE.Devil.Devil.Torso
G2L["1f"] = Instance.new("Part", G2L["5"]);
G2L["1f"]["RightSurface"] = Enum.SurfaceType.Weld;
G2L["1f"]["Transparency"] = 0.65;
G2L["1f"]["CanQuery"] = false;
G2L["1f"]["CFrame"] = CFrame.new(Vector3.new(0, 7.87846, -1.38918), Vector3.new(0, -0.17365, -0.98481));
G2L["1f"]["Size"] = Vector3.new(2, 2, 1);
G2L["1f"]["LeftSurface"] = Enum.SurfaceType.Weld;
-- [ERROR] cannot convert BrickColor, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["1f"]["Color"] = Color3.fromRGB(18, 18, 18);
G2L["1f"]["CanTouch"] = false;
G2L["1f"]["Rotation"] = Vector3.new(-10, 0, 0);
G2L["1f"]["Name"] = [[Torso]];
G2L["1f"]["AudioCanCollide"] = false;
G2L["1f"]["CastShadow"] = false;


-- StarterGui.GuiGlobalFE.Devil.Devil.Torso.roblox
G2L["20"] = Instance.new("Decal", G2L["1f"]);
G2L["20"]["Name"] = [[roblox]];


-- StarterGui.GuiGlobalFE.Devil.Devil.Torso.NeckAttachment
G2L["21"] = Instance.new("Attachment", G2L["1f"]);
G2L["21"]["CFrame"] = CFrame.new(Vector3.new(0, 1, 0), Vector3.new(0, 0, -1));
G2L["21"]["WorldSecondaryAxis"] = Vector3.new(0, 0.98481, -0.17365);
G2L["21"]["WorldCFrame"] = CFrame.new(Vector3.new(0, 8.86327, -1.56283), Vector3.new(0, -0.17365, -0.98481));
G2L["21"]["Name"] = [[NeckAttachment]];


-- StarterGui.GuiGlobalFE.Devil.Devil.Torso.BodyFrontAttachment
G2L["22"] = Instance.new("Attachment", G2L["1f"]);
G2L["22"]["CFrame"] = CFrame.new(Vector3.new(0, 0, -0.5), Vector3.new(0, 0, -1));
G2L["22"]["WorldSecondaryAxis"] = Vector3.new(0, 0.98481, -0.17365);
G2L["22"]["WorldCFrame"] = CFrame.new(Vector3.new(0, 7.79164, -1.88159), Vector3.new(0, -0.17365, -0.98481));
G2L["22"]["Name"] = [[BodyFrontAttachment]];


-- StarterGui.GuiGlobalFE.Devil.Devil.Torso.BodyBackAttachment
G2L["23"] = Instance.new("Attachment", G2L["1f"]);
G2L["23"]["CFrame"] = CFrame.new(Vector3.new(0, 0, 0.5), Vector3.new(0, 0, -1));
G2L["23"]["WorldSecondaryAxis"] = Vector3.new(0, 0.98481, -0.17365);
G2L["23"]["WorldCFrame"] = CFrame.new(Vector3.new(0, 7.96529, -0.89678), Vector3.new(0, -0.17365, -0.98481));
G2L["23"]["Name"] = [[BodyBackAttachment]];


-- StarterGui.GuiGlobalFE.Devil.Devil.Torso.LeftCollarAttachment
G2L["24"] = Instance.new("Attachment", G2L["1f"]);
G2L["24"]["CFrame"] = CFrame.new(Vector3.new(-1, 1, 0), Vector3.new(0, 0, -1));
G2L["24"]["WorldSecondaryAxis"] = Vector3.new(0, 0.98481, -0.17365);
G2L["24"]["WorldCFrame"] = CFrame.new(Vector3.new(-1, 8.86327, -1.56283), Vector3.new(0, -0.17365, -0.98481));
G2L["24"]["Name"] = [[LeftCollarAttachment]];


-- StarterGui.GuiGlobalFE.Devil.Devil.Torso.RightCollarAttachment
G2L["25"] = Instance.new("Attachment", G2L["1f"]);
G2L["25"]["CFrame"] = CFrame.new(Vector3.new(1, 1, 0), Vector3.new(0, 0, -1));
G2L["25"]["WorldSecondaryAxis"] = Vector3.new(0, 0.98481, -0.17365);
G2L["25"]["WorldCFrame"] = CFrame.new(Vector3.new(1, 8.86327, -1.56283), Vector3.new(0, -0.17365, -0.98481));
G2L["25"]["Name"] = [[RightCollarAttachment]];


-- StarterGui.GuiGlobalFE.Devil.Devil.Torso.WaistFrontAttachment
G2L["26"] = Instance.new("Attachment", G2L["1f"]);
G2L["26"]["CFrame"] = CFrame.new(Vector3.new(0, -1, -0.5), Vector3.new(0, 0, -1));
G2L["26"]["WorldSecondaryAxis"] = Vector3.new(0, 0.98481, -0.17365);
G2L["26"]["WorldCFrame"] = CFrame.new(Vector3.new(0, 6.80683, -1.70794), Vector3.new(0, -0.17365, -0.98481));
G2L["26"]["Name"] = [[WaistFrontAttachment]];


-- StarterGui.GuiGlobalFE.Devil.Devil.Torso.WaistCenterAttachment
G2L["27"] = Instance.new("Attachment", G2L["1f"]);
G2L["27"]["CFrame"] = CFrame.new(Vector3.new(0, -1, 0), Vector3.new(0, 0, -1));
G2L["27"]["WorldSecondaryAxis"] = Vector3.new(0, 0.98481, -0.17365);
G2L["27"]["WorldCFrame"] = CFrame.new(Vector3.new(0, 6.89365, -1.21554), Vector3.new(0, -0.17365, -0.98481));
G2L["27"]["Name"] = [[WaistCenterAttachment]];


-- StarterGui.GuiGlobalFE.Devil.Devil.Torso.WaistBackAttachment
G2L["28"] = Instance.new("Attachment", G2L["1f"]);
G2L["28"]["CFrame"] = CFrame.new(Vector3.new(0, -1, 0.5), Vector3.new(0, 0, -1));
G2L["28"]["WorldSecondaryAxis"] = Vector3.new(0, 0.98481, -0.17365);
G2L["28"]["WorldCFrame"] = CFrame.new(Vector3.new(0, 6.98048, -0.72313), Vector3.new(0, -0.17365, -0.98481));
G2L["28"]["Name"] = [[WaistBackAttachment]];


-- StarterGui.GuiGlobalFE.Devil.Devil.Torso.Right Shoulder
G2L["29"] = Instance.new("Motor6D", G2L["1f"]);
-- [ERROR] cannot convert Part1, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["29"]["MaxVelocity"] = 0.1;
G2L["29"]["C1"] = CFrame.new(Vector3.new(-0.5, 0.52261, 0.23996), Vector3.new(-1, 0, 0));
G2L["29"]["C0"] = CFrame.new(Vector3.new(1, 0.5, 0), Vector3.new(-1, 0, 0));
G2L["29"]["Name"] = [[Right Shoulder]];
-- [ERROR] cannot convert Part0, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"


-- StarterGui.GuiGlobalFE.Devil.Devil.Torso.Left Shoulder
G2L["2a"] = Instance.new("Motor6D", G2L["1f"]);
-- [ERROR] cannot convert Part1, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["2a"]["MaxVelocity"] = 0.1;
G2L["2a"]["C1"] = CFrame.new(Vector3.new(0.5, 0.71985, 0.07101), Vector3.new(1, 0, 0));
G2L["2a"]["C0"] = CFrame.new(Vector3.new(-1, 0.5, 0), Vector3.new(1, 0, 0));
G2L["2a"]["Name"] = [[Left Shoulder]];
-- [ERROR] cannot convert Part0, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"


-- StarterGui.GuiGlobalFE.Devil.Devil.Torso.Right Hip
G2L["2b"] = Instance.new("Motor6D", G2L["1f"]);
-- [ERROR] cannot convert Part1, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["2b"]["MaxVelocity"] = 0.1;
G2L["2b"]["C1"] = CFrame.new(Vector3.new(0.5, 0.78388, 0.21915), Vector3.new(-1, 0, 0));
G2L["2b"]["C0"] = CFrame.new(Vector3.new(1, -1, 0), Vector3.new(-1, 0, 0));
G2L["2b"]["Name"] = [[Right Hip]];
-- [ERROR] cannot convert Part0, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"


-- StarterGui.GuiGlobalFE.Devil.Devil.Torso.Left Hip
G2L["2c"] = Instance.new("Motor6D", G2L["1f"]);
-- [ERROR] cannot convert Part1, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["2c"]["MaxVelocity"] = 0.1;
G2L["2c"]["C1"] = CFrame.new(Vector3.new(-0.5, 0.89649, -0.08522), Vector3.new(1, 0, 0));
G2L["2c"]["C0"] = CFrame.new(Vector3.new(-1, -1, 0), Vector3.new(1, 0, 0));
G2L["2c"]["Name"] = [[Left Hip]];
-- [ERROR] cannot convert Part0, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"


-- StarterGui.GuiGlobalFE.Devil.Devil.Torso.Neck
G2L["2d"] = Instance.new("Motor6D", G2L["1f"]);
-- [ERROR] cannot convert Part1, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["2d"]["MaxVelocity"] = 0.1;
G2L["2d"]["C1"] = CFrame.new(Vector3.new(0, -0.44864, 0.0511), Vector3.new(0, -0.98481, 0.17365));
G2L["2d"]["C0"] = CFrame.new(Vector3.new(0, 1, 0), Vector3.new(0, -1, 0));
G2L["2d"]["Name"] = [[Neck]];
-- [ERROR] cannot convert Part0, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"


-- StarterGui.GuiGlobalFE.Devil.Devil.Left Arm
G2L["2e"] = Instance.new("Part", G2L["5"]);
G2L["2e"]["CanCollide"] = false;
G2L["2e"]["Transparency"] = 0.65;
G2L["2e"]["CanQuery"] = false;
G2L["2e"]["CFrame"] = CFrame.new(Vector3.new(-1.5, 7.71196, -1.17758), Vector3.new(0, -0.5, -0.86603));
G2L["2e"]["Size"] = Vector3.new(1, 2, 1);
-- [ERROR] cannot convert BrickColor, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["2e"]["Color"] = Color3.fromRGB(18, 18, 18);
G2L["2e"]["CanTouch"] = false;
G2L["2e"]["Rotation"] = Vector3.new(-30, 0, 0);
G2L["2e"]["Name"] = [[Left Arm]];
G2L["2e"]["AudioCanCollide"] = false;
G2L["2e"]["CastShadow"] = false;


-- StarterGui.GuiGlobalFE.Devil.Devil.Left Arm.LeftShoulderAttachment
G2L["2f"] = Instance.new("Attachment", G2L["2e"]);
G2L["2f"]["CFrame"] = CFrame.new(Vector3.new(0, 1, 0), Vector3.new(0, 0, -1));
G2L["2f"]["WorldSecondaryAxis"] = Vector3.new(0, 0.86603, -0.5);
G2L["2f"]["WorldCFrame"] = CFrame.new(Vector3.new(-1.5, 8.57798, -1.67758), Vector3.new(0, -0.5, -0.86603));
G2L["2f"]["Name"] = [[LeftShoulderAttachment]];


-- StarterGui.GuiGlobalFE.Devil.Devil.Left Arm.LeftGripAttachment
G2L["30"] = Instance.new("Attachment", G2L["2e"]);
G2L["30"]["CFrame"] = CFrame.new(Vector3.new(0, -1, 0), Vector3.new(0, 0, -1));
G2L["30"]["WorldSecondaryAxis"] = Vector3.new(0, 0.86603, -0.5);
G2L["30"]["WorldCFrame"] = CFrame.new(Vector3.new(-1.5, 6.84593, -0.67758), Vector3.new(0, -0.5, -0.86603));
G2L["30"]["Name"] = [[LeftGripAttachment]];


-- StarterGui.GuiGlobalFE.Devil.Devil.Right Arm
G2L["31"] = Instance.new("Part", G2L["5"]);
G2L["31"]["CanCollide"] = false;
G2L["31"]["Transparency"] = 0.65;
G2L["31"]["CanQuery"] = false;
G2L["31"]["CFrame"] = CFrame.new(Vector3.new(1.5, 7.81452, -1.62157), Vector3.new(0, -0.17365, -0.98481));
G2L["31"]["Size"] = Vector3.new(1, 2, 1);
-- [ERROR] cannot convert BrickColor, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["31"]["Color"] = Color3.fromRGB(18, 18, 18);
G2L["31"]["CanTouch"] = false;
G2L["31"]["Rotation"] = Vector3.new(-10, 0, 0);
G2L["31"]["Name"] = [[Right Arm]];
G2L["31"]["AudioCanCollide"] = false;
G2L["31"]["CastShadow"] = false;


-- StarterGui.GuiGlobalFE.Devil.Devil.Right Arm.RightShoulderAttachment
G2L["32"] = Instance.new("Attachment", G2L["31"]);
G2L["32"]["CFrame"] = CFrame.new(Vector3.new(0, 1, 0), Vector3.new(0, 0, -1));
G2L["32"]["WorldSecondaryAxis"] = Vector3.new(0, 0.98481, -0.17365);
G2L["32"]["WorldCFrame"] = CFrame.new(Vector3.new(1.5, 8.79933, -1.79522), Vector3.new(0, -0.17365, -0.98481));
G2L["32"]["Name"] = [[RightShoulderAttachment]];


-- StarterGui.GuiGlobalFE.Devil.Devil.Right Arm.RightGripAttachment
G2L["33"] = Instance.new("Attachment", G2L["31"]);
G2L["33"]["CFrame"] = CFrame.new(Vector3.new(0, -1, 0), Vector3.new(0, 0, -1));
G2L["33"]["WorldSecondaryAxis"] = Vector3.new(0, 0.98481, -0.17365);
G2L["33"]["WorldCFrame"] = CFrame.new(Vector3.new(1.5, 6.82972, -1.44792), Vector3.new(0, -0.17365, -0.98481));
G2L["33"]["Name"] = [[RightGripAttachment]];


-- StarterGui.GuiGlobalFE.Devil.Devil.Left Leg
G2L["34"] = Instance.new("Part", G2L["5"]);
G2L["34"]["BottomSurface"] = Enum.SurfaceType.Smooth;
G2L["34"]["CanCollide"] = false;
G2L["34"]["Transparency"] = 0.65;
G2L["34"]["CanQuery"] = false;
G2L["34"]["CFrame"] = CFrame.new(Vector3.new(-0.5, 6.20818, -0.63152), Vector3.new(0, -0.57358, -0.81915));
G2L["34"]["Size"] = Vector3.new(1, 2, 1);
-- [ERROR] cannot convert BrickColor, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["34"]["Color"] = Color3.fromRGB(18, 18, 18);
G2L["34"]["CanTouch"] = false;
G2L["34"]["Rotation"] = Vector3.new(-35, 0, 0);
G2L["34"]["Name"] = [[Left Leg]];
G2L["34"]["AudioCanCollide"] = false;
G2L["34"]["CastShadow"] = false;


-- StarterGui.GuiGlobalFE.Devil.Devil.Left Leg.LeftFootAttachment
G2L["35"] = Instance.new("Attachment", G2L["34"]);
G2L["35"]["CFrame"] = CFrame.new(Vector3.new(0, -1, 0), Vector3.new(0, 0, -1));
G2L["35"]["WorldSecondaryAxis"] = Vector3.new(0, 0.81915, -0.57358);
G2L["35"]["WorldCFrame"] = CFrame.new(Vector3.new(-0.5, 5.38902, -0.05795), Vector3.new(0, -0.57358, -0.81915));
G2L["35"]["Name"] = [[LeftFootAttachment]];


-- StarterGui.GuiGlobalFE.Devil.Devil.Right Leg
G2L["36"] = Instance.new("Part", G2L["5"]);
G2L["36"]["BottomSurface"] = Enum.SurfaceType.Smooth;
G2L["36"]["CanCollide"] = false;
G2L["36"]["Transparency"] = 0.65;
G2L["36"]["CanQuery"] = false;
G2L["36"]["CFrame"] = CFrame.new(Vector3.new(0.5, 6.07976, -1.22434), Vector3.new(0, -0.25882, -0.96593));
G2L["36"]["Size"] = Vector3.new(1, 2, 1);
-- [ERROR] cannot convert BrickColor, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["36"]["Color"] = Color3.fromRGB(18, 18, 18);
G2L["36"]["CanTouch"] = false;
G2L["36"]["Rotation"] = Vector3.new(-15, 0, 0);
G2L["36"]["Name"] = [[Right Leg]];
G2L["36"]["AudioCanCollide"] = false;
G2L["36"]["CastShadow"] = false;


-- StarterGui.GuiGlobalFE.Devil.Devil.Right Leg.RightFootAttachment
G2L["37"] = Instance.new("Attachment", G2L["36"]);
G2L["37"]["CFrame"] = CFrame.new(Vector3.new(0, -1, 0), Vector3.new(0, 0, -1));
G2L["37"]["WorldSecondaryAxis"] = Vector3.new(0, 0.96593, -0.25882);
G2L["37"]["WorldCFrame"] = CFrame.new(Vector3.new(0.5, 5.11383, -0.96552), Vector3.new(0, -0.25882, -0.96593));
G2L["37"]["Name"] = [[RightFootAttachment]];


-- StarterGui.GuiGlobalFE.Devil.Devil.HumanoidRootPart
G2L["38"] = Instance.new("Part", G2L["5"]);
G2L["38"]["BottomSurface"] = Enum.SurfaceType.Smooth;
G2L["38"]["CanCollide"] = false;
G2L["38"]["Transparency"] = 1;
G2L["38"]["CanQuery"] = false;
G2L["38"]["TopSurface"] = Enum.SurfaceType.Smooth;
G2L["38"]["CFrame"] = CFrame.new(Vector3.new(0, 7.87846, -1.38918), Vector3.new(0, -0.17365, -0.98481));
G2L["38"]["Size"] = Vector3.new(2, 2, 1);
G2L["38"]["CanTouch"] = false;
G2L["38"]["Rotation"] = Vector3.new(-10, 0, 0);
G2L["38"]["Name"] = [[HumanoidRootPart]];
G2L["38"]["AudioCanCollide"] = false;
G2L["38"]["CastShadow"] = false;


-- StarterGui.GuiGlobalFE.Devil.Devil.HumanoidRootPart.RootAttachment
G2L["39"] = Instance.new("Attachment", G2L["38"]);
G2L["39"]["WorldSecondaryAxis"] = Vector3.new(0, 0.98481, -0.17365);
G2L["39"]["WorldCFrame"] = CFrame.new(Vector3.new(0, 7.87846, -1.38918), Vector3.new(0, -0.17365, -0.98481));
G2L["39"]["Name"] = [[RootAttachment]];


-- StarterGui.GuiGlobalFE.Devil.Devil.HumanoidRootPart.RootJoint
G2L["3a"] = Instance.new("Motor6D", G2L["38"]);
-- [ERROR] cannot convert Part1, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["3a"]["MaxVelocity"] = 0.1;
G2L["3a"]["C1"] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(0, -1, 0));
G2L["3a"]["C0"] = CFrame.new(Vector3.new(0, 0, 0), Vector3.new(0, -1, 0));
G2L["3a"]["Name"] = [[RootJoint]];
-- [ERROR] cannot convert Part0, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"


-- StarterGui.GuiGlobalFE.Main
G2L["3b"] = Instance.new("Frame", G2L["1"]);
G2L["3b"]["Visible"] = false;
G2L["3b"]["BorderSizePixel"] = 0;
G2L["3b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3b"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["3b"]["Size"] = UDim2.new(0, 426, 0, 211);
G2L["3b"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["3b"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3b"]["Name"] = [[Main]];


-- StarterGui.GuiGlobalFE.Main.DraggingForSliders
G2L["3c"] = Instance.new("LocalScript", G2L["3b"]);
G2L["3c"]["Name"] = [[DraggingForSliders]];


-- StarterGui.GuiGlobalFE.Main.TitleChanger
G2L["3d"] = Instance.new("LocalScript", G2L["3b"]);
G2L["3d"]["Enabled"] = false;
G2L["3d"]["Name"] = [[TitleChanger]];
G2L["3d"]["Disabled"] = true;


-- StarterGui.GuiGlobalFE.Main.NameLabel
G2L["3e"] = Instance.new("TextLabel", G2L["3b"]);
G2L["3e"]["TextWrapped"] = true;
G2L["3e"]["BorderSizePixel"] = 0;
G2L["3e"]["TextSize"] = 14;
G2L["3e"]["TextScaled"] = true;
G2L["3e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3e"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["3e"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3e"]["BackgroundTransparency"] = 1;
G2L["3e"]["Size"] = UDim2.new(0, 426, 0, 33);
G2L["3e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3e"]["Text"] = [[PRIV]];
G2L["3e"]["Name"] = [[NameLabel]];
G2L["3e"]["Position"] = UDim2.new(0, 0, -0.1564, 0);


-- StarterGui.GuiGlobalFE.Main.UICorner
G2L["3f"] = Instance.new("UICorner", G2L["3b"]);
G2L["3f"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Main.UIStroke
G2L["40"] = Instance.new("UIStroke", G2L["3b"]);
G2L["40"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.Main.Orbit-Frame
G2L["41"] = Instance.new("TextButton", G2L["3b"]);
G2L["41"]["TextWrapped"] = true;
G2L["41"]["BorderSizePixel"] = 0;
G2L["41"]["TextSize"] = 26;
G2L["41"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["41"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["41"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["41"]["Size"] = UDim2.new(0, 50, 0, 50);
G2L["41"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["41"]["Text"] = [[Orbit]];
G2L["41"]["Name"] = [[Orbit-Frame]];
G2L["41"]["Position"] = UDim2.new(0, 10, 0, 10);


-- StarterGui.GuiGlobalFE.Main.Orbit-Frame.OpenOrbit
G2L["42"] = Instance.new("LocalScript", G2L["41"]);
G2L["42"]["Name"] = [[OpenOrbit]];


-- StarterGui.GuiGlobalFE.Main.Orbit-Frame.UIStroke
G2L["43"] = Instance.new("UIStroke", G2L["41"]);
G2L["43"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["43"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.Main.UIDragDetector
G2L["44"] = Instance.new("UIDragDetector", G2L["3b"]);
-- [ERROR] cannot convert ReferenceUIInstance, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"


-- StarterGui.GuiGlobalFE.Main.esp
G2L["45"] = Instance.new("TextButton", G2L["3b"]);
G2L["45"]["TextWrapped"] = true;
G2L["45"]["BorderSizePixel"] = 0;
G2L["45"]["TextSize"] = 26;
G2L["45"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["45"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["45"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["45"]["Size"] = UDim2.new(0, 50, 0, 50);
G2L["45"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["45"]["Text"] = [[ESP]];
G2L["45"]["Name"] = [[esp]];
G2L["45"]["Position"] = UDim2.new(0, 72, 0, 10);


-- StarterGui.GuiGlobalFE.Main.esp.ToggleESP
G2L["46"] = Instance.new("LocalScript", G2L["45"]);
G2L["46"]["Name"] = [[ToggleESP]];


-- StarterGui.GuiGlobalFE.Main.esp.UIStroke
G2L["47"] = Instance.new("UIStroke", G2L["45"]);
G2L["47"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["47"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.Main.fly
G2L["48"] = Instance.new("TextButton", G2L["3b"]);
G2L["48"]["TextWrapped"] = true;
G2L["48"]["BorderSizePixel"] = 0;
G2L["48"]["TextSize"] = 26;
G2L["48"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["48"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["48"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["48"]["Size"] = UDim2.new(0, 50, 0, 50);
G2L["48"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["48"]["Text"] = [[Fly]];
G2L["48"]["Name"] = [[fly]];
G2L["48"]["Position"] = UDim2.new(0, 134, 0, 10);


-- StarterGui.GuiGlobalFE.Main.fly.ToggleFly
G2L["49"] = Instance.new("LocalScript", G2L["48"]);
G2L["49"]["Name"] = [[ToggleFly]];


-- StarterGui.GuiGlobalFE.Main.fly.UIStroke
G2L["4a"] = Instance.new("UIStroke", G2L["48"]);
G2L["4a"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["4a"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.Main.RandoNames
G2L["4b"] = Instance.new("TextButton", G2L["3b"]);
G2L["4b"]["TextWrapped"] = true;
G2L["4b"]["BorderSizePixel"] = 0;
G2L["4b"]["TextSize"] = 26;
G2L["4b"]["TextScaled"] = true;
G2L["4b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["4b"]["Size"] = UDim2.new(0, 50, 0, 50);
G2L["4b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4b"]["Text"] = [[Random Names]];
G2L["4b"]["Name"] = [[RandoNames]];
G2L["4b"]["Position"] = UDim2.new(0, 195, 0, 10);


-- StarterGui.GuiGlobalFE.Main.RandoNames.Rando
G2L["4c"] = Instance.new("LocalScript", G2L["4b"]);
G2L["4c"]["Name"] = [[Rando]];


-- StarterGui.GuiGlobalFE.Main.RandoNames.UIStroke
G2L["4d"] = Instance.new("UIStroke", G2L["4b"]);
G2L["4d"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["4d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.Main.WalkspeedSlider
G2L["4e"] = Instance.new("Frame", G2L["3b"]);
G2L["4e"]["BorderSizePixel"] = 0;
G2L["4e"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4e"]["Size"] = UDim2.new(0, 14, 0, 168);
G2L["4e"]["Position"] = UDim2.new(0.74413, 0, 0.04739, 0);
G2L["4e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4e"]["Name"] = [[WalkspeedSlider]];


-- StarterGui.GuiGlobalFE.Main.WalkspeedSlider.WalkspeedSliding
G2L["4f"] = Instance.new("LocalScript", G2L["4e"]);
G2L["4f"]["Name"] = [[WalkspeedSliding]];


-- StarterGui.GuiGlobalFE.Main.WalkspeedSlider.UIStroke
G2L["50"] = Instance.new("UIStroke", G2L["4e"]);
G2L["50"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.Main.WalkspeedSlider.UICorner
G2L["51"] = Instance.new("UICorner", G2L["4e"]);
G2L["51"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Main.WalkspeedSlider.Handle
G2L["52"] = Instance.new("Frame", G2L["4e"]);
G2L["52"]["BorderSizePixel"] = 0;
G2L["52"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["52"]["Size"] = UDim2.new(0, 26, 0, 12);
G2L["52"]["Position"] = UDim2.new(-0.42857, 0, 0.46429, 0);
G2L["52"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["52"]["Name"] = [[Handle]];


-- StarterGui.GuiGlobalFE.Main.WalkspeedSlider.Handle.UIStroke
G2L["53"] = Instance.new("UIStroke", G2L["52"]);
G2L["53"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.Main.WalkspeedSlider.Handle.UICorner
G2L["54"] = Instance.new("UICorner", G2L["52"]);
G2L["54"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Main.WalkspeedSlider.WalkspeedLabel
G2L["55"] = Instance.new("TextLabel", G2L["4e"]);
G2L["55"]["TextWrapped"] = true;
G2L["55"]["ZIndex"] = 2;
G2L["55"]["BorderSizePixel"] = 0;
G2L["55"]["TextSize"] = 14;
G2L["55"]["TextScaled"] = true;
G2L["55"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["55"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["55"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["55"]["BackgroundTransparency"] = 1;
G2L["55"]["Size"] = UDim2.new(0, 88, 0, 33);
G2L["55"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["55"]["Text"] = [[Walkspeed: 0]];
G2L["55"]["Name"] = [[WalkspeedLabel]];
G2L["55"]["Position"] = UDim2.new(-21.9391, 0, 0.99692, 0);


-- StarterGui.GuiGlobalFE.Main.Close
G2L["56"] = Instance.new("TextButton", G2L["3b"]);
G2L["56"]["TextWrapped"] = true;
G2L["56"]["BorderSizePixel"] = 0;
G2L["56"]["TextSize"] = 14;
G2L["56"]["TextScaled"] = true;
G2L["56"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["56"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["56"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["56"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["56"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["56"]["Text"] = [[X]];
G2L["56"]["Name"] = [[Close]];
G2L["56"]["Position"] = UDim2.new(0, 386, 0, 10);


-- StarterGui.GuiGlobalFE.Main.Close.CloseGlobal
G2L["57"] = Instance.new("LocalScript", G2L["56"]);
G2L["57"]["Name"] = [[CloseGlobal]];


-- StarterGui.GuiGlobalFE.Main.Close.UIStroke
G2L["58"] = Instance.new("UIStroke", G2L["56"]);
G2L["58"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["58"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.Main.JumpHeightSlider
G2L["59"] = Instance.new("Frame", G2L["3b"]);
G2L["59"]["BorderSizePixel"] = 0;
G2L["59"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["59"]["Size"] = UDim2.new(0, 14, 0, 168);
G2L["59"]["Position"] = UDim2.new(0.83568, 0, 0.04739, 0);
G2L["59"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["59"]["Name"] = [[JumpHeightSlider]];


-- StarterGui.GuiGlobalFE.Main.JumpHeightSlider.JumpHeightSliding
G2L["5a"] = Instance.new("LocalScript", G2L["59"]);
G2L["5a"]["Name"] = [[JumpHeightSliding]];


-- StarterGui.GuiGlobalFE.Main.JumpHeightSlider.UIStroke
G2L["5b"] = Instance.new("UIStroke", G2L["59"]);
G2L["5b"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.Main.JumpHeightSlider.UICorner
G2L["5c"] = Instance.new("UICorner", G2L["59"]);
G2L["5c"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Main.JumpHeightSlider.Handle
G2L["5d"] = Instance.new("Frame", G2L["59"]);
G2L["5d"]["BorderSizePixel"] = 0;
G2L["5d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5d"]["Size"] = UDim2.new(0, 26, 0, 12);
G2L["5d"]["Position"] = UDim2.new(-0.42857, 0, 0.46429, 0);
G2L["5d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5d"]["Name"] = [[Handle]];


-- StarterGui.GuiGlobalFE.Main.JumpHeightSlider.Handle.UIStroke
G2L["5e"] = Instance.new("UIStroke", G2L["5d"]);
G2L["5e"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.Main.JumpHeightSlider.Handle.UICorner
G2L["5f"] = Instance.new("UICorner", G2L["5d"]);
G2L["5f"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Main.JumpHeightSlider.HeightLabel
G2L["60"] = Instance.new("TextLabel", G2L["59"]);
G2L["60"]["TextWrapped"] = true;
G2L["60"]["ZIndex"] = 2;
G2L["60"]["BorderSizePixel"] = 0;
G2L["60"]["TextSize"] = 14;
G2L["60"]["TextScaled"] = true;
G2L["60"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["60"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["60"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["60"]["BackgroundTransparency"] = 1;
G2L["60"]["Size"] = UDim2.new(0, 88, 0, 33);
G2L["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["60"]["Text"] = [[JumpPower: 0]];
G2L["60"]["Name"] = [[HeightLabel]];
G2L["60"]["Position"] = UDim2.new(-16.72482, 0, 0.99692, 0);


-- StarterGui.GuiGlobalFE.Main.ASMRFrame
G2L["61"] = Instance.new("TextButton", G2L["3b"]);
G2L["61"]["TextWrapped"] = true;
G2L["61"]["BorderSizePixel"] = 0;
G2L["61"]["TextSize"] = 26;
G2L["61"]["TextScaled"] = true;
G2L["61"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["61"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["61"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["61"]["Size"] = UDim2.new(0, 50, 0, 50);
G2L["61"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["61"]["Text"] = [[Asmr]];
G2L["61"]["Name"] = [[ASMRFrame]];
G2L["61"]["Position"] = UDim2.new(0, 255, 0, 10);


-- StarterGui.GuiGlobalFE.Main.ASMRFrame.OpenAsmr
G2L["62"] = Instance.new("LocalScript", G2L["61"]);
G2L["62"]["Name"] = [[OpenAsmr]];


-- StarterGui.GuiGlobalFE.Main.ASMRFrame.UIStroke
G2L["63"] = Instance.new("UIStroke", G2L["61"]);
G2L["63"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["63"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.OrbitFrame
G2L["64"] = Instance.new("Frame", G2L["1"]);
G2L["64"]["Visible"] = false;
G2L["64"]["BorderSizePixel"] = 0;
G2L["64"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["64"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["64"]["Size"] = UDim2.new(0, 426, 0, 211);
G2L["64"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["64"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["64"]["Name"] = [[OrbitFrame]];


-- StarterGui.GuiGlobalFE.OrbitFrame.UICorner
G2L["65"] = Instance.new("UICorner", G2L["64"]);
G2L["65"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.OrbitFrame.UIStroke
G2L["66"] = Instance.new("UIStroke", G2L["64"]);
G2L["66"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.OrbitFrame.Toggle
G2L["67"] = Instance.new("TextButton", G2L["64"]);
G2L["67"]["TextWrapped"] = true;
G2L["67"]["BorderSizePixel"] = 0;
G2L["67"]["TextSize"] = 14;
G2L["67"]["TextScaled"] = true;
G2L["67"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["67"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["67"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["67"]["Size"] = UDim2.new(0, 104, 0, 37);
G2L["67"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["67"]["Text"] = [[Toggle Orbit]];
G2L["67"]["Name"] = [[Toggle]];
G2L["67"]["Position"] = UDim2.new(0, 15, 0, 15);


-- StarterGui.GuiGlobalFE.OrbitFrame.Toggle.ToggleOrbit
G2L["68"] = Instance.new("LocalScript", G2L["67"]);
G2L["68"]["Name"] = [[ToggleOrbit]];


-- StarterGui.GuiGlobalFE.OrbitFrame.Toggle.UIStroke
G2L["69"] = Instance.new("UIStroke", G2L["67"]);
G2L["69"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["69"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.OrbitFrame.DropDown
G2L["6a"] = Instance.new("ScrollingFrame", G2L["64"]);
G2L["6a"]["Active"] = true;
G2L["6a"]["BorderSizePixel"] = 0;
G2L["6a"]["Name"] = [[DropDown]];
G2L["6a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6a"]["Size"] = UDim2.new(0, 107, 0, 141);
G2L["6a"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6a"]["Position"] = UDim2.new(0.03169, 0, 0.28436, 0);
G2L["6a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);


-- StarterGui.GuiGlobalFE.OrbitFrame.DropDown.NameTemp
G2L["6b"] = Instance.new("TextButton", G2L["6a"]);
G2L["6b"]["TextWrapped"] = true;
G2L["6b"]["BorderSizePixel"] = 0;
G2L["6b"]["TextSize"] = 14;
G2L["6b"]["TextScaled"] = true;
G2L["6b"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6b"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6b"]["BackgroundTransparency"] = 1;
G2L["6b"]["Size"] = UDim2.new(0, 107, 0, 24);
G2L["6b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6b"]["Text"] = [[Name]];
G2L["6b"]["Name"] = [[NameTemp]];
G2L["6b"]["Position"] = UDim2.new(-0.01869, 0, 0, 0);


-- StarterGui.GuiGlobalFE.OrbitFrame.DropDown.UIStroke
G2L["6c"] = Instance.new("UIStroke", G2L["6a"]);
G2L["6c"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.OrbitFrame.DropDown.UIListLayout
G2L["6d"] = Instance.new("UIListLayout", G2L["6a"]);
G2L["6d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.GuiGlobalFE.OrbitFrame.DropDown.UICorner
G2L["6e"] = Instance.new("UICorner", G2L["6a"]);
G2L["6e"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.OrbitFrame.Close
G2L["6f"] = Instance.new("TextButton", G2L["64"]);
G2L["6f"]["TextWrapped"] = true;
G2L["6f"]["BorderSizePixel"] = 0;
G2L["6f"]["TextSize"] = 14;
G2L["6f"]["TextScaled"] = true;
G2L["6f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6f"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["6f"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["6f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["6f"]["Text"] = [[X]];
G2L["6f"]["Name"] = [[Close]];
G2L["6f"]["Position"] = UDim2.new(0, 386, 0, 10);


-- StarterGui.GuiGlobalFE.OrbitFrame.Close.CloseOrbit
G2L["70"] = Instance.new("LocalScript", G2L["6f"]);
G2L["70"]["Name"] = [[CloseOrbit]];


-- StarterGui.GuiGlobalFE.OrbitFrame.Close.UIStroke
G2L["71"] = Instance.new("UIStroke", G2L["6f"]);
G2L["71"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["71"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.OrbitFrame.NameLabel
G2L["72"] = Instance.new("TextLabel", G2L["64"]);
G2L["72"]["TextWrapped"] = true;
G2L["72"]["BorderSizePixel"] = 0;
G2L["72"]["TextSize"] = 14;
G2L["72"]["TextScaled"] = true;
G2L["72"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["72"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["72"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["72"]["BackgroundTransparency"] = 1;
G2L["72"]["Size"] = UDim2.new(0, 426, 0, 33);
G2L["72"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["72"]["Text"] = [[Orbit]];
G2L["72"]["Name"] = [[NameLabel]];
G2L["72"]["Position"] = UDim2.new(0, 0, -0.1564, 0);


-- StarterGui.GuiGlobalFE.OrbitFrame.DistanceSlider
G2L["73"] = Instance.new("Frame", G2L["64"]);
G2L["73"]["BorderSizePixel"] = 0;
G2L["73"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["73"]["Size"] = UDim2.new(0, 277, 0, 14);
G2L["73"]["Position"] = UDim2.new(0.32629, 0, 0.24645, 0);
G2L["73"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["73"]["Name"] = [[DistanceSlider]];


-- StarterGui.GuiGlobalFE.OrbitFrame.DistanceSlider.DistanceSliding
G2L["74"] = Instance.new("LocalScript", G2L["73"]);
G2L["74"]["Name"] = [[DistanceSliding]];


-- StarterGui.GuiGlobalFE.OrbitFrame.DistanceSlider.UIStroke
G2L["75"] = Instance.new("UIStroke", G2L["73"]);
G2L["75"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.OrbitFrame.DistanceSlider.UICorner
G2L["76"] = Instance.new("UICorner", G2L["73"]);
G2L["76"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.OrbitFrame.DistanceSlider.Handle
G2L["77"] = Instance.new("Frame", G2L["73"]);
G2L["77"]["BorderSizePixel"] = 0;
G2L["77"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["77"]["Size"] = UDim2.new(0, 12, 0, 26);
G2L["77"]["Position"] = UDim2.new(0, 0, -0.42857, 0);
G2L["77"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["77"]["Name"] = [[Handle]];


-- StarterGui.GuiGlobalFE.OrbitFrame.DistanceSlider.Handle.UIStroke
G2L["78"] = Instance.new("UIStroke", G2L["77"]);
G2L["78"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.OrbitFrame.DistanceSlider.Handle.UICorner
G2L["79"] = Instance.new("UICorner", G2L["77"]);
G2L["79"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.OrbitFrame.DistanceSlider.DistanceLabel
G2L["7a"] = Instance.new("TextLabel", G2L["73"]);
G2L["7a"]["TextWrapped"] = true;
G2L["7a"]["BorderSizePixel"] = 0;
G2L["7a"]["TextSize"] = 14;
G2L["7a"]["TextScaled"] = true;
G2L["7a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["7a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7a"]["BackgroundTransparency"] = 1;
G2L["7a"]["Size"] = UDim2.new(0, 200, 0, 19);
G2L["7a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7a"]["Text"] = [[Distance: 0]];
G2L["7a"]["Name"] = [[DistanceLabel]];
G2L["7a"]["Position"] = UDim2.new(0.13691, 0, -1.80665, 0);


-- StarterGui.GuiGlobalFE.OrbitFrame.SpeedSlider
G2L["7b"] = Instance.new("Frame", G2L["64"]);
G2L["7b"]["BorderSizePixel"] = 0;
G2L["7b"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7b"]["Size"] = UDim2.new(0, 277, 0, 14);
G2L["7b"]["Position"] = UDim2.new(0.32629, 0, 0.52607, 0);
G2L["7b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7b"]["Name"] = [[SpeedSlider]];


-- StarterGui.GuiGlobalFE.OrbitFrame.SpeedSlider.SpeedSliding
G2L["7c"] = Instance.new("LocalScript", G2L["7b"]);
G2L["7c"]["Name"] = [[SpeedSliding]];


-- StarterGui.GuiGlobalFE.OrbitFrame.SpeedSlider.UIStroke
G2L["7d"] = Instance.new("UIStroke", G2L["7b"]);
G2L["7d"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.OrbitFrame.SpeedSlider.UICorner
G2L["7e"] = Instance.new("UICorner", G2L["7b"]);
G2L["7e"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.OrbitFrame.SpeedSlider.Handle
G2L["7f"] = Instance.new("Frame", G2L["7b"]);
G2L["7f"]["BorderSizePixel"] = 0;
G2L["7f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7f"]["Size"] = UDim2.new(0, 12, 0, 26);
G2L["7f"]["Position"] = UDim2.new(0, 0, -0.42857, 0);
G2L["7f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7f"]["Name"] = [[Handle]];


-- StarterGui.GuiGlobalFE.OrbitFrame.SpeedSlider.Handle.UIStroke
G2L["80"] = Instance.new("UIStroke", G2L["7f"]);
G2L["80"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.OrbitFrame.SpeedSlider.Handle.UICorner
G2L["81"] = Instance.new("UICorner", G2L["7f"]);
G2L["81"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.OrbitFrame.SpeedSlider.SpeedLabel
G2L["82"] = Instance.new("TextLabel", G2L["7b"]);
G2L["82"]["TextWrapped"] = true;
G2L["82"]["BorderSizePixel"] = 0;
G2L["82"]["TextSize"] = 14;
G2L["82"]["TextScaled"] = true;
G2L["82"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["82"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["82"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["82"]["BackgroundTransparency"] = 1;
G2L["82"]["Size"] = UDim2.new(0, 200, 0, 19);
G2L["82"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["82"]["Text"] = [[Speed: 0]];
G2L["82"]["Name"] = [[SpeedLabel]];
G2L["82"]["Position"] = UDim2.new(0.13691, 0, -1.907, 0);


-- StarterGui.GuiGlobalFE.OrbitFrame.HeightSlider
G2L["83"] = Instance.new("Frame", G2L["64"]);
G2L["83"]["BorderSizePixel"] = 0;
G2L["83"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["83"]["Size"] = UDim2.new(0, 277, 0, 14);
G2L["83"]["Position"] = UDim2.new(0.32629, 0, 0.78673, 0);
G2L["83"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["83"]["Name"] = [[HeightSlider]];


-- StarterGui.GuiGlobalFE.OrbitFrame.HeightSlider.HeightSliding
G2L["84"] = Instance.new("LocalScript", G2L["83"]);
G2L["84"]["Name"] = [[HeightSliding]];


-- StarterGui.GuiGlobalFE.OrbitFrame.HeightSlider.UIStroke
G2L["85"] = Instance.new("UIStroke", G2L["83"]);
G2L["85"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.OrbitFrame.HeightSlider.UICorner
G2L["86"] = Instance.new("UICorner", G2L["83"]);
G2L["86"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.OrbitFrame.HeightSlider.Handle
G2L["87"] = Instance.new("Frame", G2L["83"]);
G2L["87"]["BorderSizePixel"] = 0;
G2L["87"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["87"]["Size"] = UDim2.new(0, 12, 0, 26);
G2L["87"]["Position"] = UDim2.new(0.47292, 0, -0.42857, 0);
G2L["87"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["87"]["Name"] = [[Handle]];


-- StarterGui.GuiGlobalFE.OrbitFrame.HeightSlider.Handle.UIStroke
G2L["88"] = Instance.new("UIStroke", G2L["87"]);
G2L["88"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.OrbitFrame.HeightSlider.Handle.UICorner
G2L["89"] = Instance.new("UICorner", G2L["87"]);
G2L["89"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.OrbitFrame.HeightSlider.HeightLabel
G2L["8a"] = Instance.new("TextLabel", G2L["83"]);
G2L["8a"]["TextWrapped"] = true;
G2L["8a"]["BorderSizePixel"] = 0;
G2L["8a"]["TextSize"] = 14;
G2L["8a"]["TextScaled"] = true;
G2L["8a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["8a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8a"]["BackgroundTransparency"] = 1;
G2L["8a"]["Size"] = UDim2.new(0, 200, 0, 19);
G2L["8a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8a"]["Text"] = [[Height: 0]];
G2L["8a"]["Name"] = [[HeightLabel]];
G2L["8a"]["Position"] = UDim2.new(0.13691, 0, -2.221, 0);


-- StarterGui.GuiGlobalFE.OrbitFrame.SelectedPlayer
G2L["8b"] = Instance.new("StringValue", G2L["64"]);
G2L["8b"]["Name"] = [[SelectedPlayer]];


-- StarterGui.GuiGlobalFE.OrbitFrame.Speed
G2L["8c"] = Instance.new("NumberValue", G2L["64"]);
G2L["8c"]["Name"] = [[Speed]];


-- StarterGui.GuiGlobalFE.OrbitFrame.Height
G2L["8d"] = Instance.new("NumberValue", G2L["64"]);
G2L["8d"]["Name"] = [[Height]];


-- StarterGui.GuiGlobalFE.OrbitFrame.Distance
G2L["8e"] = Instance.new("NumberValue", G2L["64"]);
G2L["8e"]["Name"] = [[Distance]];


-- StarterGui.GuiGlobalFE.Asmr
G2L["8f"] = Instance.new("Frame", G2L["1"]);
G2L["8f"]["Visible"] = false;
G2L["8f"]["BorderSizePixel"] = 0;
G2L["8f"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8f"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["8f"]["Size"] = UDim2.new(0, 426, 0, 273);
G2L["8f"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["8f"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["8f"]["Name"] = [[Asmr]];


-- StarterGui.GuiGlobalFE.Asmr.MusicManager
G2L["90"] = Instance.new("LocalScript", G2L["8f"]);
G2L["90"]["Name"] = [[MusicManager]];


-- StarterGui.GuiGlobalFE.Asmr.DraggingForSliders
G2L["91"] = Instance.new("LocalScript", G2L["8f"]);
G2L["91"]["Name"] = [[DraggingForSliders]];


-- StarterGui.GuiGlobalFE.Asmr.NameLabel
G2L["92"] = Instance.new("TextLabel", G2L["8f"]);
G2L["92"]["TextWrapped"] = true;
G2L["92"]["BorderSizePixel"] = 0;
G2L["92"]["TextSize"] = 14;
G2L["92"]["TextScaled"] = true;
G2L["92"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["92"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic);
G2L["92"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["92"]["BackgroundTransparency"] = 1;
G2L["92"]["Size"] = UDim2.new(0, 426, 0, 33);
G2L["92"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["92"]["Text"] = [[ASMR]];
G2L["92"]["Name"] = [[NameLabel]];
G2L["92"]["Position"] = UDim2.new(0, 0, -0.12343, 0);


-- StarterGui.GuiGlobalFE.Asmr.UICorner
G2L["93"] = Instance.new("UICorner", G2L["8f"]);
G2L["93"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Asmr.UIStroke
G2L["94"] = Instance.new("UIStroke", G2L["8f"]);
G2L["94"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.Asmr.Close
G2L["95"] = Instance.new("TextButton", G2L["8f"]);
G2L["95"]["TextWrapped"] = true;
G2L["95"]["BorderSizePixel"] = 0;
G2L["95"]["TextSize"] = 14;
G2L["95"]["TextScaled"] = true;
G2L["95"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["95"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["95"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["95"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["95"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["95"]["Text"] = [[X]];
G2L["95"]["Name"] = [[Close]];
G2L["95"]["Position"] = UDim2.new(0, 386, 0, 10);


-- StarterGui.GuiGlobalFE.Asmr.Close.CloseASMR
G2L["96"] = Instance.new("LocalScript", G2L["95"]);
G2L["96"]["Name"] = [[CloseASMR]];


-- StarterGui.GuiGlobalFE.Asmr.Close.UIStroke
G2L["97"] = Instance.new("UIStroke", G2L["95"]);
G2L["97"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["97"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.Asmr.Close.UICorner
G2L["98"] = Instance.new("UICorner", G2L["95"]);
G2L["98"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Asmr.Close.UIStroke
G2L["99"] = Instance.new("UIStroke", G2L["95"]);
G2L["99"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["99"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.Asmr.MusicID
G2L["9a"] = Instance.new("TextBox", G2L["8f"]);
G2L["9a"]["Name"] = [[MusicID]];
G2L["9a"]["BorderSizePixel"] = 0;
G2L["9a"]["TextWrapped"] = true;
G2L["9a"]["TextSize"] = 25;
G2L["9a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9a"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9a"]["PlaceholderText"] = [[Sound ID]];
G2L["9a"]["Size"] = UDim2.new(0, 138, 0, 50);
G2L["9a"]["Position"] = UDim2.new(0, 10, 0, 10);
G2L["9a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9a"]["Text"] = [[]];
G2L["9a"]["BackgroundTransparency"] = 1;


-- StarterGui.GuiGlobalFE.Asmr.MusicID.UIStroke
G2L["9b"] = Instance.new("UIStroke", G2L["9a"]);
G2L["9b"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["9b"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.Asmr.MusicID.UICorner
G2L["9c"] = Instance.new("UICorner", G2L["9a"]);
G2L["9c"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Asmr.Play
G2L["9d"] = Instance.new("TextButton", G2L["8f"]);
G2L["9d"]["TextWrapped"] = true;
G2L["9d"]["BorderSizePixel"] = 0;
G2L["9d"]["TextSize"] = 26;
G2L["9d"]["TextScaled"] = true;
G2L["9d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9d"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9d"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["9d"]["Size"] = UDim2.new(0, 69, 0, 19);
G2L["9d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["9d"]["Text"] = [[Play]];
G2L["9d"]["Name"] = [[Play]];
G2L["9d"]["Position"] = UDim2.new(0, 10, 0, 64);


-- StarterGui.GuiGlobalFE.Asmr.Play.UIStroke
G2L["9e"] = Instance.new("UIStroke", G2L["9d"]);
G2L["9e"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["9e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.Asmr.Play.UICorner
G2L["9f"] = Instance.new("UICorner", G2L["9d"]);
G2L["9f"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Asmr.Stop
G2L["a0"] = Instance.new("TextButton", G2L["8f"]);
G2L["a0"]["TextWrapped"] = true;
G2L["a0"]["BorderSizePixel"] = 0;
G2L["a0"]["TextSize"] = 26;
G2L["a0"]["TextScaled"] = true;
G2L["a0"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["a0"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a0"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["a0"]["Size"] = UDim2.new(0, 69, 0, 19);
G2L["a0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a0"]["Text"] = [[Stop]];
G2L["a0"]["Name"] = [[Stop]];
G2L["a0"]["Position"] = UDim2.new(0, 81, 0, 64);


-- StarterGui.GuiGlobalFE.Asmr.Stop.UIStroke
G2L["a1"] = Instance.new("UIStroke", G2L["a0"]);
G2L["a1"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["a1"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.Asmr.Stop.UICorner
G2L["a2"] = Instance.new("UICorner", G2L["a0"]);
G2L["a2"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Asmr.FOVSlider
G2L["a3"] = Instance.new("Frame", G2L["8f"]);
G2L["a3"]["BorderSizePixel"] = 0;
G2L["a3"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a3"]["Size"] = UDim2.new(0, 277, 0, 14);
G2L["a3"]["Position"] = UDim2.new(0.02347, 0, 0.91966, 0);
G2L["a3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a3"]["Name"] = [[FOVSlider]];


-- StarterGui.GuiGlobalFE.Asmr.FOVSlider.FOVSliding
G2L["a4"] = Instance.new("LocalScript", G2L["a3"]);
G2L["a4"]["Name"] = [[FOVSliding]];


-- StarterGui.GuiGlobalFE.Asmr.FOVSlider.UIStroke
G2L["a5"] = Instance.new("UIStroke", G2L["a3"]);
G2L["a5"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.Asmr.FOVSlider.UICorner
G2L["a6"] = Instance.new("UICorner", G2L["a3"]);
G2L["a6"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Asmr.FOVSlider.Handle
G2L["a7"] = Instance.new("Frame", G2L["a3"]);
G2L["a7"]["BorderSizePixel"] = 0;
G2L["a7"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a7"]["Size"] = UDim2.new(0, 12, 0, 26);
G2L["a7"]["Position"] = UDim2.new(0.47292, 0, -0.5, 0);
G2L["a7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a7"]["Name"] = [[Handle]];


-- StarterGui.GuiGlobalFE.Asmr.FOVSlider.Handle.UIStroke
G2L["a8"] = Instance.new("UIStroke", G2L["a7"]);
G2L["a8"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.Asmr.FOVSlider.Handle.UICorner
G2L["a9"] = Instance.new("UICorner", G2L["a7"]);
G2L["a9"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Asmr.FOVSlider.FOVLabel
G2L["aa"] = Instance.new("TextLabel", G2L["a3"]);
G2L["aa"]["TextWrapped"] = true;
G2L["aa"]["BorderSizePixel"] = 0;
G2L["aa"]["TextSize"] = 14;
G2L["aa"]["TextScaled"] = true;
G2L["aa"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["aa"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["aa"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["aa"]["BackgroundTransparency"] = 1;
G2L["aa"]["Size"] = UDim2.new(0, 200, 0, 19);
G2L["aa"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["aa"]["Text"] = [[FOV: ?]];
G2L["aa"]["Name"] = [[FOVLabel]];
G2L["aa"]["Position"] = UDim2.new(0.13691, 0, -1.87808, 0);


-- StarterGui.GuiGlobalFE.Asmr.MuteGame
G2L["ab"] = Instance.new("TextButton", G2L["8f"]);
G2L["ab"]["TextWrapped"] = true;
G2L["ab"]["BorderSizePixel"] = 0;
G2L["ab"]["TextSize"] = 26;
G2L["ab"]["TextScaled"] = true;
G2L["ab"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ab"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ab"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ab"]["Size"] = UDim2.new(0, 54, 0, 30);
G2L["ab"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ab"]["Text"] = [[Mute Game]];
G2L["ab"]["Name"] = [[MuteGame]];
G2L["ab"]["Position"] = UDim2.new(0, 10, 0, 89);


-- StarterGui.GuiGlobalFE.Asmr.MuteGame.MuteGame
G2L["ac"] = Instance.new("LocalScript", G2L["ab"]);
G2L["ac"]["Name"] = [[MuteGame]];


-- StarterGui.GuiGlobalFE.Asmr.MuteGame.UIStroke
G2L["ad"] = Instance.new("UIStroke", G2L["ab"]);
G2L["ad"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["ad"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.Asmr.MuteGame.UICorner
G2L["ae"] = Instance.new("UICorner", G2L["ab"]);
G2L["ae"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Asmr.UIDragDetector
G2L["af"] = Instance.new("UIDragDetector", G2L["8f"]);
-- [ERROR] cannot convert ReferenceUIInstance, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"


-- StarterGui.GuiGlobalFE.Asmr.GravitySlider
G2L["b0"] = Instance.new("Frame", G2L["8f"]);
G2L["b0"]["BorderSizePixel"] = 0;
G2L["b0"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b0"]["Size"] = UDim2.new(0, 277, 0, 14);
G2L["b0"]["Position"] = UDim2.new(0.02347, 0, 0.74453, 0);
G2L["b0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b0"]["Name"] = [[GravitySlider]];


-- StarterGui.GuiGlobalFE.Asmr.GravitySlider.GravitySliding
G2L["b1"] = Instance.new("LocalScript", G2L["b0"]);
G2L["b1"]["Name"] = [[GravitySliding]];


-- StarterGui.GuiGlobalFE.Asmr.GravitySlider.UIStroke
G2L["b2"] = Instance.new("UIStroke", G2L["b0"]);
G2L["b2"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.Asmr.GravitySlider.UICorner
G2L["b3"] = Instance.new("UICorner", G2L["b0"]);
G2L["b3"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Asmr.GravitySlider.Handle
G2L["b4"] = Instance.new("Frame", G2L["b0"]);
G2L["b4"]["BorderSizePixel"] = 0;
G2L["b4"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b4"]["Size"] = UDim2.new(0, 12, 0, 26);
G2L["b4"]["Position"] = UDim2.new(0.47292, 0, -0.5, 0);
G2L["b4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b4"]["Name"] = [[Handle]];


-- StarterGui.GuiGlobalFE.Asmr.GravitySlider.Handle.UIStroke
G2L["b5"] = Instance.new("UIStroke", G2L["b4"]);
G2L["b5"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.Asmr.GravitySlider.Handle.UICorner
G2L["b6"] = Instance.new("UICorner", G2L["b4"]);
G2L["b6"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Asmr.GravitySlider.GravityLabel
G2L["b7"] = Instance.new("TextLabel", G2L["b0"]);
G2L["b7"]["TextWrapped"] = true;
G2L["b7"]["BorderSizePixel"] = 0;
G2L["b7"]["TextSize"] = 14;
G2L["b7"]["TextScaled"] = true;
G2L["b7"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b7"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["b7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b7"]["BackgroundTransparency"] = 1;
G2L["b7"]["Size"] = UDim2.new(0, 200, 0, 19);
G2L["b7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b7"]["Text"] = [[Gravity: ?]];
G2L["b7"]["Name"] = [[GravityLabel]];
G2L["b7"]["Position"] = UDim2.new(0.13691, 0, -1.87808, 0);


-- StarterGui.GuiGlobalFE.Asmr.TimeOfDaySlider
G2L["b8"] = Instance.new("Frame", G2L["8f"]);
G2L["b8"]["BorderSizePixel"] = 0;
G2L["b8"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b8"]["Size"] = UDim2.new(0, 277, 0, 14);
G2L["b8"]["Position"] = UDim2.new(0.02347, 0, 0.57237, 0);
G2L["b8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b8"]["Name"] = [[TimeOfDaySlider]];


-- StarterGui.GuiGlobalFE.Asmr.TimeOfDaySlider.TODSliding
G2L["b9"] = Instance.new("LocalScript", G2L["b8"]);
G2L["b9"]["Name"] = [[TODSliding]];


-- StarterGui.GuiGlobalFE.Asmr.TimeOfDaySlider.UIStroke
G2L["ba"] = Instance.new("UIStroke", G2L["b8"]);
G2L["ba"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.Asmr.TimeOfDaySlider.UICorner
G2L["bb"] = Instance.new("UICorner", G2L["b8"]);
G2L["bb"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Asmr.TimeOfDaySlider.Handle
G2L["bc"] = Instance.new("Frame", G2L["b8"]);
G2L["bc"]["BorderSizePixel"] = 0;
G2L["bc"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bc"]["Size"] = UDim2.new(0, 12, 0, 26);
G2L["bc"]["Position"] = UDim2.new(0.47292, 0, -0.5, 0);
G2L["bc"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bc"]["Name"] = [[Handle]];


-- StarterGui.GuiGlobalFE.Asmr.TimeOfDaySlider.Handle.UIStroke
G2L["bd"] = Instance.new("UIStroke", G2L["bc"]);
G2L["bd"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.Asmr.TimeOfDaySlider.Handle.UICorner
G2L["be"] = Instance.new("UICorner", G2L["bc"]);
G2L["be"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.Asmr.TimeOfDaySlider.TODLabel
G2L["bf"] = Instance.new("TextLabel", G2L["b8"]);
G2L["bf"]["TextWrapped"] = true;
G2L["bf"]["BorderSizePixel"] = 0;
G2L["bf"]["TextSize"] = 14;
G2L["bf"]["TextScaled"] = true;
G2L["bf"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bf"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["bf"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bf"]["BackgroundTransparency"] = 1;
G2L["bf"]["Size"] = UDim2.new(0, 200, 0, 19);
G2L["bf"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bf"]["Text"] = [[Time Of Day: ?]];
G2L["bf"]["Name"] = [[TODLabel]];
G2L["bf"]["Position"] = UDim2.new(0.13691, 0, -1.87808, 0);


-- StarterGui.GuiGlobalFE.Asmr.Shader
G2L["c0"] = Instance.new("TextButton", G2L["8f"]);
G2L["c0"]["TextWrapped"] = true;
G2L["c0"]["BorderSizePixel"] = 0;
G2L["c0"]["TextSize"] = 22;
G2L["c0"]["TextScaled"] = true;
G2L["c0"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c0"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c0"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c0"]["Size"] = UDim2.new(0, 64, 0, 30);
G2L["c0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c0"]["Text"] = [[Shader]];
G2L["c0"]["Name"] = [[Shader]];
G2L["c0"]["Position"] = UDim2.new(0, 176, 0, 10);


-- StarterGui.GuiGlobalFE.Asmr.Shader.ShaderApply
G2L["c1"] = Instance.new("LocalScript", G2L["c0"]);
G2L["c1"]["Name"] = [[ShaderApply]];


-- StarterGui.GuiGlobalFE.Asmr.Shader.UIStroke
G2L["c2"] = Instance.new("UIStroke", G2L["c0"]);
G2L["c2"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["c2"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.Asmr.Shader.UICorner
G2L["c3"] = Instance.new("UICorner", G2L["c0"]);
G2L["c3"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.KeySystem
G2L["c4"] = Instance.new("Frame", G2L["1"]);
G2L["c4"]["BorderSizePixel"] = 0;
G2L["c4"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["c4"]["Size"] = UDim2.new(0, 194, 0, 218);
G2L["c4"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["c4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c4"]["Name"] = [[KeySystem]];


-- StarterGui.GuiGlobalFE.KeySystem.UICorner
G2L["c5"] = Instance.new("UICorner", G2L["c4"]);
G2L["c5"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.KeySystem.UIStroke
G2L["c6"] = Instance.new("UIStroke", G2L["c4"]);
G2L["c6"]["Color"] = Color3.fromRGB(255, 255, 255);


-- StarterGui.GuiGlobalFE.KeySystem.Getkey
G2L["c7"] = Instance.new("TextButton", G2L["c4"]);
G2L["c7"]["TextWrapped"] = true;
G2L["c7"]["BorderSizePixel"] = 0;
G2L["c7"]["TextSize"] = 26;
G2L["c7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c7"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c7"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["c7"]["Size"] = UDim2.new(0, 89, 0, 50);
G2L["c7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c7"]["Text"] = [[Get Key]];
G2L["c7"]["Name"] = [[Getkey]];
G2L["c7"]["Position"] = UDim2.new(0.03093, 0, 0.74279, 0);


-- StarterGui.GuiGlobalFE.KeySystem.Getkey.UIStroke
G2L["c8"] = Instance.new("UIStroke", G2L["c7"]);
G2L["c8"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["c8"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.KeySystem.Getkey.UICorner
G2L["c9"] = Instance.new("UICorner", G2L["c7"]);
G2L["c9"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.KeySystem.SkipKey
G2L["ca"] = Instance.new("TextButton", G2L["c4"]);
G2L["ca"]["BorderSizePixel"] = 0;
G2L["ca"]["TextSize"] = 26;
G2L["ca"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ca"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ca"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ca"]["Size"] = UDim2.new(0, 87, 0, 50);
G2L["ca"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ca"]["Text"] = [[Fuck You]];
G2L["ca"]["Name"] = [[SkipKey]];
G2L["ca"]["Position"] = UDim2.new(0.52062, 0, 0.74279, 0);


-- StarterGui.GuiGlobalFE.KeySystem.SkipKey.CloseKeySys
G2L["cb"] = Instance.new("LocalScript", G2L["ca"]);
G2L["cb"]["Name"] = [[CloseKeySys]];


-- StarterGui.GuiGlobalFE.KeySystem.SkipKey.UIStroke
G2L["cc"] = Instance.new("UIStroke", G2L["ca"]);
G2L["cc"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["cc"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.KeySystem.SkipKey.UICorner
G2L["cd"] = Instance.new("UICorner", G2L["ca"]);
G2L["cd"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.KeySystem.KeyName
G2L["ce"] = Instance.new("TextBox", G2L["c4"]);
G2L["ce"]["Name"] = [[KeyName]];
G2L["ce"]["BorderSizePixel"] = 0;
G2L["ce"]["TextWrapped"] = true;
G2L["ce"]["TextSize"] = 34;
G2L["ce"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["ce"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ce"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ce"]["PlaceholderText"] = [[Enter Key:]];
G2L["ce"]["Size"] = UDim2.new(0, 194, 0, 50);
G2L["ce"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ce"]["Text"] = [[]];


-- StarterGui.GuiGlobalFE.KeySystem.KeyName.UIStroke
G2L["cf"] = Instance.new("UIStroke", G2L["ce"]);
G2L["cf"]["Color"] = Color3.fromRGB(255, 255, 255);
G2L["cf"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;


-- StarterGui.GuiGlobalFE.KeySystem.KeyName.UICorner
G2L["d0"] = Instance.new("UICorner", G2L["ce"]);
G2L["d0"]["CornerRadius"] = UDim.new(0, 14);


-- StarterGui.GuiGlobalFE.KeySystem.Decal
G2L["d1"] = Instance.new("Decal", G2L["c4"]);
-- [ERROR] cannot convert TextureContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["d1"]["Texture"] = [[rbxassetid://72870213138312]];
-- [ERROR] cannot convert ColorMapContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["d1"]["ColorMap"] = [[rbxassetid://72870213138312]];


-- StarterGui.GuiGlobalFE.KeySystem.Image
G2L["d2"] = Instance.new("ImageLabel", G2L["c4"]);
G2L["d2"]["BorderSizePixel"] = 0;
G2L["d2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["d2"]["Image"] = [[rbxassetid://72870213138312]];
G2L["d2"]["Size"] = UDim2.new(0, 194, 0, 91);
G2L["d2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["d2"]["Name"] = [[Image]];
G2L["d2"]["Position"] = UDim2.new(0, 0, 0.27064, 0);


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
local function C_3c()
local script = G2L["3c"];
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
task.spawn(C_3c);
-- StarterGui.GuiGlobalFE.Main.Orbit-Frame.OpenOrbit
local function C_42()
local script = G2L["42"];
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
task.spawn(C_42);
-- StarterGui.GuiGlobalFE.Main.esp.ToggleESP
local function C_46()
local script = G2L["46"];
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
task.spawn(C_46);
-- StarterGui.GuiGlobalFE.Main.fly.ToggleFly
local function C_49()
local script = G2L["49"];
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
task.spawn(C_49);
-- StarterGui.GuiGlobalFE.Main.RandoNames.Rando
local function C_4c()
local script = G2L["4c"];
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
task.spawn(C_4c);
-- StarterGui.GuiGlobalFE.Main.WalkspeedSlider.WalkspeedSliding
local function C_4f()
local script = G2L["4f"];
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
task.spawn(C_4f);
-- StarterGui.GuiGlobalFE.Main.Close.CloseGlobal
local function C_57()
local script = G2L["57"];
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
task.spawn(C_57);
-- StarterGui.GuiGlobalFE.Main.JumpHeightSlider.JumpHeightSliding
local function C_5a()
local script = G2L["5a"];
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
task.spawn(C_5a);
-- StarterGui.GuiGlobalFE.Main.ASMRFrame.OpenAsmr
local function C_62()
local script = G2L["62"];
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent:WaitForChild("Main").Visible = false
		script.Parent.Parent.Parent:WaitForChild("Asmr").Visible = true
	end)
end;
task.spawn(C_62);
-- StarterGui.GuiGlobalFE.OrbitFrame.Toggle.ToggleOrbit
local function C_68()
local script = G2L["68"];
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
task.spawn(C_68);
-- StarterGui.GuiGlobalFE.OrbitFrame.Close.CloseOrbit
local function C_70()
local script = G2L["70"];
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
task.spawn(C_70);
-- StarterGui.GuiGlobalFE.OrbitFrame.DistanceSlider.DistanceSliding
local function C_74()
local script = G2L["74"];
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
task.spawn(C_74);
-- StarterGui.GuiGlobalFE.OrbitFrame.SpeedSlider.SpeedSliding
local function C_7c()
local script = G2L["7c"];
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
task.spawn(C_7c);
-- StarterGui.GuiGlobalFE.OrbitFrame.HeightSlider.HeightSliding
local function C_84()
local script = G2L["84"];
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
task.spawn(C_84);
-- StarterGui.GuiGlobalFE.Asmr.MusicManager
local function C_90()
local script = G2L["90"];
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
task.spawn(C_90);
-- StarterGui.GuiGlobalFE.Asmr.DraggingForSliders
local function C_91()
local script = G2L["91"];
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
task.spawn(C_91);
-- StarterGui.GuiGlobalFE.Asmr.Close.CloseASMR
local function C_96()
local script = G2L["96"];
	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent:WaitForChild("Asmr").Visible = false
		script.Parent.Parent.Parent:WaitForChild("Main").Visible = true
	end)
end;
task.spawn(C_96);
-- StarterGui.GuiGlobalFE.Asmr.FOVSlider.FOVSliding
local function C_a4()
local script = G2L["a4"];
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
task.spawn(C_a4);
-- StarterGui.GuiGlobalFE.Asmr.MuteGame.MuteGame
local function C_ac()
local script = G2L["ac"];
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
task.spawn(C_ac);
-- StarterGui.GuiGlobalFE.Asmr.GravitySlider.GravitySliding
local function C_b1()
local script = G2L["b1"];
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
task.spawn(C_b1);
-- StarterGui.GuiGlobalFE.Asmr.TimeOfDaySlider.TODSliding
local function C_b9()
local script = G2L["b9"];
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
task.spawn(C_b9);
-- StarterGui.GuiGlobalFE.Asmr.Shader.ShaderApply
local function C_c1()
local script = G2L["c1"];
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
task.spawn(C_c1);
-- StarterGui.GuiGlobalFE.KeySystem.SkipKey.CloseKeySys
local function C_cb()
local script = G2L["cb"];
	local key = script.Parent.Parent
	local Main = script.Parent.Parent.Parent:WaitForChild("Main")
	local Devil = script.Parent.Parent.Parent:WaitForChild("Devil")
	
	script.Parent.MouseButton1Click:Connect(function()
		if not key.Visible then return end
		
		key:Destroy()
		Main.Visible = true
		Devil.Enabled = true
	end)
end;
task.spawn(C_cb);

return G2L["1"], require;
