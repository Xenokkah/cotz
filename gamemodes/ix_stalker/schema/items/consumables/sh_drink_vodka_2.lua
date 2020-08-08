ITEM.name = "Zone-Produced Vodka"
ITEM.description = "A hip flask with a clear substance inside."
ITEM.longdesc = "This hip flask contains zone-produced vodka produced from relatively good ingredients."
ITEM.model = "models/kek1ch/drink_vodka.mdl"

ITEM.price = 450
ITEM.width = 1
ITEM.height = 2
ITEM.weight = 0.200
ITEM.flatweight = 0.160

ITEM.thirst = 36
ITEM.quantity = 1

ITEM.sound = "stalkersound/inv_flask.mp3"
--ITEM.img = Material("vgui/hud/items/drink/vodka_2.png")

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	item.player:AddBuff("buff_radiationremoval", 10, { amount = 1 })
	ix.chat.Send(item.player, "iteminternal", "takes a swig of their "..item.name..".", false)
end)

ITEM:DecideFunction()

ITEM.weight = 0.640