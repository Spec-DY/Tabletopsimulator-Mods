function onLoad()
    local messages = {
        '欢迎来到侠技霸骰！',
        '请在左侧点击按钮选择英雄',
        '若需更改英雄，请先在左侧点击“重置玩家桌面”，再重新选择英雄\n',
        '英雄列表已按照难度排序，简单->困难，从左至右，从上至下\n',
        '\n',
        '“开始新回合”按钮：增加1cp且抽一张牌',
        '“抽牌”按钮：仅抽一张牌',
        '“重置玩家桌面”按钮：将点击按钮的玩家桌面清空\n',
        '如果发现部分物品无法清空，请将其放置在弃牌区再次点击重置玩家桌面按钮',
        '如要查看英雄FAQ，建议右键克隆提示卡再右键解除锁定\n',
        '作者：SpectrumTech'
    }
    for i, message in ipairs(messages) do
        Wait.frames(function() broadcastToAll(message) end, i * 200)
    end


    --ninja button
        ninja_button = {
            click_function = "ninjaClicked",
            function_owner = ninjabox,
            label = "选择忍者",
            position = {0, -1.4, 4},
            rotation = {0, 0, 0},
            width = 2700,
            height = 700,
            font_size = 450
        }
        ninjaboxGUID = '00084c'
        ninjabox = getObjectFromGUID(ninjaboxGUID)
        ninjabox.createButton(ninja_button)
    
    --圣骑士
        paladin_button = {
            click_function = "paladinClicked",
            function_owner = paladinbox,
            label = "选择圣骑士",
            position = {0, -1.4, 4},
            rotation = {0, 0, 0},
            width = 2700,
            height = 700,
            font_size = 450
        }
        paladinboxGUID = '678675'
        paladinbox = getObjectFromGUID(paladinboxGUID)
        paladinbox.createButton(paladin_button)
    --炽天使
        seraph_button = {
            click_function = "seraphClicked",
            function_owner = seraphbox,
            label = "选择炽天使",
            position = {0, -1.4, 4},
            rotation = {0, 0, 0},
            width = 2700,
            height = 700,
            font_size = 450
        }
        seraphboxGUID = '382a31'
        seraphbox = getObjectFromGUID(seraphboxGUID)
        seraphbox.createButton(seraph_button)
    --暗影贼
        shadow_button = {
            click_function = "shadowClicked",
            function_owner =shadowbox,
            label = "选择暗影贼",
            position = {0, -1.4, 4},
            rotation = {0, 0, 0},
            width = 2700,
            height = 700,
            font_size = 450
        }
        shadowboxGUID = '303f58'
        shadowbox = getObjectFromGUID(shadowboxGUID)
        shadowbox.createButton(shadow_button)
    --吸血鬼
        vamp_button = {
            click_function = "vampClicked",
            function_owner =vampbox,
            label = "选择吸血鬼",
            position = {0, -1.4, 4},
            rotation = {0, 0, 0},
            width = 2700,
            height = 700,
            font_size = 450
        }
        vampboxGUID = '05eceb'
        vampbox = getObjectFromGUID(vampboxGUID)
        vampbox.createButton(vamp_button)
    --武士
        samurai_button = {
            click_function = "samuraiClicked",
            function_owner =samuraibox,
            label = "选择武士",
            position = {0, -1.4, 4},
            rotation = {0, 0, 0},
            width = 2700,
            height = 700,
            font_size = 450
        }
        samuraiboxGUID = 'cf5cd1'
        samuraibox = getObjectFromGUID(samuraiboxGUID)
        samuraibox.createButton(samurai_button)
    --海盗
        pirate_button = {
            click_function = "pirateClicked",
            function_owner =piratebox,
            label = "选择海盗",
            position = {0, -1.4, 4},
            rotation = {0, 0, 0},
            width = 2700,
            height = 700,
            font_size = 450
        }
        pirateboxGUID = '947631'
        piratebox = getObjectFromGUID(pirateboxGUID)
        piratebox.createButton(pirate_button)
    --女猎手

        huntress_button = {
            click_function = "huntressClicked",
            function_owner =huntressbox,
            label = "选择女猎手",
            position = {0, -1.4, 4},
            rotation = {0, 0, 0},
            width = 2700,
            height = 700,
            font_size = 450
        }
        huntressboxGUID = 'd3e34a'
        huntressbox = getObjectFromGUID(huntressboxGUID)
        huntressbox.createButton(huntress_button)

    --枪手

        gunner_button = {
            click_function = "gunnerClicked",
            function_owner =gunnerbox,
            label = "选择枪手",
            position = {0, -1.4, 4},
            rotation = {0, 0, 0},
            width = 2700,
            height = 700,
            font_size = 450
        }
        gunnerboxGUID = '8f41a0'
        gunnerbox = getObjectFromGUID(gunnerboxGUID)
        gunnerbox.createButton(gunner_button)

    --战术家

        tac_button = {
            click_function = "tacClicked",
            function_owner =tacbox,
            label = "选择战术家",
            position = {0, -1.4, 4},
            rotation = {0, 0, 0},
            width = 2700,
            height = 700,
            font_size = 450
        }
        tacboxGUID = 'd30ab3'
        tacbox = getObjectFromGUID(tacboxGUID)
        tacbox.createButton(tac_button)

    --野蛮人

        barba_button = {
            click_function = "barbaClicked",
            function_owner =barbabox,
            label = "选择野蛮人",
            position = {0, -1.4, 4},
            rotation = {0, 0, 0},
            width = 2700,
            height = 700,
            font_size = 450
        }
        barbaboxGUID = '6fe6eb'
        barbabox = getObjectFromGUID(barbaboxGUID)
        barbabox.createButton(barba_button)

    --火法

        pyro_button = {
            click_function = "pyroClicked",
            function_owner =pyrobox,
            label = "选择火法师",
            position = {0, -1.4, 4},
            rotation = {0, 0, 0},
            width = 2700,
            height = 700,
            font_size = 450
        }
        pyroboxGUID = 'ccbea2'
        pyrobox = getObjectFromGUID(pyroboxGUID)
        pyrobox.createButton(pyro_button)

    --树精

        treant_button = {
            click_function = "treantClicked",
            function_owner =treantbox,
            label = "选择树精",
            position = {0, -1.4, 4},
            rotation = {0, 0, 0},
            width = 2700,
            height = 700,
            font_size = 450
        }
        treantboxGUID = 'cc8812'
        treantbox = getObjectFromGUID(treantboxGUID)
        treantbox.createButton(treant_button)

    --月精灵

        moon_button = {
            click_function = "moonClicked",
            function_owner =moonbox,
            label = "选择月精灵",
            position = {0, -1.4, 4},
            rotation = {0, 0, 0},
            width = 2700,
            height = 700,
            font_size = 450
        }
        moonboxGUID = 'eb2b2b'
        moonbox = getObjectFromGUID(moonboxGUID)
        moonbox.createButton(moon_button)

    --武僧

        monk_button = {
            click_function = "monkClicked",
            function_owner =monkbox,
            label = "选择武僧",
            position = {0, -1.4, 4},
            rotation = {0, 0, 0},
            width = 2700,
            height = 700,
            font_size = 450
        }
        monkboxGUID = '8aaeac'
        monkbox = getObjectFromGUID(monkboxGUID)
        monkbox.createButton(monk_button)
        
    --发明家

        arti_button = {
            click_function = "artiClicked",
            function_owner =artibox,
            label = "选择发明家",
            position = {0, -1.4, 4},
            rotation = {0, 0, 0},
            width = 2700,
            height = 700,
            font_size = 450
        }
        artiboxGUID = '9d6bed'
        artibox = getObjectFromGUID(artiboxGUID)
        artibox.createButton(arti_button)

    --圣诞恶魔

        krump_button = {
            click_function = "krumpClicked",
            function_owner =krumpbox,
            label = "选择圣诞恶魔",
            position = {0, -1.4, 4},
            rotation = {0, 0, 0},
            width = 3100,
            height = 700,
            font_size = 450
        }
        krumpboxGUID = '7d7e5b'
        krumpbox = getObjectFromGUID(krumpboxGUID)
        krumpbox.createButton(krump_button)


    --圣诞老人

        santa_button = {
            click_function = "santaClicked",
            function_owner =santabox,
            label = "选择圣诞老人",
            position = {0, -1.4, 4},
            rotation = {0, 0, 0},
            width = 3100,
            height = 700,
            font_size = 450
        }
        santaboxGUID = 'b16a24'
        santabox = getObjectFromGUID(santaboxGUID)
        santabox.createButton(santa_button)


