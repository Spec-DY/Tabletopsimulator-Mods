-- orginally coded by 짱초보
-- edited by Specturm
function onload()
    self.createButton({
        click_function = 'start',
        function_owner = self,
        label          = 'Start\n开始',
        position       = {0,0.3,0.6},
        rotation       = {0,0,0},
        scale          = {0.6,0.6,0.6},
        width          = 500,
        height         = 400,
        font_size      = 100,
        color          = 'White',
        font_color     = 'Black',
    })

    for i, v in pairs(getAllObjects()) do
        v.interactable = false
    end
    obj = getObjectFromGUID('2f72b2')
    obj.interactable = true

end

deck_list ={
    '3d1527', -- tier_1
    'c881cc', -- tier_2
    '481afa', -- tier_3
}


tier_1={
    {-8.00, 1.50, 1.00},
    {-4.00, 1.50, 1.00},
    {0.00, 1.50, 1.00},
    {4.00, 1.50, 1.00},
    {8.00, 1.50, 1.00},
}
tier_2={
    {-6.00, 1.50, 6.00},
    {-2.00, 1.50, 6.00},
    {2.00, 1.50, 6.00},
    {6.00, 1.50, 6.00},
}
tier_3={
    {-4.00, 1.50, 11.00},
    {0.00, 1.50, 11.00},
    {4.00, 1.50, 11.00},
}

function start()
    for i, v in pairs(getAllObjects()) do
        if v.hasTag('stop') then
            if (v.guid ~= '9c6d73' and v.guid ~= 'd64540' and v.guid ~= 'eb4143') then
            v.interactable = true
            end
        end
    end

    for i=1, #deck_list do
        getObjectFromGUID(deck_list[i]).shuffle()
    end
    getObjectFromGUID('03b6fb').AssetBundle.playTriggerEffect(2)
    for i=1, #tier_1 do
        Wait.time(function()
            getObjectFromGUID(deck_list[1]).takeObject({
                position          = tier_1[i],
                smooth            = true,
                flip              = true,
            })
        end,0.07*i)
    end
    for i=1, #tier_2 do
        Wait.time(function()
            getObjectFromGUID(deck_list[2]).takeObject({
                position          = tier_2[i],
                smooth            = true,
                flip              = true,
            })
        end,0.07*i+0.28)
    end
    for i=1, #tier_3 do
        Wait.time(function()
            getObjectFromGUID(deck_list[3]).takeObject({
                position          = tier_3[i],
                smooth            = true,
                flip              = true,
            })
        end,0.07*i+0.42)
    end
    getObjectFromGUID('9c6d73').setGMNotes('on')
    getObjectFromGUID('9c6d73').call('refill')
    self.destruct()
end
