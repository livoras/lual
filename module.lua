local Lib = require "./namespacing"
Lib.sayJJ()

-- localfile function load the file and compile it
f = loadfile("./main.lua")
f() -- main is run
f() -- main can be run serveral times.


-- error 
function sayerror( ... )
  error("fuck you", 0)
end

-- error handling
status, err = pcall(sayerror) -- return a boolean value and err
print(err, '....', status)
if pcall(sayerror) then
  print("nothing..")
else
  print("OK..")
end
