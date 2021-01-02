--       ！                  本文件
--      ！ ！                不可以
--     ！   ！               导入到
--    ！ 注  ！              脚本里
--   ！       ！            ------
--  ！   意    ！           否则会
-- ！           ！          重定义
--！！！！！！！！！

--Copyright(C)Liushuxi.All right reserved.
--Help:https://developers.mini1.cn/wiki/
--使用方法：
--1.通用：直接使用
-- local a = class.World.new()
--2.兼容：引入模块
-- local class = require("class")
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
--这里本来是一个事件函数，但我觉得那是自己定义的
--直接调用class里面的命令，例如class.Chat.sendChat("Example",0)
class = {
World = {};
Game = {};
Block = {};
Actor = {};
Player = {};
Creature = {};
UI = {};
Area = {};
Chat = {};
Team = {};
Item = {};
Backpack = {};
WorldContainer = {};
MapMark = {};
Spawnport = {};
MiniTimer = {};
ObjectLib = {};
VarLib = {};

}
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
function class.World:new ()
    return class.World
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
function class.Game:new()
    return class.Game
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
function class.Block:new()
    return class.Block
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
function class.Actor:shownickname(objid,bshow)
    return ErrorCode.OK
end
function class.Actor:setnickname (objid,nickname)
    return ErrorCode.OK
end
function class.Actor:new()
    return class.Actor
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
function class.Player:setCheckBoxScale(objid,range)
    return ErrorCode.OK
end
function openBoxByPos(objid,x,y,z)
    return ErrorCode.OK
end
function forceOpenBoxUI(objid,itemid)
    return ErrorCode.OK
end
function getPropsType(objid)
    return ErrorCode.OK
end
function class.Player:new()
    return class.Player
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
function class.UI:new()
    return class.UI
end
function class.Chat.sendChat(content,targetuin)
    return ErrorCode.OK
end
function class.Chat:sendSystemMsg(content,targetuin)
    return ErrorCode.OK
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
function class.Spawnport:getSpawnPoint()
    return 1,1,1
end
function class.Spawnport:getChunkValidSpawnPos(x,y,z)
    return ErrorCode.OK,1,1,1
end
function class.Spawnport:setSpawnPoint(x,y,z)
    return ErrorCode.OK
end
function class.Spawnport:getChunkValidSpawnPos(x,y,z)
    return ErrorCode.OK,1,2,3
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
function class.MiniTimer:createTimer(name)
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
function class.Team:getNumTeam()
    return ErrorCode.OK,10
end
function class.Team:getTeamPlayerNum(teamid,alive)
    return ErrorCode.OK,10
end
function class.Team:getTeamPlayers(teamid,alive)
    return ErrorCode.OK,10
end
function class.Team:randomTeamPlayer(teamid,alive)
    return ErrorCode.OK,10
end
function class.Team:getTeamCreatures(teamid)
    local ay = {1,2,3,4,5,6,7,8,9,0}
    return ErrorCode.OK,ay
end
function class.Team:setTeamScore(teamid,score)
    return ErrorCode.OK
end
function class.Team:getTeamScore(teamid)
    return ErrorCode.OK,10
end
function class.Team:addTeamScore(teamid,score)
    return ErrorCode.OK
end
function class.Team:setTeamResults(teamid,result)
    return ErrorCode.OK
end
function class.Team:getTeamResults(teamid)
    return ErrorCode.OK,10
end
function class.Team:setTeamPlayersResults(teamid,result)
    return ErrorCode.OK
end
function class.Team:setTeamDieTimes(teamid,times)
    return ErrorCode.OK
end
function class.Team:getTeamDieTimes(teamid)
    return ErrorCode.OK,10
end
function class.Team:addTeamDieTimes(teamid)
    return ErrorCode.OK
end
function class.Team:changePlayerTeam(playerid,teamid)
    return ErrorCode.OK
end
function class.WorldContainer:addFurnace(x,y,z)
    return ErrorCode.OK
end
function class.WorldContainer:removeFurnace(x,y,z)
    return ErrorCode.OK
end
function class.WorldContainer:checkFurnace(x,y,z)
    return ErrorCode.OK
end
function class.WorldContainer:getFurnaceHeatPercent(x,y,z)
    return ErrorCode.OK,100
