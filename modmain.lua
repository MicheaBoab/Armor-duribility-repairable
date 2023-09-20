GLOBAL.FUELTYPE.GOLDNUGGET = "GOLDNUGGET"

local function goldnuggetfuel(inst)
	if not GLOBAL.TheWorld.ismastersim then
		return
	end
	
	inst:AddComponent("fuel")
	inst.components.fuel.fueltype = GLOBAL.FUELTYPE.GOLDNUGGET	-- assign fuel type
	inst.components.fuel.fuelvalue = GLOBAL.TUNING.LARGE_FUEL	-- assign fuel value, see tuning.lua
end

AddPrefabPostInit("goldnugget", goldnuggetfuel)