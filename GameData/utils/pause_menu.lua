pause_menu = {}
paused = false
local button_height = 50
local button_padding = 20
local button_start_y = 500
local corner_radius = 10
 function pause_menu()

    love.mouse.setVisible(true)

    Nostalgia:stop()
    Lobby_Time:play()

         -- Set the button positions
         local button_width = 200
   GameTitle_x = (love.graphics.getWidth() / 2) - (button_start_y / 2)
   GameTitle_y = 80
   
   continue_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
   continue_button_y = love.graphics.getHeight() / 2 - button_height / 2

   Help_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
   Help_button_y =  continue_button_y + button_height + button_padding


   main_menu_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
   main_menu_button_y = love.graphics.getHeight() - 60

-- Hover over the Buttons --
local mouse_x, mouse_y = love.mouse.getPosition()
-- continue
if mouse_x >= continue_button_x and mouse_x <= continue_button_x + button_width and
    mouse_y >= continue_button_y and mouse_y <= continue_button_y + button_height or
    selectButton == 1 then
     selectButton = 1
    love.graphics.setColor(yellow)
    love.graphics.rectangle("fill", continue_button_x , continue_button_y , button_width + 5, button_height + 5, corner_radius, corner_radius)
end

-- Help
if mouse_x >= Help_button_x and mouse_x <= Help_button_x + button_width and
    mouse_y >= Help_button_y and mouse_y <= Help_button_y + button_height or
    selectButton == 2 then
     selectButton = 2
  
    love.graphics.setColor(yellow)
    love.graphics.rectangle("fill", Help_button_x , Help_button_y, button_width + 5, button_height + 5, corner_radius, corner_radius)
end

-- main_menu
if mouse_x >= main_menu_button_x and mouse_x <= main_menu_button_x + button_width and
    mouse_y >= main_menu_button_y and mouse_y <= main_menu_button_y + button_height or
    selectButton == 3 then
     selectButton = 3
    love.graphics.setColor(yellow)
    love.graphics.rectangle("fill", main_menu_button_x, main_menu_button_y, button_width + 5, button_height + 5, corner_radius, corner_radius)
end

                if not WiningPong == true then
                    
            -- Game Title
            love.graphics.setFont(Game_Titl_font)
            -- love.graphics.setColor(0, 88/255, 0)
            -- love.graphics.rectangle("fill", GameTitle_x, GameTitle_y, button_start_y, button_height)
             love.graphics.setColor(255, 255, 255)
             love.graphics.printf(pauseName, GameTitle_x, GameTitle_y, button_start_y, "center")
             GameTitle_x = (love.graphics.getWidth() / 2) - (button_start_y / 2)
             GameTitle_y = 80
             love.graphics.setFont(Button_font)
             -- continue
            love.graphics.setColor(NormalButtons)
            love.graphics.rectangle("fill", continue_button_x, continue_button_y, button_width, button_height, corner_radius, corner_radius)
            love.graphics.setColor(255, 255, 255)
            love.graphics.printf(GameContinueName, continue_button_x, continue_button_y + 10, button_width, "center")
            continue_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
            continue_button_y = love.graphics.getHeight() / 2 - button_height / 2
        else
            love.graphics.setFont(Button_font)
            -- continue
            love.graphics.setColor(NormalButtons)
            love.graphics.rectangle("fill", continue_button_x, continue_button_y, button_width, button_height, corner_radius, corner_radius)
            love.graphics.setColor(255, 255, 255)
            love.graphics.printf(GameResetName, continue_button_x, continue_button_y + 10, button_width, "center")
            continue_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
            continue_button_y = love.graphics.getHeight() / 2 - button_height / 2  
        end
        love.graphics.setFont(Button_font)

            -- Help
            love.graphics.setColor(NormalButtons)
            love.graphics.rectangle("fill", Help_button_x, Help_button_y, button_width, button_height, corner_radius, corner_radius)
            love.graphics.setColor(255, 255, 255)
            love.graphics.printf(HelpName, Help_button_x, Help_button_y + 10, button_width, "center")
            Help_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
            Help_button_y = love.graphics.getHeight() - 60

            -- main_menu
            love.graphics.setColor(BackOrCloseButton)
            love.graphics.rectangle("fill", main_menu_button_x, main_menu_button_y, button_width, button_height, corner_radius, corner_radius)
            love.graphics.setColor(255, 255, 255)
            love.graphics.printf(main_menuName, main_menu_button_x, main_menu_button_y + 10, button_width, "center")
            main_menu_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
            main_menu_button_y =  continue_button_y + button_height + button_padding
        end 