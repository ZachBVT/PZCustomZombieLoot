require 'Items/ProceduralDistributions'
require 'Items/Distribution_BagsAndContainers'
require 'Items/SuburbsDistributions'


-- table.insert(BagsAndContainers["list"]["ALICEpack_Army"].items, "Base.CigarettePack");
-- table.insert(BagsAndContainers["list"]["ALICEpack_Army"].items, 1);

-- table.insert(BagsAndContainers["list"]["HalloweenCandyBucket"].items, "Base.CigaretteSingle");
-- table.insert(BagsAndContainers["list"]["HalloweenCandyBucket"].items, 2);

--This add cigarettes to new loot tables
local function SetSpawnRates(newGame)

  LootTables = ProceduralDistributions["list"]

--LOCAL VERSION
--This triples the spawn chances of cigs in EXISTING loot spawns
  local count
  for listName, listValue in pairs(LootTables) do
    for key, value in pairs(LootTables[listName].items) do
      if key % 2 == 1 then
          if (value == "CigarettePack") or (value == "CigaretteSingle") or (value == "CigaretteCarton") then
            local spawnChance = LootTables[listName].items[key+1]
            print("FOUND", value , "WITH VALUE OF" , spawnChance, "in", listName, "at index ", key)
            LootTables[listName].items[key+1] = LootTables[listName].items[key+1] * 2 --Multiplier for cig changes
            spawnChance = LootTables[listName].items[key+1]
            print("NOW UPDATED TO:", spawnChance)
          end
        else
      end
    end
  end

  --Should make this a for loop honestly
  table.insert(ProceduralDistributions["list"]["ArmyBunkerLockers"].items, "Base.CigarettePack");
  table.insert(ProceduralDistributions["list"]["ArmyBunkerLockers"].items, 0.4);

  table.insert(ProceduralDistributions["list"]["ArmyBunkerStorage"].items, "Base.CigaretteCarton");
  table.insert(ProceduralDistributions["list"]["ArmyBunkerStorage"].items, 1);

  table.insert(ProceduralDistributions["list"]["ArmySurplusSnacks"].items, "Base.CigaretteSingle");
  table.insert(ProceduralDistributions["list"]["ArmySurplusSnacks"].items, 15);

  table.insert(ProceduralDistributions["list"]["ArmySurplusSnacks"].items, "Base.CigaretteSingle");
  table.insert(ProceduralDistributions["list"]["ArmySurplusSnacks"].items, 15);

  table.insert(ProceduralDistributions["list"]["ArmySurplusSnacks"].items, "Base.CigaretteSingle");
  table.insert(ProceduralDistributions["list"]["ArmySurplusSnacks"].items, 10);

  table.insert(ProceduralDistributions["list"]["BinBathroom"].items, "Base.CigaretteSingle");
  table.insert(ProceduralDistributions["list"]["BinBathroom"].items, 1);

  table.insert(ProceduralDistributions["list"]["BinBathroom"].items, "Base.CigaretteSingle");
  table.insert(ProceduralDistributions["list"]["BinBathroom"].items, 0.5);

  table.insert(ProceduralDistributions["list"]["BinBathroom"].items, "Base.CigaretteSingle");
  table.insert(ProceduralDistributions["list"]["BinBathroom"].items, 0.2);

  table.insert(ProceduralDistributions["list"]["CrateHumanitarian"].items, "Base.CigaretteCarton");
  table.insert(ProceduralDistributions["list"]["CrateHumanitarian"].items, 0.005);

  table.insert(ProceduralDistributions["list"]["CrateRandomJunk"].items, "Base.CigaretteCarton");
  table.insert(ProceduralDistributions["list"]["CrateRandomJunk"].items, 0.1);

  table.insert(ProceduralDistributions["list"]["DerelictHouseJunk"].items, "Base.CigarettePack");
  table.insert(ProceduralDistributions["list"]["DerelictHouseJunk"].items, 1);

  table.insert(ProceduralDistributions["list"]["DerelictHouseJunk"].items, "Base.CigaretteSingle");
  table.insert(ProceduralDistributions["list"]["DerelictHouseJunk"].items, 3);

  table.insert(ProceduralDistributions["list"]["DerelictHouseCrime"].items, "Base.CigaretteSingle");
  table.insert(ProceduralDistributions["list"]["DerelictHouseCrime"].items, 0.1);

  table.insert(ProceduralDistributions["list"]["FireDeptLockers"].items, "Base.CigarettePack");
  table.insert(ProceduralDistributions["list"]["FireDeptLockers"].items, 1.5);

  table.insert(ProceduralDistributions["list"]["GeneratorRoom"].items, "Base.CigaretteSingle");
  table.insert(ProceduralDistributions["list"]["GeneratorRoom"].items, 8);

  table.insert(ProceduralDistributions["list"]["GolfLockers"].items, "Base.CigarettePack");
  table.insert(ProceduralDistributions["list"]["GolfLockers"].items, 2);

  table.insert(ProceduralDistributions["list"]["GolfLockers"].items, "Base.CigaretteSingle");
  table.insert(ProceduralDistributions["list"]["GolfLockers"].items, 6);

  table.insert(ProceduralDistributions["list"]["GolfLockers"].items, "Base.CigaretteSingle");
  table.insert(ProceduralDistributions["list"]["GolfLockers"].items, 4);

  table.insert(ProceduralDistributions["list"]["GolfLockers"].items, "Base.CigaretteSingle");
  table.insert(ProceduralDistributions["list"]["GolfLockers"].items, 2);

  table.insert(ProceduralDistributions["list"]["HospitalRoomWardrobe"].items, "Base.CigarettePack");
  table.insert(ProceduralDistributions["list"]["HospitalRoomWardrobe"].items, 0.5);

  table.insert(ProceduralDistributions["list"]["LivingRoomSideTableRedneck"].items, "Base.CigarettePack");
  table.insert(ProceduralDistributions["list"]["LivingRoomSideTableRedneck"].items, 0.1);

  --Meant to be a special loot ig
  table.insert(ProceduralDistributions["list"]["MayorWestPointDesk"].items, "Base.CigaretteCarton");
  table.insert(ProceduralDistributions["list"]["MayorWestPointDesk"].items, 10);

  --xd
  table.insert(ProceduralDistributions["list"]["MexicanKitchenFridge"].items, "Base.BeerImported");
  table.insert(ProceduralDistributions["list"]["MexicanKitchenFridge"].items, 3);

  --Adds packs to zombies
  table.insert(SuburbsDistributions["all"]["inventorymale"].items, "Base.CigarettePack");
  table.insert(SuburbsDistributions["all"]["inventorymale"].items, 2.5);

  table.insert(SuburbsDistributions["all"]["inventoryfemale"].items, "Base.CigarettePack");
  table.insert(SuburbsDistributions["all"]["inventoryfemale"].items, 2.5);

  ItemPickerJava.Parse()
end

Events.OnInitGlobalModData.Add(SetSpawnRates)