end
function class.WorldContainer:getFurnaceMeltPercent(x,y,z)
    return ErrorCode.OK,100
end
function class.WorldContainer:addStorageBox(x,y,z)
    return ErrorCode.OK
end
function class.WorldContainer:removeStorageBox(x,y,z)
    return ErrorCode.OK
end
function class.WorldContainer:checkStorage(x,y,z)
    return ErrorCode.OK
end
function class.WorldContainer:clearStorageBox(x,y,z)
    return ErrorCode.OK
end
function class.WorldContainer:checkStorageEmptyGrid(x,y,z,itemid)
    return ErrorCode.OK
end
function class.WorldContainer:setStorageItem(x,y,z,offset,itemid,num)
    return ErrorCode.OK
end
function class.WorldContainer:getStorageItem(x,y,z,offset)
    return ErrorCode.OK,10,1
end
function class.WorldContainer:addStorageItem(x,y,z,itemid,num)
    return ErrorCode.OK,10
end
function class.WorldContainer:removeStorageItemByID(x,y,z,itemid,num)
    return ErrorCode.OK
end
function class.WorldContainer:removeStorageItemByIndex(x,y,z,offset,num)
    return ErrorCode.OK
end
function class.WorldContainer:addItemToContainer(x,y,z,itemid,num)
    return ErrorCode.OK,10
end
function class.WorldContainer:removeContainerItemByID(x,y,z,itemid,num)
    return ErrorCode.OK
end
function class.WorldContainer:clearContainer(x,y,z)
    return ErrorCode.OK
end
function class.Backpack:getBackpackBarIDRange(bartype)
    return ErrorCode.OK,1,10
end
function class.Backpack:getBackpackBarSize(bartype)
    return ErrorCode.OK,10
end
function class.Backpack:setGridItem(playerid,gridid,itemid,num,duiability)
    return ErrorCode.OK
end
function class.Backpack:removeGridItem(playerid,gridid,num)
    return ErrorCode.OK
end
function class.Backpack:removeGridItemByItemID(playerid,itemid,num)
    return ErrorCode.OK
end
function class.Backpack:clearPack(playerid,bartype)
    return ErrorCode.OK
end
function class.Backpack:clearAllPack(playerid)
    return
end
function class.Backpack:moveGridItem(playerid,gridsrc,girddst,num)
    return ErrorCode.OK
end
function class.Backpack:swapGridItem(playerid,gridsrc,griddst)
    return ErrorCode.OK
end
function class.Backpack:enoughSpaceForItem(playerid,itemid,num)
    return ErrorCode.OK
end
function class.Backpack:calcSpaceNumForItem(olayerid,itemid)
    return ErrorCode.OK,10
end
function class.Backpack:getBackpackBarValidList(playerid,bartype)
    local ay = {1,2,3,4,5,6,7,8,9}
    return ErrorCode.OK,10,ay
end
function class.Backpack:getBackpackBarItemList(playerid,bartype)
    local ay = {1,2,3,4,5,6,7,8,9}
    return ErrorCode.OK,10,ay
end
function class.Backpack:hasItemByBackpackBar(playerid,bartype,itemid)
    return ErrorCode.OK
end
function class.Backpack:getItemNumByBackpackBar(playerid,bartype,itemid)
    local ay = {1,2,3,4,5,6,7,8,9}
    return ErrorCode.OK,10,ay
end
function class.Backpack:getGridItemID(palyerid,gridid)
    return ErrorCode.OK,10,10
end
function class.Backpack:getGridItemName(playerid,geidid)
    return ErrorCode.OK,"小恐龙最帅"
end
function class.Backpack:getGridStack(playerid,gridid)
    return ErrorCode.OK,10,10
end
function class.Backpack:getGridDurability(playerid,gridid)
    return ErrorCode.OK,10,10
end
function class.Backpack:getGridEnchantList(playerid,gridid)
    local ay = {2,5,3,2,5}
    return ErrorCode.OK,10,ay
end
function class.Backpack:getGridToolType(palyerid,gridid)
    return ErrorCode.OK,10
end
function class.Backpack:addItem(playerid,itemid,num)
    return ErrorCode.OK
