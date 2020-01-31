ITEM.name = "Beretta 92"
ITEM.description= "A semi-automatic pistol chambered for 9x19mm."
ITEM.longdesc = "The Beretta 92, also known as the M9, is the Italian-made replacement for the M1911 pistol in the American army.\nIt is a semi-automatic pistol firing the 9x19mm cartridge.\nIt's popular with many stalkers as a sidearm since its ammo is easy to come across and it's very reliable.\n\nAmmo: 9x19mm\nMagazine Capacity: 15"
ITEM.model = ("models/weapons/w_M92f_p228.mdl")
ITEM.class = "cw_beretta92"
ITEM.weaponCategory = "secondary"
ITEM.width = 2
ITEM.price = 3000
ITEM.height = 1
ITEM.busflag = {"guns3"}
ITEM.repairCost = ITEM.price/100*1
ITEM.validAttachments = {"md_microt1","md_eotech","md_rmr","md_tundra9mm"}

ITEM.iconCam = {
	pos = Vector(-6, 10, 1.5),
	ang = Angle(0, 270, 0),
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
						["Model"] = "models/weapons/w_M92f_p228.mdl",
						["ClassName"] = "model",
						["Position"] = Vector(-7.5, 4.708, 0.609),
						["AngleOffset"] = Angle(0, -10.5, 0),
						["EditorExpand"] = true,
						["UniqueID"] = "3544656491",
						["Bone"] = "pelvis",
						["Name"] = "bm9",
						["Angles"] = Angle(0, 270, 0),
					},
				},
			},
			["self"] = {
				["AffectChildrenOnly"] = true,
				["ClassName"] = "event",
				["UniqueID"] = "1011232402",
				["Event"] = "weapon_class",
				["EditorExpand"] = true,
				["Name"] = "weapon class find simple\"@@1\"",
				["Arguments"] = "cw_beretta92@@0",
			},
		},
	},
	["self"] = {
		["ClassName"] = "group",
		["UniqueID"] = "1118323213",
		["EditorExpand"] = true,
	},
},
}