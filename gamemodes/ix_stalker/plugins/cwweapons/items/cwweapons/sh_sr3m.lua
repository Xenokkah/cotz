ITEM.name = "SR-3M 'Vikhr'"
ITEM.description= "A special forces assault rifle chambered for 9x39mm."
ITEM.longdesc = "The SR-3M 'Vikhr' is based on the AS 'Val' silenced assault rifle but lacks an integral suppressor and has a newly-designed folding stock and cocking handle for ease of concealed carry.\nThe iron sights have also been relocated to the upper front handguard as opposed to being located on the suppressor, apparently for when the gun is used without the suppressor attached.\n\nAmmo: 9x39mm\nMagazine Capacity: 30"
ITEM.model = ("models/weapons/w_dmg_vikhr.mdl")
ITEM.class = "cw_sr3m"
ITEM.weaponCategory = "primary"
ITEM.width = 3
ITEM.price = 100000 -- price me daddy uwu
ITEM.height = 2
--ITEM.busflag = "ARMS2_2_1_1"
ITEM.repairCost = ITEM.price/100*1
ITEM.Range = 50
ITEM.RoF = "S/3/6"
ITEM.Dmg = "1d10+4"
ITEM.Pen = 8
ITEM.Mag = 20
ITEM.Rld = "Ready"
ITEM.Special = "Subsonic, Short"
ITEM.isCW = true
ITEM.isPLWeapon = true
ITEM.modifier = 5
ITEM.weight = 2.2

ITEM.iconCam = {
	pos = Vector(-11, -27, -3),
	ang = Angle(0, 90, 10),
	fov = 70
}
ITEM.pacData = {
[1] = {
	["children"] = {
		[1] = {
			["children"] = {
				[1] = {
					["children"] = {
					},
					["self"] = {
						["Angles"] = Angle(81.9, 177.2, 85.1),
						["Position"] = Vector(-12.432, -4.995, -5.716),
						["Model"] = "models/weapons/w_dmg_vikhr.mdl",
						["ClassName"] = "model",
						["EditorExpand"] = true,
						["UniqueID"] = "7767986673",
						["Bone"] = "chest",
						["Name"] = "vikhr",
						["AngleOffset"] = Angle(200, 0, 0),
					},
				},
			},
			["self"] = {
				["AffectChildrenOnly"] = true,
				["ClassName"] = "event",
				["UniqueID"] = "1275664522",
				["Event"] = "weapon_class",
				["EditorExpand"] = true,
				["Name"] = "weapon class find simple\"@@1\"",
				["Arguments"] = "cw_sr3m@@0",
			},
		},
	},
	["self"] = {
		["ClassName"] = "group",
		["UniqueID"] = "2775647898",
		["EditorExpand"] = true,
	},
},
}