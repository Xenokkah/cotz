ITEM.name = ".22LR"
ITEM.model = "models/kek1ch/ammo_9x18_fmj.mdl"
ITEM.ammo = ".22LR" // type of the ammo
ITEM.ammoAmount = 100 // amount of the ammo
ITEM.description= "A box that contains %s rounds of .22LR ammo. "
ITEM.longdesc = "This small .22LR round is primarily used for pest control, but also sports shooting and entry-level shooting."
ITEM.price = 450
ITEM.busflag = {"ammo"}
ITEM.img = Material("vgui/hud/22lr.png")

ITEM.weight = 0.0025
ITEM.flatweight = 0.05

function ITEM:GetWeight()
  return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
end