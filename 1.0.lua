--Copyright(C)Liushuxi.All right reserved.
--Help:https://developers.mini1.cn/wiki/
--Use for Mi Studio Pro
--您可以通过 require 函数来加载这个class类。用法：require("MiniModel")
--或者直接在末尾写，然后记得不要把上面的复制进去
--变量命名限定:
--不能使用obds,ay,ret,dr,ps作为全局变量名
--Developers:
--Liushuxi
--Liushuxi
--Bug fixed:
--Not Angthing
------------------------忽略这个---------------------------
--                    ----------
--                   -- o    o --
--                  |            |
--                   -|  ----  |-
--                    ----------
--                   |           |
--                  |    -----    |
--                 |  ---     ---  |
--                |  |   |   |   |  |
-- ---------------    ---     ---    -----------------=
-- |                                                  |
-- ---------------                    -----------------
--               |                    |
--            ---                      ---
--          --                            --
--        |----------------------------------|
--
--
-----------------------------------------------------------
--         佛祖保佑                         永无bug
-----------------------------------------------------------
ErrorCode = {}--你看这个ErrorCode
ErrorCode.OK = 0--当函数追上这个的时候你是不是非常高兴？
ErrorCode.FAILED = 1001--但这个你就是不是还得防御一下？
BPACK_SINDEX = {}
BPACK_SINDEX.BACKPACK_START_INDEX = 0--你是不是对这个非常的懵逼？
BPACK_SINDEX.SHORTCUT_START_INDEX = 1000--你可以试着去百度一下
BPACK_SINDEX.STORAGE_START_INDEX = 3000--如果不行你也可以上百度翻译
BPACK_SINDEX.EQUIP_START_INDEX = 8000--再不行，你可以去骚扰官方了（o-_-o)
WorldType = {}
WorldType.OWTYPE_SINGLE = 0
WorldType.OWTYPE_CREATE = 1
WorldType.OWTYPE_EXTREMITY = 2
WorldType.OWTYPE_CREATE_RUNGAME = 3
WorldType.OWTYPE_GAMEMAKER = 4
WorldType.OWTYPE_GAMEMAKER_RUN = 5
WorldType.OWTYPE_FREEMODE = 6
WorldType.OWTYPE_RECORD	= 9
TerrainType = {}
TerrainType.TERRAIN_FLAT = 0
TerrainType.TERRAIN_NORMAL = 1
CameraEditState  = {}
CameraEditState.CAMERA_EDIT_STATE_NULL = 0
CameraEditState.CAMERA_EDIT_STATE_EDIT = 1
CameraEditState.CAMERA_EDIT_STATE_TEST = 2
MAPMARK_TYPE = {}
MAPMARK_TYPE.MMARK_LINE = 0
MAPMARK_TYPE.MMARK_RECTANGLE = 1
MAPMARK_TYPE.MMARK_CIRCLE = 2
EQUIP_SLOT_TYPE = {}
EQUIP_SLOT_TYPE.EQUIP_HEAD = 0
EQUIP_SLOT_TYPE.EQUIP_BREAST = 1
EQUIP_SLOT_TYPE.EQUIP_LEGGING = 2
EQUIP_SLOT_TYPE.EQUIP_SHOE = 3
EQUIP_SLOT_TYPE.EQUIP_PIFENG = 4
EQUIP_SLOT_TYPE.EQUIP_WEAPON = 5
MODATTRIB_TYPE = {}
MODATTRIB_TYPE.MODATTR_MOVE_SPEED = 0
MODATTRIB_TYPE.MODATTR_SWIM_SPEED = 1
MODATTRIB_TYPE.MODATTR_JUMP_SPEED = 2
MODATTRIB_TYPE.MODATTR_ATTACK_PUNCH = 3
MODATTRIB_TYPE.MODATTR_ATTACK_RANGE = 4
MODATTRIB_TYPE.MODATTR_ATTACK_EXPLODE = 5
MODATTRIB_TYPE.MODATTR_ATTACK_FIRE = 6
MODATTRIB_TYPE.MODATTR_ATTACK_POISON = 7
MODATTRIB_TYPE.MODATTR_ATTACK_WITHER = 8
MODATTRIB_TYPE.MODATTR_ATTACK_PLAYER = 9
MODATTRIB_TYPE.MODATTR_ATTACK_UNDEAD=	10
MODATTRIB_TYPE.MODATTR_ATTACK_ANIMAL=	11
MODATTRIB_TYPE.MODATTR_DAMAGED_PUNCH=	12
MODATTRIB_TYPE.MODATTR_DAMAGED_RANGE=	13
MODATTRIB_TYPE.MODATTR_DAMAGED_EXPLODE=	14
MODATTRIB_TYPE.MODATTR_DAMAGED_FIRE	=15
MODATTRIB_TYPE.MODATTR_DAMAGED_POISON	=16
MODATTRIB_TYPE.MODATTR_DAMAGED_WITHER=	17
MODATTRIB_TYPE.MODATTR_DAMAGED_FALLING=	18
MODATTRIB_TYPE.MODATTR_ARMOR_PUNCH=	19
MODATTRIB_TYPE.MODATTR_ARMOR_RANGE=	20
MODATTRIB_TYPE.MODATTR_ARMOR_EXPLODE=	21
MODATTRIB_TYPE.MODATTR_DAMAGE_ABSORB=	22
MODATTRIB_TYPE.MODATTR_CRITICAL_HIT=	23
MODATTRIB_TYPE.MODATTR_KNOCK	=24
MODATTRIB_TYPE.MODATTR_KNOCK_RESIST	=25
MODATTRIB_TYPE.MODATTR_KNOCK_RESIST_PROB=	26
MODATTRIB_TYPE.MODATTR_DIG_SPEED=	27
MODATTRIB_TYPE.MODATTR_LUCK_DIG	=28
MODATTRIB_TYPE.MODATTR_LUCK_KILLMOB	=29
MODATTRIB_TYPE.MODATTR_VIEW_BRIGHT=	30
MODATTRIB_TYPE.MODATTR_ACTOR_SCALE=	31
MODATTRIB_TYPE.MODATTR_OXYGEN_SUPPLY=	32
MODATTRIB_TYPE.MAX_MOB_MODATTR=	27	
MODATTRIB_TYPE.MAX_PLAYER_MODATTR	=33
MODATTRIB_TYPE.MAX_MOD_ATTRIB=	33
TEAM_RESULTS = {}--看，下面作者好心写了注释欸，你是不是要感激一下作者？
TEAM_RESULTS.TEAM_RESULTS_NONE=	0	--胜负未定
TEAM_RESULTS.TEAM_RESULTS_WIN	=1	--胜利
TEAM_RESULTS.TEAM_RESULTS_LOSE=	2	--失败
TEAM_RESULTS.TEAM_RESULTS_DOGFALL	=3	--平局
GSOUND_TYPE = {}
GSOUND_TYPE.GSOUND_DIG	=0	--挖掘
GSOUND_TYPE.GSOUND_DESTROY=	1	--破坏
GSOUND_TYPE.GSOUND_PLACE	=2	--放置
GSOUND_TYPE.GSOUND_FALLGROUND=	3	--摔落
GSOUND_TYPE.GSOUND_WALK	=4	--行走
ACTORBODY_EFFECT = {}
ACTORBODY_EFFECT.BODYFX_HURT=	0	---
ACTORBODY_EFFECT.BODYFX_FIRE	=1	---
ACTORBODY_EFFECT.BODYFX_PORTAL=	2	---
ACTORBODY_EFFECT.BODYFX_ACCUMFIRE	=3	---
ACTORBODY_EFFECT.BODYFX_DRAGONFIRE	=4	---
ACTORBODY_EFFECT.BODYFX_DRAGONSUMMON	=5	---
ACTORBODY_EFFECT.BODYFX_TAME_SUCCEED=	6	---
ACTORBODY_EFFECT.BODYFX_TAME_FAILED	=7	---
ACTORBODY_EFFECT.BODYFX_TAME_FOOD	=8	---
ACTORBODY_EFFECT.BODYFX_TAME_NOFOOD=	9	---
ACTORBODY_EFFECT.BODYFX_AI_NEEDREEDS	=10	---
ACTORBODY_EFFECT.BODYFX_FEAR	=11	---
ACTORBODY_EFFECT.BODYFX_ROLECOLLECT	=12	---
ACTORBODY_EFFECT.BODYFX_ROLEJUMP	=13	---
ACTORBODY_EFFECT.BODYFX_DEADPROTECT	=14	---
ACTORBODY_EFFECT.BODYFX_DRAGONDIE0=	15	---
ACTORBODY_EFFECT.BODYFX_DRAGONDIE1	=16	---
ACTORBODY_EFFECT.BODYFX_DRAGONDIE2=	17	---
ACTORBODY_EFFECT.BODYFX_HORSE_FLY	=18	---
ACTORBODY_EFFECT.BODYFX_DISAPPEAR	=19	---
ACTORBODY_EFFECT.BODYFX_HORSE_BENTENG	=20	---
ACTORBODY_EFFECT.BODYFX_DANCE	=21	---
ACTORBODY_EFFECT.TOOLFX_JETPACK2	=22	---
ACTORBODY_EFFECT.BODYFX_INTERACTION=	23	---
ACTORBODY_EFFECT.HUDFX_HEADSHOT	=24	---
ACTORBODY_EFFECT.HUDFX_NORMALSHOT	=25	---
ACTORBODY_EFFECT.BODYFX_MILKING=	26	---
ACTORBODY_EFFECT.BODYFX_AI_ANGRY=	27	---
ACTORBODY_EFFECT.BODYFX_AI_SLEEP=	28	---
ACTORBODY_EFFECT.BODYFX_TRANSPORT	=29	---
ACTORBODY_EFFECT.BODYFX_FORBIDDEN	=30	---
ACTORBODY_EFFECT.BODYFX_CONCEAL	=31--	潜行
ACTORBODY_EFFECT.BODYFX_WEAPON_FIRE	=32	--野人猎手武器上的火
ACTORBODY_EFFECT.BODYFX_DIZZY	=33	--眩晕
ACTORBODY_EFFECT.BODYFX_MAKETROUBLE=	34	---
ACTORBODY_EFFECT.BODYFX_TRAINMOVE	=35	--火车移动
ACTORBODY_EFFECT.BODYFX_AI_HUNGRY	=36	--饥饿
ACTORBODY_EFFECT.BODYFX_BALL_CHARGE	=37	--蓄力踢球的特效
ACTORBODY_EFFECT.BODYFX_BALL_SHOOT_RELEASE=	38	--射球瞬间的爆发特效
ACTORBODY_EFFECT.BODYFX_ENCH_FALL	=39	--附魔速降
OBJ_TYPE = {}
OBJ_TYPE.OBJTYPE_PLAYER=	1	--玩家
OBJ_TYPE.OBJTYPE_CREATURE	=2	--生物(包含怪物、动物、NPC等)
OBJ_TYPE.OBJTYPE_DROPITEM	=3	--掉落物
OBJ_TYPE.OBJTYPE_MISSILE	=4	--投掷物
BACKPACK_TYPE = {}
BACKPACK_TYPE.SHORTCUT=	1	--快捷栏
BACKPACK_TYPE.INVENTORY	=2	--存储栏
BACKPACK_TYPE.EQUIP	=3	--装备栏
FACE_DIRECTION = {}
FACE_DIRECTION.DIR_NOT_INIT	=-1	--未指定
FACE_DIRECTION.DIR_NEG_X	=0	--X反方向
FACE_DIRECTION.DIR_POS_X=	1	--X正方向
FACE_DIRECTION.DIR_NEG_Z=	2	--Z反方向
FACE_DIRECTION.DIR_POS_Z=	3	--Z正方向
FACE_DIRECTION.DIR_NEG_Y=	4	--Y反方向
FACE_DIRECTION.DIR_POS_Y	=5	--Y正方向
CREATUREATTR = {}
CREATUREATTR.MAX_HP	=1	--最大生命值
CREATUREATTR.CUR_HP=	2	--当前生命值
CREATUREATTR.HP_RECOVER=	3	--生命恢复
CREATUREATTR.MAX_HUNGER	=5	--最大饥饿值
CREATUREATTR.CUR_HUNGER	=6	--当前饥饿值
CREATUREATTR.MAX_OXYGEN	=7	--最大氧气值
CREATUREATTR.CUR_OXYGEN	=8	--当前氧气值
CREATUREATTR.RECOVER_OXYGEN	=9	--氧气恢复速度
CREATUREATTR.WALK_SPEED	=10	--移动速度
CREATUREATTR.RUN_SPEED	=11	--奔跑速度
CREATUREATTR.SWIN_SPEED	=13	--游泳速度
CREATUREATTR.JUMP_POWER	=14	--跳跃力
CREATUREATTR.WEIGHT	=15	--重量
CREATUREATTR.DODGE=	16	--闪避率
CREATUREATTR.ATK_MELEE	=17	--近战攻击
CREATUREATTR.ATK_REMOTE	=18	--远程攻击
CREATUREATTR.DEF_MELEE	=19	--近战防御
CREATUREATTR.DEF_REMOTE	=20	--远程防御
CREATUREATTR.DIMENSION	=21	--模型大小
CREATUREATTR.ENABLE_MOVE=	1	--可移动
CREATUREATTR.ENABLE_ATTACK	=32	--可攻击
CREATUREATTR.ENABLE_BEATTACKED=	64	--可被攻击
CREATUREATTR.ENABLE_BEKILLED	=128	--可被杀死
CREATUREATTR.ENABLE_PICKUP=	256	--可拾取道具
CREATUREATTR.ENABLE_DEATHDROPITEM=512	--死亡掉落
CREATUREMOTION = {}
CREATUREMOTION.IDLE	=1	--空闲
CREATUREMOTION.STANDBY=	2	--待机
CREATUREMOTION.STROLL	=3	--闲逛
CREATUREMOTION.ATK_MELEE=	4	--近战攻击
CREATUREMOTION.ATK_REMOTE=	5	--远程攻击
CREATUREMOTION.FOLLOW	=6	--跟随
CREATUREMOTION.SWIM	=7	--游泳
CREATUREMOTION.RUN_AWAY	=8	--逃跑
CREATUREMOTION.SELF_BOMB	=9	--自爆
CREATUREMOTION.BEATTRACTED=	10	--被吸引
CREATUREMOTION.COPULATION	=11	--交配
PLAYERATTR = {}
PLAYERATTR.MAX_HP	=1	--最大生命值
PLAYERATTR.CUR_HP=	2	--当前生命值
PLAYERATTR.HP_RECOVER	=3	--生命恢复
PLAYERATTR.LIFE_NUM=	4	--生命数
PLAYERATTR.MAX_HUNGER	=5	--最大饥饿值
PLAYERATTR.CUR_HUNGER	=6	--当前饥饿值
PLAYERATTR.MAX_OXYGEN	=7	--最大氧气值
PLAYERATTR.CUR_OXYGEN	=8	--当前氧气值
PLAYERATTR.RECOVER_OXYGEN=	9	--氧气恢复速度
PLAYERATTR.WALK_SPEED	=10	--移动速度
PLAYERATTR.RUN_SPEED	=11	--奔跑速度
PLAYERATTR.SNEAK_SPEED	=12	--潜行速度
PLAYERATTR.SWIN_SPEED	=13	--游泳速度
PLAYERATTR.JUMP_POWER	=14	--跳跃力
PLAYERATTR.DODGE	=16	--闪避率
PLAYERATTR.ATK_MELEE	=17	--近战攻击
PLAYERATTR.ATK_REMOTE	=18	--远程攻击
PLAYERATTR.DEF_MELEE	=19	--近战防御
PLAYERATTR.DEF_REMOTE	=20	--远程防御
PLAYERATTR.DIMENSION	=21	--大小
PLAYERATTR.SCORE	=22	--分数
PLAYERATTR.LEVEL	=23	--等级
PLAYERATTR.ENABLE_MOVE	=1	--可移动
PLAYERATTR.ENABLE_PLACEBLOCK	=2	--可摆放方块
PLAYERATTR.ENABLE_OPERATEBLOCK=	4	--可操作方块
PLAYERATTR.ENABLE_DESTROYBLOCK=	8	--可破坏方块
PLAYERATTR.ENABLE_USEITEM	=16	--可使用道具
PLAYERATTR.ENABLE_ATTACK	=32	--可攻击
PLAYERATTR.ENABLE_BEATTACKED=	64	--可被攻击
PLAYERATTR.ENABLE_BEKILLED	=128	--可被杀死
PLAYERATTR.ENABLE_PICKUP	=256	--可拾取道具
PLAYERATTR.ENABLE_DEATHDROPITEM	=512	--死亡掉落
PLAYERATTR.ENABLE_VEHICLEAUTOFORWARD	=1024	--载具自动前行
PLAYERATTR.ENABLE_DISCARDITEM	=2048	--可丢弃道具
PLAYERATTR.ITEM_DISABLE_THROW	=1	--道具不可丢弃
PLAYERATTR.ITEM_DISABLE_DROP	=2	--道具不可掉落
PLAYERMOTION = {}
PLAYERMOTION.STATIC	=0	--静止
PLAYERMOTION.WALK	=1	--行走
PLAYERMOTION.RUN	=2	--奔跑
PLAYERMOTION.JUMP	=4	--跳跃
PLAYERMOTION.JUMP_TWICE	=8	--二段跳
PLAYERMOTION.SNEAK	=16	--潜行
PLAYERMOTION.FALL_GROUND	=32	--落地
PLAYERMOTION.TURNBACK	=1000000	--已经取消
PLAYERMOTION.UP	=1000001	--已经取消
PLAYERMOTION.DOWN	=1000002	--已经取消
PLAYERMOTION.FALL	=1000003	--已经取消
TEAMATTR = {}
TEAMATTR.PLAYER_NUM	=1	--玩家数量
TEAMATTR.SCORE	=2	--分数
HURTTYPE = {}
HURTTYPE.MELEE	=0	--近战伤害 ATTACK_PUNCH
HURTTYPE.REMOTE	=1	--远程伤害 ATTACK_RANGE
HURTTYPE.BOMB	=2	--爆炸伤害 ATTACK_EXPLODE
HURTTYPE.PHYSICS	=3	--物理伤害 MAX_PHYSICS_ATTACK
HURTTYPE.BURNING	=3	--燃烧伤害 ATTACK_FIRE
HURTTYPE.TOXIN	=4	--毒素伤害 ATTACK_POISON
HURTTYPE.WITHER	=5	--凋零伤害 ATTACK_WITHER
HURTTYPE.MAGIC	=6	--元素伤害 MAX_MAGIC_ATTACK
HURTTYPE.SUN	=6	--日晒 ATTACK_SUN
HURTTYPE.FALL	=7	--跌落伤害 ATTACK_FALLING
HURTTYPE.ANVIL	=8	--被砸中伤害 ATTACK_ANVIL
HURTTYPE.CACTUS	=9	--仙人掌伤害 ATTACK_CACTUS
HURTTYPE.ASPHYXIA	=10	--窒息伤害 ATTACK_WALL
HURTTYPE.DROWN	=11	--溺水伤害 ATTACK_DROWN
HURTTYPE.SUFFOCATE	=12	--水下生物在空气中窒息伤害 ATTACK_SUFFOCATE
HURTTYPE.ANTIINJURY	=13	--反伤 ATTACK_ANTIINJURY
HURTTYPE.LASER	=14	--被激光伤害 ATTACK_BLOCK_LASER
BLOCKID = {}
BLOCKID.AIR	= 0	--空气
BLOCKATTR = {}
BLOCKATTR.EXPLODE_RESISTANCE	=1	--爆炸抗性
BLOCKATTR.HARDNESS	=2	--硬度
BLOCKATTR.GLISSADE	=3	--滑行惯性
BLOCKATTR.BURNING_SPEED	=4	--燃烧速度
BLOCKATTR.BURNING_PROBABILITY	=5	--燃烧几率
BLOCKATTR.LIGHTNESS	=6	--亮度
BLOCKATTR.ENABLE_DESTROYED	=1	--可破坏
BLOCKATTR.ENABLE_BEOPERATED	=2	--可操作
BLOCKATTR.ENABLE_BEPUSHED	=4	--可被推动
BLOCKATTR.ENABLE_DROPITEM	=8	--可掉落道具
BLOCKATTR.BEPUSHED_DROPITEM=	16	--被推动掉落
BLOCKSTATUS = {}
BLOCKSTATUS.ACTIVE	=1	--活跃(被激活)
BLOCKSTATUS.INACTIVE	=2	--不活跃(未被激活)
WEATHERSTATUS = {}
WEATHERSTATUS.SHINE_AND_RAIN	=0	--晴雨交替
WEATHERSTATUS.SHINE	=1	--晴天
WEATHERSTATUS.RAIN	=2	--雨天
VIEWPORTTYPE = {}
VIEWPORTTYPE.MAINVIEW	=0	--主视角
VIEWPORTTYPE.BACKVIEW	=1	--背视角
VIEWPORTTYPE.FRONTVIEW	=2	--正视角
VIEWPORTTYPE.TOPVIEW	=3	--俯视角
VIEWPORTTYPE.CUSTOMVIEW	=4	--自定义视角
RESLIBTYPE = {}
RESLIBTYPE.NONE=	0	--无
RESLIBTYPE.BLOCK	=1	--方块
RESLIBTYPE.ITEM	=2	--道具
RESLIBTYPE.MONSTER	=3	--生物 
RESLIBTYPE.PARTICLE	=4	--特效
RESLIBTYPE.SOUND	=5	--音效
ScriptSupportEvent = {}
function ScriptSupportEvent:registerEvent(event,functions)
--emmm作者不晓得怎么写啊
end
--常量全部更新完成
--下面是接口更新情况。
class = {
World = {};
Game = {};
Block = {};
Actor = {};
Player = {};
Creature = {};--未更新
UI = {};
Area = {};--未更新
Chat = {};
Team = {};--未更新
Item = {};
Backpack = {};--未更新
WorldContainer = {};--未更新
MapMark = {};
Spawnport = {};
MiniTimer = {};
ObjectLib = {};
}
function class:new()
    local ret={}
    setmetatable(ret,class)
    return ret
