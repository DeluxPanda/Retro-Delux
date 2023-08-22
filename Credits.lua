function love.draw()
  love.graphics.setBackgroundColor(slategray)
    GameTitle_x = (love.graphics.getWidth() / 2) - (button_start_y / 2)
    GameTitle_y = 50
    
    Developers_Creduts_button_x = 20
    Developers_Creduts_button_y = love.graphics.getHeight() / 2 - button_height / 2 - 30
    
    Music_Credits_button_x = 20
    Music_Credits_button_y =  Developers_Creduts_button_y + button_height + button_padding
    
    About_Game_Credits_button_x = 20
    About_Game_Credits_button_y =  Music_Credits_button_y + button_height + button_padding
    
    main_menu_settings_button_x = 20
    main_menu_settings_button_y = love.graphics.getHeight() - 60

    
    -- Hover over the Buttons --
    local mouse_x, mouse_y = love.mouse.getPosition()
     -- Developers
     if mouse_x >= Developers_Creduts_button_x and mouse_x <= Developers_Creduts_button_x + button_width and
         mouse_y >= Developers_Creduts_button_y and mouse_y <= Developers_Creduts_button_y + button_height or
         selectButton == 1 then
          selectButton = 1
         love.graphics.setColor(yellow)
         local Button_font = love.graphics.newFont("Fonts/VT323-Regular.ttf", 30)
         love.graphics.setFont(Button_font)
         love.graphics.rectangle("fill", Developers_Creduts_button_x, Developers_Creduts_button_y, button_width + 5, button_height + 5, corner_radius, corner_radius)
       
       
         love.graphics.printf(DevelopersName..":", GameTitle_x  , GameTitle_y + 40, button_start_y, "center")
       
         local font_dev = love.graphics.newFont("Fonts/NEONLEDLight.otf", 50)
         love.graphics.setFont(font_dev)
         love.graphics.setColor(neonBlue)
         love.graphics.printf("DeluxerPanda", GameTitle_x + 100, Music_Credits_button_y, button_start_y, "center")
     --    love.graphics.printf(HelpName, GameTitle_x, GameTitle_y, button_start_y, "center")
     
        end
    
     -- Music
     if mouse_x >= Music_Credits_button_x and mouse_x <= Music_Credits_button_x + button_width and
         mouse_y >= Music_Credits_button_y and mouse_y <= Music_Credits_button_y + button_height or
         selectButton == 2 then
          selectButton = 2
         love.graphics.setColor(yellow)
         local Button_font = love.graphics.newFont("Fonts/VT323-Regular.ttf", 30)
         love.graphics.setFont(Button_font)
         love.graphics.rectangle("fill", Music_Credits_button_x , Music_Credits_button_y , button_width + 5, button_height + 5, corner_radius, corner_radius)
         love.graphics.printf(MusicName..":", GameTitle_x  , GameTitle_y + 40, button_start_y, "center")

      local ArtistNameSong = yellow
      local Artist = gary

