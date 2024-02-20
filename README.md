# 桌游模拟器自建mod Tabletop Simulator Mods
## 璀璨宝石：对决 中/英 Splendor: Duel Scripted
### 描述
由原mod修改而来，增加了更多功能，进一步简化游戏流程。
原mod地址：https://steamcommunity.com/sharedfiles/filedetails/?id=2912325912&searchtext=splendor+duel
### 功能：
- 一键setup
- 一键补充公共牌堆
- 一键补充宝石
### 使用指南
#### 安装
- 在Steam社区中订阅此mod<br>
[https://steamcommunity.com/sharedfiles/filedetails/?id=2982325027&searchtext=%E7%8E%8B%E6%9D%83](https://steamcommunity.com/sharedfiles/filedetails/?id=3164531387)<br>
- 在Steam中打开Tabletop Simulator<br>
- 创建房间后点击workshop并双击此mod<br>

#### 说明：
进入游戏后点击开始会自动生成牌堆并补充宝石
补牌按钮可以自动检索牌堆空位，并且补充相应牌堆的牌
填充棋盘按钮可以自动放置袋子中的宝石至棋盘上

注意：请将缴纳的宝石放入袋子中





## 王权骰铸脚本化全英雄中文版 Dice of Throne Scripted
### 描述
基于Tabletop Simulator的脚本化mod, 主要解决繁琐的setup环节
<img src="https://github.com/Spec-DY/DiceofThrone-Tabletopsimulator-Mod/assets/125960879/e42429eb-c4e8-4fc7-ba06-04d5744303c3" width="600" height="300">


### 功能
 - 一键放置角色需要的所有物品，包括特定的token或卡牌
 - 自动发牌
 - 一键清空自己的桌面


### 使用指南
#### 安装
- 在Steam社区中订阅此mod<br>
https://steamcommunity.com/sharedfiles/filedetails/?id=2982325027&searchtext=%E7%8E%8B%E6%9D%83<br>
- 在Steam中打开Tabletop Simulator<br>
- 创建房间后点击workshop并双击此mod<br>

#### 按钮说明

##### 选择角色按钮
 - 点击选择某角色后，setup完成，这包括角色的特殊token或开局补强（本mod根据颜色判断玩家，所以玩家必须先选一个颜色（座位）再选择角色）
 - 自动洗牌并发给点击按钮的玩家4张
##### 重置玩家桌面按钮
 - 将会清空点击按钮的玩家的所有物品，所以放在了靠边的位置避免误触（在罕见的情况下，部分物品没有被正确的丢弃，这是因为物品离开了丢弃区域，可以将其放在弃牌区再重置一次或重启游戏）
##### 开始新回合按钮
 - 自动抽取1张牌并增加1CP
##### 抽牌按钮
 - 抽一张牌
##### Hp及Cp板块
 - Hp上限为60
 - Cp上限为15

### 文件说明
*global.lua* 选择角色、重置桌面按钮及所有角色的setup逻辑<br>
*cardcustom.lua* 开始回合、抽牌按钮<br>
*hp.lua* 增加或减少hp，源码来自MrStump，仅添加上限<br>
*cp.lua* 同*hp.lua*



