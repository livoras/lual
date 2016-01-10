
function mulassign()
  -- variables hasn't been declared with `local` key word will be exported to global
  -- environment.
  x, y = 1, 2
  local a, b = x, y
  print(x, y, a, b)
  scope()
  return x, y
end

function testGlobal()
  print(x, y, a, b)
  while j ~= 20 do
    if j == 15 then
      print("Good JJ")
    elseif (j == 13) then
      print("Bad JJ")
    else
      print("My jj is " .. j .. "cm")
    end
    j = j + 1
  end
end

function main()
  print("hello world")
  -- Just like python does
  j, k = mulassign()
  print(j, k .. " is my love");
  testGlobal()
  loop()
  func(1, 2, 3)
end

function scope()
  do 
    local bil = 100
    print("This is a local scope with x of value of " .. bil)
  end
  if not bil then
    print("This is a outer scope of do block with no x value ")
  end
end

function loop()
  i = 0
  s = ""
  -- simple while loop
  while i ~= 10 do
    s = s .. i
    i = i + 1
  end
  -- repeat util just like do while
  repeat 
    print("first repeat")
  until true
  -- numberic for: `for initstart, end, step`
  for i = 0, 10 do
    print("Good night " .. i)
  end
  -- generic for loop table
  tab = {"a", "b", "c", "d"}
  for key, value in ipairs(tab) do
    print(key .. ": " .. value)
  end
  -- just print all the keys
  for k in pairs(tab) do
    print(k, 'cool')
  end
  print(s)
end

function func(a, b, c, d)
  d = d or 3 -- just like js
  print(a + b + c + d)
end

main();
