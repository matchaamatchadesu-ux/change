-- PortalReplacerGUI.lua
-- 3つの JSON ファイル（内容は埋め込み済み）を ON/OFF 切替して writefile に保存する LocalScript
-- モバイル対応（タッチ）ドラッグ / 削除 / 最小化機能つき

local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

local localPlayer = Players.LocalPlayer

-- ファイル名（ローカル保存先）
local FOLDER = "PortalToggler"
local FILE_PURPLE_TTK = FOLDER .. "/purple ttk.json"
local FILE_PURPLE_PORTAL = FOLDER .. "/Purple Portal.json"
local FILE_WHITE_PORTAL = FOLDER .. "/WhitePortal (1).json"

-- 埋め込み元 JSON（ユーザー提供の中身をそのまま入れています）
local RAW_PURPLE_TTK = [[
{
  "replacement_rules": [
    {
      "name": "ttk stuff 1",
      "replace_ids": [
        13445835817
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 98782654528626
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        12967173460
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 119725878498870
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        13395423415
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 90301936548452
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        13398626797
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 90936653370000
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        12991508490
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 95668206963957
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        12597716531
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 100715146905132
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        13403638699
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 83985640460623
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        13292295432
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 116280510322467
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        13292221548
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 111015209260895
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        13395481373
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 127817303636701
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        13395479051
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 101511849129959
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        13395453034
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 90952531873466
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        13388299052,
        13388299052
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 95201700365989
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        11503727043
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 105000304422632
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        13380253135
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 127218807287181
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        12867876828
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 85201306954759
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        11978273841
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 118852903407168
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        9899987630
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 131191389328914
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        9732280828
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 131517786114033
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        9732292273
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 97424518284664
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        13378639290
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 84499737935243
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        13398737719
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 97926209862458
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        13380336960
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 78153548962368
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        13380601033
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 128495428378474
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        11505137329
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 123769496765863
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        13378691792
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 91912118827176
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        13266625961
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 122936817398124
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        12867668045
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 87486688986251
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        13379238019
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 109961783164825
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        13398805538
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 91993374482982
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        11026658044
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 82769339280366
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        11759396824
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 111547157243605
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        11133563100
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 113566198257258
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        11133601425
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 83143477004383
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        12856232690
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 101822195698178
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        18510134527
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 70767399426324
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        16860947377
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 106145057938354
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        16861560848
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 74490146968303
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        16861489713
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 87566497889692
    },
    {
      "name": "ttk stuff",
      "replace_ids": [
        18771266258
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 92971695105674
    }
  ]
}
]]

local RAW_PURPLE_PORTAL = [[
{
  "replacement_rules": [
    {
      "name": "PurplePortalInit",
      "replace_ids": [
        11505401455
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 75691495314927
    },
    {
      "name": "PurplePortalLoop",
      "replace_ids": [
        11505415155
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 115987600976732
    },
    {
      "name": "PurplePortalEnd",
      "replace_ids": [
        11505409366
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 80333987758391
    },
    {
      "name": "PurpleTHINGYidk",
      "replace_ids": [
        11595826769
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 76913156933878
    },
    {
      "name": "UnPurplable Images",
      "replace_ids": [
        1084999891,
        9721611825,
        7837704800,
        9760500840,
        11505437937,
        6679618752,
        115987600976732,
        75691495314927,
        80333987758391,
        779779034,
        11472671285,
        11460359308,
        1084976679,
        11492870634,
        10472974536,
        11517935503,
        10472990183,
        11197917329,
        9087858527,
        10331893022,
        78916416165713,
        3029306948,
        76913156933878,
        10536437810,
        10874188963,
        7994629137,
        10762653221,
        8466767701,
        7216855914,
        11536435403,
        11187665050,
        11518060690,
        11548034018,
        11518019293,
        9659478878,
        11547621182,
        11547974831,
        9181472195,
        11554581930,
        11187906867,
        11546611176,
        8050136743,
        8030746658,
        8037636142,
        9731160076,
        11608969364,
        6572632309,
        9709779092,
        11611204132,
        290434402,
        11608623406,
        8844906383,
        8845024159,
        10561140814,
        11608704051,
        8268137540,
        11609020974
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 97607013681812
    },
    {
      "name": "Rocks from Portal Z",
      "replace_ids": [
        11522664803,
        11522662841,
        11522671059,
        11522672792,
        11522672069,
        11522648126,
        11522674977,
        11522673605,
        11522675994
      ],
      "mode": "id",
      "enabled": true
    },
    {
      "name": "Portal V Meshes",
      "replace_ids": [
        10789123424,
        9284463563,
        8916838445,
        10442978564,
        10491549057,
        8917398280,
        10477354824,
        10477354926,
        10477354825,
        10477354918
      ],
      "mode": "id",
      "enabled": true
    },
    {
      "name": "Purple Portal Icon",
      "replace_ids": [
        114914780752454
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 128706896297354
    }
  ]
}
]]

local RAW_WHITE_PORTAL = [[
{
  "replacement_rules": [
    {
      "name": "WhitePortalInit",
      "replace_ids": [
        11505401455
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 111131549150022
    },
    {
      "name": "WhitePortalLoop",
      "replace_ids": [
        11505415155
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 107007852262895
    },
    {
      "name": "WhitePortalEnd",
      "replace_ids": [
        11505409366
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 93696108586426
    },
    {
      "name": "WhiteTHINGYidk",
      "replace_ids": [
        11595826769
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 76913156933878
    },
    {
      "name": "UnWhiteable Images",
      "replace_ids": [
        1084999891,
        9721611825,
        7837704800,
        9760500840,
        11505437937,
        6679618752,
        115987600976732,
        75691495314927,
        80333987758391,
        779779034,
        11472671285,
        11460359308,
        1084976679,
        11492870634,
        10472974536,
        11517935503,
        10472990183,
        11197917329,
        9087858527,
        10331893022,
        78916416165713,
        3029306948,
        76913156933878,
        10536437810,
        10874188963,
        7994629137,
        10762653221,
        8466767701,
        7216855914,
        11536435403,
        11187665050,
        11518060690,
        11548034018,
        11518019293,
        9659478878,
        11547621182,
        11547974831,
        9181472195,
        11554581930,
        11187906867,
        11546611176,
        8050136743,
        8030746658,
        8037636142,
        9731160076,
        11608969364,
        6572632309,
        9709779092,
        11611204132,
        290434402,
        11608623406,
        8844906383,
        8845024159,
        10561140814,
        11608704051,
        8268137540,
        11609020974
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 97607013681812
    },
    {
      "name": "Rocks from Portal Z",
      "replace_ids": [
        11522664803,
        11522662841,
        11522671059,
        11522672792,
        11522672069,
        11522648126,
        11522674977,
        11522673605,
        11522675994
      ],
      "mode": "id",
      "enabled": true
    },
    {
      "name": "Portal V Meshes",
      "replace_ids": [
        10789123424,
        9284463563,
        8916838445,
        10442978564,
        10491549057,
        8917398280,
        10477354824,
        10477354926,
        10477354825,
        10477354918
      ],
      "mode": "id",
      "enabled": true
    },
    {
      "name": "White Portal Icon",
      "replace_ids": [
        114914780752454
      ],
      "mode": "id",
      "enabled": true,
      "with_id": 105836483087285
    }
  ]
}
]]

-- ユーティリティ: ファイル操作（writefile/readfile/isfile/delfile）
local has_writefile = (type(writefile) == "function")
local has_readfile = (type(readfile) == "function")
local has_isfile = (type(isfile) == "function")
local has_makefolder = (type(makefolder) == "function")
local has_delfile = (type(delfile) == "function")

local function ensureFolder()
	if has_makefolder then
		pcall(function() makefolder(FOLDER) end)
	end
end

local function writeJSONFile(path, tbl)
	if not has_writefile then
		warn("writefile not available in this environment; cannot save", path)
		return false
	end
	local ok, json = pcall(function() return HttpService:JSONEncode(tbl) end)
	if not ok then
		warn("JSON encode failed for", path, json)
		return false
	end
	local succ, err = pcall(function() writefile(path, json) end)
	if not succ then
		warn("writefile failed for", path, err)
		return false
	end
	return true
end

local function readJSONFile(path, rawFallback)
	if has_isfile and not isfile(path) then
		return nil
	end
	if not has_readfile then
		-- 環境に readfile が無い場合は nil を返す
		return nil
	end
	local ok, content = pcall(function() return readfile(path) end)
	if not ok then
		warn("readfile failed for", path, content)
		return nil
	end
	local ok2, tbl = pcall(function() return HttpService:JSONDecode(content) end)
	if not ok2 then
		-- JSON decode に失敗したら rawFallback があればそれを返す
		if rawFallback then
			local ok3, t3 = pcall(function() return HttpService:JSONDecode(rawFallback) end)
			if ok3 then return t3 end
		end
		return nil
	end
	return tbl
end

local function deleteFile(path)
	if not has_delfile then
		warn("delfile not available; cannot delete", path)
		return false
	end
	local ok, err = pcall(function() delfile(path) end)
	if not ok then
		warn("delfile failed for", path, err)
		return false
	end
	return true
end

-- 初期化: ファイルが無ければ埋め込み JSON を書き出す
local function initFilesIfMissing()
	ensureFolder()
	-- purple ttk
	if has_isfile then
		if not isfile(FILE_PURPLE_TTK) then
			if has_writefile then writefile(FILE_PURPLE_TTK, RAW_PURPLE_TTK) end
		end
		if not isfile(FILE_PURPLE_PORTAL) then
			if has_writefile then writefile(FILE_PURPLE_PORTAL, RAW_PURPLE_PORTAL) end
		end
		if not isfile(FILE_WHITE_PORTAL) then
			if has_writefile then writefile(FILE_WHITE_PORTAL, RAW_WHITE_PORTAL) end
		end
	else
		-- isfile not available: still attempt to write so user can see warnings if unsupported
		if has_writefile then
			pcall(function() writefile(FILE_PURPLE_TTK, RAW_PURPLE_TTK) end)
			pcall(function() writefile(FILE_PURPLE_PORTAL, RAW_PURPLE_PORTAL) end)
			pcall(function() writefile(FILE_WHITE_PORTAL, RAW_WHITE_PORTAL) end)
		end
	end
end

-- テーブル内のすべての replacement_rules の enabled を切り替える
local function setAllRulesEnabled(tbl, enabled)
	if not tbl or not tbl.replacement_rules then return end
	for _, rule in ipairs(tbl.replacement_rules) do
		rule.enabled = enabled
	end
end

-- 現在の状態を読み取って UI に反映するための helper
local function getEnabledStateFromTable(tbl)
	if not tbl or not tbl.replacement_rules then return false end
	-- ルールが1つ以上あり、そのうち1つでも enabled == true なら ON とみなす
	for _, r in ipairs(tbl.replacement_rules) do
		if r.enabled then return true end
	end
	return false
end

-- ファイルを読み込み（なければ初期 RAW を使って読み込む）
local function loadOrCreate(path, raw)
	local tbl = readJSONFile(path, raw)
	if not tbl and raw then
		-- fallback: decode raw
		local ok, t = pcall(function() return HttpService:JSONDecode(raw) end)
		if ok then
			tbl = t
		end
	end
	return tbl
end

-- 書き込み+UI 更新のためのラッパー
local function saveTableToFile(path, tbl)
	ensureFolder()
	return writeJSONFile(path, tbl)
end

-- 初期ファイル作成
initFilesIfMissing()

-- メモリ上にロードしておく（UI と同期）
local state = {
	purple_ttk = loadOrCreate(FILE_PURPLE_TTK, RAW_PURPLE_TTK) or HttpService:JSONDecode(RAW_PURPLE_TTK),
	purple_portal = loadOrCreate(FILE_PURPLE_PORTAL, RAW_PURPLE_PORTAL) or HttpService:JSONDecode(RAW_PURPLE_PORTAL),
	white_portal = loadOrCreate(FILE_WHITE_PORTAL, RAW_WHITE_PORTAL) or HttpService:JSONDecode(RAW_WHITE_PORTAL),
}

-- GUI 作成（シンプルでモバイル対応のドラッグ・最小化・削除ボタン）
local playerGui = localPlayer:FindFirstChild("PlayerGui") or localPlayer:WaitForChild("PlayerGui")
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "PortalReplacerGUI"
screenGui.ResetOnSpawn = false
screenGui.Parent = playerGui

-- root frame
local root = Instance.new("Frame")
root.Name = "Root"
root.Size = UDim2.fromOffset(360, 240)
root.Position = UDim2.fromScale(0.5, 0.3)
root.AnchorPoint = Vector2.new(0.5, 0.5)
root.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
root.BorderSizePixel = 0
root.Parent = screenGui

local uiCorner = Instance.new("UICorner", root)
uiCorner.CornerRadius = UDim.new(0, 12)

-- titlebar
local titleBar = Instance.new("Frame", root)
titleBar.Size = UDim2.new(1, 0, 0, 36)
titleBar.Position = UDim2.new(0, 0, 0, 0)
titleBar.BackgroundTransparency = 1

local titleLabel = Instance.new("TextLabel", titleBar)
titleLabel.Size = UDim2.new(1, -120, 1, 0)
titleLabel.Position = UDim2.new(0, 12, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Portal Replacer"
titleLabel.TextSize = 18
titleLabel.Font = Enum.Font.SourceSansSemibold
titleLabel.TextColor3 = Color3.fromRGB(240,240,240)
titleLabel.TextXAlignment = Enum.TextXAlignment.Left

-- buttons: minimize / delete / close (close just destroys gui)
local closeBtn = Instance.new("TextButton", titleBar)
closeBtn.Size = UDim2.new(0, 28, 0, 28)
closeBtn.Position = UDim2.new(1, -12 - 28, 0, 4)
closeBtn.AnchorPoint = Vector2.new(0, 0)
closeBtn.Text = "×"
closeBtn.Font = Enum.Font.SourceSansBold
closeBtn.TextSize = 18
closeBtn.BackgroundColor3 = Color3.fromRGB(200,50,50)
closeBtn.TextColor3 = Color3.fromRGB(255,255,255)
closeBtn.BorderSizePixel = 0
closeBtn.AutoButtonColor = true
Instance.new("UICorner", closeBtn)

local deleteBtn = Instance.new("TextButton", titleBar)
deleteBtn.Size = UDim2.new(0, 28, 0, 28)
deleteBtn.Position = UDim2.new(1, -12 - 28 - 36, 0, 4)
deleteBtn.Text = "🗑"
deleteBtn.Font = Enum.Font.SourceSans
deleteBtn.TextSize = 18
deleteBtn.BackgroundColor3 = Color3.fromRGB(180,80,80)
deleteBtn.TextColor3 = Color3.fromRGB(255,255,255)
deleteBtn.BorderSizePixel = 0
deleteBtn.AutoButtonColor = true
Instance.new("UICorner", deleteBtn)

local minimizeBtn = Instance.new("TextButton", titleBar)
minimizeBtn.Size = UDim2.new(0, 28, 0, 28)
minimizeBtn.Position = UDim2.new(1, -12 - 28 - 72, 0, 4)
minimizeBtn.Text = "—"
minimizeBtn.Font = Enum.Font.SourceSansBold
minimizeBtn.TextSize = 18
minimizeBtn.BackgroundColor3 = Color3.fromRGB(100,100,100)
minimizeBtn.TextColor3 = Color3.fromRGB(255,255,255)
minimizeBtn.BorderSizePixel = 0
minimizeBtn.AutoButtonColor = true
Instance.new("UICorner", minimizeBtn)

-- contents
local content = Instance.new("Frame", root)
content.Size = UDim2.new(1, -24, 1, -56)
content.Position = UDim2.new(0, 12, 0, 44)
content.BackgroundTransparency = 1

local function makeRow(y, labelText)
	local lbl = Instance.new("TextLabel", content)
	lbl.Size = UDim2.new(0.6, 0, 0, 40)
	lbl.Position = UDim2.new(0, 12, 0, y)
	lbl.BackgroundTransparency = 1
	lbl.Text = labelText
	lbl.Font = Enum.Font.SourceSans
	lbl.TextSize = 16
	lbl.TextColor3 = Color3.fromRGB(230,230,230)
	lbl.TextXAlignment = Enum.TextXAlignment.Left

	local btn = Instance.new("TextButton", content)
	btn.Size = UDim2.new(0, 110, 0, 32)
	btn.Position = UDim2.new(1, -122, 0, y + 4)
	btn.BackgroundColor3 = Color3.fromRGB(70,70,70)
	btn.TextColor3 = Color3.fromRGB(255,255,255)
	btn.Text = "Toggle"
	btn.Font = Enum.Font.SourceSans
	btn.TextSize = 14
	btn.BorderSizePixel = 0
	Instance.new("UICorner", btn)
	return lbl, btn
end

local lbl1, btn1 = makeRow(0, "purple ttk.json")
local lbl2, btn2 = makeRow(50, "Purple Portal.json")
local lbl3, btn3 = makeRow(100, "WhitePortal (1).json")

-- status indicators
local status1 = Instance.new("TextLabel", content)
status1.Size = UDim2.new(0, 120, 0, 20)
status1.Position = UDim2.new(0, 12, 0, 32)
status1.BackgroundTransparency = 1
status1.TextSize = 12
status1.Font = Enum.Font.SourceSans
status1.TextColor3 = Color3.fromRGB(200,200,200)
status1.TextXAlignment = Enum.TextXAlignment.Left

local status2 = Instance.new("TextLabel", content)
status2.Size = UDim2.new(0, 120, 0, 20)
status2.Position = UDim2.new(0, 12, 0, 82)
status2.BackgroundTransparency = 1
status2.TextSize = 12
status2.Font = Enum.Font.SourceSans
status2.TextColor3 = Color3.fromRGB(200,200,200)
status2.TextXAlignment = Enum.TextXAlignment.Left

local status3 = Instance.new("TextLabel", content)
status3.Size = UDim2.new(0, 120, 0, 20)
status3.Position = UDim2.new(0, 12, 0, 132)
status3.BackgroundTransparency = 1
status3.TextSize = 12
status3.Font = Enum.Font.SourceSans
status3.TextColor3 = Color3.fromRGB(200,200,200)
status3.TextXAlignment = Enum.TextXAlignment.Left

-- helper: update statuses
local function updateStatuses()
	status1.Text = "State: " .. (getEnabledStateFromTable(state.purple_ttk) and "ON" or "OFF")
	status2.Text = "State: " .. (getEnabledStateFromTable(state.purple_portal) and "ON" or "OFF")
	status3.Text = "State: " .. (getEnabledStateFromTable(state.white_portal) and "ON" or "OFF")
end
updateStatuses()

-- toggle handlers: 切替後ファイルへ保存
local function toggleAndSave(key, path)
	local tbl = state[key]
	if not tbl then warn("no state for", key) return end
	local cur = getEnabledStateFromTable(tbl)
	setAllRulesEnabled(tbl, not cur)
	local ok = saveTableToFile(path, tbl)
	if not ok then
		warn("failed to save", path)
	end
	updateStatuses()
end

btn1.MouseButton1Click:Connect(function() toggleAndSave("purple_ttk", FILE_PURPLE_TTK) end)
btn2.MouseButton1Click:Connect(function() toggleAndSave("purple_portal", FILE_PURPLE_PORTAL) end)
btn3.MouseButton1Click:Connect(function() toggleAndSave("white_portal", FILE_WHITE_PORTAL) end)

-- Delete ボタン: 対象ファイルを削除する（ユーザー確認ダイアログは簡略）
deleteBtn.MouseButton1Click:Connect(function()
	local ok = true
	-- Try delete each file if exists
	if has_isfile and isfile(FILE_PURPLE_TTK) and has_delfile then ok = ok and deleteFile(FILE_PURPLE_TTK) end
	if has_isfile and isfile(FILE_PURPLE_PORTAL) and has_delfile then ok = ok and deleteFile(FILE_PURPLE_PORTAL) end
	if has_isfile and isfile(FILE_WHITE_PORTAL) and has_delfile then ok = ok and deleteFile(FILE_WHITE_PORTAL) end
	if ok then
		-- clear state (reload from raw defaults in memory)
		state.purple_ttk = HttpService:JSONDecode(RAW_PURPLE_TTK)
		state.purple_portal = HttpService:JSONDecode(RAW_PURPLE_PORTAL)
		state.white_portal = HttpService:JSONDecode(RAW_WHITE_PORTAL)
		updateStatuses()
		print("[PortalReplacer] Deleted files (if supported).")
	else
		warn("[PortalReplacer] Delete operation not fully supported or failed (delfile/isfile missing).")
	end
end)

-- Close button: destroy GUI
closeBtn.MouseButton1Click:Connect(function()
	screenGui:Destroy()
end)

-- Minimize: hide root and show floating button
local floatBtn = Instance.new("TextButton", screenGui)
floatBtn.Size = UDim2.fromOffset(140, 36)
floatBtn.Position = UDim2.fromScale(0.5, 0.05)
floatBtn.AnchorPoint = Vector2.new(0.5, 0.5)
floatBtn.Text = "Portal Replacer"
floatBtn.BackgroundColor3 = Color3.fromRGB(80,80,80)
floatBtn.TextColor3 = Color3.fromRGB(255,255,255)
floatBtn.Visible = false
floatBtn.BorderSizePixel = 0
local floatCorner = Instance.new("UICorner", floatBtn)

local minimized = false

minimizeBtn.MouseButton1Click:Connect(function()
	minimized = true
	root.Visible = false
	floatBtn.Visible = true
end)

floatBtn.MouseButton1Click:Connect(function()
	minimized = false
	root.Visible = true
	floatBtn.Visible = false
end)

-- Dragging support for root and floatBtn (Mouse + Touch)
local function makeDraggable(guiObject)
	local dragging = false
	local dragStart = Vector2.new()
	local startPos = Vector2.new()

	guiObject.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			local ap = guiObject.AbsolutePosition
			startPos = Vector2.new(ap.X, ap.Y)
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)
	guiObject.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			if dragging then
				local delta = input.Position - dragStart
				local newPos = startPos + delta
				-- clamp to viewport
				local vp = workspace.CurrentCamera and workspace.CurrentCamera.ViewportSize or Vector2.new(1920,1080)
				local size = guiObject.AbsoluteSize
				local x = math.clamp(newPos.X, 0, math.max(0, vp.X - size.X))
				local y = math.clamp(newPos.Y, 0, math.max(0, vp.Y - size.Y))
				guiObject.Position = UDim2.fromOffset(math.floor(x+0.5), math.floor(y+0.5))
			end
		end
	end)
end

makeDraggable(root)
makeDraggable(floatBtn)

-- 起動時にファイルを最新に保存（初期作成分を確実に出力）
pcall(function()
	if has_writefile then
		writefile(FILE_PURPLE_TTK, HttpService:JSONEncode(state.purple_ttk))
		writefile(FILE_PURPLE_PORTAL, HttpService:JSONEncode(state.purple_portal))
		writefile(FILE_WHITE_PORTAL, HttpService:JSONEncode(state.white_portal))
	end
end)

-- 起動完了メッセージ
print("[PortalReplacer] GUI initialized. Use toggles to turn replacement rules ON/OFF. Files saved to:", FILE_PURPLE_TTK, FILE_PURPLE_PORTAL, FILE_WHITE_PORTAL)