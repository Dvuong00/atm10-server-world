-- 3rd party addon launcher
-- auth-client autocomplete
completion = require "cc.shell.completion"
completeauth = completion.build({ completion.choice, { "addadmin", "adduser", "deluser", "setpass" , "setowner", "delowner" } })
completeauthgroup = completion.build({ completion.choice, { "adduser", "deluser", "makegroup", "delgroup" } })
completedhcp = completion.build({ completion.choice, { "lookup", "renew", "register", "unregister", "list" } })

shell.setCompletionFunction("bin/auth-client.sh", completeauth)
shell.setCompletionFunction("bin/auth-group.sh", completeauthgroup)
shell.setCompletionFunction("bin/dhcp.sh", completedhcp)
-- auth client end

-- devlib autocomplete
completion = require "cc.shell.completion"
completedev = completion.build( { completion.file, many = true })
shell.setCompletionFunction("bin/printfile.sh", completedev)
-- 3rd party addon launcher
-- minux autocomplete function script
completion = require "cc.shell.completion"
complete = completion.build( { completion.file, many = true })
completecfg = completion.build({ completion.choice, { "login", "update", "menu", "debug", "ui","welcome", "network", "crashhandler" } })
completeapt = completion.build({ completion.choice, { "install", "remove", "update", "update", "list-installed","list-available","list-source","setsource", "clearsource" } })
shell.setCompletionFunction("bin/cat.sh", complete)
shell.setCompletionFunction("bin/edit.sh", complete)
if fs.exists("/bin/pain.sh") then shell.setCompletionFunction("bin/pain.sh", complete) end
shell.setCompletionFunction("bin/lsr.sh", complete)
shell.setCompletionFunction("bin/ls.sh", complete)
shell.setCompletionFunction("bin/less.sh", complete)
shell.setCompletionFunction("bin/config.sh", completecfg)
shell.setCompletionFunction("bin/apt.sh", completeapt)
-- end minux addon

-- 3rd party addon launcher
-- minux autocomplete function script
swordcompletion = require "cc.shell.completion"
swordcomplete = swordcompletion.build( { completion.file, many = true })
shell.setCompletionFunction("bin/sword.sh", swordcomplete)

