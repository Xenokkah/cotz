ITEM.name = "5.7x28mm"
ITEM.model = "models/kek1ch/ammo_762x25_p.mdl"
ITEM.ammo = "5.7x28MM" // type of the ammo
ITEM.ammoAmount = 100 // amount of the ammo
ITEM.description= "A box that contains %s rounds of 5.7x28mm ammo. "
ITEM.longdesc = "The FN 5.7x28mm is a high velocity cartridge designed and manufactured by FN Herstal. It is a bottlenecked centerfire cartridge that is somewhat similar to the .22 Hornet or .22 K-Hornet. The 5.7x28mm was developed in conjunction with the FN P90 personal defense weapon (PDW) and FN Five-seven pistol, in response to NATO requests for a replacement for the 9x19mm Parabellum cartridge."
ITEM.price = 850
--ITEM.busflag = "SPECIAL8"
ITEM.img = Material("vgui/hud/57x28.png")

ITEM.weight = 0.006
ITEM.flatweight = 0.06

function ITEM:GetWeight()
  return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
end