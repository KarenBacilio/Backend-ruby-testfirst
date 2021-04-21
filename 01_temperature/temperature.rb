#write your code here
def ftoc (fahrenheit)
    c = (fahrenheit.to_f - 32.0) * (5.0/9.0)
    return c
end

ftoc(32)

def ctof(celsius)
    f = (celsius.to_f * (9.0/5.0))+ 32
    return f
end

ctof(0)