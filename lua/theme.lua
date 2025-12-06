local default = "everforest"

local allowed = {
	"everforest",
	"tokyo-night",
	"tokyo-dracula",
	"dracula",
	"nord",
	"catppuccin-mocha",
	"rose-pine",
}

local path = vim.fn.stdpath("config") .. "/.theme"

local function is_allowed(name)
	for _, v in ipairs(allowed) do
		if v == name then
			return true
		end
	end
	return false
end

local function read()
	local file = io.open(path, "r")
	if not file then
		return default
	end

	local line = file:read("*l")
	file:close()

	if line and is_allowed(line) then
		return line
	end

	return default
end

local function write(name)
	if not is_allowed(name) then
		return false
	end
	local file = io.open(path, "w")
	if not file then
		return false
	end
	file:write(name)
	file:close()
	return true
end

return {
	name = read(),
	file = path,
	set = write,
	allowed = allowed,
}
