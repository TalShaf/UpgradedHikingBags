-- ********************************
-- Upgraded Hiking Bags Distribution File
-- ********************************

require"Items/SuburbsDistributions";

UpgradedHikingBags = {}
UpgradedHikingBags.version = "1.2";
UpgradedHikingBags.author = "TalSh";
UpgradedHikingBags.modName = "Upgraded Hiking Bags";

-- ------------------------------------------------
-- Functions
-- ------------------------------------------------
---
-- Prints out the mod info on startup.
function UpgradedHikingBags.init()
print("Mod Loaded: " .. UpgradedHikingBags.modName .. " by " .. UpgradedHikingBags.author .. " (v" .. UpgradedHikingBags.version ..")");
end

-- ------------------------------------------------
-- Sewing Magazine distribution
-- ------------------------------------------------

-- all
table.insert(SuburbsDistributions["all"]["shelves"].items, "UpgradedHikingBags.SewingMag");
table.insert(SuburbsDistributions["all"]["shelves"].items, 1);
table.insert(SuburbsDistributions["all"]["shelvesmag"].items, "UpgradedHikingBags.SewingMag");
table.insert(SuburbsDistributions["all"]["shelvesmag"].items, 1);

-- bedroom
table.insert(SuburbsDistributions["bedroom"]["sidetable"].items, "UpgradedHikingBags.SewingMag");
table.insert(SuburbsDistributions["bedroom"]["sidetable"].items, 1);

--clothing store
table.insert(SuburbsDistributions["clothesstore"]["counter"].items, "UpgradedHikingBags.SewingMag");
table.insert(SuburbsDistributions["clothesstore"]["counter"].items, 1);

--sewing store
table.insert(SuburbsDistributions["sewingstore"]["counter"].items, "UpgradedHikingBags.SewingMag");
table.insert(SuburbsDistributions["sewingstore"]["counter"].items, 5);
table.insert(SuburbsDistributions["sewingstore"]["shelves"].items, "UpgradedHikingBags.SewingMag");
table.insert(SuburbsDistributions["sewingstore"]["shelves"].items, 20);

-- corner store
table.insert(SuburbsDistributions["cornerstore"]["shelvesmag"].items, "UpgradedHikingBags.SewingMag");
table.insert(SuburbsDistributions["cornerstore"]["shelvesmag"].items, 1);

-- book store
table.insert(SuburbsDistributions["bookstore"]["all"].items, "UpgradedHikingBags.SewingMag");
table.insert(SuburbsDistributions["bookstore"]["all"].items, 5);

-- grocery
table.insert(SuburbsDistributions["grocery"]["shelvesmag"].items, "UpgradedHikingBags.SewingMag");
table.insert(SuburbsDistributions["grocery"]["shelvesmag"].items, 1);

-- ------------------------------------------------
-- Game Hooks
-- ------------------------------------------------
Events.OnGameBoot.Add(UpgradedHikingBags.init);

Events.OnGameBoot.Add(UpgradedHikingBags.loadTextures);
print("Upgraded Hiking Bags: SuburbsDistributions added. ");