-- Menu API by ComputerCrafter
-- buffer added by Missooni
-- Uses ">" as pointer instead of "->"
function menuOptions(title, tChoices, tActions)
local ogTerm = term.current()
local termX, termY = term.getSize()
local bufferWindow = window.create(ogTerm, 1, 1, termX, termY, true)
local check = true
local colortable = minux.getbashcolor()
term.redirect(bufferWindow)
term.setTextColor(colortable[3])
paintutils.drawLine(1, 1, termX, 1, colortable[2])
term.setCursorPos(1, 1)
term.setBackgroundColor(colortable[2])
nSelection = 1
print(title)
term.setBackgroundColor(colortable[2])
term.setTextColor(colortable[1])
print(string.rep(" ", termX))
bufferWindow.reposition(1, 3, termX, termY - 2)
while check == true do
bufferWindow.setVisible(false)
term.setBackgroundColor(colortable[2])
term.clear()
term.setCursorPos(1,1)
local baseDraw = 1
if #tChoices > termY - 2 then 
baseDraw = nSelection
end
    for nLine = baseDraw, #tChoices do 
        local sLine = " "
		local mX, mY = term.getCursorPos()
        if nSelection == nLine then
            sLine = ">"
            pLine = true
        else
            pLine = false
        end
        sLine = sLine .." "..tChoices[nLine] 
        if pLine == true and mY < termY - 2 then
            term.setTextColor(colortable[3])
            print(sLine)
            term.setTextColor(colortable[1])
        elseif mY < termY - 2 then
            print(sLine)
        end
    end
    bufferWindow.setVisible(true)
    local sEvent, nKey = os.pullEvent("key")
    if nKey == keys.up or nKey == keys.w then
        if tChoices[nSelection - 1] then
            nSelection = nSelection - 1
        else
			nSelection = #tChoices
		end
    elseif nKey == keys.down or nKey == keys.s  then
        if tChoices[nSelection + 1] then 
            nSelection = nSelection + 1
        else
			nSelection = 1
		end
    elseif nKey == keys.enter then 
        if tActions[nSelection] then
            tActions[nSelection](nSelection)
            check = false
        else
            print("Error: Selection out of bounds: ", nSelection)
            print("Press Enter to continue...")
            read() 
        end
    end
end
term.redirect(ogTerm)
end

