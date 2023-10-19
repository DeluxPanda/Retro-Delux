
local Height = 100
local Width = 20
local x = 100
local y = love.graphics.getHeight() / 2
local angle = 0.8
local WidthBall = 20
local HeightBall = 20

if ColorSelectedForFlipperOne == "yellow" then
    ColorSelectedForFlipperOne = yellow
elseif ColorSelectedForFlipperOne == "green" then
    ColorSelectedForFlipperOne = green
elseif ColorSelectedForFlipperOne == "red" then
    ColorSelectedForFlipperOne = red
elseif ColorSelectedForFlipperOne == "white" then
    ColorSelectedForFlipperOne = white
end
    ColorSelected = ColorSelectedForFlipperOne


local check_mark = love.graphics.newImage("Images/check_mark.png")


function love.draw()
    love.graphics.setBackgroundColor(ColorSelectedForBackground)
    love.graphics.setColor(ColorSelected)
    love.graphics.push() -- Push the current transformation matrix
    love.graphics.translate(x + Width/ 2, y + Height / 2) -- Translate to the center of the rectangle
    love.graphics.rotate(angle) -- Rotate around the center
    love.graphics.rectangle("fill", -Width / 2, -Height / 2, Width, Height, 10) -- Draw the rotated rectangle
    love.graphics.pop() -- Restore the previous transformation matrix



    color_button_height = 47

    GameTitle_x = (love.graphics.getWidth() / 2) - (button_start_y / 2)
    GameTitle_y = 50

    PlayerOne_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
    PlayerOne_button_y = love.graphics.getHeight() / 2 - button_height / 2 - 30
    -- 1
    ColorOne_button_x = PlayerOne_button_x + 210
    ColorOne_button_Y =love.graphics.getHeight() / 2 - button_height / 2 - 30
    --2
    ColorTwo_button_x = PlayerOne_button_x + 210
    ColorTwo_button_Y = ColorOne_button_Y + color_button_height + 5
    --3
    ColorThree_button_x = PlayerOne_button_x + 210
    ColorThree_button_Y = ColorTwo_button_Y + color_button_height + 5


    ColorFive_button_x = PlayerOne_button_x + 210
    ColorFive_button_Y = ColorThree_button_Y + color_button_height + 5

    ColorSix_button_x = PlayerOne_button_x + 210
    ColorSix_button_Y = ColorFive_button_Y + color_button_height + 5

    ColorSeven_button_x = PlayerOne_button_x + 210
    ColorSaven_button_Y = ColorSix_button_Y + color_button_height + 5

    ColorEight_button_x = PlayerOne_button_x + 210
    ColorEight_button_Y = ColorSaven_button_Y + color_button_height + 5

    ColorNine_button_x = PlayerOne_button_x + 210
    ColorNine_button_Y = ColorEight_button_Y + color_button_height + 5
    
    main_menu_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
    main_menu_settings_button_y = love.graphics.getHeight() - 60
    
    customiz_button_x = love.graphics.getWidth() - button_width - 10
    customiz_button_y = love.graphics.getHeight() - 60
    
    PlayerTwo_settings_button_y =  PlayerOne_button_y + button_height + button_padding
    
    -- Hover over the Buttons --
    local mouse_x, mouse_y = love.mouse.getPosition()
    
        -- 1
        if mouse_x >= ColorOne_button_x and mouse_x <= ColorOne_button_x + button_width and
        mouse_y >= ColorOne_button_Y and mouse_y <= ColorOne_button_Y + button_height or
        selectButton == 2 then
            selectButton = 2
        love.graphics.setColor(red)
        love.graphics.rectangle("fill", ColorOne_button_x , ColorOne_button_Y, button_width + 5, color_button_height + 5, corner_radius, corner_radius)
        ColorSelected = red
       end
        -- 2
        if mouse_x >= ColorTwo_button_x and mouse_x <= ColorTwo_button_x + button_width and
        mouse_y >= ColorTwo_button_Y and mouse_y <= ColorTwo_button_Y + button_height or
        selectButton == 3 then
            selectButton = 3
        love.graphics.setColor(yellow)
        love.graphics.rectangle("fill", ColorTwo_button_x , ColorTwo_button_Y, button_width + 5, color_button_height + 5, corner_radius, corner_radius)
        ColorSelected = yellow
       end
        -- 3
        if mouse_x >= ColorThree_button_x and mouse_x <= ColorThree_button_x + button_width and
        mouse_y >= ColorThree_button_Y and mouse_y <= ColorThree_button_Y + button_height or
        selectButton == 4 then
            selectButton = 4
        love.graphics.setColor(green)
        love.graphics.rectangle("fill", ColorThree_button_x , ColorThree_button_Y, button_width + 5, color_button_height + 5, corner_radius, corner_radius)
        ColorSelected = green
       end
        -- 5
        if mouse_x >= ColorFive_button_x and mouse_x <= ColorFive_button_x + button_width and
        mouse_y >= ColorFive_button_Y and mouse_y <= ColorFive_button_Y + button_height or
        selectButton == 5 then
            selectButton = 5
        love.graphics.setColor(white)
        love.graphics.rectangle("fill", ColorFive_button_x , ColorFive_button_Y, button_width + 5, color_button_height + 5, corner_radius, corner_radius)
        ColorSelected = white
       end

   -- Color Select Tab
     if mouse_x >= PlayerOne_button_x and mouse_x <= PlayerOne_button_x + button_width and
         mouse_y >= PlayerOne_button_y and mouse_y <= PlayerOne_button_y + button_height or
         selectButton == 1 then
          selectButton = 1
         love.graphics.setColor(yellow)
         love.graphics.rectangle("fill", PlayerOne_button_x, PlayerOne_button_y, button_width + 5, button_height + 5, corner_radius, corner_radius)
         love.graphics.setColor(slategray)
        end