end
function class.Backpack:discardItem(playerid,gridid,num)
    return ErrorCode.OK
end
function class.Backpack:getGridNum(playerid,gridid)
    return ErrorCode.OK
end
function class.Backpack:actEquipUpByResID(objid,resid)
    return ErrorCode.OK
end
function class.Backpack:actEquipOffByEquipID(objid,equipid)
    return ErrorCode.OK
end
function class.Backpack:actCreateEquip(objid,resid)
    return ErrorCode.OK
end
function class.Backpack:actDestructEquip(objid,equipid)
    return ErrorCode.OK
end

function class.Creature:getAttr(objid,attrtype)
    return ErrorCode.OK,10
end
function class.Creature:setAttr(objid,attrtype)
    return 
end
function class.Creature:isAdult(objid)
    return ErrorCode.OK
end
function class.Creature:setOxygenNeed(objid,v)
    return ErrorCode.OK
end
function class.Creature:getTamedOwnerID(objid)
    return ErrorCode.OK,0
end
function class.Creature:setPanic(objid,v)
    return ErrorCode.OK
end
function class.Creature:setAIActive(objid,v)
    return ErrorCode.OK
end
function class.Creature:getActorID(objid)
    return ErrorCode.OK,10
end
function class.Creature:getActorName(objid)
    return ErrorCode.OK,"小恐龙天下第一帅"
end
function class.Creature:addModAttrib(objid,attrtype,value)
    return ErrorCode.OK
end
function class.Creature:getModAttrib(objid,attrtype)
    return ErrorCode.OK,10
end
function class.Creature:setTeam(objids,teamid)
    return ErrorCode.OK
end
function class.Creature:getTeam(objid)
    return ErrorCode.OK,1
end
function class.Creature:getMaxFood(objid)
    return ErrorCode.OK,10
end
function class.Creature:getFood(objid)
    return ErrorCode.OK,10
end
function class.Creature:setFood(objid,val)
    return ErrorCode.OK
end
function class.Creature:getHpRecover(objid)
    return ErrorCode.OK,10
end
function class.Creature:getMaxOxygen(objid)
    return ErrorCode.OK,10
end
function class.Creature:getWalkSpeed(objid)
    return ErrorCode.OK,10
end
function class.Creature:getSwimSpeed(objid)
    return ErrorCode.OK,10
end
function class.Creature:getJumpPower(objid)
    return ErrorCode.OK,10
end
function class.Creature:getMass(objid)
    return ErrorCode.OK,10
end
function class.Creature:getDodge(objid)
    return ErrorCode.OK,10
end
function class.Creature:getPunchAttack(objid)
    return ErrorCode.OK,10
end
function class.Creature:getRangeAttack(objid)
    return ErrorCode.OK,10
end
function class.Creature:getPunchDefense(objid)
    return ErrorCode.OK,10
end
function class.Creature:getRangeDefense(objid)
    return ErrorCode.OK,10
end
function class.Creature:setMaxHp(objid,val)
    return ErrorCode.OK
end
function class.Creature:setHP(objid,val)
    return ErrorCode.OK
end
function class.Creature:setHpRecover(objid)
    return ErrorCode.OK
end
function class.Creature:setOxygen(objid,val)
    return ErrorCode.OK
end
function class.Creature:setWalkSpeed(objid,val)
    return ErrorCode.OK
end
function class.Creature:setSwimSpeed(objid,val)
    return ErrorCode.OK
end
function class.Creature:setJumpPower(objid,val)
    return ErrorCode.OK
end
function class.Creature:setDodge(objid,val)
    return ErrorCode.OK
end
function class.Creature:setPunchAttack(objid,val)
    return ErrorCode.OK
end
function class.Creature:setRangeAttack(objid,val)
    return ErrorCode.OK
end
function class.Creature:setPunchDefense(objid,val)
    return ErrorCode.OK
end
function class.Creature:setRangeDefense(objid,val)
    return ErrorCode.OK
end
function class.Creature:new()
    return class.Creature
end 
function class.Area:createAreaRect(pos,dim)
    return ErrorCode.OK,10
end
function class.Area:createAreaRectByRange(posBeg,posEnd)
    return ErrorCode.OK,10
end
function class.Area:destroyArea(areid)
    return ErrorCode.OK
