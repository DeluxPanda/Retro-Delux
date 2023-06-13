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
    GameContinueName = "continue"
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
    GameResetName = "försök igen"
    MainVolumeName = "Huvudvolym"
    BackgroundMusic = "Bakgrundsmusik"
    pointGivenVolume = "Poäng ges"
    HitVolume = "Träff"
    ButtonHitVolume = "Knapptryck"
    CustomizeName = "Anpassning"
end
end