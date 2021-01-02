--您的代码应该在这里开始
--您应该把这个文件输入到脚本界面中，不可把依赖class.lua放进去

start = function ()
    local chat = class.Chat.new()
    chat:sendChat("helloworld!")
end
ScriptSupportEvent:registerEvent([=[Game.start]=],start)
a = class.World.new()