end
function class.Area:getAreaByPos(pos)
    return ErrorCode.OK,10
end
function class.Area:offsetArea(areaid,x,y,z)
    return ErrorCode.OK
end
function class.Area:expandArea(areaid,x,y,z)
    return ErrorCode.OK
end
function class.Area:getAreaCenter(areaid)
    local ps = {1,1,1}
    return ErrorCode.OK,ps
end
function class.Area:getAreaRectLength(areaid)
    return ErrorCode.OK,1,1,1
end
function class.Area:getAreaRectRange(areaid)
    local ay = {1,1,1}
    local ps = {2,2,2}
    return ErrorCode.OK,ay,ps
end
function class.Area:getRandomPos(areaid)
    local ps = {1,1,1}
    return ErrorCode.OK,ps
end
function class.Area:objInArea(areaid,objid)
    return ErrorCode.OK
end
function class.Area:blockInArea(areaid,blockid)
    return ErrorCode.OK
end
function class.Area:posInArea(pos,areaid)
    return ErrorCode.OK
end
function class.Area:getAreaPlayers(areaid)
    local ps = {1,2,3,4,5,6,7,8,9,0}
    return ErrorCode.OK,ps
end
function class.Area:getAreaCreatures(areaid)
    local ps = {1,1,1}
    return ErrorCode.OK,ps
end
function class.Area:fillBlock(areaid,blockid,face)
    return ErrorCode.OK
end
function class.Area:clearAllBlock(areaid,blockid)
    return ErrorCode.OK
end
function class.Area:cloneArea(areaid,deststartpos)
    return ErrorCode.OK
end
function class.Area:getPosOffset(srcpos,dim)
    local ps = {ErrorCode.OK}
    return ErrorCode.OK,ps
end
function class.Area:replaceAreaBlock(areaid,srcblockid,destblockid,face)
    return ErrorCode.OK
end
function class.Area:blockInAreaRange(blockid,posbeg,posend)
    return ErrorCode.OK
end
function class.Area:getAllObjsInAreaRange(posbeg,posend,objtypeidx)
    return ErrorCode.OK
end
function class.Area:getAllObjsInAreaRangeByObjTypes(posbeg,posend,objtypeidxs)
    return ErrorCode.OK
end
function class.Area:getAllPlayersInAreaRange(posbeg,posend)
    return ErrorCode.OK
end
function class.Area:getAllCreaturesInAreaRange(posbeg,posend)
    return ErrorCode.OK
end
function class.Area:fillBlockAreaRange(posbeg,posend,blockid,face)
    return ErrorCode.OK
end
function class.Area:clearAllBlockAreaRange(posbeg,posend,blockid)
    return ErrorCode.OK
end
function class.Area:cloneAreaRange(posbeg,posend,desrstartpos)
    return ErrorCode.OK
end
function class.Area:replaceAreaRangeBlock(posbeg,posend,srcblockid,destblockid,face)
    return ErrorCode.OK
end
function class.VarLib:setGlobalVarByName(actionattr,msg,val)
    return ErrorCode.OK
end
function class.VarLib:getGlobalVarByName(actionattr,msg)
    return ErrorCode.OK,1
end
function class.VarLib:setPlayerVarByName(objid,actionattr,msg,val)
    return ErrorCode.OK
end
function class.VarLib:getPlayerVarByName(objid,actionattr,msg)
    return ErrorCode.OK,1
end
function ScriptSupportEvent:registerEvent(Event,Functions)
end
function ScriptSupportEvent:registerEvent_Block()
end
function class:new()
    return class
end
function class.Area:new()
    return class.Area
end
function class.Chat:new()
    return class.Chat
end
function class.Team:new()
    return class.Team
end
function class.Item:new()
    return class.Item
end
function class.Backpack:new()
    return class.Backpack
end
function class.WorldContainer:new()
    return class.WorldContainer
end
function class.MapMark:new()
    return class.MapMark
end
function class.Spawnport:new()
    return class.Spawnport
end
function class.MiniTimer:new()
    return class.MiniTimer
end
function class.ObjectLib:new()
    return class.ObjectLib
end
function class.VarLib:new()
    return class.VarLib
