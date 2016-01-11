-- return a function can get next element of table

local function table_iter(tab)
  i = 0
  return function ()
    i = i + 1
    return tab[i]
  end
end

-- main

local function main( ... )
  local good = {"Jerry", "is", "my", "lover"}
  iter = table_iter(good)
  -- Generic for just call the iterator as a function
  -- until it get nil from it; otherwise it will be called
  -- continously to get next element.
  for val in iter do
    print(val)
  end
end

-- The Semantics of the Generic for
local function sematic( ... )
end

main()
