ITEM.name = "IMI Desert Eagle"
ITEM.description= "A large semi-automatic pistol chambered for .50 AE."
ITEM.longdesc = "The IMI Desert Eagle is a semi-automatic handgun notable for chambering the largest centerfire cartridge of any magazine fed, self-loading pistol. It has a unique design with a triangular barrel and large muzzle.\nThe Desert Eagle uses a gas-operated mechanism normally found in rifles, as opposed to the short recoil or blow-back designs most commonly seen in semi-automatic pistols.\nThe advantage of the gas operation is that it allows the use of far more powerful cartridges than traditional semi-automatic pistol designs.\nThus it allows the Desert Eagle to compete in an area that had previously been dominated by magnum revolvers.\n\nAmmo: .50AE\nMagazine Capacity: 7"
ITEM.model = "models/weapons/ethereal/w_deagle.mdl"
ITEM.class = "cw_kk_ins2_deagle"
ITEM.weaponCategory = "secondary"
ITEM.width = 2
ITEM.price = 100000 -- GIB PRICES DAMMIT
ITEM.height = 1
--ITEM.busflag = {"ARMS1_1_1", "SPECIAL5_1"}
ITEM.repairCost = ITEM.price/100*1
ITEM.Range = 50
ITEM.RoF = "S/3/-"
ITEM.Dmg = "1d10+4"
ITEM.Pen = 7
ITEM.Mag = 8
ITEM.Rld = "Ready"
ITEM.Special = "CQC"
ITEM.isCW = true
ITEM.isPLWeapon = true
ITEM.modifier = 5
ITEM.weight = 1.3

ITEM.iconCam = {
	ang= Angle(-0.70499622821808, 268.25439453125, 0),
	fov= 5.085652091515,
	pos= Vector(0, 200, 1)
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
						["Model"] = "models/weapons/w_pist_deagle.mdl",
						["ClassName"] = "model",
						["Position"] = Vector(-7.221, 2.695, -3.742),
						["AngleOffset"] = Angle(0, -10.5, 0),
						["EditorExpand"] = true,
						["UniqueID"] = "3544642735",
						["Bone"] = "pelvis",
						["Name"] = "deagle",
						["Angles"] = Angle(0, 270, 0),
					},
				},
			},
			["self"] = {
				["AffectChildrenOnly"] = true,
				["ClassName"] = "event",
				["UniqueID"] = "1087631762",
				["Event"] = "weapon_class",
				["EditorExpand"] = true,
				["Name"] = "weapon class find simple\"@@1\"",
				["Arguments"] = "cw_deagle@@0",
			},
		},
	},
	["self"] = {
		["ClassName"] = "group",
		["UniqueID"] = "1197387613",
		["EditorExpand"] = true,
	},
},
}