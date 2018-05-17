Events.OnGameStart.Add( function ()
	print ("Adding Upgraded Hiking Bags to NecroForge");
	if NecroList then
		if NecroList.Items.SewingMag then	
		else
			NecroList.Items.SewingMag = {"Literature", nil, nil, "The Sewing Magazine", "UpgradedHikingBags.SewingMag", "Item_Null", nil, nil, nil};
		end
		if NecroList.Items.SmallUpgradedHikingBag then
		else
			NecroList.Items.SmallUpgradedHikingBag = {"Bags", nil, nil, "Small Upgraded Hiking Bag", "UpgradedHikingBags.SmallUpgradedHikingBag", "Item_Null", nil, nil, nil};
		end
		if NecroList.Items.MediumUpgradedHikingBag then
		else
			NecroList.Items.MediumUpgradedHikingBag = {"Bags", nil, nil, "Medium Upgraded Hiking Bag", "UpgradedHikingBags.MediumUpgradedHikingBag", "Item_Null", nil, nil, nil};
		end
		if NecroList.Items.LargeUpgradedHikingBag then
		else
			NecroList.Items.LargeUpgradedHikingBag = {"Bags", nil, nil, "Large Upgraded Hiking Bag", "UpgradedHikingBags.LargeUpgradedHikingBag", "Item_Null", nil, nil, nil};
		end
  end
end)