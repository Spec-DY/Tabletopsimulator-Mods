 -- coded by Specturm
 tier_1 = {
    {-8.00, 1.50, 1.00},
    {-4.00, 1.50, 1.00},
    {0.00, 1.50, 1.00},
    {4.00, 1.50, 1.00},
    {8.00, 1.50, 1.00},
}
tier_2 = {
    {-6.00, 1.50, 6.00},
    {-2.00, 1.50, 6.00},
    {2.00, 1.50, 6.00},
    {6.00, 1.50, 6.00},
}
tier_3 = {
    {-4.00, 1.50, 11.00},
    {0.00, 1.50, 11.00},
    {4.00, 1.50, 11.00},
}

local tierDecksGUIDs = {
    ["tier_1"] = "3d1527",
    ["tier_2"] = "c881cc",
    ["tier_3"] = "481afa",
}

-- button cooldown
local isButtonOnCooldown = false

function onload()
    -- Button setup
    local deal_button_guid = "e7bcc6"
    local deal_button_obj = getObjectFromGUID(deal_button_guid)
    deal_button_obj.createButton({
        click_function = "dealCardFromAllTiers",
        function_owner = self,
        label = "Card Refill\n补牌",
        position = {0, 12, 0},
        rotation = {0, 0, 0},
        width = 1400,
        height = 900,
        font_size = 250,
        color = {1, 1, 1},
        font_color = {0, 0, 0},
    })
end

-- button function
function dealCardFromAllTiers(player_color)
    if isButtonOnCooldown then
        printToAll("Button is on cooldown. Please wait.\n按钮冷却中，请稍等", {0,1,0.9})
        return
    end

    isButtonOnCooldown = true

    -- iterate through tiers then deal one card
    for tier, guid in pairs(tierDecksGUIDs) do
        local positions = _G[tier]
        for i, pos in ipairs(positions) do
            if not isPositionOccupied(Vector(pos[1], pos[2], pos[3])) then
                local deck = getObjectFromGUID(guid)
                dealCardFromDeck(deck, Vector(pos[1], pos[2], pos[3]))
                Wait.time(function() isButtonOnCooldown = false end, 2)
                return
            end
        end
    end

    printToAll("No empty spot.\n没有空位", {0,1,0.9})
    isButtonOnCooldown = false
end

-- deal card
function dealCardFromDeck(deck, position)
    if deck then
        deck.takeObject({
            position = position,
            smooth = true,
            flip = true,
        })
    end
end

-- physics raycast
function isPositionOccupied(position)
    local hits = Physics.cast({
        origin = position,
        direction = {0, 1, 0},
        type = 3,
        size = {0.5, 0.5, 0.5},
        max_distance = 0.5,
        debug = false  -- display ray
    })

    for _, hit in ipairs(hits) do
        if hit.hit_object and hit.hit_object.getGUID() ~= "4ee1f2" then
            return true
        end
    end

    return false
end
