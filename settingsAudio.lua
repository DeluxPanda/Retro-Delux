timer = 0
GameTitle_x = (love.graphics.getWidth() / 2) - (button_start_y / 2)
GameTitle_y = 80

main_menu_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
main_menu_settings_button_y = love.graphics.getHeight() - 60

volume_x = (love.graphics.getWidth() / 2) - (button_width / 2 - 210)


volumeMain_y = GameTitle_y + 80

volumeMain = newSlider(volume_x, volumeMain_y, 300, volumeMainV, 0, 1, function (v) love.audio.setVolume(v) end)

volumeMusic_y = volumeMain_y + 40

volumeMusic = newSlider(volume_x, volumeMusic_y, 300, volumeMusicV, 0, 1, function (v) Marcus_Nyman_MLIM_S2:setVolume(v) end)

point_Given_y = volumeMusic_y + 40

volumepoint_Given = newSlider(volume_x, point_Given_y, 300, point_GivenV, 0, 1, function (v) blip_win:setVolume(v) end)

volumeHit_y = point_Given_y + 40

volumeHit = newSlider(volume_x, volumeHit_y, 300, volumeHitV, 0, 1, function (v) blip:setVolume(v) end)

volumeButton_hit_y = volumeHit_y + 40

Button_hit = newSlider(volume_x, volumeButton_hit_y, 300, volumeButton_hitV, 0, 1, function (v) button_blop:setVolume(v) end)
function love.update(dt)
    volumeMain:update()
    volumeMusic:update()
    volumepoint_Given:update()
    volumeHit:update()
    Button_hit:update()
    timer = timer + dt
end

function love.draw()

  local mouse_x, mouse_y = love.mouse.getPosition()
  -- Game Title
  love.graphics.setFont(Game_Titl_font)
  love.graphics.setColor(white)
  love.graphics.printf(SettingsName .. " - " .. settingsAudioName, GameTitle_x, GameTitle_y, button_start_y, "center")
  GameTitle_x = (love.graphics.getWidth() / 2) - (button_start_y / 2)
  GameTitle_y = 80
  love.graphics.setColor(gary)
  love.graphics.setFont(Button_font)
 love.graphics.printf(MainVolumeName, 20, volumeMain_y - 25, 1500)
  volumeMain:draw()
    love.graphics.printf(BackgroundMusic, 20, volumeMusic_y - 25, 1500)
    volumeMusic:draw()

    love.graphics.printf(pointGivenVolume, 20, point_Given_y - 25, 1500)
    volumepoint_Given:draw()

    love.graphics.printf(HitVolume, 20, volumeHit_y - 25, 1500)
    volumeHit:draw()

    love.graphics.printf(ButtonHitVolume, 20, volumeButton_hit_y - 25, 1500)
    Button_hit:draw()


           -- volumeMain
         if mouse_y >= volumeMain_y - 27 and mouse_y <= volumeMain_y - 25 + button_height or
            selectButton == 1 then
              selectButton = 1
              love.audio.stop(Marcus_Nyman_MLIM_S2)
              love.graphics.setColor(green)
              love.graphics.printf(MainVolumeName, 20, volumeMain_y - 25, 1500)
              volumeMain:draw()
         end
         --   volumeMusic
         if mouse_y >= volumeMusic_y - 27 and mouse_y <= volumeMusic_y - 25 + button_height or
             selectButton == 2 then
              selectButton = 2
              love.audio.play(Marcus_Nyman_MLIM_S2)
              love.graphics.setColor(green)
              love.graphics.printf(BackgroundMusic, 20, volumeMusic_y - 25, 1500)
              volumeMusic:draw()
         end
         --   point_Given
         if mouse_y >= point_Given_y - 27 and mouse_y <= point_Given_y - 25 + button_height or
             selectButton == 3 then
              selectButton = 3
              love.audio.stop(Marcus_Nyman_MLIM_S2)
              if timer >= 1 then
                love.audio.play(blip_win)
                timer = 0
              end
              love.graphics.setColor(green)
              love.graphics.printf(pointGivenVolume, 20, point_Given_y - 25, 1500)
              volumepoint_Given:draw()
         end
         --   HitVolume ButtonHitVolume
         if mouse_y >= volumeHit_y - 27 and mouse_y <= volumeHit_y - 25 + button_height or
             selectButton == 4 then
              selectButton = 4
              love.audio.stop(Marcus_Nyman_MLIM_S2)
              if timer >= 1 then
                love.audio.play(blip)
                timer = 0
            end
              love.graphics.setColor(green)
              love.graphics.printf(HitVolume, 20, volumeHit_y - 25, 1500)
              volumeHit:draw()
         end
         -- ButtonHitVolume
         if mouse_y >= volumeButton_hit_y - 27 and mouse_y <= volumeButton_hit_y - 25 + button_height or
             selectButton == 5 then
              selectButton = 5
              love.audio.stop(Marcus_Nyman_MLIM_S2)
              if timer >= 1 then
                love.audio.play(button_blop)
                timer = 0
                end
              love.graphics.setColor(green)
              love.graphics.printf(ButtonHitVolume, 20, volumeButton_hit_y - 25, 1500)
              Button_hit:draw()
         end
         if mouse_x >= main_menu_settings_button_x and mouse_x <= main_menu_settings_button_x + button_width and
         mouse_y >= main_menu_settings_button_y and mouse_y <= main_menu_settings_button_y + button_height or
         selectButton == 6 then
          selectButton = 6
         love.graphics.setColor(yellow)
         love.graphics.rectangle("fill", main_menu_settings_button_x , main_menu_settings_button_y, button_width + 5, button_height + 5, corner_radius, corner_radius)
     end
         love.graphics.setFont(Button_font)
   -- Menu Menu
   love.graphics.setColor(red)
   love.graphics.rectangle("fill", main_menu_settings_button_x, main_menu_settings_button_y, button_width, button_height, corner_radius, corner_radius)
   love.graphics.setColor(white)
   love.graphics.printf(main_menuName, main_menu_settings_button_x, main_menu_settings_button_y + 10, button_width, "center")
   main_menu_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
   main_menu_settings_button_y = love.graphics.getHeight() - 60
end