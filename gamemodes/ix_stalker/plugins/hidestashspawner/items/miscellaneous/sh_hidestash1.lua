ITEM.name = "Lost Note"
ITEM.model = "models/lostsignalproject/items/quest/notes_letter_1.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.description = "The note looks crumbled and dirty."
ITEM.price = 500
ITEM.flag = "A"
ITEM.hidestashcategory = "tier1"

function ITEM:GetDescription()
	if self:GetData("stashtext", nil) == nil then
		return self.description
	else
		return self.description.."\n\nThe note has a stash location. It reads:\n"..self:GetData("stashtext", nil)
	end
end

ITEM.functions.use = {
	name = "Check for information",
	icon = "icon16/stalker/unlock.png",
	OnRun = function(item)
		local loot = table.Random(ix.plugin.list["hidestashspawner"].StashItems[item.hidestashcategory])
		local spawnpoint = table.Random(ix.plugin.list["hidestashspawner"].stashspawnpoints)
		local stashcontent = "CONTENT: "

		if !spawnpoint then
			item.player:Notify("No hidestash spawn points defined for this map, contact the developers.")
			print("a hidestash item was used, but there are no points on the map to spawn it in!")
			return false
		end

		ix.plugin.list["hidestash"]:SpawnStash(spawnpoint[1][1], { loot[1], loot[2], loot[3] })
		item:SetData("stashcoordinates", spawnpoint[1][1])
		item:SetData("stashtext", spawnpoint[1][2])
		item:SetData("map", game.GetMap())

		for i = 1, #loot[1] do
			stashcontent = stashcontent..", "..loot[i][1]
		end

		item.player:Notify( "You hid found the location of a stash!" )
		ix.log.Add(item.player, "command", "created a stash from "..item.name.." at x:"..spawnpoint[1][1].x.." y:"..spawnpoint[1][1].y.." z:"..spawnpoint[1][1].z.." with "..stashcontent)

		return false
	end,
	OnCanRun = function(item)
		return (!IsValid(item.entity)) and (item:GetData("stashcoordinates", nil) == nil)
	end
}

ITEM.functions.stashpointer = {
	name = "Check stash coordinates",
	icon = "icon16/stalker/throw.png",
	OnRun = function(item)
		if game.GetMap() == item:GetData("map", "gm_construct") then
			item.player:Notify( "You take a close look at the stash coordinates..." )
			netstream.Start(item.player, "nut_DisplayStashSpawnPointsSingle", item:GetData("stashcoordinates", nil))
		else
			item.player:Notify("Stash is not on this map! It's at "..item:GetData("map", "gm_construct"))
		end
		return false
	end,
	OnCanRun = function(item)
		return (!IsValid(item.entity)) and (item:GetData("stashcoordinates", nil) != nil)
	end
}