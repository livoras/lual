
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
end

function main()
  print("hello world")
  -- Just like python does
  j, k = mulassign()
  print(j, k .. " is my love");
  testGlobal()
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

function scope()
  do 
    local bil = 100
    print("This is a local scope with x of value of " .. bil)
  end
  if not bil then
    print("This is a outer scope of do block with no x value ")
  end
end

main();
