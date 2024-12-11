-- auth-client program pack
if fs.exists("/bin/auth-client.sh") then shell.setAlias("auth-client" , "/bin/auth-client.sh") end
if fs.exists("/bin/auth-group.sh") then shell.setAlias("auth-group" , "/bin/auth-group.sh") end
if fs.exists("/bin/dhcp.sh") then shell.setAlias("dhcp" , "/bin/dhcp.sh") end
if fs.exists("/bin/nslookup.sh") then shell.setAlias("nslookup" , "/bin/nslookup.sh") end
if fs.exists("/bin/groupadd.sh") then shell.setAlias("groupadd" , "/bin/groupadd.sh") end
if fs.exists("/bin/groupdel.sh") then shell.setAlias("groupdel" , "/bin/groupdel.sh") end
if fs.exists("/bin/groupcheck.sh") then shell.setAlias("groupcheck" , "/bin/groupcheck.sh") end
if fs.exists("/bin/groupjoin.sh") then shell.setAlias("groupjoin" , "/bin/groupjoin.sh") end
if fs.exists("/bin/groupleave.sh") then shell.setAlias("groupleave" , "/bin/groupleave.sh") end
if fs.exists("/bin/mask.sh") then shell.setAlias("mask" , "/bin/mask.sh") end
-- auth-client api's
os.loadAPI("/etc/api/auth")
os.loadAPI("/etc/api/dhcp")
-- devlib load api
os.loadAPI("/etc/api/dev")
shell.setAlias("printfile" , "/bin/printfile.sh")

-- ldris alias settings
if fs.exists("/bin/ldris.sh") then shell.setAlias("ldris" , "/bin/ldris.sh") end
if fs.exists("/bin/ldris.sh") then shell.setAlias("tetris" , "/bin/ldris.sh") end

if fs.exists("/bin/minesweeper.sh") then shell.setAlias("minesweeper" , "/bin/minesweeper.sh") end

if fs.exists("/bin/minex.sh") then shell.setAlias("explorer" , "/bin/minex.sh") end
if fs.exists("/bin/minex.sh") then shell.setAlias("minex" , "/bin/minex.sh") end
-- begin minux-main alias
shell.setAlias("getdhcp" , "/boot/network/dhcp.sys")
shell.setAlias("apt" , "/bin/apt.sh")
shell.setAlias("login" , "/bin/login.sh")
shell.setAlias("cat" , "/bin/cat.sh")
shell.setAlias("usermod" , "/bin/usermod.sh")
shell.setAlias("man" , "/bin/man.sh")
shell.setAlias("makeboot" , "/bin/makeboot.sh")
shell.setAlias("newtab" , "/bin/newtab.sh")
shell.setAlias("useradd" , "/bin/useradd.sh")
shell.setAlias("userdel" , "/bin/userdel.sh")
shell.setAlias("passwd" , "/bin/passwd.sh")
shell.setAlias("monitorprint" , "/etc/minux-main/sys/monitorprint.sys ")
shell.setAlias("config" , "/bin/config.sh")
shell.setAlias("lsr" , "/bin/lsr.sh")
shell.setAlias("minux" , "/bin/minux.sh")
shell.setAlias("halt" , "/bin/halt.sh")
shell.setAlias("restart" , "/bin/restart.sh")
shell.setAlias("shutdown" , "/bin/halt.sh")
shell.setAlias("reboot" , "/bin/restart.sh")
shell.setAlias("programs" , "/bin/programs.sh")
shell.setAlias("edit" , "/bin/edit.sh")
shell.setAlias("ls" , "/bin/ls.sh")
shell.setAlias("less" , "/bin/less.sh")
shell.setAlias("workspace" , "/bin/workspace.sh")
shell.setAlias("lock" , "/bin/lock.sh")
shell.setAlias("bash" , "/bin/bash.sh")
shell.setAlias("search","/bin/search.sh")
shell.setAlias("find","/bin/search.sh")
-- end minux-main alias

-- netlib API
os.loadAPI("/etc/api/netlib")
-- netlib aliases
shell.setAlias("ping","/bin/ping.sh")
shell.setAlias("netlib","/bin/netlib.sh")
shell.setAlias("sendfile","/bin/sendfile.sh")
shell.setAlias("getfile","/bin/getfile.sh")
-- end netlib

-- pain alias
shell.setAlias("pain" , "/bin/pain.sh")
-- pain alias

if fs.exists("/bin/solitaire.sh") then shell.setAlias("solitaire" , "/bin/solitaire.sh") end

-- sword alias settings
if fs.exists("/bin/sword.sh") then shell.setAlias("sword" , "/bin/sword.sh") end

