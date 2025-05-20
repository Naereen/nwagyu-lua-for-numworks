-- This is NOT a Python script
-- This is a Lua file!

print("Hello world from Lua!")

for j=1,5 do

  for i=1,10 do
    eadk.display_draw_string("Hello", math.sqrt(10*i), 10*i)
  end

  eadk.timing_msleep(1000)
end
