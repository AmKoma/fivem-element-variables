elementDataClient = {}

function getElementData ( element, dataString )
	if element and dataString then
		if not elementDataClient[element] then
			elementDataClient[element] = {}
		end
		if elementDataClient[element][dataString] then
			return elementDataClient[element][dataString]
		else
			return nil
		end
	else
		return nil
	end
end

function setElementData ( element, dataString, value )
	if element and dataString and value ~= nil then
		if not elementDataClient[element] then
			elementDataClient[element] = {}
		end
        elementDataClient[element][dataString] = value
        TriggerServerEvent("setElementDataRemote", element, dataString, value)
	else
		return nil
	end
end


function setElementDataRemoteFunctionClient ( dataString, value )
	source = PlayerId()
    print(GetPlayerName(PlayerId())..", "..dataString..", "..value)
	if dataString and value ~= nil then
		if elementDataClient[source] == nil then
			elementDataClient[source] = {}
		end
		elementDataClient[source][dataString] = value
		print("Set!")
    else
        elementDataClient[source][dataString] = value
		return nil
	end
end
RegisterNetEvent("setElementDataRemoteClient")
AddEventHandler("setElementDataRemoteClient", setElementDataRemoteFunctionClient)