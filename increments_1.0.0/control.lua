require "defines"

game.oninit(function()

	game.alwaysday = true
   
   local chest1 = game.createentity{name = "big-ship-wreck-2", position = {2, 4}}
	chest1.insert({name="solar-panel", count="5"})
	chest1.insert({name="small-electric-pole", count="4"})
	
	local chest2 = game.createentity{name = "big-ship-wreck-1", position = {7, 1}}
	chest2.insert({name="basic-accumulator", count="2"})
	chest2.insert({name="assembling-machine-3", count="1"})
	
	local chest3 = game.createentity{name = "big-ship-wreck-3", position = {-10, 1}}
	chest3.insert({name="substation-double", count="1"})
end)

game.onevent(defines.events.onplayercreated, function(event)
local player = game.getplayer(event.playerindex)
local gunsinventory = player.getinventory(defines.inventory.playerguns)
local ammoinventory = player.getinventory(defines.inventory.playerammo)
local technologylist = player.force.technologies

player.clearitemsinside()

player.character.insert{name="plasma-scorcher", count=1}
player.character.insert{name="ps1200", count=10}
player.character.insert{name="jack-hammer", count=1}
player.force.manualcraftingspeedmodifier = -1


technologylist["optics"].enabled = false
technologylist["night-vision-equipment"].enabled = false

end)