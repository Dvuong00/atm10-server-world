-- ls/dir program
args = {...}
local foldertarget = args[1]
local folderoptions = args[2]
if foldertarget == nil then
	target = shell.dir()
	foldertarget = "/"..target.."/"
end

-- catch invalid input
if fs.exists(foldertarget) == false then print("Path does not exist") return false end
if fs.isDir(foldertarget) == false then print("Path is not a directory") return false end

-- if no options are provided, do a normal list.
if folderoptions == nil then
	shell.run("/rom/programs/list.lua "..foldertarget)
-- recursive list	
elseif folderoptions == "-r" then
	minux.lsr(foldertarget.."/")
	shell.run("/bin/less.sh /temp/ls/files.ls")
-- detailed list
elseif folderoptions == "-a" then
	minux.lsa(foldertarget.."/")
	shell.run("/bin/less.sh /temp/ls/a.ls")	
-- option unkown
else
	print("invalid option")
end
