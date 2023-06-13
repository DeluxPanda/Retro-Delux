

function love.draw()
GameTitle_x = (love.graphics.getWidth() / 2) - (button_start_y / 2)
GameTitle_y = 50

lang_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
lang_settings_button_y = love.graphics.getHeight() / 3 - button_height / 3

fullscreen_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
fullscreen_settings_button_y =  lang_settings_button_y + button_height + button_padding + 20

audio_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
audio_settings_button_y =  fullscreen_settings_button_y + button_height + button_padding

main_menu_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
main_menu_settings_button_y = love.graphics.getHeight() - 60

customiz_button_x = love.graphics.getWidth() - button_width - 10
customiz_button_y = love.graphics.getHeight() - 60



-- Hover over the Buttons --
local mouse_x, mouse_y = love.mouse.getPosition()
 -- lang_settings
 if mouse_x >= lang_settings_button_x and mouse_x <= lang_settings_button_x + button_width and
     mouse_y >= lang_settings_button_y and mouse_y <= lang_settings_button_y + button_height or
     selectButton == 1 then
      selectButton = 1
     love.graphics.setColor(yellow)
     love.graphics.rectangle("fill", lang_settings_button_x, lang_settings_button_y, button_width + 5, button_height + 35, corner_radius, corner_radius)
 end

 -- fullscreen
 if mouse_x >= fullscreen_settings_button_x and mouse_x <= fullscreen_settings_button_x + button_width and
     mouse_y >= fullscreen_settings_button_y and mouse_y <= fullscreen_settings_button_y + button_height or
     selectButton == 2 then
      selectButton = 2
     love.graphics.setColor(yellow)
     love.graphics.rectangle("fill", fullscreen_settings_button_x , fullscreen_settings_button_y , button_width + 5, button_height + 5, corner_radius, corner_radius)
 end

  -- Audio
  if mouse_x >= audio_settings_button_x and mouse_x <= audio_settings_button_x + button_width and
  mouse_y >= audio_settings_button_y and mouse_y <= audio_settings_button_y + button_height or
  selectButton == 3 then
   selectButton = 3
  love.graphics.setColor(yellow)
  love.graphics.rectangle("fill", audio_settings_button_x , audio_settings_button_y , button_width + 5, button_height + 5, corner_radius, corner_radius)
end

 -- Main Menu
 if mouse_x >= main_menu_settings_button_x and mouse_x <= main_menu_settings_button_x + button_width and
     mouse_y >= main_menu_settings_button_y and mouse_y <= main_menu_settings_button_y + button_height or
     selectButton == 4 then
      selectButton = 4
     love.graphics.setColor(yellow)
     love.graphics.rectangle("fill", main_menu_settings_button_x , main_menu_settings_button_y, button_width + 5, button_height + 5, corner_radius, corner_radius)
 end
-- customiz
if mouse_x >= customiz_button_x and mouse_x <= customiz_button_x + button_width and
mouse_y >= customiz_button_y and mouse_y <= customiz_button_y + button_height or
selectButton == 5 then
 selectButton = 5
love.graphics.setColor(yellow)
love.graphics.rectangle("fill", customiz_button_x , customiz_button_y, button_width + 5, button_height + 5, corner_radius, corner_radius)
end


         -- Game Title
         love.graphics.setFont(Game_Titl_font)
          love.graphics.setColor(255, 255, 255)
          love.graphics.printf(SettingsName, GameTitle_x, GameTitle_y, button_start_y, "center")
          GameTitle_x = (love.graphics.getWidth() / 2) - (button_start_y / 2)
          GameTitle_y = 80

         love.graphics.setFont(Button_font)

         -- lang_settings
         love.graphics.setColor(green)
         love.graphics.rectangle("fill", lang_settings_button_x, lang_settings_button_y, button_width, button_height + 30, corner_radius, corner_radius)
         love.graphics.setColor(255, 255, 255)
         love.graphics.printf(language, lang_settings_button_x, lang_settings_button_y + 10, button_width, "center")
         lang_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
         lang_settings_button_y =  fullscreen_settings_button_y + button_height + button_padding

          -- fullscreen
         love.graphics.setColor(green)
         love.graphics.rectangle("fill", fullscreen_settings_button_x, fullscreen_settings_button_y, button_width, button_height, corner_radius, corner_radius)
         love.graphics.setColor(255, 255, 255)
         love.graphics.printf(fullscreenName, fullscreen_settings_button_x, fullscreen_settings_button_y + 10, button_width, "center")
         fullscreen_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
         fullscreen_settings_button_y = love.graphics.getHeight() / 2 - button_height / 2

        -- Audio
        love.graphics.setColor(green)
        love.graphics.rectangle("fill", audio_settings_button_x, audio_settings_button_y, button_width, button_height, corner_radius, corner_radius)
        love.graphics.setColor(255, 255, 255)
        love.graphics.printf(settingsAudioName, audio_settings_button_x, audio_settings_button_y + 10, button_width, "center")
        audio_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
        audio_settings_button_y = love.graphics.getHeight() / 2 - button_height / 2
         
         -- Menu Menu
         love.graphics.setColor(red)
         love.graphics.rectangle("fill", main_menu_settings_button_x, main_menu_settings_button_y, button_width, button_height, corner_radius, corner_radius)
         love.graphics.setColor(255, 255, 255)
         love.graphics.printf(main_menuName, main_menu_settings_button_x, main_menu_settings_button_y + 10, button_width, "center")
         main_menu_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
         main_menu_settings_button_y = love.graphics.getHeight() - 60

         -- customiz
         love.graphics.setColor(green)-- 0, 0, 0.737, 1
         love.graphics.rectangle("fill", customiz_button_x, customiz_button_y, button_width, button_height, corner_radius, corner_radius)
         love.graphics.setColor(255, 255, 255)
         love.graphics.printf(CustomizeName, customiz_button_x, customiz_button_y + 10, button_width, "center")
end