end
function class.World:new ()
    local ret
    setmetatable(ret,class.World)
    return ret
end
function class.World:isDaytime()
    return ErrorCode.OK,true
end
function class.World:isCustomGame()
    return ErrorCode.OK,true
end
function class.World:isCreativeMode()
    return ErrorCode.OK,true
end
function class.World:isGodMode()
    return ErrorCode.OK,true
end
function class.World:isExtremityMode()
    return ErrorCode.OK,true
end
function class.World:isFreeMode ()
    return ErrorCode.OK,true
end
function class.World:isSurviveMode()
    return ErrorCode.OK,true
end
function class.World:isCreateRunMode()
    return ErrorCode.OK,true
end
function class.World:isGameMakerMode()
    return ErrorCode.OK,true
end
function class.World:isGameMakerRunMode()
    return ErrorCode.OK,true
end
function class.World:getHours()
    return ErrorCode.OK,10
end
function class.World:setHours(hour)
    return ErrorCode.OK
end
function class.World:getCameraEditState()
    return ErrorCode.OK,1
end
function class.World:setCameraEditState(state)
    return ErrorCode.OK
end
function class.World:getCustomCameraConfig()
    return ErrorCode.OK,0
end
function class.World:getRangeXZ()
    return ErrorCode.OK,1,1,1,1
