function test(n, ...)
  -- using arg like javascript
  local arg = {...}
  print(arg[1], arg[2], arg[3], arg.n)
  -- unpack to pass to another function
  say(unpack({...}))
end

function unpack (t, i)
  i = i or 1
  if t[i] ~= nil then
    return t[i], unpack(t, i + 1)
  end
end

function say(x, y, z)
  print(x, y, z)
end

function main(...)
  test(1, 2, 3, 3, arg.n)
  print(arg.n)
  -- Name parameters, just like javascript
  namefunc({name="jerry", age="12"})
  -- you can have a callback function like javascript does.
  firstclassfunction(function (name)
    print("Your name is " .. name .. "?")
  end)
  -- test closure
  fun = closure()
  print(fun())
  print(fun())
  print(fun())
  print(fun())
end

function namefunc (opt)
  print(opt.name, opt.age)
end

function closure (...)
  local i = 0
  -- closure with anonymous functions like javascript does.
  return function (... )
    i = i + 1
    return i
  end
end

function firstclassfunction (callback)
  print("doing some stuff...")
  callback("Good")
end

main('a', 'b')