local STAMSITE = {
  ArtistNameSong, "Fluency's Melody  MLIM S2\n ",
  Artist, ArtistName..":".." STAMSITE"}
      love.graphics.printf(STAMSITE, GameTitle_x + 100, Developers_Creduts_button_y, button_start_y, "center")
     
      local A8_Bit_Nostalgia = {
        ArtistNameSong, "8 Bit Nostalgia\n ",
        Artist, ArtistName..":".." Fesliyan Studios"}
      love.graphics.printf(A8_Bit_Nostalgia, GameTitle_x + 100, Music_Credits_button_y, button_start_y, "center")
      
      local Lobby_Time = {
        ArtistNameSong, "Lobby Time\n ",
        Artist, ArtistName..":".." Kevin MacLeod"}
      love.graphics.printf(Lobby_Time, GameTitle_x + 100, About_Game_Credits_button_y, button_start_y, "center")
    
    end
    
      -- About_Game
      if mouse_x >= About_Game_Credits_button_x and mouse_x <= About_Game_Credits_button_x + button_width and
      mouse_y >= About_Game_Credits_button_y and mouse_y <= About_Game_Credits_button_y + button_height or
      selectButton == 3 then
       selectButton = 3
      love.graphics.setColor(yellow)
      local Button_font = love.graphics.newFont("Fonts/VT323-Regular.ttf", 30)
      love.graphics.setFont(Button_font)
      love.graphics.rectangle("fill", About_Game_Credits_button_x , About_Game_Credits_button_y , button_width + 5, button_height + 5, corner_radius, corner_radius)
      love.graphics.printf(About_GameName..":", GameTitle_x  , GameTitle_y + 40, button_start_y, "center")
  
      love.graphics.printf(About_Game_Text, GameTitle_x + 100, Developers_Creduts_button_y, button_start_y, "center")
    end
    
     -- Main Menu
     if mouse_x >= main_menu_settings_button_x and mouse_x <= main_menu_settings_button_x + button_width and
         mouse_y >= main_menu_settings_button_y and mouse_y <= main_menu_settings_button_y + button_height or
         selectButton == 4 then
          selectButton = 4
         love.graphics.setColor(yellow)
         love.graphics.rectangle("fill", main_menu_settings_button_x , main_menu_settings_button_y, button_width + 5, button_height + 5, corner_radius, corner_radius)
     end
    
    
             -- Game Title
             love.graphics.setFont(Game_Titl_font)
              love.graphics.setColor(white)
              love.graphics.printf(CreditsName, GameTitle_x, GameTitle_y, button_start_y, "center")
              GameTitle_x = (love.graphics.getWidth() / 2) - (button_start_y / 2)
              GameTitle_y = 80
    
             love.graphics.setFont(Button_font)
    
             -- Developers
             love.graphics.setColor(green)
             love.graphics.rectangle("fill",Developers_Creduts_button_x, Developers_Creduts_button_y, button_width, button_height, corner_radius, corner_radius)
             love.graphics.setColor(white)
             love.graphics.printf(DevelopersName, Developers_Creduts_button_x, Developers_Creduts_button_y + 10, button_width, "center")
             Developers_Creduts_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
             Developers_Creduts_button_y =  Music_Credits_button_y + button_height + button_padding
    
              -- Music
             love.graphics.setColor(green)
             love.graphics.rectangle("fill", Music_Credits_button_x,Music_Credits_button_y, button_width, button_height, corner_radius, corner_radius)
             love.graphics.setColor(white)
             love.graphics.printf(MusicName, Music_Credits_button_x, Music_Credits_button_y + 10, button_width, "center")
             Music_Credits_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
             Music_Credits_button_y = love.graphics.getHeight() / 2 - button_height / 2
    
            --  About_Game
            love.graphics.setColor(green)
            love.graphics.rectangle("fill", About_Game_Credits_button_x, About_Game_Credits_button_y, button_width, button_height, corner_radius, corner_radius)
            love.graphics.setColor(white)
            love.graphics.printf(About_GameName, About_Game_Credits_button_x, About_Game_Credits_button_y + 10, button_width, "center")
            About_Game_Credits_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
            About_Game_Credits_button_y = love.graphics.getHeight() / 2 - button_height / 2
             
             -- Menu Menu
             love.graphics.setColor(red)
             love.graphics.rectangle("fill", main_menu_settings_button_x, main_menu_settings_button_y, button_width, button_height, corner_radius, corner_radius)
             love.graphics.setColor(white)
             love.graphics.printf(BackName, main_menu_settings_button_x, main_menu_settings_button_y + 10, button_width, "center")
             main_menu_settings_button_x = (love.graphics.getWidth() / 2) - (button_width / 2)
             main_menu_settings_button_y = love.graphics.getHeight() - 60

    end