end
function class.World:getRayLength(srcx,srcy,srcz,dstx,dsty,dstz)
    return ErrorCode.OK,1
end
function class.World:getRayBlock(srcx,srcy,srcz,face,distance)
    return ErrorCode.OK,BLOCKID.AIR
end
function class.World:getActorsByBox(objtype,x1,y1,z1,x2,y2,z2)
    local obds = {1,2,3,4,5,6,7,8,9,0}
    return ErrorCode.OK,1,obds
end
function class.World:getPlayerTotal(alive)
    return ErrorCode.OK,1
end
function class.World:getAllPlayers(alive)
    local ay = {1,2,3,4,5,6,7,8,9,0}
    return ErrorCode.OK,1,ay
end
function class.World:randomOnePlayer(alive)
    return ErrorCode.OK,1
end
function class.World:despawnActor(objid)
    return ErrorCode.OK
end
function class.World:spawnCreature(x,y,z,actorid,num)
    local obds = {1,2,3,4,5,6,7,8,9,0}
    return ErrorCode.OK,obds
end
function class.World:despawnCreature(objid)
    return ErrorCode.OK
end
function class.World:spawnItem(x,y,z,itemid,num)
    return ErrorCode.OK,10
end
function class.World:despawnItemByBox(x1,y1,z1,x2,y2,z2)
    return ErrorCode.OK
