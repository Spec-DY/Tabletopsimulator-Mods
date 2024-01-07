function onLoad()
    self.interactable = false
    dealandcp = {
        click_function = "newturn",
        function_owner = self,
        label = "开始新回合",
        position = {0,0.3,-3,0},
        rotation = {0,0,0},
        width = 1100,
        height = 350,
        font_size = 150
    }
    self.createButton(dealandcp)

    dealone = {
        click_function = "dealonecard",
        function_owner = self,
        label = "抽牌",
        position = {0,0.3,-2.0},
        rotation = {0,0,0},
        width = 1100,
        height = 350,
        font_size = 150
    }
    self.createButton(dealone)

    yellow_deckzone_GUID = 'e24c64'
    yellow_cpzone_GUID = 'e12388'

end

function newturn()


    yellow_deckzone_obj = getObjectFromGUID(yellow_deckzone_GUID)
    yellow_decktable = yellow_deckzone_obj.getObjects()

    for _, obj in pairs(yellow_decktable) do
        if obj.tag == 'Deck' then
            obj.deal(1, 'Yellow')
        end
    end

    for _, obj in pairs(yellow_decktable) do
        if obj.tag == 'Card' then
            obj.deal(1, 'Yellow')
        end
    end


    yellow_cpzone_obj = getObjectFromGUID(yellow_cpzone_GUID)
    yellow_cptable = yellow_cpzone_obj.getObjects()

    for _, obj in pairs(yellow_cptable) do
        if obj.getName() == 'CP' then
            obj.call('increase')
        end
    end

    
    
end

function dealonecard()


    yellow_deckzone_obj = getObjectFromGUID(yellow_deckzone_GUID)
    yellow_decktable = yellow_deckzone_obj.getObjects()
    
    for _, obj in pairs(yellow_decktable) do
        if obj.tag == 'Deck' then
            obj.deal(1, 'Yellow')
        end
    end

    for _, obj in pairs(yellow_decktable) do
        if obj.tag == 'Card' then
            obj.deal(1, 'Yellow')
        end
    end

    
end
