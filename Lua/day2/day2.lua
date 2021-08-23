book = {
    title = "Grail Diary", 
    author = "Henry Jones", 
    pages = 100
}

-- print(book.title)

-- book.stars = 5
-- book.author = "Henry Jones Sr."
-- key = "stars"
-- print(book[key])

-- book.pages = nil
-- print(book.pages)

function print_table(t)
    for k, v in pairs(t) do
        print(k .. ": " .. v)
    end
end

-- print_table(book)

medals = {
    "gold", 
    "silver", 
    "bronze"
}

-- print(medals[1], ' ', medals[2], ' ', medals[3], ' ', medals[4])
-- medals[4] = "lead"
-- print(medals[1], ' ', medals[2], ' ', medals[3], ' ', medals[4])

icecream_scoops = {
    "vanilla", 
    "chocolate";
    sprinkles = true
}

-- print(icecream_scoops[1])
-- print(icecream_scoops.sprinkles)

greek_numbers = {
    ena = "one", 
    dyo = "two", 
    tria = "three"
}

-- print(getmetatable(greek_numbers))

-- function table2string(t)
--     local result = {}
--     for k, v in pairs(t) do
--         result[#result + 1]  =  k .. ": " .. v --#result 计算头元素到尾元素的长度 table.maxn(result) 返回数组的最大索引
--     end
--     return table.concat(result, "\n")
-- end

-- mt = {
--     __tostring = table2string
-- }

-- setmetatable(greek_numbers, mt)
-- -- print(greek_numbers)

-- local _private = {}

-- function strict_read(table, key)
--     if _private[key] then
--         return _private[key]
--     else
--         error("Invalid key: " .. key)
--     end
-- end

-- function strict_write(table, key, value)
--     if _private[key] then
--         error("Duplicate key: " .. key)
--     else
--         _private[key] = value
--     end
-- end

-- local mt = {
--     __index = strict_read, 
--     __newindex = strict_write
-- }

-- treasure = {}
-- setmetatable(treasure, mt)

-- treasure.gold = 50
-- print(treasure.gold)
-- print(treasure.silver)
-- treasure.gold = 100

-- dietrich = {
--     name = "Dietrich", 
--     health = 100, 

--     take_hit = function (self)
--         self.health = self.health - 10
--     end
-- }

-- clone = {
--     name = dietrich.name, 
--     health = dietrich.health, 
--     take_hit = dietrich.take_hit
-- }

-- dietrich.take_hit(dietrich)
-- print(dietrich.health)
-- print(clone.health)

-- Villain = {
--     health = 100, 

--     new = function (self, name)
--         local obj = {
--             name = name, 
--             health = self.health
--         }

--         setmetatable(obj, self)
--         self.__index = self

--         return obj
--     end, 

--     take_hit = function (self)
--         self.health = self.health - 10
--     end
-- }

-- dietrich = Villain.new(Villain, "Dietrich")
-- Villain.take_hit(dietrich)
-- dietrich.take_hit(dietrich)
-- print(dietrich.health)

-- SuperVillain = Villain.new(Villain)

-- function SuperVillain.take_hit(self)
--     self.health = self.health - 5
-- end

-- toht = SuperVillain.new(SuperVillain, "Toht")
-- toht.take_hit(toht)
-- print(toht.health)

-- Villain = {health = 100}

-- function Villain:new(name)
--     local obj = {
--         name = name, 
--         health = self.health
--     }

--     setmetatable(obj, self)
--     self.__index = self

--     return obj
-- end

-- function Villain:take_hit()
--     self.health = self.health - 10
-- end

-- SuperVillain = Villain:new()

-- function SuperVillain:take_hit()
--     self.health = self.health - 5
-- end

-- dietrich = Villain:new("Dietrich")
-- dietrich:take_hit()
-- print(dietrich.health)

-- toht = SuperVillain:new("Toht")
-- toht:take_hit()
-- print(toht.health)

function fibonacci()
    local m = 1
    local n = 1
    
    while true do
        coroutine.yield(m)
        m, n = n, m + n
    end
end

-- generator = coroutine.create(fibonacci)
-- succeeded, value = coroutine.resume(generator)
-- print(value)
-- succeeded, value = coroutine.resume(generator)
-- print(value)
-- succeeded, value = coroutine.resume(generator)
-- print(value)
-- succeeded, value = coroutine.resume(generator)
-- print(value)
-- succeeded, value = coroutine.resume(generator)
-- print(value)
-- succeeded, value = coroutine.resume(generator)
-- print(value)

-- scheduler = require 'scheduler'

-- function punch()
--     for i = 1, 5 do
--         print('punch ' .. i)
--         scheduler.wait(1.0)
--     end
-- end

-- function block()
--     for i = 1, 3 do
--         print('block ' .. i)
--         scheduler.wait(2.0)
--     end
-- end

-- scheduler.schedule(0.0, coroutine.create(punch))
-- scheduler.schedule(0.0, coroutine.create(block))

-- scheduler.run()


-- Practice

function concatnate(a1, a2)
    tmp = {}
    for i = 1, #a1 do
        tmp[#tmp + 1]  =  a1[i]
    end
    for i = 1, #a2 do
        tmp[#tmp + 1]  =  a2[i]
    end
    return tmp
end

function printarray(a)
    for i = 1, #a do
        io.write(a[i])
        io.write(" ")
    end
    io.write("\n")  --输出到io
end

a1 = {1, 1, 4, 5, 1, 4}
a2 = {1, 9, 1, 9, 8, 1, 0}
a3 = {}

-- printarray(a1)
-- printarray(a2)
-- printarray(a3)


-- local _private = {}

-- function strict_read(table, key)
--     if _private[key] then
--         return _private[key]
--     else
--         error("Invalid key: " .. key)
--     end
-- end

-- function strict_write(table, key, value)
--     if _private[key] and value ~= nil then
--         error("Duplicate key: " .. key)
--     elseif _private[key] then
--         _private[key] = nil
--     else
--         _private[key] = value
--     end
-- end

-- local mt = {
--     __index = strict_read, 
--     __newindex = strict_write
-- }

-- treasure = {}
-- setmetatable(treasure, mt)

-- treasure.gold = 100
-- print(treasure.gold)
-- treasure.gold = nil
-- treasure.gold = 50
-- print(treasure.gold)

local mt = {
    __add = concatnate
}

setmetatable(a1, mt)
a3 = a1 + a2
-- printarray(a3)


Queue = {
    size = 0,
    elements = {},
    new = function (self)
        if self == nil then
            self = Queue
        end
        local obj = {
            size = self.size,
            elements = self.elements,
        }
        setmetatable(obj, self)
        self.__index = self
        return obj
    end,
    add = function (num, self)
        if self == nil then
            self = Queue
        end
        self.size = self.size + 1
        self.elements[self.size] = num
    end,
    remove = function (self)
        if self == nil then
            self = Queue
        end
        if self.size == 0 then
            return nil
        else
            self.size = self.size - 1
            local ret = self.elements[1]
            table.remove(self.elements, 1)
            return ret
        end
    end
}

-- q = Queue.new()
-- print(q.remove())
-- q.add(20)
-- q.add(30)
-- print(q.remove())
-- q.add(1)
-- q.add(1)
-- q.add(4)
-- q.add(5)
-- q.add(1)
-- q.add(4)
-- print(q.remove())
-- print(q.remove())
-- print(q.remove())
-- print(q.remove())
-- print(q.remove())
-- print(q.remove())
-- print(q.remove())
-- print(q.remove())

function retry(count, body)
    generator = {coroutine.create(body)}
    for i = 1, count, 1 do
        succeeded, value = coroutine.resume(generator[i])
        generator[#generator + 1] = coroutine.create(body) 
        if type(value) == "nil" then
            print("Retry Succeeded!\nOmedeto!")
            return
        else
            print("The" .. i .. "-th retry failed, retrying......")
        end
    end
    print("zannendeshita\nqwq")
end

-- math.randomseed(os.time())

-- retry(10,
--     function ()
--         tmp = math.random()
--         print(tmp)
--         if tmp > 0.1 then
--             coroutine.yield("Somethine bad happened")
--         end
--         print("Succeeded")
--     end
-- )