end
function class.World:despawnItemByObjid(objid)
    return ErrorCode.OK
end
function class.World:spawnProjectile(shooter,itemid,x,y,z,dstx,dsty,dstz,speed)
    return ErrorCode.OK,10
end
function class.World:spawnProjectileByDir(shooter,itemid,x,y,z,dstx,dsty,dstz,speed)
    return ErrorCode.OK,10
end
function class.World:calcDistance(pos1,pos2)
    return 10
end
function class.World:playParticalEffect(x,y,z,particleId,scale)
    return ErrorCode.OK
end
function class.World:stopEffectOnPosition(x,y,z,particleId)
    return ErrorCode.OK
end
function class.World:setEffectScaleOnPosition(x,y,z,particleId,scale)
    return ErrorCode.OK
end
function class.World:randomParticleEffectID()
    return ErrorCode.OK,10
end
function class.World:playSoundEffectOnPos(pos,soundid,volume,pitch,isLoop)
    return ErrorCode.OK
end
function class.World:stopSoundEffectOnPos(pos,soundid)
    return ErrorCode.OK
end
function class.Game:new()
    local ret = {}
    setmetatable(ret,class.Game)
    return ret
end
function class.Game:doGameEnd()
    return ErrorCode.OK
end
function class.Game:getDefString(id)
    return ErrorCode.OK,"小恐龙太帅了"
