-- MainScene
-- Lesson9a

-- Created by: Zacharias Octavious 
-- Created on: Nov - 2015
-- Created for: ICS2O
-- This is the second scene

MainScene = class()

--global to this file
local moveBackButton
local numbers = {}

function MainScene:init()

    moveBackButton = Button("iOS Button Pack:Red Back Circle Button", vec2(WIDTH/2, HEIGHT/2))
    
    print("initially I have ".. #numbers .. " numbers.")
end

function MainScene:draw()
    -- Codea does not automatically call this method
    
    background(0, 129, 255, 255)
    moveBackButton:draw()
end

function MainScene:touched(touch)
    -- Codea does not automatically call this method
    moveBackButton:touched(touch)
    
    if(moveBackButton.selected == true) then
        table.insert(numbers, math.random(1,10))
        print(#numbers)
        
        local counter = 1
        while (counter <= #numbers) do
            print(numbers[counter])
            counter = counter + 1
        end
        print("--------")
    end
end