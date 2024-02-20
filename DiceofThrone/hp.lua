-- Universal Counter Tokens      original coded by: MrStump
-- Scale and position adapted by kensuaga
-- Additive Upper Limit added by Spectrum Tech

--Center positions for the buttons
posX = -0.05
posY = 0.125
posZ = 0.03

--Scale of the buttons
scale1 = 0.65
scale2 = 0.8

--starting value
count = 50

-- Do not change anything below these line unless you know what you are doing.

--Saves the count value into a table (data_to_save) then encodes it into the Tabletop save
function onSave()
local data_to_save = {saved_count = count}
saved_data = JSON.encode(data_to_save)
return saved_data
end

--Loads the saved data then creates the buttons
function onload(saved_data)
generateButtonParamiters()
--Checks if there is a saved data. If there is, it gets the saved value for 'count'
if saved_data != '' then
    local loaded_data = JSON.decode(saved_data)
    count = loaded_data.saved_count
else
    --If there wasn't saved data, the default value is set to 10.
    count = 0
end

--Generates the buttons after putting the count value onto the 'display' button
b_display.label = tostring(count)
if count >= 100 then
    b_display.font_size = 360
else
    b_display.font_size = 500
end
self.createButton(b_display)
self.createButton(b_plus)
self.createButton(b_minus)
self.createButton(b_plus5)
self.createButton(b_minus5)
end

--Activates when + is hit. Adds 1 to 'count' then updates the display button.
function increase()
if count < 60 then  --limitation no more than 15 can bechanged based on specific games
    count = count + 1
    updateDisplay()
else
    updateDisplay()
end
end

--Activates when - is hit. Subtracts 1 from 'count' then updates the display button.
function decrease()
--Prevents count from going below 0
if count > 0 then
    count = count - 1
    updateDisplay()
end
end

--Activates when + is hit. Adds 5 to 'count' then updates the display button.
function increase5()
if count <= 55 then
    count = count + 5
    updateDisplay()
else
    updateDisplay()
end
end

--Activates when - is hit. Subtracts 5 from 'count' then updates the display button.
function decrease5()
--Prevents count from going below 0
if count > 4 then
    count = count - 5
else
    count = 0
end
updateDisplay()
end

function resetTo50()
count = 50
updateDisplay()
end

function customSet()
local description = self.getDescription()
if description != '' and type(tonumber(description)) == 'number' then
    self.setDescription('')
    count = tonumber(description)
    updateDisplay()
end
end

--function that updates the display. I trigger it whenever I change 'count'
function updateDisplay()
--If statement to resize font size if it gets too long
if count >= 100 then
    b_display.font_size = 360
else
    b_display.font_size = 500
end
b_display.label = tostring(count)
self.editButton(b_display)
end



--This is activated when onload runs. This sets all paramiters for our buttons.
--I do not have to put this all into a function, but I prefer to do it this way.
function generateButtonParamiters()
b_display = {
    index = 0, click_function = 'customSet', function_owner = self, label = '00',
    position = {posX, posY, posZ}, width = 0, height = 0, font_size = 500,
    font_color = {1,1,1}, scale = {scale1,scale1,scale1}
}
b_plus = {
    click_function = 'increase', function_owner = self, label =  '+1',
    position = {posX + 0.9*scale2, posY, posZ + 0.26*scale2},
    width = 175, height = 300, font_size = 100, scale = {scale2,scale2,scale2}
}
b_minus = {
    click_function = 'decrease', function_owner = self, label =  '-1',
    position = {posX + -0.9*scale2, posY, posZ + 0.26*scale2},
    width = 175, height = 300, font_size = 100, scale = {scale2,scale2,scale2}
}
b_plus5 = {
    click_function = 'increase5', function_owner = self, label =  '+5',
    position = {posX + 0.9*scale2, posY, posZ + -0.29*scale2},
    width = 175, height = 230, font_size = 100, scale = {scale2,scale2,scale2}
}
b_minus5 = {
    click_function = 'decrease5', function_owner = self, label =  '-5',
    position = {posX + -0.9*scale2, posY, posZ + -0.29*scale2},
    width = 175, height = 230, font_size = 100, scale = {scale2,scale2,scale2}
}
end