--common items position
     
                        --board           --hp          --cp             --cue         --deck     --dice
        white_postable = {{-14,2,-23.05},{5.37,2,-6.93},{5.32,2,-15.56},{-35,2,-22.22},{-35,2,-6},{-21.00, 2.50, -8.00},{-18.00, 2.49, -8.00},{-15.00, 2.49, -8.00},{-12.00, 2.49, -8.00},{-9.00, 2.48, -8.00}}
                        --board             --hp              --cp               --cue              --deck             --dice
        blue_postable = {{50.39, 2, -23.11},{70.74, 2, -6.58},{71.17, 2, -15.68},{29.57, 2, -22.29},{30.00, 2, -6.77},{42.00, 2.20, -9.00},{45.00, 2.19, -9.00},{48.00, 2.19, -9.00},{51.00, 2.18, -9.00},{54.00, 2.18, -9.00}}
                        --board              --hp             --cp              --cue             --deck            --dice
        yellow_postable = {{50.59, 2, 24.82},{71.03, 2, 9.54},{71.25, 2, 18.03},{29.74, 2, 24.11},{30.30, 2, 8.10},{54.00, 2.19, 11.00},{51.00, 2.19, 11.00},{48.00, 2.19, 11.00},{45.00, 2.20, 11.00},{42.00, 2.20, 11.00}}
                       --board             --hp             --cp             --cue              --deck            --dice
        red_postable = {{-13.09, 2, 26.10},{7.33, 2, 10.82},{7.56, 2, 19.31},{-34.12, 2, 25.33},{-34.35, 2, 8.80},{-8.00, 2.27, 12.00},{-11.00, 2.28, 12.00},{-14.00, 2.28, 12.00},{-17.00, 2.28, 12.00},{-20.00, 2.29, 12.00}}
    
