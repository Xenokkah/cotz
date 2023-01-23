ITEM.name = "Modern Military Backpack (USA)"
ITEM.description = "A US Army MOLLE II backpack. These are most often sold as surplus and imported into the Zone by westerners wanting a taste of home."
ITEM.model = "models/kek1ch/sumka2.mdl"

ITEM.price = 1300
ITEM.width = 2
ITEM.height = 2
ITEM.weight = 1.050

ITEM.carryinc = 15
ITEM.outfitCategory = "backpack"

ITEM.exRender = true
ITEM.iconCam = {
	pos = Vector(0, -1, 200),
	ang = Angle(90, 0, 90),
	fov = 5.7
}

ITEM.pacData = {
	[1] = {
		["children"] = {
			[1] = {
				["children"] = {
				},
				["self"] = {
				["Angles"] = Angle(180, -90.013, 90.004),
				["Position"] = Vector(-6.607, 0.035, -0.598),
					["UniqueID"] = "backpack_misery2xd",
					["Size"] = 0.85,
					["Bone"] = "chest",
					["Model"] = "models/kek1ch/sumka2.mdl",
					["ClassName"] = "model",
				},
			},
		},
		["self"] = {
			["ClassName"] = "group",
			["UniqueID"] = "backpack_misery2",
			["EditorExpand"] = true,
		},
	},
}
