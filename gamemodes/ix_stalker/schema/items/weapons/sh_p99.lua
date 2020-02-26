ITEM.name = "P99"
ITEM.description= "A German handgun, firing the 9x19mm cartridge."
ITEM.longdesc = "The Walther P99 is a semi-automatic pistol developed by the German company Carl Walther GmbH Sportwaffen of Ulm.\nIt is designed for law enforcement, security forces and the civilian shooting market as a replacement for the Walther P5 and the P88.\n\nAmmo: 9x19mm\nMagazine Capacity: 15"
ITEM.model = ("models/srp/weapons/w_p99.mdl")
ITEM.class = "cw_p99"
ITEM.weaponCategory = "secondary"
ITEM.width = 2
ITEM.price = 4250
ITEM.height = 1
ITEM.busflag = {"guns3"}
ITEM.repairCost = ITEM.price/100*1
ITEM.validAttachments = {"md_microt1","md_eotech","md_rmr","md_tundra9mm"}
ITEM.iconCam = {
	pos = Vector(-5, 8, 1.5),
	ang = Angle(0, 270, 2),
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
						["Model"] = "models/srp/weapons/w_p99.mdl",
						["ClassName"] = "model",
						["Position"] = Vector(-8.935, 7.563, 0.783),
						["EditorExpand"] = true,
						["UniqueID"] = "3628359835",
						["Bone"] = "pelvis",
						["Name"] = "p99",
						["Angles"] = Angle(0, 270, -30),
					},
				},
			},
			["self"] = {
				["AffectChildrenOnly"] = true,
				["ClassName"] = "event",
				["UniqueID"] = "1640786782",
				["Event"] = "weapon_class",
				["EditorExpand"] = true,
				["Name"] = "weapon class find simple\"@@1\"",
				["Arguments"] = "cw_p99@@0",
			},
		},
	},
	["self"] = {
		["ClassName"] = "group",
		["UniqueID"] = "1977899867",
		["EditorExpand"] = true,
	},
},
}