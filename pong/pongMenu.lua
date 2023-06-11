pongMenu = {}
 function pongMenu()

         -- Set the button positions
         local button_width = 200
   GameTitle_x = (love.graphics.getWidth() / 2) - (button_start_y / 2)
   GameTitle_y = 80
   
   pong_SinglePlayer_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
   pong_SinglePlayer_button_y = love.graphics.getHeight() / 2 - button_height / 2

   pong_LocalMultiPlayer_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
   pong_LocalMultiPlayer_button_y =  pong_SinglePlayer_button_y + button_height + button_padding


   Settings_button_x = love.graphics.getWidth() - button_width - 10
   Settings_button_y = love.graphics.getHeight() - 60

   main_menu_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
   main_menu_button_y = love.graphics.getHeight() - 60

   credits_button_x = 10
   credits_button_y = love.graphics.getHeight() - 60

 -- Hover over the Buttons --
 local mouse_x, mouse_y = love.mouse.getPosition()
    -- pongMenu
    if mouse_x >= pong_SinglePlayer_button_x and mouse_x <= pong_SinglePlayer_button_x + button_width and
        mouse_y >= pong_SinglePlayer_button_y and mouse_y <= pong_SinglePlayer_button_y + button_height or
        selectButton == 1 then
         selectButton = 1
        love.graphics.setColor(yellow)
        love.graphics.rectangle("fill", pong_SinglePlayer_button_x , pong_SinglePlayer_button_y , button_width + 5, button_height + 5, corner_radius, corner_radius)
    end
    -- LocalMultiPlayer
    if mouse_x >= pong_LocalMultiPlayer_button_x and mouse_x <= pong_LocalMultiPlayer_button_x + button_width and
        mouse_y >= pong_LocalMultiPlayer_button_y and mouse_y <= pong_LocalMultiPlayer_button_y + button_height or
        selectButton == 2 then
         selectButton = 2
        love.graphics.setColor(yellow)
        love.graphics.rectangle("fill", pong_LocalMultiPlayer_button_x, pong_LocalMultiPlayer_button_y, button_width + 5, button_height + 35, corner_radius, corner_radius)
    end
    -- Main Menu
    if mouse_x >= main_menu_button_x and mouse_x <= main_menu_button_x + button_width and
        mouse_y >= main_menu_button_y and mouse_y <= main_menu_button_y + button_height or
        selectButton == 3 then
         selectButton = 3
        love.graphics.setColor(yellow)
        love.graphics.rectangle("fill", main_menu_button_x , main_menu_button_y, button_width + 5, button_height + 5, corner_radius, corner_radius)
    end
    -- Credits
    if mouse_x >= credits_button_x and mouse_x <= credits_button_x + button_width and
        mouse_y >= credits_button_y and mouse_y <= credits_button_y + button_height or
        selectButton == 4 then
         selectButton = 4
        love.graphics.setColor(yellow)
        love.graphics.rectangle("fill", credits_button_x, credits_button_y, button_width + 5, button_height + 5, corner_radius, corner_radius)
    end
    -- Settings
    if mouse_x >= Settings_button_x and mouse_x <= Settings_button_x + button_width and
        mouse_y >= Settings_button_y and mouse_y <= Settings_button_y + button_height or
        selectButton == 5 then
         selectButton = 5
        love.graphics.setColor(yellow)
        love.graphics.rectangle("fill", Settings_button_x , Settings_button_y , button_width + 5, button_height + 5, corner_radius, corner_radius)
    end



            -- Game Title
            love.graphics.setFont(Game_Titl_font)
            -- love.graphics.setColor(0, 88/255, 0)
            -- love.graphics.rectangle("fill", GameTitle_x, GameTitle_y, button_start_y, button_height)
             love.graphics.setColor(255, 255, 255)
             love.graphics.printf(PongName, GameTitle_x, GameTitle_y, button_start_y, "center")
             GameTitle_x = (love.graphics.getWidth() / 2) - (button_start_y / 2)
             GameTitle_y = 80

            love.graphics.setFont(Button_font)
             -- pong
            love.graphics.setColor(green)
            love.graphics.rectangle("fill", pong_SinglePlayer_button_x, pong_SinglePlayer_button_y, button_width, button_height, corner_radius, corner_radius)
            love.graphics.setColor(255, 255, 255)
            love.graphics.printf(SinglePlayerName, pong_SinglePlayer_button_x, pong_SinglePlayer_button_y + 10, button_width, "center")
            pong_SinglePlayer_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
            pong_SinglePlayer_button_y = love.graphics.getHeight() / 2 - button_height / 2
            -- LocalMultiPlayer
            love.graphics.setColor(green)
            love.graphics.rectangle("fill", pong_LocalMultiPlayer_button_x, pong_LocalMultiPlayer_button_y, button_width, button_height + 30, corner_radius, corner_radius)
            love.graphics.setColor(255, 255, 255)
            love.graphics.printf(LocalMultiPlayerName, pong_LocalMultiPlayer_button_x, pong_LocalMultiPlayer_button_y + 10, button_width, "center")
            pong_LocalMultiPlayer_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
            pong_LocalMultiPlayer_button_y =  pong_SinglePlayer_button_y + button_height + button_padding
            -- Menu Menu
            love.graphics.setColor(red)
            love.graphics.rectangle("fill", main_menu_button_x, main_menu_button_y, button_width, button_height, corner_radius, corner_radius)
            love.graphics.setColor(255, 255, 255)
            love.graphics.printf(main_menuName, main_menu_button_x, main_menu_button_y + 10, button_width, "center")
            main_menu_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
            main_menu_button_y = love.graphics.getHeight() - 60
            -- Settings
            love.graphics.setColor(green)-- 0, 0, 0.737, 1
            love.graphics.rectangle("fill", Settings_button_x, Settings_button_y, button_width, button_height, corner_radius, corner_radius)
            love.graphics.setColor(255, 255, 255)
            love.graphics.printf(SettingsName, Settings_button_x, Settings_button_y + 10, button_width, "center")
            Settings_button_x = love.graphics.getWidth() - button_width - 10
            Settings_button_y = love.graphics.getHeight() - 60
            -- Credits
            love.graphics.setColor(green)
            love.graphics.rectangle("fill", credits_button_x, credits_button_y, button_width, button_height, corner_radius, corner_radius)
            love.graphics.setColor(255, 255, 255)
            love.graphics.printf(CreditsName, credits_button_x, credits_button_y + 10, button_width, "center")
            credits_button_x = 10
            credits_button_y = love.graphics.getHeight() - 60
        end 