end
function class.Game:setScriptVar(index,val)
    return ErrorCode.OK
end
function class.Game:getScriptVar(index)
    return ErrorCode.OK,1
end
function class.Game:sendScriptVars2Client()
    return ErrorCode.OK
end
function class.Game:addRenderGlobalEffect(path)
    return ErrorCode.OK,1
end
function class.Game:removeRenderGlobalEffect(effectid)
    return ErrorCode.OK
end
function class.Game:setRenderGlobalEffectPos(effectid,x,y,z)
    return ErrorCode.OK
end
function class.Game:setRenderGlobalEffectScale(effectid,scalex,scaley,scalez)
    return ErrorCode.OK
end
function class.Game:msgBox(msg)
    return
end
function class.Block:new()
    local ret = {}
    setmetatable(ret, class.block)
    return ret
end
function class.Block:isSolidBlock(x,y,z)
    return ErrorCode.OK
end
function class.Block:isLiquidBlock(x,y,z)
    return ErrorCode.OK
end
function class.Block:isAirBlock(x,y,z)
    return ErrorCode.OK
end
function class.Block:getBlockID(x,y,z)
    return ErrorCode.OK,10
end
function class.Block:setBlockAll(x,y,z,blockid,data)
    return ErrorCode.OK
end
function class.Block:getBlockData(x,y,z)
    return ErrorCode.OK,10
