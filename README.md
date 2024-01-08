# 王权骰铸脚本化全英雄中文版Tabletop Simulator Mod
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
 - 重置点击按钮玩家的桌面，将会清空所有物品，所以放在了靠边的位置避免误触（在罕见的情况下，部分物品没有被正确的丢弃，这是因为物品离开了丢弃区域，可以将其放在弃牌区再重置一次或重启游戏）
##### 开始新回合按钮
 - 自动抽取1张牌并增加1CP
##### 抽牌按钮
 - 抽一张牌

### 文件说明
**global.lua** 创建选择角色，重置桌面按钮并包含所有角色的setup逻辑




