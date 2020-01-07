PLUGIN.name = "CW Weapons"
PLUGIN.author = "Lt. Taylor"
PLUGIN.desc = "Allows CW2.0 and CW2.0 KK INS2 SWEPs to be used."

if (CLIENT) then return end

local delay = 0

function PLUGIN:WeaponFired(entity)
    if entity:IsPlayer() then
		local wep = entity:GetActiveWeapon()
		local wepclass = wep:GetClass()
		local item
		local ammo
		local newdura = 0
		
		for k,v in pairs(entity:GetChar():GetInv():GetItems()) do
			if v.isAmmo == true then
				if wep.Primary.Ammo == v.ammo then
					ammo = v
				end
			end
			if v.isPLWeapon then
				if v:GetData("equip",false) == true then
					if wepclass == v.class then
						item = v
					end
				end
			end
		end
		
		local ammoCount = ammo:GetData("quantity")
		if ammoCount == 1 then
			ammo:Remove()
		end
		
		local dura
		local newAmmo = ammoCount - 1
		
		if delay < CurTime() then
			delay = CurTime() + 3
			ammo:SetData("quantity",newAmmo)
			if not item then return end
			wep:SetWeaponHP((item:GetData("durability")/100),100)
			dura = item:GetData("durability", 10000)
			if (dura ~= 0) then
				if string.EndsWith(wep.Primary.Ammo, " -ZL-") then
					newdura = (dura - math.Round(item.modifier))
				else
					newdura = (dura - math.Round(item.modifier/2))
				end
				item:SetData("durability", newdura)
			end
			
			if (newdura <= 0) then
				item:SetData("equip", false)
				entity:StripWeapon(wepclass)
			end
		else
			ammo:SetData("quantity",newAmmo,nil,true)
			if not item then return end
			dura = item:GetData("durability", 10000)
			if (dura ~= 0) then
				if string.EndsWith(wep.Primary.Ammo, " -ZL-") then
					newdura = (dura - math.Round(item.modifier))
				else
					newdura = (dura - math.Round(item.modifier/2))
				end
				item:SetData("durability", newdura, nil, true)
			end
		end
		if (newdura <= 0) then
			item:SetData("equip", false)
			entity:StripWeapon(wepclass)
		end
    end
end

hook.Add("WeaponFired", "Weapon_Fired", WeaponFired)

function PLUGIN:AmmoCheck(client, weapon)
	local ammoCount = 0
	local ammoType = weapon.Primary.Ammo
	
	for k,v in pairs(client:GetChar():GetInv():GetItems()) do
		if v.isAmmo == true then
			if ammoType == v.ammo then
				ammoCount = ammoCount + v:GetData("quantity",1)
			end
		end
	end
	
	if ammoCount > 0 then
		client:SetAmmo((ammoCount - weapon:Clip1()),ammoType)
	else
		client:SetAmmo(0,ammoType)
		weapon:SetClip1(0)
	end
end

hook.Add("AmmoCheck", "Ammo_Check", AmmoCheck)

function PLUGIN:InitializedPlugins()
		-- There is no Customization Keys.
		CustomizableWeaponry.customizationMenuKey = "" -- the key we need to press to toggle the customization menu
		CustomizableWeaponry.canDropWeapon = false
		CustomizableWeaponry.enableWeaponDrops = false
		CustomizableWeaponry.quickGrenade.enabled = false
		CustomizableWeaponry.quickGrenade.canDropLiveGrenadeIfKilled = false
		CustomizableWeaponry.quickGrenade.unthrownGrenadesGiveWeapon = false
		CustomizableWeaponry.customizationEnabled = false

		hook.Remove("PlayerInitialSpawn", "CustomizableWeaponry.PlayerInitialSpawn")
		hook.Remove("PlayerSpawn", "CustomizableWeaponry.PlayerSpawn")
		hook.Remove("AllowPlayerPickup", "CustomizableWeaponry.AllowPlayerPickup")
	do
		function CustomizableWeaponry:hasAttachment(ply, att, lookIn)		
			return true
		end


	end
end