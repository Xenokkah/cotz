
-- Any files in the libs/ folder will be automatically included on the server and/or client, depending on the prefix of the
-- file. There are a few conventions you'll want to follow when creating a library.

-- Your library should reside in the "ix" table.
ix.util.text = ix.util.text or {}

-- Your library functions should reside in the table as regular function calls, not method calls (i.e use "." instead of ":") to
-- maintain consistency with the rest of Helix. What you shouldn't do: function ix.test:Add(one, two)
function ix.util.PropertyDesc(tooltip, text, color)
	local dot = tooltip:AddRow("propertyitem")
	dot:SetText(" •")
	dot:SetContentAlignment(7)
	dot:SizeToContents()
	dot:SetTextColor( color or Color( 255, 255, 255) )

	local desctext = dot:Add("DLabel")
	desctext:MoveRightOf(dot)
	desctext:SetText(" "..text)
	desctext:SetTextColor(Color(255, 255, 255))
	desctext:SetFont("ixSmallFont")
	desctext:SizeToContents()
end

function ix.util.PropertyDesc2(tooltip, text, color, imagestring)

	local dot = tooltip:AddRow("propertyitem")

	local image = dot:Add("DImage")
	image:SetMaterial(imagestring)
	image:SetPos(0, 0)
	image:SetSize(dot:GetTall(), dot:GetTall())
	image:SizeToContents()

	dot:SetText(" •")
	dot:SetContentAlignment(7)	
	dot:SizeToContents()
	dot:SetTextColor( color or Color( 255, 255, 255) )

	local desctext = dot:Add("DLabel")
	desctext:MoveRightOf(image)
	desctext:SetText(" "..text)
	desctext:SetTextColor(Color(255, 255, 255))
	desctext:SetFont("ixSmallFont")
	desctext:SizeToContents()
end
