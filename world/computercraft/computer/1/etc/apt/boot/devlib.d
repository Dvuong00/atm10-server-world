-- devlib autocomplete
completion = require "cc.shell.completion"
completedev = completion.build( { completion.file, many = true })
shell.setCompletionFunction("bin/printfile.sh", completedev)