--token position
        --ninja
        white_ninja_tokentable = {{-34.00, 1.59, -13.50},{-34.00, 1.59, -17.00},{-34.00, 1.59, -21.00}}
        blue_ninja_tokentable = {{30.60, 1.52, -13.63},{30.60, 1.52, -16.97},{30.60, 1.52, -21.06}}
        yellow_ninja_tokentable = {{28.60, 1.53, 15.50},{28.60, 1.53, 18.78},{28.60, 1.53, 22.90}}
        red_ninja_tokentable = {{-35.24, 1.62, 16.70},{-35.19, 1.62, 19.95},{-35.20, 1.62, 24.13}}
        --paladin
        white_paladin_tokentable = {{-34.00, 1.59, -13.45},{-34.00, 1.59, -17.20},{-34.00, 1.59, -21.45},{-34.00, 1.59, -24.77},{-34.00, 1.59, -28.2}}
        blue_paladin_tokentable = {{30.60, 1.52, -13.30},{30.60, 1.52, -17.22},{30.60, 1.52, -21.24},{30.60, 1.52, -24.69},{30.60, 1.52, -28.19}}
        yellow_paladin_tokentable = {{28.60, 1.53, 15.11},{28.60, 1.53, 19.08},{28.60, 1.53, 23.08},{28.60, 1.53, 26.50},{28.60, 1.53, 30.08}}
        red_paladin_tokentable = {{-35.24, 1.62, 16.31},{-35.19, 1.62, 20.25},{-35.20, 1.62, 24.27},{-35.24, 1.62, 27.69},{-35.19, 1.62, 31.34}}
        --seraph
        white_seraph_tokentable = {{-34.16, 1.59, -12.90},{-34.09, 1.59, -17.63},{-34.08, 1.59, -22.37},{-34.09, 1.59, -25.56},{-34.13, 1.59, -29.02}}
        blue_seraph_tokentable = {{30.43, 1.52, -12.97},{30.45, 1.52, -17.71},{30.52, 1.52, -22.46},{30.45, 1.52, -25.63},{30.42, 1.52, -29.04}}
        yellow_seraph_tokentable = {{28.90, 1.53, 14.78},{28.88, 1.53, 19.86},{28.85, 1.53, 24.54},{28.92, 1.53, 27.43},{28.89, 1.53, 30.84}}
        red_seraph_tokentable = {{-34.95, 1.62, 16.03},{-34.97, 1.62, 20.72},{-35.00, 1.62, 25.44},{-35.00, 1.62, 28.63},{-34.96, 1.62, 32.02}}
        --shadow
        white_shadow_tokentable = {{-33.85, 1.59, -13.20},{-33.84, 1.59, -18.18},{-33.82, 1.59, -22.28}}
        blue_shadow_tokentable = {{30.71, 1.52, -13.28},{30.71, 1.52, -18.22},{30.73, 1.52, -22.34}}
        yellow_shadow_tokentable = {{28.63, 1.53, 15.09},{28.63, 1.53, 20.05},{28.60, 1.53, 24.17}}
        red_shadow_tokentable = {{-35.24, 1.62, 16.26},{-35.24, 1.62, 21.28},{-35.25, 1.62, 25.36}}
        --vamp
        white_vamp_tokentable = {{-34.00, 1.59, -13.11},{-34.00, 1.59, -19.96},{-34.00, 1.59, -23.53}}
        blue_vamp_tokentable = {{30.60, 1.52, -13.25},{30.60, 1.52, -20.05},{30.60, 1.52, -23.58}}
        yellow_vamp_tokentable = {{28.73, 1.53, 15.07},{28.69, 1.53, 21.86},{28.76, 1.53, 25.42}}
        red_vamp_tokentable = {{-35.12, 1.62, 16.23},{-35.14, 1.62, 23.09},{-35.15, 1.62, 26.65}}
        --pirate
        white_pirate_tokentable = {{-31.96, 1.59, -14.00},{-34.25, 1.59, -19.43},{-34.17, 1.59, -25.73},{-34.17, 1.59, -29.17}}
        blue_pirate_tokentable = {{32.60, 1.52, -14.14},{30.34, 1.52, -19.53},{30.41, 1.52, -25.80},{30.38, 1.52, -29.26}}       
        yellow_pirate_tokentable = {{26.69, 1.53, 15.95},{28.98, 1.53, 21.32},{28.96, 1.53, 27.62},{28.97, 1.53, 31.06}}
        red_pirate_tokentable = {{-37.15, 1.62, 17.13},{-34.91, 1.62, 22.61},{-34.92, 1.62, 28.79},{-34.94, 1.62, 32.34}}
        --nyra
        white_huntress_tokentable = {{-34.37, 2.10, -18.24},{-34.00, 1.59, -22.19},{-34.00, 1.59, -28.04}}
        blue_huntress_tokentable = {{30.19, 2.10, -18.30},{30.60, 1.52, -22.27},{30.60, 1.52, -28.12}}
        yellow_huntress_tokentable = {{29.12, 2.10, 20.10},{28.77, 1.53, 24.07},{28.75, 1.53, 29.95}}
        red_huntress_tokentable = {{-34.74, 2.10, 21.34},{-35.10, 1.62, 25.32},{-35.11, 1.62, 31.18}}
        --gunner
        white_gunner_tokentable = {{-34.09, 1.59, -13.27},{-34.11, 1.59, -18.14},{-34.17, 1.59, -21.78},{-34.13, 1.59, -26.14}}
        blue_gunner_tokentable = {{30.50, 1.52, -13.35},{30.45, 1.52, -18.20},{30.48, 1.52, -21.83},{30.46, 1.52, -26.21}}     
        yellow_gunner_tokentable = {{28.91, 1.53, 15.17},{28.90, 1.53, 20.03},{28.89, 1.53, 23.76},{28.85, 1.53, 28.04}}
        red_gunner_tokentable = {{-34.97, 1.62, 16.39},{-34.96, 1.62, 21.22},{-35.00, 1.62, 25.00},{-35.03, 1.62, 29.26}}
        --tac
        white_tac_tokentable = {{-34.11, 1.59, -13.42},{-34.11, 1.59, -19.35},{-34.17, 1.59, -23.84},{-34.13, 1.59, -27.74}}
        blue_tac_tokentable = {{30.46, 1.52, -13.50},{30.45, 1.52, -19.44},{30.44, 1.52, -23.94},{30.46, 1.52, -27.76}}
        yellow_tac_tokentable = {{28.91, 1.53, 15.34},{28.90, 1.53, 21.25},{28.89, 1.53, 25.74},{28.85, 1.53, 29.65}}
        red_tac_tokentable = {{-34.97, 1.62, 16.51},{-34.96, 1.62, 22.46},{-35.00, 1.62, 26.95},{-35.03, 1.62, 30.80}}
        --barba
        white_barba_tokentable = {{-33.96, 1.59, -13.36},{-33.95, 1.59, -16.64}}
        blue_barba_tokentable = {{30.59, 1.52, -13.41},{30.63, 1.52, -16.70}}
        yellow_barba_tokentable = {{28.81, 1.53, 15.22},{28.75, 1.53, 18.50}}
        red_barba_tokentable = {{-35.06, 1.62, 16.40},{-35.12, 1.62, 19.74}}
        --pyro
        white_pyro_tokentable = {{-33.91, 1.59, -13.22},{-33.92, 1.59, -17.30},{-33.92, 1.59, -20.84},{-33.89, 1.59, -24.31}}
        blue_pyro_tokentable = {{30.63, 1.52, -13.30},{30.68, 1.52, -17.37},{30.65, 1.52, -20.90},{30.64, 1.52, -24.39}}
        yellow_pyro_tokentable = {{28.74, 1.53, 15.10},{28.74, 1.53, 19.17},{28.72, 1.53, 22.70},{28.75, 1.53, 26.17}}
        red_pyro_tokentable = {{-35.18, 1.62, 16.32},{-35.15, 1.62, 20.40},{-35.16, 1.62, 23.93},{-35.14, 1.62, 27.42}}
        --treant
        white_treant_tokentable = {{-33.89, 1.59, -15.97},{-33.84, 1.59, -18.61},{-33.82, 1.59, -22.46},{-33.74, 1.59, -25.99},{-33.71, 1.59, -29.94}}
        blue_treant_tokentable = {{30.69, 1.52, -16.08},{30.76, 1.52, -18.58},{30.81, 1.52, -22.84},{30.83, 1.52, -26.09},{30.90, 1.52, -30.04}}
        yellow_treant_tokentable = {{28.65, 1.53, 17.88},{28.43, 1.53, 20.74},{28.51, 1.53, 24.99},{28.48, 1.53, 27.91},{28.50, 1.53, 31.85}}
        red_treant_tokentable = {{-35.21, 1.62, 19.14},{-35.29, 1.62, 21.88},{-35.43, 1.62, 26.26},{-35.41, 1.62, 29.12},{-35.41, 1.62, 33.07}}
        --moon
        white_moon_tokentable = {{-34.02, 1.59, -13.54},{-34.06, 1.59, -17.72},{-34.03, 1.59, -21.46},{-33.96, 1.59, -26.39}}
        blue_moon_tokentable = {{30.49, 1.52, -13.58},{30.56, 1.52, -17.79},{30.56, 1.52, -21.53},{30.60, 1.52, -26.46}}
        yellow_moon_tokentable = {{28.91, 1.53, 15.34},{28.86, 1.53, 19.60},{28.83, 1.53, 23.34},{28.79, 1.53, 28.25}}
        red_moon_tokentable = {{-35.04, 1.62, 16.62},{-34.99, 1.62, 20.80},{-35.03, 1.62, 24.56},{-35.06, 1.62, 29.46}}
        --monk
        white_monk_tokentable = {{-33.97, 1.59, -13.24},{-33.99, 1.59, -18.57},{-34.03, 1.59, -23.34},{-33.99, 1.59, -27.50}}
        blue_monk_tokentable = {{30.58, 1.52, -13.31},{30.56, 1.52, -18.65},{30.56, 1.52, -23.39},{30.58, 1.52, -27.53}}
        yellow_monk_tokentable = {{28.78, 1.53, 15.11},{28.77, 1.53, 20.51},{28.83, 1.53, 25.23},{28.79, 1.53, 29.33}}
        red_monk_tokentable = {{-35.09, 1.62, 16.42},{-35.09, 1.62, 21.74},{-35.03, 1.62, 26.42},{-35.06, 1.62, 30.57}}
        --arti
        white_arti_tokentable = {{-34.02, 1.59, -13.18},{-34.09, 1.59, -17.63},{-34.28, 2.30, -22.91},{-34.41, 2.30, -26.20},{-34.35, 2.30, -29.40}}
        blue_arti_tokentable = {{30.58, 1.52, -13.28},{30.45, 1.52, -17.71},{30.23, 2.30, -23.09},{30.13, 2.30, -26.32},{30.19, 2.30, -29.36}}
        yellow_arti_tokentable = {{28.81, 1.53, 15.05},{28.86, 1.53, 19.55},{29.08, 2.30, 24.82},{29.15, 2.30, 28.18},{29.08, 2.30, 31.19}}
        red_arti_tokentable = {{-35.04, 1.62, 16.27},{-35.02, 1.62, 20.76},{-34.82, 2.30, 26.12},{-34.70, 2.30, 29.44},{-34.81, 2.30, 32.39}}        
        --krump
        white_krump_tokentable = {{-33.87, 1.59, -13.00},{-33.80, 1.59, -16.94},{-33.56, 2.15, -21.41}}
        blue_krump_tokentable = {{30.70, 1.52, -13.07},{30.68, 1.52, -16.82},{30.99, 2.15, -21.54}}
        yellow_krump_tokentable = {{28.65, 1.53, 14.91},{28.60, 1.53, 18.78},{28.33, 2.15, 23.15}}
        red_krump_tokentable = {{-35.24, 1.62, 16.13},{-35.19, 1.62, 19.95},{-35.53, 2.15, 24.38}}
        --santa
        white_santa_tokentable = {{-33.48, 1.59, -13.06},{-33.61, 1.59, -17.60}}
        blue_santa_tokentable = {{31.04, 1.52, -13.13},{30.97, 1.52, -17.67}}
        yellow_santa_tokentable = {{28.40, 1.53, 14.85},{28.38, 1.53, 19.47}}
        red_santa_tokentable = {{-35.46, 1.62, 16.15},{-35.50, 1.62, 20.70}}


