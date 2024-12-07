Several solutions exist, depending on your needs:

**1. Iterate over a copy:**

Create a copy of the table before iteration to avoid modifying the original table during iteration.

```lua
local function foo(t)
  local tcopy = {}
  for k, v in pairs(t) do
    tcopy[k] = v
  end
  for k, v in pairs(tcopy) do
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

foo(mytable) -- Now it will print 'd' 4, because the iteration occurs on a copy
```

**2.  Use `ipairs` for sequential tables:**

If you have a numerically indexed table (array), use `ipairs` which iterates over the numerical keys sequentially. Adding elements won't affect the iteration but the added elements will not be iterated over.

**3. Manual iteration (for complex scenarios):**

In more complex cases, you might need to manually manage the iteration process, perhaps using a while loop and tracking the table's size or state.

```lua
local function foo(t)
  local i = 1
  while true do
    local k, v = next(t, i)
    if not k then break end
    print(k,v)
    i = k
  end
end
```
This approach is more complex but allows for more control during the iteration.