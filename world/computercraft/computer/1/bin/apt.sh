-- apt controller script, this script makes it easy for users to run the apt system

args = {...}
local command = args[1]
local packname = args[2]
local rebuild = false

-- we translate aliases
if command == "install" then command = "-i" end
if command == "remove" then command = "-r" end
if command == "update" then command = "-u" end
if command == "update-forced" then command = "-U" end
if command == "setsource" then command = "-s" end
if command == "clearsource" then command = "-c" end
if command == "setupdate" then command = "-a" end
if command == "list-installed" then command = "-l" end
if command == "list-available" then command = "-la" end
if command == "list-source" then command = "-ls" end


-- now we translate to the correct subprogram
if command == "-i" and _G.admin == true and packname ~= nil then
	if apt.checkinstall(packname) == true then
		print("Already installed:"..packname)
		return 0
	end
	local temp = apt.install(packname)
	if temp == true then
		print("package installed:"..packname)
		rebuild = true
	else
		print("install failed:"..packname)
	end
elseif command == "-i" and packname == "auth-client" then
	if apt.checkinstall(packname) == true then
		print("Already installed:"..packname)
		return 0
	end
	local temp = apt.install(packname)
	if temp == true then
		rebuild = true
		print("package installed:"..packname)
	else
		print("install failed:"..packname)
	end
elseif command == "-r" and _G.admin == true and packname ~= nil then
	if apt.checkinstall(packname) == true then
		local temp = apt.uninstall(packname)
		if temp == false then
			print("removal failed:"..packname)
		else
			print("package removed:"..packname)
			rebuild = true
		end
	else
		print("not installed:"..packname)
	end
elseif command == "-u" and packname == nil then
	local temp = apt.update()
	rebuild = true
	if temp == true then
		print("update complete")
	else
		print("update failed")
	end
elseif command == "-U" then
	local temp = apt.update("-f")
	rebuild = true
	if temp == true then
		print("update complete")
	else
		print("update failed")
	end
elseif command == "-u" then
	local temp = apt.update(packname)
	rebuild = true
	if temp == true then
		print("update complete")
	else
		print("update failed")
	end
elseif command == "-s" and _G.admin == true and packname ~= nil then
	minux.debug("apt:addsource:"..packname)
	local temp = apt.addsource(packname)
	if temp == false then
		print("source not added")
	else
		print("source added")
	end
elseif command == "-c" and _G.admin == true and packname ~= nil then
	temp = apt.clearsource(packname)
	if temp == true then
		print("source removed")
	else
		print("source not removed")
	end
elseif command == "-a" and _G.admin == true and packname ~= nil then
	minux.config("update",packname)
elseif command == "-ls" then
	shell.run("/bin/less.sh /usr/apt/source.ls")
elseif command == "-la" then
	apt.softlist()
	shell.run("/bin/less.sh /temp/apt/programs.ls")
elseif command == "-l" then
	shell.run("/bin/less.sh /etc/apt/list/installed.db")
elseif command == nil then
	shell.run("/etc/minux-main/menu/soft.sys")
else
	print("Invalid input or access denied, use 'man apt'")
end

if rebuild == true then
	minux.debug("apt:init:reloadAPI","minux")
	shell.run("/boot/alias.ls")
end
