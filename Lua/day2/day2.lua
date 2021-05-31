book={
    title="Grail Diary",
    author="Henry Jones",
    pages=100
}

-- print(book.title)

-- book.stars=5
-- book.author="Henry Jones Sr."
-- key="stars"
-- print(book[key])

-- book.pages=nil
-- print(book.pages)

function print_table(t)
    for k,v in pairs(t) do
        print(k .. ": " .. v)
    end
end

-- print_table(book)

medals={
    "gold",
    "silver",
    "bronze"
}

-- print(medals[1],' ',medals[2],' ',medals[3],' ',medals[4])
-- medals[4]="lead"
-- print(medals[1],' ',medals[2],' ',medals[3],' ',medals[4])

icecream_scoops={
    "vanilla",
    "chocolate";
    sprinkles=true
}

-- print(icecream_scoops[1])
-- print(icecream_scoops.sprinkles)

greek_numbers={
    ena="one",
    dyo="two",
    tria="three"
}

-- print(getmetatable(greek_numbers))

-- function table2string(t)
--     local result={}
--     for k,v in pairs(t) do
--         result[#result+1] = k .. ": " .. v --#result 计算头元素到尾元素的长度 table.maxn(result) 返回数组的最大索引
--     end
--     return table.concat(result,"\n")
-- end

-- mt={
--     __tostring=table2string
-- }

-- setmetatable(greek_numbers,mt)
-- -- print(greek_numbers)

-- local _private={}

-- function strict_read(table,key)
--     if _private[key] then
--         return _private[key]
--     else
--         error("Invalid key: " .. key)
--     end
-- end

-- function strict_write(table,key,value)
--     if _private[key] then
--         error("Duplicate key: " .. key)
--     else
--         _private[key]=value
--     end
-- end

-- local mt={
--     __index=strict_read,
--     __newindex=strict_write
-- }

-- treasure={}
-- setmetatable(treasure,mt)

-- treasure.gold=50
-- print(treasure.gold)
-- -- print(treasure.silver)
-- treasure.gold=100

-- dietrich={
--     name="Dietrich",
--     health=100,

--     take_hit=function (self)
--         self.health=self.health-10
--     end
-- }

-- clone={
--     name=dietrich.name,
--     health=dietrich.health,
--     take_hit=dietrich.take_hit
-- }

-- dietrich.take_hit(dietrich)
-- print(dietrich.health)
-- print(clone.health)

-- Villain={
--     health=100,

--     new=function (self,name)
--         local obj={
--             name=name,
--             health=self.health
--         }

--         setmetatable(obj,self)
--         self.__index=self

--         return obj
--     end,

--     take_hit=function (self)
--         self.health=self.health-10
--     end
-- }

-- dietrich=Villain.new(Villain,"Dietrich")
-- Villain.take_hit(dietrich)
-- dietrich.take_hit(dietrich)
-- print(dietrich.health)

-- SuperVillain=Villain.new(Villain)

-- function SuperVillain.take_hit(self)
--     self.health=self.health-5
-- end

-- toht=SuperVillain.new(SuperVillain,"Toht")
-- toht.take_hit(toht)
-- print(toht.health)

-- Villain={health=100}

-- function Villain:new(name)
--     local obj={
--         name=name,
--         health=self.health
--     }

--     setmetatable(obj,self)
--     self.__index=self

--     return obj
-- end

-- function Villain:take_hit()
--     self.health=self.health-10
-- end

-- SuperVillain=Villain:new()

-- function SuperVillain:take_hit()
--     self.health=self.health-5
-- end

-- dietrich=Villain:new("Dietrich")
-- dietrich:take_hit()
-- print(dietrich.health)

-- toht=SuperVillain:new("Toht")
-- toht:take_hit()
-- print(toht.health)

function fibonacci()
    local m=1
    local n=1
    
    while true do
        coroutine.yield(m)
        m,n=n,m+n
    end
end

-- generator=coroutine.create(fibonacci)
-- succeeded,value=coroutine.resume(generator)
-- print(value)
-- succeeded,value=coroutine.resume(generator)
-- print(value)
-- succeeded,value=coroutine.resume(generator)
-- print(value)
-- succeeded,value=coroutine.resume(generator)
-- print(value)
-- succeeded,value=coroutine.resume(generator)
-- print(value)
-- succeeded,value=coroutine.resume(generator)
-- print(value)

-- scheduler=require 'scheduler'

-- function punch()
--     for i=1,5 do
--         print('punch ' .. i)
--         scheduler.wait(1.0)
--     end
-- end

-- function block()
--     for i=1,3 do
--         print('block ' .. i)
--         scheduler.wait(2.0)
--     end
-- end

-- scheduler.schedule(0.0,coroutine.create(punch))
-- scheduler.schedule(0.0,coroutine.create(block))

-- scheduler.run()


-- Practice
