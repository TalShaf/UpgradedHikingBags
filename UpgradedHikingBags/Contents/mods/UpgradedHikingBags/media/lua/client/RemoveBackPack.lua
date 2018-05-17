--Code courtesy of tommysticks and nolanri https://theindiestone.com/forums/index.php?/topic/19434-crafting-using-equipped-backpacks/

function RemoveBackPack(item, resultItem, player)

	local pInv = player:getInventory();
	local iTab2 = {}; --need an empty table later
	local dItem;
	
	for i = 0, (item:size()-1) do --item = number of items required for recipe
		dItem = item:get(i); 
		if dItem:getCategory() == "Container" then --if any items in recipe are bags...
			print("Container detected")
			if player:getClothingItem_Back() == dItem then --...and are equiped on the back...
				player:setClothingItem_Back(nil);
			end
			if player:getPrimaryHandItem() == dItem then --...or are equiped primary...
				player:setPrimaryHandItem(nil);
			end
			if player:getSecondaryHandItem() == dItem then --...or are equiped secondary...
				player:setSecondaryHandItem(nil); --remove them from being equipped
			end
			dInv = dItem:getInventory(); --get the inventory of recipe item
			dInvItems = dInv:getItems(); --get the size of the inventory
			if dInvItems:size() >= 1 then --if container is empty we are finished i.e. less than 1 item
				for i2 = 0, (dInvItems:size()-1) do --if not, iterate over each item
					invItem = dInvItems:get(i2);
					table.insert(iTab2, invItem) --add each item to empty table
					print(invItem:getType());
				end
			end
		end
	end
	
	for i3, k3 in ipairs(iTab2) do
		print (k3:getType()..": removing from container.")
		dInv:Remove(k3); --remove items from container in recipe
		pInv:AddItem(k3); --add items to player inventory
	end
end