end
GameRule = {}
    GameRule.CurTime = 0;	--获取/设置当前时间
	GameRule.TimeLocked= 0;	--时间锁/锁定时间
	GameRule.Weather= 0;	--天气 0晴天 1雨天
	GameRule.MaxPlayers	= 0;--最大玩家数量
	GameRule.BlockDestroy= 0;	--是否可摧毁方块 0:否 1:是
	GameRule.BlockPlace= 0;	---可放置方块 0:否 1:是
	GameRule.BlockUse= 0;	---可使用方块 0:否 1:是
	GameRule.GravityFactor= 0;	--重力因子(取值范围 0.1~10)
	GameRule.CameraDir= 0;	--相机视角模式: 0/1/2:缺省主视角/正视角/背视角, 3/4/5/6:锁定主视角/正视角/背视角/俯视角
	GameRule.StartMode= 0;	--开启方式:0房主/1自动
	GameRule.StartPlayers= 0;	--开启所需玩家量
	GameRule.TeamNum= 0;	--游戏队伍数量
	GameRule.AttackPlayerMode= 0;	--禁止攻击:1玩家/2队友
	GameRule.EndTime= 0;	--游戏时长设定
	GameRule.EndScore= 0;	--胜利分数设定
	GameRule.ScoreKillPlayer= 0;	--干掉玩家所得分数
	GameRule.ScoreKillMob= 0;	--干掉怪物所得分数
	GameRule.ScoreCollectStar= 0;	--收集星星所得分数(闪星方块)
	GameRule.ReviveMode= 0;	--复活模式设置:参数为秒 0为自定义,需自己点
	GameRule.ReviveInvulnerable= 0;	--复活带无敌buff:参数为秒 0为默认时长(5秒)
	GameRule.DisplayName= 0;	--名字显示 0默认显示 1仅己方 2仅对方 3不可见
	GameRule.WinLoseEndTime= 0;	--超时胜负 0按分数 1全胜(绿) 2全败(红)
	GameRule.SaveMode= 0;	--保存模式 1:不保存 0:运行保存 <用途不明确>
	GameRule.KillNotify= 0;	--被玩家击杀提示 1:true 0:false (系统聊天里的提示)
	GameRule.BgMusicMode= 0;	--背景音乐模式 0:关闭 1-8:对应不同的音乐
	GameRule.MobGen= 0;	--是否刷怪: -1:按创建的选项刷, 0:不刷, 1:刷
	GameRule.SpawnPtMode= 0;	--复活点选择 0:随机一个点 1:选择最近的
	GameRule.MinimapTeams= 0;	--小地图显示: 0:所有可见 1:不同队伍不可见
	GameRule.PlayerDieDrops= 0;	--玩家死亡是否掉落物品 0:掉落在原地 3:掉落到储物箱 其他:不掉落
	GameRule.DisplayScore= 0;	--显示比分和时间 1:true 0:false
	GameRule.LifeNum= 0;	--游戏生命数, 死亡次数达到这个则游戏以失败结束
	GameRule.ShowSight= 0;	--显示准心: 1显示 2隐藏 <用途不明确>
	GameRule.ScoreColorChange= 0;	--变色记分规则:自定义分数,每变色所得分数
	GameRule.GPoisonSwitch= 0;	--开启全局毒圈 1开启 0关闭 <吃鸡模式>
	GameRule.GPoisonSafeD0= 0;	--第一个安全区的直径 <吃鸡模式>
	GameRule.GPoisonSafeT0= 0;	--第一个安全区的时间 <吃鸡模式>
	GameRule.AllowMidwayJoin= 0;	--允许中途加入 0:不允许 1:允许
	GameRule.LifeNumTeamShare= 0;	--队伍公用生命 0:不共享 1:共享 <用途不明确>
	GameRule.ViewMode= 0;	--开启失败观战 0:不开启 1:开启
	GameRule.ViewType= 0;	--观战类型: 0-自由观战 1-跟随屏幕 2-可切换
	GameRule.CountDown= 0;	--倒计时长 <表配置有问题无法set成功>
	GameRule.ScoreResetRound= 0;	--得分重置回合:类似足球比赛(进球后重新开始) 1:true
    GameRule.ResetScore= 0;	--重置回合所需分数 当前分数达到该值即重置
return class