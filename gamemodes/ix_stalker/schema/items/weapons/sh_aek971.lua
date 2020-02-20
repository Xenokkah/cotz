ITEM.name = "AEK-971"
ITEM.description= "A Russian assault rifle. Fires 5.45x39mm."
ITEM.longdesc = "The AEK-971 is an experimental assault rifle released around the same time as the AN-94 'Abakan'.\nThe AN-94 was chosen over it, but it was still put into limited production.\nIt has a built-in recoil compensator, meaning its recoil is felt much less by the user.\nIt's a rare specimen since it was only given out to a few select groups of the military.\n\nAmmo: 5.45x39mm \nMagazine Capacity: 30"
ITEM.model = "models/weapons/w_rif_aek97.mdl"
ITEM.class = "cw_aek971"
ITEM.weaponCategory = "primary"
ITEM.width = 4
ITEM.price = 24200
ITEM.height = 2
--ITEM.busflag = "ARMS2_3_1"
ITEM.repairCost = ITEM.price/100*1
ITEM.validAttachments = {"md_kobra","md_pso1","md_microt1","md_eotech","md_aimpoint","md_cmore","md_schmidt_shortdot","md_acog","md_reflex","md_pbs1","md_foregrip"}

ITEM.iconCam = {
	pos = Vector(-12, 35, 0),
	ang = Angle(0, 270, 3),
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
						["Model"] = "models/weapons/w_rif_aek97.mdl",
						["ClassName"] = "model",
						["Position"] =	Vector(14.702, -4.244, -1.16),
						["EditorExpand"] = true,
						["UniqueID"] = "3547696121",
						["Bone"] = "spine 2",
						["Name"] = "aek971",
					},
				},
			},
			["self"] = {
				["AffectChildrenOnly"] = true,
				["ClassName"] = "event",
				["UniqueID"] = "2971273618",
				["Event"] = "weapon_class",
				["EditorExpand"] = true,
				["Name"] = "weapon class find simple\"@@1\"",
				["Arguments"] = "cw_aek971@@0",
			},
		},
	},
	["self"] = {
		["ClassName"] = "group",
		["UniqueID"] = "5153429652",
		["EditorExpand"] = true,
	},
},
}