local function OnNewGame(player, square)
  --Checks if player has smoker trait and add in cig pack and lighter
  if player:getCharacterTraits():contains("Smoker") then
    player:getInventory():AddItem("Base.CigarettePack"):setUses(ZombRand(3,10)) --Sets number of cigs in pack to 3-10 "muh immersion"
    player:getInventory():AddItem("Base.LighterDisposable"):setUses(ZombRand(6,25)) --Sets a random number of uses in lighter
  end

end

Events.OnNewGame.Add(OnNewGame)