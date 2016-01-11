
-- Using table to wrap functions in a namespace just like javascript

local Lib = {
  sayGood = function( ... )
    print("Good~!")
  end
}

Lib.sayHi = function ( ... )
  print("Hello~");
end

-- A cool way to make a function in namespace (which is table)
-- in Lua. You can store function everywhere in Lua just like javascript
-- does because function is the first-class value in Lua. You can store it
-- in variable or pass it to functions.

function Lib.sayJJ( ... )
  print("JJ!!")
end

function main( ... )
  print("Hello world!")
  Lib.sayGood()
  Lib.sayHi()
  Lib.sayJJ()
end

main()

-- Module

return Lib
