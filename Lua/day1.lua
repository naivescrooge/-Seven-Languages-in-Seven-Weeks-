function call_114_times(f)
    ff = function (num)
        t = num
        for i = 1, 114, 1 do
            t = f(t)
        end
    end
    return ff
end

function square(num)
    return num * num
end

function print_abc(a, b, c)
    if c == nil then
        print(a, b)
    else
        print(a, b, c)
    end
end

function print_args(first,...)
    if first == nil then
        return
    end
    print(first)
    print_args(...)
end

-- print(call_twice(square)(114))

-- print_abc(1)
-- print_abc(1, 11)
-- print_abc(1, 11, 114)

-- print_args(1,1,4,5,1,4,'scrooge',true)

function fac(num)
    if num == 0 then
        return 1
    end
    return fac(num-1)*num
end

-- print(fac(20))

function swap(a,b)
    return b,a
end

-- print(swap(3,4))
-- tmp=swap(3,4)
-- print(tmp)
-- a,b,c=swap(4,10)
-- print(a)
-- print(b)
-- print(c)

function getspeed(table)
    print(table.speed)
end
-- getspeed{width=1,height=1,speed=3*1e8}

-- print(fac,10)

-- for i=1,5,2 do
--     print(i)
-- end

function test()
    i=math.random(100)
    while i < 100 do
        print(i)
        i=math.random(100) --怎么随机序列是固定的？
    end
end

function hypotenuse(a,b)
    local a2=a*a
    local b2=b*b
    return math.sqrt(a2+b2)
end


-- Practice
function ends_in_3(num)
    if num%10 == 3 then
        return true
    else
        return false
    end
end

-- print(ends_in_3(3),ends_in_3(13),ends_in_3(10))

function is_prime(num)
    if num <= 1 then
        return false
    end
    if num%2 == 0 and num ~=2 then
        return false
    elseif num == 2 then
        return true
    end
    for i=3,math.sqrt(num),2 do
        if num%i == 0 then
            return false
        end
    end
    return true
end

-- print(is_prime(2),is_prime(3),is_prime(4),is_prime(5),is_prime(6),is_prime(7),is_prime(8),is_prime(9))

function find(n)
    local cnt=0
    local i=-7
    while cnt<n do
        i=i+10
        if is_prime(i)==true and ends_in_3(i)==true then
            cnt=cnt+1
        end
    end
    return i
end

-- print(find(1),find(2),find(3),find(4),find(5))

function tt()
    print('yeah')
end

function for_loop(a,b,f)
    local i=a
    while i<=b do
        f()
        i=i+1
    end
end

-- for_loop(1,9,tt)

function reduce(max,init,f)
    for i=1,max,1 do
        init=f(init,i)
    end
    return init
end

function times(a,b)
    return a*b
end

-- print(reduce(5,1,times))