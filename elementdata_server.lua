elementDataServer = {}
vehicleDataServer = {}

function getVehicleElementData ( element, dataString )
	if element and dataString then
		if not vehicleDataServer[element] then
			vehicleDataServer[element] = {}
		end
		if vehicleDataServer[element][dataString] then
			return vehicleDataServer[element][dataString]
		else
			return nil
		end
	else
		return nil
	end
end

function setVehicleElementData ( element, dataString, value )
	
	if element == nil then
		element = source
	end
	if element and dataString and value ~= nil then
		if not vehicleDataServer[element] then
			vehicleDataServer[element] = {}
		end
        vehicleDataServer[element][dataString] = value
	else
		return nil
	end
end

function getElementData ( element, dataString )
	if element and dataString then
		if not elementDataServer[element] then
			elementDataServer[element] = {}
		end
		if elementDataServer[element][dataString] then
			return elementDataServer[element][dataString]
		else
			return nil
		end
	else
		return nil
	end
end

function setElementData ( element, dataString, value )
	
	if element == nil then
		element = source
	end
	if element and dataString and value ~= nil then
		if not elementDataServer[element] then
			elementDataServer[element] = {}
		end
        elementDataServer[element][dataString] = value
		TriggerClientEvent("setElementDataRemoteClient", element, dataString, value)
		print("Set success")
	else
		return nil
	end
end


function setElementDataRemoteFunction ( element, dataString, value )
	element = source
	if element and dataString and value ~= nil then
		if not elementDataServer[element] then
			elementDataServer[element] = {}
		end
		elementDataServer[element][dataString] = value
	else
		return nil
	end
end
RegisterNetEvent("setElementDataRemote")
AddEventHandler("setElementDataRemote", setElementDataRemoteFunction)

RegisterCommand("servermoney", function(source, args)

	if (args[1] == "add") then
		setElementData(source, "money", 1000)
	else
		outputChatBox("Hi", getElementData(source, "money"), 255, 0, 0, source)
		outputChatBox("Hi", getElementData(source, "spawny"), 255, 0, 0, source)
	end

end)