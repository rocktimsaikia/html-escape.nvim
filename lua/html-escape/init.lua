dofile("entities.lua")
dofile("characters.lua")

local function escape(str)
	local pattern = "["
	for k, _ in pairs(entities) do
		pattern = pattern .. "%" .. k
	end
	pattern = pattern .. "]"
	return str:gsub(pattern, entities)
end

local function unescape(str)
	local pattern = "["
	for k, v in pairs(characters) do
		pattern = pattern .. "%" .. k
	end
	pattern = pattern .. "]"
	return str:gsub(pattern, characters)
end
