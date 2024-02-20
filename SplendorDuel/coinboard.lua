-- orginally coded by 짱초보
-- edited by Specturm
function onload()
    self.interactable = false
    self.createButton({
        click_function = 'refill',
        function_owner = self,
        label          = 'Token Refill\n填充棋盘',
        position       = {0, 0, 2.2},
        rotation       = {0,0,0},
        scale          = {0.6,0.6,0.6},
        width          = 700,
        height         = 400,
        font_size      = 100,
        color          = 'White',
        font_color     = 'Black'
    })

end

function refill()
    if self.getGMNotes() == 'on' or 'start' then
        refill_check()
    end
end

function refill_check()
    local snaps=self.getSnapPoints()
    local coin_table={}
    local bag=getObjectFromGUID('07b205')
    if #bag.getObjects() == 0 then
        broadcastToAll("Bag is empty; please return any used tokens back into the bag\n袋子中没有宝石，请将用过的宝石放入袋子中", {0,1,0.9})
        return
    end

    for i=1, 25 do
        coin_list=Find_obj(self.getPosition()+self.getScale().z*snaps[i].position:inverse()+vector(0,2,0))
        if #coin_list == 0 then
            table.insert(coin_table,i)
        end
    end
    Wait.time(function()
            if #bag.getObjects() < #coin_table then
                for x=1,#bag.getObjects() do
                    Wait.time(function()
                        bag.takeObject({
                        position          = self.getPosition()+self.getScale().x*snaps[coin_table[x]].position+vector(0,2,0),
                    })
                end, 0.05*x)
                end
            else
                for x=1,#coin_table do
                    Wait.time(function()
                        bag.takeObject({
                        position          = self.getPosition()+self.getScale().x*snaps[coin_table[x]].position+vector(0,2,0),
                    })
                end, 0.05*x)
                end
            end

            getObjectFromGUID('03b6fb').AssetBundle.playTriggerEffect(0)
            if self.getGMNotes() == 'start' then
                broadcastToAll('Tokens have been placed. Opponent gains 1 point.\n宝石已补齐，对手获得1卷轴', {0,1,0.9})
            else
                self.setGMNotes('start')
            end
    end, 0.2)
end


function Find_obj(snap_point)
local objList = Physics.cast({
   origin=snap_point+vector(0, -2, 0),
   direction={0,1,0},
   type=2,
   size={0.3,0.5,0.3},
   max_distance=1,
   debug=false
})
local check_list={}
for _, obj in pairs(objList) do
    if obj.hit_object.hasTag('Jewel') then
        table.insert(check_list, obj.hit_object)
    end

end
return check_list
end