end
    
    function ninjaClicked(obj, color, alt_click)   --ninja setup
        clonebag = ninjabox.clone({0,5,0})
    
        if color == "White" then           --whiteplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = white_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_w(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #white_ninja_tokentable do
                clonebag.takeObject({
                    position = white_ninja_tokentable[i],
                    rotation = {0,360,0},               
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Blue" then             --blueplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = blue_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_b(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #blue_ninja_tokentable do
                clonebag.takeObject({
                    position = blue_ninja_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Yellow" then             --yellowplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = yellow_postable[i],
                    callback_function = function(obj) afterSpawn_y(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #yellow_ninja_tokentable do
                clonebag.takeObject({
                    position = yellow_ninja_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Red" then             --redplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = red_postable[i],
                    callback_function = function(obj) afterSpawn_r(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #red_ninja_tokentable do
                clonebag.takeObject({
                    position = red_ninja_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
    
    
        clonebag.destruct()
    end                                                  --ninja setup done
    
    function paladinClicked(obj, color, alt_click)   --paladin setup
        clonebag = paladinbox.clone({0,5,0})
    
        if color == "White" then           --whiteplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = white_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_w(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #white_paladin_tokentable do
                clonebag.takeObject({
                    position = white_paladin_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Blue" then             --blueplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = blue_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_b(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #blue_paladin_tokentable do
                clonebag.takeObject({
                    position = blue_paladin_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Yellow" then             --yellowplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = yellow_postable[i],
                    callback_function = function(obj) afterSpawn_y(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #yellow_paladin_tokentable do
                clonebag.takeObject({
                    position = yellow_paladin_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Red" then             --redplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = red_postable[i],
                    callback_function = function(obj) afterSpawn_r(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #red_paladin_tokentable do
                clonebag.takeObject({
                    position = red_paladin_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
    
    
        clonebag.destruct()
    end                                                  --paladin setup done
    
    function seraphClicked(obj, color, alt_click)   --seraph setup
        clonebag = seraphbox.clone({0,5,0})
    
        if color == "White" then           --whiteplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = white_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_w(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #white_seraph_tokentable do
                clonebag.takeObject({
                    position = white_seraph_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Blue" then             --blueplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = blue_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_b(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #blue_seraph_tokentable do
                clonebag.takeObject({
                    position = blue_seraph_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Yellow" then             --yellowplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = yellow_postable[i],
                    callback_function = function(obj) afterSpawn_y(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #yellow_seraph_tokentable do
                clonebag.takeObject({
                    position = yellow_seraph_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Red" then             --redplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = red_postable[i],
                    callback_function = function(obj) afterSpawn_r(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #red_seraph_tokentable do
                clonebag.takeObject({
                    position = red_seraph_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
    
    
        clonebag.destruct()
    end                                                  --seraph setup done
    
    function shadowClicked(obj, color, alt_click)   --shadow setup
        clonebag = shadowbox.clone({0,5,0})
    
        if color == "White" then           --whiteplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = white_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_w(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #white_shadow_tokentable do
                clonebag.takeObject({
                    position = white_shadow_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Blue" then             --blueplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = blue_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_b(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #blue_shadow_tokentable do
                clonebag.takeObject({
                    position = blue_shadow_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Yellow" then             --yellowplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = yellow_postable[i],
                    callback_function = function(obj) afterSpawn_y(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #yellow_shadow_tokentable do
                clonebag.takeObject({
                    position = yellow_shadow_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Red" then             --redplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = red_postable[i],
                    callback_function = function(obj) afterSpawn_r(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #red_shadow_tokentable do
                clonebag.takeObject({
                    position = red_shadow_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
    
    
        clonebag.destruct()
    end                                                  --shadow setup done

    function vampClicked(obj, color, alt_click)   --vamp setup
        clonebag = vampbox.clone({0,5,0})
    
        if color == "White" then           --whiteplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = white_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_w(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #white_vamp_tokentable do
                clonebag.takeObject({
                    position = white_vamp_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Blue" then             --blueplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = blue_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_b(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #blue_vamp_tokentable do
                clonebag.takeObject({
                    position = blue_vamp_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Yellow" then             --yellowplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = yellow_postable[i],
                    callback_function = function(obj) afterSpawn_y(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #yellow_vamp_tokentable do
                clonebag.takeObject({
                    position = yellow_vamp_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Red" then             --redplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = red_postable[i],
                    callback_function = function(obj) afterSpawn_r(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #red_vamp_tokentable do
                clonebag.takeObject({
                    position = red_vamp_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
    
    
        clonebag.destruct()
    end                                                  --vamp setup done

    function samuraiClicked(obj, color, alt_click)   --samurai setup
        clonebag = samuraibox.clone({0,5,0})
    
        if color == "White" then           --whiteplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = white_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_w(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #white_ninja_tokentable do
                clonebag.takeObject({
                    position = white_ninja_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Blue" then             --blueplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = blue_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_b(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #blue_ninja_tokentable do
                clonebag.takeObject({
                    position = blue_ninja_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Yellow" then             --yellowplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = yellow_postable[i],
                    callback_function = function(obj) afterSpawn_y(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #yellow_ninja_tokentable do
                clonebag.takeObject({
                    position = yellow_ninja_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Red" then             --redplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = red_postable[i],
                    callback_function = function(obj) afterSpawn_r(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #red_ninja_tokentable do
                clonebag.takeObject({
                    position = red_ninja_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
    
    
        clonebag.destruct()
    end                                                  --samurai setup done

    function pirateClicked(obj, color, alt_click)   --pirate setup
        clonebag = piratebox.clone({0,5,0})
    
        if color == "White" then           --whiteplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = white_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_w(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #white_pirate_tokentable do
                clonebag.takeObject({
                    position = white_pirate_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn_pirate_w(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Blue" then             --blueplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = blue_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_b(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #blue_pirate_tokentable do
                clonebag.takeObject({
                    position = blue_pirate_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn_pirate_b(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Yellow" then             --yellowplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = yellow_postable[i],
                    callback_function = function(obj) afterSpawn_y(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #yellow_pirate_tokentable do
                clonebag.takeObject({
                    position = yellow_pirate_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_pirate_y(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Red" then             --redplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = red_postable[i],
                    callback_function = function(obj) afterSpawn_r(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #red_pirate_tokentable do
                clonebag.takeObject({
                    position = red_pirate_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_pirate_r(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
    
    
        clonebag.destruct()
    end                                                  --pirate setup done

    function huntressClicked(obj, color, alt_click)   --huntress setup
        clonebag = huntressbox.clone({0,5,0})
    
        if color == "White" then           --whiteplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = white_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_w(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #white_huntress_tokentable do
                clonebag.takeObject({
                    position = white_huntress_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Blue" then             --blueplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = blue_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_b(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #blue_huntress_tokentable do
                clonebag.takeObject({
                    position = blue_huntress_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Yellow" then             --yellowplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = yellow_postable[i],
                    callback_function = function(obj) afterSpawn_y(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #yellow_huntress_tokentable do
                clonebag.takeObject({
                    position = yellow_huntress_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Red" then             --redplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = red_postable[i],
                    callback_function = function(obj) afterSpawn_r(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #red_huntress_tokentable do
                clonebag.takeObject({
                    position = red_huntress_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
    
    
        clonebag.destruct()
    end                                                  --huntress setup done

    function gunnerClicked(obj, color, alt_click)   --gunner setup
        clonebag = gunnerbox.clone({0,5,0})
    
        if color == "White" then           --whiteplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = white_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_w(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #white_gunner_tokentable do
                clonebag.takeObject({
                    position = white_gunner_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Blue" then             --blueplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = blue_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_b(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #blue_gunner_tokentable do
                clonebag.takeObject({
                    position = blue_gunner_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Yellow" then             --yellowplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = yellow_postable[i],
                    callback_function = function(obj) afterSpawn_y(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #yellow_gunner_tokentable do
                clonebag.takeObject({
                    position = yellow_gunner_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Red" then             --redplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = red_postable[i],
                    callback_function = function(obj) afterSpawn_r(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #red_gunner_tokentable do
                clonebag.takeObject({
                    position = red_gunner_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
    
    
        clonebag.destruct()
    end                                                  --gunner setup done

    function tacClicked(obj, color, alt_click)   --tac setup
        clonebag = tacbox.clone({0,5,0})
    
        if color == "White" then           --whiteplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = white_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_w(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #white_tac_tokentable do
                clonebag.takeObject({
                    position = white_tac_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn_tac_w(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Blue" then             --blueplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = blue_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_b(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #blue_tac_tokentable do
                clonebag.takeObject({
                    position = blue_tac_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn_tac_b(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Yellow" then             --yellowplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = yellow_postable[i],
                    callback_function = function(obj) afterSpawn_y(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #yellow_tac_tokentable do
                clonebag.takeObject({
                    position = yellow_tac_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_tac_y(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Red" then             --redplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = red_postable[i],
                    callback_function = function(obj) afterSpawn_r(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #red_tac_tokentable do
                clonebag.takeObject({
                    position = red_tac_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_tac_r(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
    
    
        clonebag.destruct()
    end                                                  --tac setup done

    function barbaClicked(obj, color, alt_click)   --barba setup
        clonebag = barbabox.clone({0,5,0})
    
        if color == "White" then           --whiteplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = white_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_w(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #white_barba_tokentable do
                clonebag.takeObject({
                    position = white_barba_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Blue" then             --blueplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = blue_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_b(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #blue_barba_tokentable do
                clonebag.takeObject({
                    position = blue_barba_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Yellow" then             --yellowplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = yellow_postable[i],
                    callback_function = function(obj) afterSpawn_y(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #yellow_barba_tokentable do
                clonebag.takeObject({
                    position = yellow_barba_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Red" then             --redplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = red_postable[i],
                    callback_function = function(obj) afterSpawn_r(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #red_barba_tokentable do
                clonebag.takeObject({
                    position = red_barba_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
    
    
        clonebag.destruct()
    end                                                  --barba setup done

    function pyroClicked(obj, color, alt_click)   --pyro setup
        clonebag = pyrobox.clone({0,5,0})
    
        if color == "White" then           --whiteplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = white_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_w(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #white_pyro_tokentable do
                clonebag.takeObject({
                    position = white_pyro_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Blue" then             --blueplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = blue_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_b(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #blue_pyro_tokentable do
                clonebag.takeObject({
                    position = blue_pyro_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Yellow" then             --yellowplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = yellow_postable[i],
                    callback_function = function(obj) afterSpawn_y(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #yellow_pyro_tokentable do
                clonebag.takeObject({
                    position = yellow_pyro_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Red" then             --redplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = red_postable[i],
                    callback_function = function(obj) afterSpawn_r(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #red_pyro_tokentable do
                clonebag.takeObject({
                    position = red_pyro_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
    
    
        clonebag.destruct()
    end                                                  --pyro setup done

    function treantClicked(obj, color, alt_click)   --treant setup
        clonebag = treantbox.clone({0,5,0})
    
        if color == "White" then           --whiteplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = white_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_w(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #white_treant_tokentable do
                clonebag.takeObject({
                    position = white_treant_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Blue" then             --blueplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = blue_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_b(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #blue_treant_tokentable do
                clonebag.takeObject({
                    position = blue_treant_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Yellow" then             --yellowplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = yellow_postable[i],
                    callback_function = function(obj) afterSpawn_y(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #yellow_treant_tokentable do
                clonebag.takeObject({
                    position = yellow_treant_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Red" then             --redplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = red_postable[i],
                    callback_function = function(obj) afterSpawn_r(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #red_treant_tokentable do
                clonebag.takeObject({
                    position = red_treant_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
    
    
        clonebag.destruct()
    end                                                  --treant setup done

    function moonClicked(obj, color, alt_click)   --moon setup
        clonebag = moonbox.clone({0,5,0})
    
        if color == "White" then           --whiteplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = white_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_w(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #white_moon_tokentable do
                clonebag.takeObject({
                    position = white_moon_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Blue" then             --blueplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = blue_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_b(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #blue_moon_tokentable do
                clonebag.takeObject({
                    position = blue_moon_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Yellow" then             --yellowplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = yellow_postable[i],
                    callback_function = function(obj) afterSpawn_y(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #yellow_moon_tokentable do
                clonebag.takeObject({
                    position = yellow_moon_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Red" then             --redplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = red_postable[i],
                    callback_function = function(obj) afterSpawn_r(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #red_moon_tokentable do
                clonebag.takeObject({
                    position = red_moon_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
    
    
        clonebag.destruct()
    end                                                  --moon setup done

    function monkClicked(obj, color, alt_click)   --monk setup
        clonebag = monkbox.clone({0,5,0})
    
        if color == "White" then           --whiteplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = white_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_w(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #white_monk_tokentable do
                clonebag.takeObject({
                    position = white_monk_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Blue" then             --blueplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = blue_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_b(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #blue_monk_tokentable do
                clonebag.takeObject({
                    position = blue_monk_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Yellow" then             --yellowplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = yellow_postable[i],
                    callback_function = function(obj) afterSpawn_y(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #yellow_monk_tokentable do
                clonebag.takeObject({
                    position = yellow_monk_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Red" then             --redplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = red_postable[i],
                    callback_function = function(obj) afterSpawn_r(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #red_monk_tokentable do
                clonebag.takeObject({
                    position = red_monk_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
    
    
        clonebag.destruct()
    end                                                  --monk setup done

    function artiClicked(obj, color, alt_click)   --arti setup
        clonebag = artibox.clone({0,5,0})
    
        if color == "White" then           --whiteplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = white_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_w(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #white_arti_tokentable do
                clonebag.takeObject({
                    position = white_arti_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Blue" then             --blueplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = blue_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_b(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #blue_arti_tokentable do
                clonebag.takeObject({
                    position = blue_arti_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Yellow" then             --yellowplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = yellow_postable[i],
                    callback_function = function(obj) afterSpawn_y(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #yellow_arti_tokentable do
                clonebag.takeObject({
                    position = yellow_arti_tokentable[i],
                    rotation = {0,0,360},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Red" then             --redplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = red_postable[i],
                    callback_function = function(obj) afterSpawn_r(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #red_arti_tokentable do
                clonebag.takeObject({
                    position = red_arti_tokentable[i],
                    rotation = {0,0,360},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
    
    
        clonebag.destruct()
    end                                                  --arti setup done

    function krumpClicked(obj, color, alt_click)   --krump setup
        clonebag = krumpbox.clone({0,5,0})
    
        if color == "White" then           --whiteplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = white_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_w(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #white_krump_tokentable do
                clonebag.takeObject({
                    position = white_krump_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_krum_w(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Blue" then             --blueplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = blue_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_b(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #blue_krump_tokentable do
                clonebag.takeObject({
                    position = blue_krump_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_krum_b(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Yellow" then             --yellowplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = yellow_postable[i],
                    callback_function = function(obj) afterSpawn_y(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #yellow_krump_tokentable do
                clonebag.takeObject({
                    position = yellow_krump_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn_krum_y(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Red" then             --redplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = red_postable[i],
                    callback_function = function(obj) afterSpawn_r(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #red_krump_tokentable do
                clonebag.takeObject({
                    position = red_krump_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn_krum_r(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
    
    
        clonebag.destruct()
    end                                                  --krump setup done

    function santaClicked(obj, color, alt_click)   --santa setup
        clonebag = santabox.clone({0,5,0})
    
        if color == "White" then           --whiteplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = white_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_w(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #white_santa_tokentable do
                clonebag.takeObject({
                    position = white_santa_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Blue" then             --blueplayer
    
            for i =1,10 do
                clonebag.takeObject({
                    position = blue_postable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn_b(obj) end,
                    smooth = false
                })
            end
    
            for i =1, #blue_santa_tokentable do
                clonebag.takeObject({
                    position = blue_santa_tokentable[i],
                    rotation = {0,360,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Yellow" then             --yellowplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = yellow_postable[i],
                    callback_function = function(obj) afterSpawn_y(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #yellow_santa_tokentable do
                clonebag.takeObject({
                    position = yellow_santa_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
        if color == "Red" then             --redplayer(reverse360)
    
            for i =1,10 do
                clonebag.takeObject({
                    position = red_postable[i],
                    callback_function = function(obj) afterSpawn_r(obj) end,
                    rotation = {0,0,360},
                    smooth = false
                })
            end
    
            for i =1, #red_santa_tokentable do
                clonebag.takeObject({
                    position = red_santa_tokentable[i],
                    rotation = {0,180,0},
                    callback_function = function(obj) afterSpawn(obj) end,
                    smooth = false
                })
                
            end 
        
        end
    
    
    
        clonebag.destruct()
    end                                                  --santa setup done





--normal token setup
function afterSpawn(obj)

    if obj.hasTag('robo') == true then
        obj.flip()
    elseif obj.hasTag('nila') == true then
        
    else     
        obj.setLock(true)
    end
end
--normal token setup done

--tactic setup token placing
function afterSpawn_tac_w(obj)

    obj.setLock(true)
    if obj.hasTag('tactic') == true then obj.takeObject({position = {-13.66, 2.15, -22.18}})
        obj.takeObject({position = {-13.68, 2.05, -21.28}})
    end
end

function afterSpawn_tac_b(obj)
        
    obj.setLock(true)
    if obj.hasTag('tactic') == true then obj.takeObject({position = {50.88, 2.05, -21.88}})
        obj.takeObject({position = {50.89, 2.15, -22.55}})
    end
end

function afterSpawn_tac_y(obj)
        
    obj.setLock(true)
    if obj.hasTag('tactic') == true then obj.takeObject({position = {50.16, 2.05, 24.21}})
        obj.takeObject({position = {50.18, 2.15, 24.97}})
    end
end

function afterSpawn_tac_r(obj)
        
    obj.setLock(true)
    if obj.hasTag('tactic') == true then obj.takeObject({position = {-13.55, 2.05, 25.48}})
        obj.takeObject({position = {-13.54, 2.15, 26.18}})
    end
end
--tactic setup token placed

--pirate coin setup
function afterSpawn_pirate_w(obj)
    local x = -17
    local y = 2.20
    local z = -22.57
    obj.setLock(true)
    if obj.hasTag('coin') == true then 
        for i = 1,3 do 
            obj.takeObject({position = {x,y,z}})
            x = x+3
        end

    end
end

function afterSpawn_pirate_b(obj)
    local x = 47
    local y = 2.20
    local z = -22.57
    obj.setLock(true)
    if obj.hasTag('coin') == true then 
        for i = 1,3 do 
            obj.takeObject({position = {x,y,z}})
            x = x+3
        end

    end
end

function afterSpawn_pirate_y(obj)
    local x = 54
    local y = 2.20
    local z = 25
    obj.setLock(true)
    if obj.hasTag('coin') == true then 
        for i = 1,3 do 
            obj.takeObject({position = {x,y,z}})
            x = x-3
        end

    end
end

function afterSpawn_pirate_r(obj)
    local x = -10
    local y = 2.20
    local z = 26
    obj.setLock(true)
    if obj.hasTag('coin') == true then 
        for i = 1,3 do 
            obj.takeObject({position = {x,y,z}})
            x = x-3
        end

    end
end
--pirate coin setup done

--krump doll card deal
function afterSpawn_krum_w(obj)

    if obj.hasTag('doll') == true then
        obj.flip()
        obj.randomize()
        obj.deal(1,'White')
    else obj.setLock(true)
    end

end

function afterSpawn_krum_b(obj)

    if obj.hasTag('doll') == true then
        obj.flip()
        obj.randomize()
        obj.deal(1,'Blue')
    else obj.setLock(true)
    end

end

function afterSpawn_krum_y(obj)

    if obj.hasTag('doll') == true then
        obj.flip()
        obj.randomize()
        obj.deal(1,'Yellow')
    else obj.setLock(true)
    end

end

function afterSpawn_krum_r(obj)

    if obj.hasTag('doll') == true then
        obj.flip()
        obj.randomize()
        obj.deal(1,'Red')
    else obj.setLock(true)
    end

end

--krump doll card deal done

--cue,board,deck,dice,hp,cp setup
function afterSpawn_w(obj)
    if obj.tag ~= "Dice" and obj.tag ~= "Deck" and obj.hasAnyTag() ==false then
        obj.setLock(true)
    elseif obj.hasTag('cue') == true then
        obj.flip()
        obj.lock() 
    elseif obj.tag == "Deck" then
        obj.randomize()
        obj.flip()
        obj.deal(4,'White') 
    end
end

function afterSpawn_b(obj)
    if obj.tag ~= "Dice" and obj.tag ~= "Deck" and obj.hasAnyTag() ==false then
        obj.setLock(true)
    elseif obj.hasTag('cue') == true then
        obj.flip()
        obj.lock() 
    elseif obj.tag == "Deck" then
        obj.randomize()
        obj.flip()
        obj.deal(4,'Blue')
    end
end

function afterSpawn_y(obj)
    if obj.tag ~= "Dice" and obj.tag ~= "Deck" and obj.hasAnyTag() ==false then
        obj.setLock(true)
    elseif obj.hasTag('cue') == true then
        obj.flip()
        obj.lock() 
    elseif obj.tag == "Deck" then
        obj.randomize()
        obj.flip()
        obj.deal(4,'Yellow')
    end
end

function afterSpawn_r(obj)
    if obj.tag ~= "Dice" and obj.tag ~= "Deck" and obj.hasAnyTag() ==false then
        obj.setLock(true)
    elseif obj.hasTag('cue') == true then
        obj.flip()
        obj.lock() 
    elseif obj.tag == "Deck" then
        obj.randomize()
        obj.flip()
        obj.deal(4,'Red')
    end
end

--cue,board,deck,dice,hp,cp setup done
