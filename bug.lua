local function foo(t)
  for k, v in pairs(t) do
    print(k, v)
  end
end

local mytable = {
  a = 1,
  b = 2,
  c = 3
}

foo(mytable)

mytable.d = 4

-- This will NOT print 'd' 4 because the iteration already happened
foo(mytable)