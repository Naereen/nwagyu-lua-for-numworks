-- This is NOT a Python script
-- This is a Lua file!

print("Hello world from Lua! Testing.\n")
print("Hello world from Lua! Testing.\n")
print("Hello world from Lua! Testing.\n")
eadk.timing_msleep(1000)

eadk_color_black = 0x0
eadk_color_white = 0xFFFF
eadk_color_red = 0xF800
eadk_color_green = 0x07E0
eadk_color_blue = 0x001F

for j=1,1 do
  -- Just a comment here
  for i=1,2 do
    eadk.display_draw_string("Hello", 10*i, 10*i+20*j, 1) -- 1 for true, for large font
  end
  for i=3,4 do
    eadk.display_draw_string("Hello", 10*i, 10*i+20*j, 0) -- 0 for false, for small font
  end
  for i=5,6 do
    eadk.display_draw_string("Hello", 10*i, 10*i+20*j, 0) -- 0 for false, for small font
  end
  i = 7
  eadk.display_draw_string("Hello", 10*i, 10*i+20*j, 0, eadk_color_red) -- 0 for false, for small font
  i = i + 1
  eadk.display_draw_string("Hello", 10*i, 10*i+20*j, 0, eadk_color_green) -- 0 for false, for small font
  i = i + 1
  eadk.display_draw_string("Hello", 10*i, 10*i+20*j, 0, eadk_color_blue) -- 0 for false, for small font
  i = i + 1

  eadk.timing_msleep(1000)
end
