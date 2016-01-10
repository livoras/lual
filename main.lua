function node(val, left, right)
  return {val = val, left = left, right = right}
end

function main()
  a = node(1, nil, nil)
  print(a.val, a.left, a.right)
  print("\a");
  str();
  exp();
  trueorfalse();
  table();
end

function str()
  a = 1
  print("hello word " .. 1); --[[string concanetion]]--
  --[[link breaking string]]--
  b = [[
<html>
  <head>
    <title>I love you</title>
  </head>
  <body>
    <h1>This is very cool thing</h1>
  </body>
</html>
  ]]
  print(b);
end

function exp()
  a = 10 ^ 2;
  if (a ~= 1000) then
    print("good\n");
  end
end

function trueorfalse()
  -- if `and` is true, return its second arg
  a = 1 and 2
  print(a)

  -- if `or` is true, return its first arg
  b = 1 or 3
  print(b)

  -- if a ? b :c
  x = (a > b) and a or b -- get larger number, pretty cool
  print(x)
end

function table()
  -- Lua's table contructor is every flexible.

  -- 1. normal initialization
  a = {
    a = 'shi',
    b = 'you'
  }
  print(a.a)
  print(a.b)
  a.c = 'every day'
  print(a.c)
  a["c"] = "Fuck"
  print(a.c);

  -- 2. default key with enum nubmer
  a = {"I", "want", "to", "fuck", "you"}
  print(a[1] == "I");

  -- 3. dynamic key
  b = {[a[1]] = a[2]}
  print(b.I)
end

main()