--1
love.graphics.setColor(NormalButtons)
love.graphics.rectangle("fill",ColorOne_button_x, ColorOne_button_Y, button_width, color_button_height, corner_radius, corner_radius)
love.graphics.setColor(red)
love.graphics.rectangle("fill", ColorOne_button_x, ColorOne_button_Y, WidthBall, color_button_height, 10, 10)
love.graphics.setColor(white)
if ColorSelectedForFlipperOne == red then
love.graphics.draw(check_mark, ColorOne_button_x + 170 , ColorOne_button_Y + 15)
end
love.graphics.printf(ColorNameRed, ColorOne_button_x, ColorOne_button_Y + 7, button_width, "center")
ColorOne_button_x  = (love.graphics.getWidth() / 2) - (button_width / 2)
ColorOne_button_Y =  PlayerTwo_settings_button_y + color_button_height + button_padding
--2
love.graphics.setColor(NormalButtons)
love.graphics.rectangle("fill",ColorTwo_button_x, ColorTwo_button_Y, button_width, color_button_height, corner_radius, corner_radius)
love.graphics.setColor(yellow)
love.graphics.rectangle("fill", ColorTwo_button_x, ColorTwo_button_Y, WidthBall, color_button_height, 10, 10)       
love.graphics.setColor(white)
if ColorSelectedForFlipperOne == yellow then
love.graphics.draw(check_mark, ColorTwo_button_x + 170 , ColorTwo_button_Y + 15)
end
love.graphics.printf(ColorNameYellow, ColorTwo_button_x, ColorTwo_button_Y + 7, button_width, "center")
ColorTwo_button_x  = (love.graphics.getWidth() / 2) - (button_width / 2)
ColorTwo_button_Y =  PlayerTwo_settings_button_y + color_button_height + button_padding
--3
love.graphics.setColor(NormalButtons)
love.graphics.rectangle("fill",ColorThree_button_x, ColorThree_button_Y, button_width, color_button_height, corner_radius, corner_radius)
love.graphics.setColor(green)
love.graphics.rectangle("fill", ColorThree_button_x, ColorThree_button_Y, WidthBall, color_button_height, 10, 10)  
love.graphics.setColor(white)
if ColorSelectedForFlipperOne == green then
love.graphics.draw(check_mark, ColorThree_button_x + 170 , ColorThree_button_Y + 15)
end
love.graphics.printf(ColorNameGreen, ColorThree_button_x, ColorThree_button_Y + 7, button_width, "center")
ColorThree_button_x  = (love.graphics.getWidth() / 2) - (button_width / 2)
ColorThree_button_Y =  PlayerTwo_settings_button_y + color_button_height + button_padding

