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
        fullscreenName = "Fullscree " .. "<On>"
    else
        fullscreenName = "Fullscree " .. "<Off>"
    end
    language = "Language:\n English"
    PlayerOneWin = "Player one won"
    PlayerTowWin = "Player tow won"
    PlayerYouWin = "You won"
    PlayerAIWin = "The computer won"
    GameResetName = "Try again"
    MainVolumeName = "Master volume"
    BackgroundMusic = "Background music"
    pointGivenVolume = "Points are given"
    HitVolume = "Hit"
    ButtonHitVolume = "Button press"
    CustomizeName = "Customization"
    CustomizePlayerOneName = "Customization of Player 1"
    CustomizePlayerTowName = "Customization of Player 2"
    CustomizeBallName = "Customization of the ball"
    CustomizeBackgroundName = "Customization of the Background"
    BackName = "Back"
    SelectColorName = "Select color"
    PlayerOneName = "Player 1"
    PlayerTowName = "Player 2"
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
    About_Game_Text = "This game traps you in the classic Pong game while giving you the ability to customize not only the color of the ball but also your paddle and background."
    ColorNameYellow = "Yellow"
    ColorNameGreen = "Green"
    ColorNameRed = "Red"
    ColorNameWhite = "White"
    ColorNameBlack = "Black"
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
    PlayerTowWin = "Spelare två vann"
    PlayerYouWin = "Du vann"
    PlayerAIWin = "Datorn vann"
    GameResetName = "Försök igen"
    MainVolumeName = "Huvudvolym"
    BackgroundMusic = "Bakgrundsmusik"
    pointGivenVolume = "Poäng ges"
    HitVolume = "Träff"
    ButtonHitVolume = "Knapptryck"
    CustomizeName = "Anpassning"
    CustomizePlayerOneName = "Anpassning av Spelare 1"
    CustomizePlayerTowName = "Anpassning av Spelare 1"
    CustomizeBackgroundName = "Anpassning av Bakgrund"
    CustomizeBallName = "Anpassning av bollen"
    BackName = "Tillbaka"
    SelectColorName = "Välj Färg"
    PlayerOneName = "Spelare 1"
    PlayerTowName = "Spelare 2"
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
    About_Game_Text = "Det här spelet fångar dig in i det klassiska Pong-spelet samtidigt som det ger dig möjligheten att anpassa inte bara bollens färg utan också anpassa din paddel och bakgrund."
    ColorNameYellow = "Gul"
    ColorNameGreen = "Grön"
    ColorNameRed = "Röd"
    ColorNameWhite = "Vit"
    ColorNameBlack = "Svart"
end
end