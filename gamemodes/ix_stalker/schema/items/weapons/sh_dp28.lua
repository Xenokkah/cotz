ITEM.name = "DP-28"
ITEM.description= "A big, old Soviet machinegun. Fires 7.62x54mm."
ITEM.longdesc = "The Degtyaryov machine gun or DP is a light machine gun firing the 7.62x54mmR cartridge that was used primarily by the Soviet Union starting in 1928.\nThe DP machine gun was supplemented in the 1950s by the more modern RPD machine gun and entirely replaced in Soviet service by the general purpose PK machine gun in the 1960s.\nDespite its numerous problems, the DP had a reputation as a relatively effective light support weapon.\nIt was nicknamed the 'Record player' by Red Army troops because the disc-shaped pan magazine resembled a gramophone record and its top cover revolved while the weapon was fired.\n\nAmmo: 7.62x54mm \nMagazine Capacity: 47"
ITEM.model = ("models/weapons/w_ro2_dp28.mdl")
ITEM.class = "cw_dp28"
ITEM.weaponCategory = "primary"
ITEM.width = 6
ITEM.price = 555000
ITEM.height = 2
ITEM.flag = "0"
ITEM.repairCost = ITEM.price/100*1

ITEM.canAttach = false
ITEM.iconCam = {
	pos = Vector(-15, 45, -2),
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
						["Angles"] = Angle(180, 0, 0),
						["Position"] = Vector(11.765, -4.449, -1.126),
						["Model"] = "models/weapons/w_ro2_dp28.mdl",
						["ClassName"] = "model",
						["Size"] = 0.9,
						["EditorExpand"] = true,
						["UniqueID"] = "7923896121",
						["Bone"] = "spine 2",
						["Name"] = "dp28",
					},
				},
			},
			["self"] = {
				["AffectChildrenOnly"] = true,
				["ClassName"] = "event",
				["UniqueID"] = "1237570000",
				["Event"] = "weapon_class",
				["EditorExpand"] = true,
				["Name"] = "weapon class find simple\"@@1\"",
				["Arguments"] = "cw_dp28@@0",
			},
		},
	},
	["self"] = {
		["ClassName"] = "group",
		["UniqueID"] = "2787231255",
		["EditorExpand"] = true,
	},
},
}