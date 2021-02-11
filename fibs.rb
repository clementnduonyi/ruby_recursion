#Iteration methodology

def fibs(num)
    if num == 0 || num == 1
        return num
    else
        x = 0
        y = 1
        num.times do
            temp = x
            x = y
            y = temp + y
        end
    end
    return x
end
p fibs(25)

# first n element in a fibonacci series
15.times do |num| #first 15 element
    res = fibs(num)
    p res
end

#Recursion methodology

def fibs_rec(n)
    if n == 0 || n == 1
        return n
    else
        return fibs_rec(n-1) + fibs_rec(n-2)
    end
end

p fibs_rec(25)

# first n element in a fibonacci series
15.times do |n| #first 15 element
    res = fibs_rec(n)
    p res
end

