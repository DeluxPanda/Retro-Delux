lang = {}
lang_eng = true
lang_swe = false
local line = "Lang__eng"
local line2 = "Fullscreen__off"
GameTitleName = "Retro Deluxe"
PongName = "Pong"
local file = io.open("settings.conf", "r")
file:seek("set")
-- läser alla rader
local line = file:read("*line")
local line2 = file:read("*line")
if line == "Lang__swe" then
    lang_eng = false
    lang_swe = true
    elseif line == "Lang__eng" then
    lang_swe = false
    lang_eng = true
end
if line2 == "Fullscreen__on" then
    love.window.setFullscreen(true)
    elseif line2 == "Fullscreen__off" then
    love.window.setFullscreen(false)
end
file:close()
local line = nil
local line2 = nil
collectgarbage("collect")
function lang:language()
if lang_eng then
    SinglePlayerName = "Single Player"
    LocalMultiPlayerName = "Local Multiplayer"
    SettingsName = "Settings"
    settingsAudioName = "Audio"
    CreditsName = "Credits"
    pinballName = "Pinball"
    GameExitName = "Exit Game"
    GameContinueName = "Continue"
    main_menuName = "Main Menu"
    pauseName = "Paused"
    if (love.window.getFullscreen() == true) then
        fullscreenName = "Fullscreen " .. "<On>"
    else
        fullscreenName = "Fullscreen " .. "<Off>"
    end
    language = "Language:\n English"
    PlayerOneWin = "Player one won"
    PlayerTwoWin = "Player two won"
    PlayerYouWin = "You won"
    PlayerAIWin = "The computer won"
    GameResetName = "Try again"
    MainVolumeName = "Master volume"
    BackgroundMusic = "Background music"
    pointGivenVolume = "Points are given"
    HitVolume = "Hit"
    ButtonHitVolume = "Button press"
    CustomizeName = "Customization"
    CustomizePlayerOneName = "Customization"
    CustomizePlayerTwoName = "Customization"
    CustomizeBallName = "Customization"
    CustomizeBackgroundName = "Customization"
    BackName = "Back"
    SelectColorName = "Select color"
    PlayerOneName = "Player 1"
    PlayerTwoName = "Player 2"
    BallName = "Ball"
    maxPointsName = "First to"
    BackgroundName = "Background"
    About_GameName = "About Game"
    MusicName = "Music"
    DevelopersName = "Developer"
    HelpName = "Help"
    UPName = "UP:"
    DownName = "Down:"
    joystickDownName = "joystick down"
    joystickUpName = "joystick up"
    ArtistName = "Artist"
    About_Game_Text = "This game traps you in the classic Pong and Pinball game while giving you the ability to customize not only the color of the ball but also your flippers and player 1 and 2 and background."
    ColorNameYellow = "Yellow"
    ColorNameGreen = "Green"
    ColorNameRed = "Red"
    ColorNameWhite = "White"
    ColorNameBlack = "Black"
    ControllerFail = "The control cannot be found, are you sure you are running Linux or Windows"
    CommingSoonName = "Comming Soon"
    FlipperOneName = "Flipper 1"
    FlipperTwoName = "Flipper 2"
elseif lang_swe then
    SinglePlayerName = "Enspelarläge"
    LocalMultiPlayerName = "Lokal Multiplayer"
    SettingsName = "Inställningar"
    settingsAudioName = "ljud"
    CreditsName = "Credits"
    pinballName = "Flipperspel"
    GameExitName = "Stäng spelet"
    GameContinueName = "Fortsätta"
    main_menuName = "Huvudmeny"
    pauseName = "pausat"
    if (love.window.getFullscreen() == true) then
        fullscreenName = "Helskärm" .. "<På>"
    else
        fullscreenName = "Helskärm " .. "<Av>"
    end
    language = "Språk:\n Svenska"
    PlayerOneWin = "Spelare ett vann"
    PlayerTwoWin = "Spelare två vann"
    PlayerYouWin = "Du vann"
    PlayerAIWin = "Datorn vann"
    GameResetName = "Försök igen"
    MainVolumeName = "Huvudvolym"
    BackgroundMusic = "Bakgrundsmusik"
    pointGivenVolume = "Poäng ges"
    HitVolume = "Träff"
    ButtonHitVolume = "Knapptryck"
    CustomizeName = "Anpassning"
    CustomizePlayerOneName = "Anpassning"
    CustomizePlayerTwoName = "Anpassning"
    CustomizeBackgroundName = "Anpassning"
    CustomizeBallName = "Anpassning"
    BackName = "Tillbaka"
    SelectColorName = "Välj Färg"
    PlayerOneName = "Spelare 1"
    PlayerTwoName = "Spelare 2"
    BallName = "Boll"
    maxPointsName = "Först till" 
    BackgroundName = "Bakgrund"
    About_GameName = "Om spelet"
    MusicName = "Musik"
    DevelopersName = "Utvecklare"
    HelpName = "Hjälp"
    UPName = "UPP:"
    DownName = "Ner:"
    joystickDownName = "joystick ner"
    joystickUpName = "joystick upp"
    ArtistName = "Artist"
    About_Game_Text = "Det här spelet fångar dig i det klassiska Pong- och Flipperspelet samtidigt som det ger dig möjlighet att anpassa inte bara färgen på bollen utan även dina flippers och spelare 1 och 2 och bakgrund."
    ColorNameYellow = "Gul"
    ColorNameGreen = "Grön"
    ColorNameRed = "Röd"
    ColorNameWhite = "Vit"
    ColorNameBlack = "Svart"
    ControllerFail = "Kontrollen kan inte hittas, är du säker på att du kör Linux eller Windows"
    CommingSoonName = "Kommer snart"
    FlipperOneName = "Flipper 1"
    FlipperTwoName = "Flipper 2"
end
end
