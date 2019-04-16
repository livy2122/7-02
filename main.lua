
-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------

-- Character move

local map = display.newImageRect( "map.png", 2100,2100 )
map.x = 900
map.y = display.contentHeight - 1050
map.id = "map"

local theCharacter = display.newImage( "Idle.png" )
theCharacter.x = display.contentCenterX
theCharacter.y = display.contentCenterY
theCharacter.id = "the character"

local dPad = display.newImage( "d-pad.png" )
dPad.x = 300
dPad.y = display.contentHeight - 400
dPad.id = "d-pad"

local upArrow = display.newImage( "upArrow.png" )
upArrow.x = 300
upArrow.y = display.contentHeight - 510
upArrow.id = "up arrow"

local downArrow = display.newImage( "downArrow.png" )
downArrow.x = 300
downArrow.y = display.contentHeight - 290
downArrow.id = "down arrow"

local leftArrow = display.newImage( "leftArrow.png" )
leftArrow.x = 190
leftArrow.y = display.contentHeight - 400
leftArrow.id = "left arrow"

local rightArrow = display.newImage( "rightArrow.png" )
rightArrow.x = 410
rightArrow.y = display.contentHeight -400
rightArrow.id = "right arrow"

local JumpButton = display.newImageRect( "JUMP.png", 130,130 )
JumpButton.x = 305
JumpButton.y = display.contentHeight -400
JumpButton.id = "Jump"




  function upArrow:touch( event )
    if ( event.phase == "ended" ) then
        -- move the character up
        transition.moveBy( theCharacter, { 
        	x = 0, -- move 0 in the x direction 
        	y = -50, -- move down 50 pixels
        	time = 100 -- move in a 1/10 of a second
        	} )
    end 
      return true

  end

  function downArrow:touch( event )
    if ( event.phase == "ended" ) then
        -- move the character up
        transition.moveBy( theCharacter, { 
        	x = 0, -- move 0 in the x direction 
        	y = 50, -- move down 50 pixels
        	time = 100 -- move in a 1/10 of a second
        	} )
    end


    return true
end

  function rightArrow:touch( event )
    if ( event.phase == "ended" ) then
        -- move the character up
        transition.moveBy( theCharacter, { 
        	x = 50, -- move 0 in the x direction 
        	y = 0, -- move down 50 pixels
        	time = 100 -- move in a 1/10 of a second
        	} )
    end


    return true
end

  function leftArrow:touch( event )
    if ( event.phase == "ended" ) then
        -- move the character up
        transition.moveBy( theCharacter, { 
        	x = -50, -- move 0 in the x direction 
        	y = 0, -- move down 50 pixels
        	time = 100 -- move in a 1/10 of a second
        	} )
    end


    return true
end

  function downArrow:touch( event )
    if ( event.phase == "ended" ) then
        -- move the character up
        transition.moveBy( theCharacter, { 
        	x = 0, -- move 0 in the x direction 
        	y = 50, -- move down 50 pixels
        	time = 100 -- move in a 1/10 of a second
        	} )
    end


    return true
end
function JumpButton:touch( event )
    if ( event.phase == "ended" ) then
        -- move the character up
        transition.moveBy( theCharacter, { 
        	x = 50, -- move 0 in the x direction 
        	y = -50, -- move down 50 pixels
        	time = 100 -- move in a 1/10 of a second
        	} )
    end


    return true
end

upArrow:addEventListener( "touch", upArrow )
downArrow:addEventListener( "touch", downArrow )
rightArrow:addEventListener( "touch", rightArrow )
leftArrow:addEventListener( "touch", leftArrow )
JumpButton:addEventListener( "touch", JumpButton )






