end
function class.Block:destroyBlock(x,y,z,dropitem)
    return ErrorCode.OK
end
function class.Block:placeBlock(blockid,x,y,z,face)
    return ErrorCode.OK
end
function class.Block:replaceBlock(blockid,x,y,z,face)
    return ErrorCode.OK
end
function class.Block:setBlockAllForUpdate(x,y,z,blockid)
    return ErrorCode.OK
end
function class.Block:setBlockAllForNotify(x,y,z,blockid)
    return ErrorCode.OK
end
function class.Block:setBlockSettingAttState(blockid,attrtype,swich)
    return ErrorCode.OK
end
function class.Block:getBlockSettingAttState(blockid,attrtype)
    return ErrorCode.OK,true
end
function class.Block:getBlockSwitchStatus(pos)
    return ErrorCode.OK,true
end
function class.Block:setBlockSwitchStatus(pos,isactive)
    return ErrorCode.OK
end
function class.Block:getBlockDataByDir(blockid,dir)
    return ErrorCode.OK,10
end
function class.Block:getBlockPowerStatus(pos)
    return ErrorCode.OK,true
end
function class.Actor:new()
    local ret = {}
    setmetatable(ret,class.Actor)
    return ret
end
function class.Actor:isPlayer(objid)
    return ErrorCode.OK
end
function class.Actor:isMob(objid)
    return ErrorCode.OK
end
function class.Actor:getObjType(objid)
    return ErrorCode.OK,10
end
function class.Actor:isInAir(objid)
    return ErrorCode.OK
end
function class.Actor:getPosition(objid)
    return ErrorCode.OK,1,1,1
end
function class.Actor:setPosition(objid,x,y,z)
    return ErrorCode.OK
end
function class.Actor:jump(objid)
    return ErrorCode.OK
end
function class.Actor:killSelf(objid)
    return ErrorCode.OK
end
function class.Actor:getCurPlaceDir(objid)
    return ErrorCode.OK,10
end
function class.Actor:tryMoveToActor(self_objid,target_objid,speed)
    return ErrorCode.OK
end
function class.Actor:tryMoveToPos(objid,x,y,z,speed)
    return ErrorCode.OK
end
function class.Actor:addBuff(objid,buffid,buffiv,customticks)
    return 
end
function class.Actor:hasBuff(objid,buffid)
    return ErrorCode.OK,true
end
function class.Actor:removeBuff(objid,buffid)
    return ErrorCode.OK
end
function class.Actor:clearAllBuff(objid)
    return ErrorCode.OK
end
function class.Actor:clearAllBadBuff(objid)
    return ErrorCode.OK
end
function class.Actor:getBuffList(objid)
    local ay = {1,2,3,4,5,6,7,8,9,0}
    return ErrorCode.OK,10,ay
end
function class.Actor:getBuffLeftTick(objid,buffid)
    return ErrorCode.OK,10
end
function class.Actor:addHP(objid,hp)
    return ErrorCode.OK
end
function class.Actor:getHP(objid)
    return ErrorCode.OK,10
end
function class.Actor:getMaxHP(objid)
    return ErrorCode.OK,10
end
function class.Actor:addOxygen(objid,oxygen)
    return ErrorCode.OK
end
function class.Actor:getOxygen(objid)
    return ErrorCode.OK,10
end
function class.Actor:addEnchant(objid,slot,enchantid,enchantLevel)
    return ErrorCode.OK
end
function class.Actor:removeEnchant(objid,slot,enchantid)
    return ErrorCode.OK
end
function class.Actor:findNearestBlock(objid,blockid,blockRange)
    return ErrorCode.OK,1,1,1
end
function class.Actor:setFaceYaw(objid,yaw)
    return ErrorCode.OK
end
function class.Actor:getFaceYaw(objid)
    return ErrorCode.OK,10
end
function class.Actor:turnFaceYaw(objid,offset)
    return ErrorCode.OK
end
function class.Actor:setFacePitch(objid,pitch)
    return ErrorCode.OK
end
function class.Actor:getFacePitch(objid)
    return ErrorCode.OK,10
end
function class.Actor:turnFacePitch(objid,offset)
    return ErrorCode.OK
end
function class.Actor:playBodyEffect(objid,type)
    return ErrorCode.OK
end
function class.Actor:stopBodyEffect(objid,type)
    return ErrorCode.OK
end
function class.Actor:playBodyEffectByFile(objid,filename,sync)
    return ErrorCode.OK
end
function class.Actor:stopBodyEffectByFile(objid,filename)
    return ErrorCode.OK
end
function class.Actor:playSound(objd,name,volume,pitch,flag)
    return ErrorCode.OK
end
function class.Actor:playSoundSpecial(objd,name,type)
    return ErrorCode.OK
end
function class.Actor:clearActorWithId(actorid,bkill)
    return ErrorCode.OK
end
function class.Actor:setAttackType(objid,attacktype)
    return ErrorCode.OK
end
function class.Actor:setImmuneType(obijd,immunetype,isadd)
    return ErrorCode.OK
end
function class.Actor:mountActor(objid,mountobjid,posindex)
    return ErrorCode.OK
