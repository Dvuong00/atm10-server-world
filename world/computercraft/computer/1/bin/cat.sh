-- this app reads and prints a file plain and simple.
args = {...}
local userinput = args[1]
local etc1 = args[2]
local filename = shell.resolve( userinput )
-- catch invalid inputs
if filename == nil or filename == "" then
	print("invalid filename")
	print("use 'man cat' for the manual")
	return 0
elseif fs.exists(filename) == false then
	print("file not found")
	return 0
end

-- we process the help command

if filename == "?" or filename == "help" then
	print("cat, /bin/cat.sh")
	print("prints a text file to the screen")
	print("usage: 'cat filename'")
	print("extra options: 'p'")
	print("p - pauses every 15 lines")
	
-- otherwise we open the file	
else
	local fileread = true
	local file = fs.open(filename, "r")
	local linecounter = 0
-- we read and print the lines	
	while fileread  ~= false do
		local temp = file.readLine()
		linecounter = linecounter + 1
-- if we hit nil we stop		
		if temp == nil then fileread = false 
		else print(temp) end
-- we halt if p was given		
		if etc1 == "p" and linecounter == 15 and temp ~= nil then
			print("Hit ENTER for next page or q to stop")
			local input = read()
			if input == "q" or input == "Q" then
				input = nil
				file.close()
				return 0
			end
			linecounter = 0
		end
	end
	file.close()
end