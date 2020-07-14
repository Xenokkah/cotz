PLUGIN.name = "Progression"
PLUGIN.author = "some faggot"
PLUGIN.desc = "System for tracking serverwide progression and performing actions based on progression levels."

ix.progression = ix.progression or {}
ix.progression.status = ix.progression.status or {}
ix.progression.definitions = ix.progression.definitions or {}

function ix.progression.Register(progid, data)
	ix.progression.definitions[progid] = data
end

ix.util.Include("sh_definitions.lua")

function PLUGIN:LoadData()
	ix.progression.status = self:GetData() or {}
end

function PLUGIN:SaveData()
	self:SetData(ix.progression.status)
end

function PLUGIN:InvokeProgression(progid)
	local levelreached = ix.progression.GetProgression(progid)

	-- Call all unlocked functions
	for k, func in pairs(ix.progression.definitions[progid].progressfunctions) do
		if(k > levelreached) then return end
		func()
	end
end