end
function class.Actor:setActionAttrState(objid,actionattr,swich)
    return ErrorCode.OK
end
function class.Actor:getActionAttrState(objid,actionattr)
    return ErrorCode.OK,true
end
function class.Actor:tryNavigationToPos(objid,x,y,z,cancontrol)
    return ErrorCode.OK
end
function class.Actor:randomActorID()
    return ErrorCode.OK
end
function class.Actor:getRidingActorObjId(objid)
    return ErrorCode.OK
end
function class.Actor:playBodyEffectById(objid,particleid,scale)
    return ErrorCode.OK
end
function class.Actor:stopBodyEffectById(objid,particleid)
    return ErrorCode.OK
end
function class.Actor:setBodyEffectScale(objid,particleid,scale)
    return ErrorCode.OK
end
function class.Actor:playSoundEffectById(objid,soundid,volume,piych,isLoop)
    return ErrorCode.OK
end
function class.Actor:stopSoundEffectById(objid,soundid)
    return ErrorCode.OK
end
function class.Actor:appendSpeed(objid,x,y,z)
    return ErrorCode.OK
end
function class.Actor:getFaceDirection(objid)
    return ErrorCode.OK
end
function class.Actor:calcDirectionByDirection(objid,vx,vy,vz)
    local dr = {1,1,1}
    return ErrorCode.OK,dr
end
function class.Actor:calcDirectionByAngle(objid,yaw,pitch)
    return ErrorCode.OK
end
function class.Actor:calcDirectionByYawDirection(objid,vx,vy,vz)
    local dr = {1,1,1}
    return ErrorCode.OK,dr
end
function class.Actor:calcDirectionByYawAngle(objid,yaw,pitch)
    local dr ={1,1,1}
    return ErrorCode.OK,dr
end
function class.Actor:getEyeHeight(objid)
    return ErrorCode.OK,10
end
function class.Actor:getEyePosition(objid)
    return ErrorCode.OK,1,1,1
end
function class.Actor:getBodySize(objid)
    return ErrorCode.OK,1,1
end
function class.Actor:playAct(objid,actid)
    return ErrorCode.OK
end
function class.Player:new()
    local ret = {}
    setmetatable(ret,class.Player)
    return ret
end
function class.Player:getAttr(objid,attrtype)
    return ErrorCode.OK,10
end
function class.Player:setAttr(objid,attrtype,val)
    return ErrorCode.OK
end
function class.Player:getHostUin()
    return ErrorCode,10
end
function class.Player:isMainPlayer(objid)
    return ErrorCode.OK
end
function class.Player:getMainPlayerUin()
    return ErrorCode.OK,10
end
function class.Player:getGameResult(objid)
    return ErrorCode.OK,10
end
function class.Player:ssetGameResults(objid,result)
    return ErrorCode.OK
end
function class.Player:getGameScore(objid)
    return ErrorCode.OK,10
end
function class.Player:setGameScore(objid,score)
    return ErrorCode.OK
end
function class.Player:getGameRanking(objid)
    return ErrorCode.OK,10
end
function class.Player:setGameRanking(objid,rank)
    return ErrorCode.OK
end
function class.Player:gainItems(objid,itemid,num,prioritytype)
    return ErrorCode.OK
end
function class.Player:teleportHome(objid)
    return ErrorCode.OK
end
function class.Player:getCurToolID(objid)
    return ErrorCode.OK
end
function class.Player:getNickname(objid)
    return ErrorCode.OK
end
function class.Player:removeBackpackItem(objid,itemid,num)
    return ErrorCode.OK
end
function class.Player:getDieTimes(objid)
    return ErrorCode.OK,100
end
function class.Player:getLeftLifeNum(objid)
    return ErrorCode.OK,10
end
function class.Player:setTeam(objid,teamid)
    return ErrorCode.OK
end
function class.Player:getTeam(objid)
    return ErrorCode.OK,10
end
function class.Player:getFoodLevel(objid)
    return ErrorCode.OK
end
function class.Player:setFoodLevel(objid,foodlevel)
    return ErrorCode.OK
end
function class.Player:getCurShotcut(OBJID)
    return ErrorCode.OK,1
end
function class.Player:onCurToolUsed(objid,num)
    return ErrorCode.OK
end
function class.Player:setSkillCD(objid,itemid,cd)
    return ErrorCode.OK
end
function class.Player:reviveToPos(objid,x,y,z)
    return ErrorCode.OK
end
function class.Player:setRevivePoint(objid,x,y,z)
    return ErrorCode.OK
end
function class.Player:mountActor(playerid,objid,posindex)
    return ErrorCode.OK
end
function class.Player:playAct(objid,actid)
    return ErrorCode.OK
end
function class.Player:notifyGameInfo2Self(objid,info)
    return ErrorCode.OK
end
function class.Player:useItem(objid,itemid,status,onshift)
    return ErrorCode.OK
end
function class.Player:rotateCamera(objid,yaw,pitch)
    return ErrorCode.OK
end
function class.Player:changeViewMode(objid,viewmode,islock)
    return ErrorCode.OK
end
function class.Player:setActionAttrState(objid,actionattr,switch)
    return ErrorCode.OK
end
function class.Player:checkActionAttrState(objid,actionattr)
    return ErrorCode.OK
end
function class.Player.setPosition(objid,x,y,z)
    return ErrorCode.OK
end
function class.Player:getAimPos(objid)
    return ErrorCode.OK
end
function class.Player:setItemAttAction(objid,itemid,attrtype,switch)
    return ErrorCode.OK
