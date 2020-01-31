ITEM.name = "Winchester 9422"
ITEM.description= "A classic lever-action rifle. Fires .22LR."
ITEM.longdesc = "A modified version of the Winchester rifle. It is a traditional lever-action with exposed hammer, straight grip, tube magazine and barrel bands.\n\nAmmo: .22LR\nMagazine Capacity: 15"
ITEM.model = ("models/weapons/tfa_nmrih/w_fa_win1892.mdl")
ITEM.class = "cw_w9422"
ITEM.weaponCategory = "primary"
ITEM.width = 4
ITEM.price = 5000
ITEM.height = 1
ITEM.busflag = {"guns"}
ITEM.repairCost = ITEM.price/100*1
ITEM.validAttachments = {"md_microt1","md_eotech","md_aimpoint","md_cmore","md_schmidt_shortdot","md_reflex","md_nightforce_nxs","md_tundra9mm"}

ITEM.exRender = true
ITEM.iconCam = {
	pos = Vector(13.071895599365, 200, 0),
	ang = Angle(0, 270, 0),
	fov = 12.352941176471,
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
						["Angles"] = Angle(74.21875, -177.46875, -96.1875),
						["Position"] = Vector(-14.65, -0.247, -9.327),
						["Model"] = "models/weapons/tfa_nmrih/w_fa_win1892.mdl",
						["ClassName"] = "model",
						["EditorExpand"] = true,
						["UniqueID"] = "8544325421",
						["Bone"] = "chest",
						["Name"] = "w9422",
						["AngleOffset"] = Angle(200, 0, 0),
					},
				},
			},
			["self"] = {
				["AffectChildrenOnly"] = true,
				["ClassName"] = "event",
				["UniqueID"] = "1036853672",
				["Event"] = "weapon_class",
				["EditorExpand"] = true,
				["Name"] = "weapon class find simple\"@@1\"",
				["Arguments"] = "cw_w9422@@0",
			},
		},
	},
	["self"] = {
		["ClassName"] = "group",
		["UniqueID"] = "8537651483",
		["EditorExpand"] = true,
	},
},
}