--5
love.graphics.setColor(NormalButtons)
love.graphics.rectangle("fill",ColorFive_button_x, ColorFive_button_Y, button_width, color_button_height, corner_radius, corner_radius)
love.graphics.setColor(white)
love.graphics.rectangle("fill", ColorFive_button_x, ColorFive_button_Y, WidthBall, color_button_height, 10, 10)  
love.graphics.setColor(white)
if ColorSelectedForFlipperOne == white then
   love.graphics.draw(check_mark, ColorFive_button_x + 170 , ColorFive_button_Y + 15)
end

love.graphics.printf(ColorNameWhite, ColorFive_button_x, ColorFive_button_Y + 7, button_width, "center")
ColorFive_button_x  = (love.graphics.getWidth() / 2) - (button_width / 2)
ColorFive_button_Y =  PlayerTwo_settings_button_y + color_button_height + button_padding
    
    -- Main Menu
     if mouse_x >= main_menu_settings_button_x and mouse_x <= main_menu_settings_button_x + button_width and
         mouse_y >= main_menu_settings_button_y and mouse_y <= main_menu_settings_button_y + button_height or
         selectButton == 7 then
          selectButton = 7
         love.graphics.setColor(yellow)
         love.graphics.rectangle("fill", main_menu_settings_button_x , main_menu_settings_button_y, button_width + 5, button_height + 5, corner_radius, corner_radius)
        end



             -- Game Title
             love.graphics.setFont(Game_Titl_font)
              love.graphics.setColor(255, 255, 255)
             love.graphics.printf(CustomizePlayerOneName, GameTitle_x, GameTitle_y, button_start_y, "center")
              GameTitle_x = (love.graphics.getWidth() / 2) - (button_start_y / 2)
              GameTitle_y = 80
    
              love.graphics.setColor(yellow)
              local PongName_font = love.graphics.newFont("Fonts/VT323-Regular.ttf", 30)
              love.graphics.setFont(PongName_font)
              love.graphics.printf(FlipperOneName, GameTitle_x  , GameTitle_y + 40, button_start_y, "center")
             

             love.graphics.setFont(Button_font)
    
             -- Color Select Tab
             love.graphics.setColor(NormalButtons)
             love.graphics.rectangle("fill",PlayerOne_button_x, PlayerOne_button_y, button_width, button_height, corner_radius, corner_radius)
             love.graphics.setColor(255, 255, 255)
             love.graphics.printf(SelectColorName, PlayerOne_button_x, PlayerOne_button_y + 10, button_width, "center")
             PlayerOne_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
             PlayerOne_button_y =  PlayerTwo_settings_button_y + button_height + button_padding
    
             -- Menu Menu
             love.graphics.setColor(BackOrCloseButton)
             love.graphics.rectangle("fill", main_menu_settings_button_x, main_menu_settings_button_y, button_width, button_height, corner_radius, corner_radius)
             love.graphics.setColor(white)
             love.graphics.printf(BackName, main_menu_settings_button_x, main_menu_settings_button_y + 10, button_width, "center")
             main_menu_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
             main_menu_settings_button_y = love.graphics.getHeight() - 60
            end