end
function class.Player:playMusic(objid,musicid,volume,pitch,isLoop)
    return ErrorCode.OK
end
function class.Player:stopMusics(objid)
    return ErrorCode.OK
end
function class.Player:setGameWin(objid)
    return ErrorCode.OK
end
function class.Player:openDevStore(objid)
    return ErrorCode.OK
end
function class.Player:playAdvertising(objid,addname,eventparams)
    return ErrorCode.OK
end
function class.Creature:new()
    local ret={}
    setmetatable(ret,class.Creature)
    return ret
end 
function class.UI:new()
    local ret={}
    setmetatable(ret,class.UI)
    return ret
end
function class.UI:setGBattleUI(name,value)
    return ErrorCode.OK
end
function class.UI:world2RadarPos(x,y)
    return ErrorCode.OK,x,y
end
function class.UI:world2RadarDist(length)
    return ErrorCode.OK,length
end
function class.UI:setMinimapRenderMode(mode)
    return ErrorCode.OK
end
function class.UI:setShapeLine(uiname,p1x,p1y,p2x,p2y)
    return ErrorCode.OK
end
function class.UI:setShapeCircle(uiname,x,y,radius)
    return ErrorCode.OK
end
function class.UI:ShowScreenEffect(type,isloop,incspeed)
    return ErrorCode.OK
end
function class.Area:new()
    local ret={}
    setmetatable(ret,class.Area)
    return ret
end
function class.Chat:new()
    local ret = {}
    setmetatable(ret,class.Chat)
    return ret
end
function class.Chat.sendChat(content,targetuin)
    return ErrorCode.OK
end
function class.Chat:sendSystemMsg(content,targetuin)
    return ErrorCode.OK
end
function class.Team:new()
    local ret = {}
    setmetatable(ret,class.area)
    return ret
end
function class.Item:new()
    local ret = {}
    setmetatable(ret,class.Item)
    return ret
end
function class.Item:getItemName(itemid)
    return ErrorCode.OK,"小恐龙真帅"
end
function class.Item:getItemId(objid)
    return ErrorCode.OK,10
end
function class.Item:getDropItemNum(objid)
    return ErrorCode.OK,10
end
function class.Backpack:new()
    local ret = {}
    setmetatable(ret,class.Backpack)
    return ret
end
function class.WorldContainer:new()
    local ret = {}
    setmetatable(ret,class.WorldContainer)
    return ret
end
function class.MapMark:new()
    local ret = {}
    setmetatable(ret,class.MapMark)
    return ret
end
function class.MapMark:newShape(type,isshow,r,g,b)
    return ErrorCode.OK,1
end
function class.MapMark:deleteShape(shapeid)
    return ErrorCode.OK
end
function class.MapMark:setShapeColor(shapeid,r,g,b)
    return ErrorCode.OK
end
function class.MapMark:showShape(shapeid,shwoflag)
    return ErrorCode.OK
end
function class.MapMark:updateLine(shapeid,sx,sz,ex,ez)
    return ErrorCode.OK
end
function class.MapMark:updateRectangle(shapeid,sx,sz,w,h)
    return ErrorCode.OK
end
function class.MapMark:updateCircle(shapeid,cx,cz,r)
    return ErrorCode.OK
end
function class.Spawnport:new()
    local ret = {}
    setmetatable(ret,class.Spawnport)
    return ret
end
function class.Spawnport:getSpawnPoint()
    return 1,1,1
end
function class.Spawnport: getChunkValidSpawnPos(x,y,z)
    return ErrorCode.OK,1,1,1
end
function class.MiniTimer:new()
    local ret = {}
    setmetatable(ret,class.MiniTimer0)
    return ret
end
function class.ObjectLib:new()
    local ret = {}
    setmetatable(ret,class.ObjectLib)
    return ret
end
function class.ObjectLib:getAreaData(uuid)
    return ErrorCode.OK
end
function class.ObjectLib:getPositionData(uuid)
    local ps = {1,1,1}
    return ErrorCode.OK,ps
end
function class.ObjectLib:getLivingData(uuid)
    return ErrorCode.OK,100
end
function class.MiniTimer:isExist(id)
    return true
end
function class.MiniTimer:createTimer(name,owid,isprivate)
    return ErrorCode.OK,10
end
function class.MiniTimer:deleteTimer(id)
    return ErrorCode.OK
end
function class.MiniTimer:startBackwardTimer(id,intervalm)
    return ErrorCode.OK
end
function class.MiniTimer:startForwardTimer(id)
    return ErrorCode.OK
end
function class.MiniTimer:pauseTimer(id)
    return ErrorCode.OK
end
function class.MiniTimer:resumeTimer(id)
    return ErrorCode.OK
end
function class.MiniTimer:stopTimer(id)
    return ErrorCode.OK
end
function class.MiniTimer:changeTimeInterval(id,interval)
    return ErrorCode.OK
end
function class.MiniTimer:getTimerTime(id)
    return ErrorCode.OK,10
end
function class.MiniTimer:showTimerTips(playerids,timerid,text,show)
    return ErrorCode.OK
end
--恭喜你到这里来了
--你是来编代码的吗？
--我猜你不是
--如果是的话
--------------------------------------------导入时上面不许复制-------------------------------------------------
--file:main.lua
local main = function()
    Chat = class.Chat.new()
    Chat:sendSystemMsg("HelloWorld",0)
end
ScriptSupportEvent:registerEvent([=[Game.Start]=]),main)--如果你的IDE有提示错误，请不要管他，这是已知bug
