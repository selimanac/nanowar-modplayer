local data = require("main.data")

music = {}

local volumes = {
    {
        vol = 2,
        amp = 0.25
    },
    {
        vol = 3,
        amp = 0.25
    },
    {
        vol = 7,
        amp = 0.35
    },
    {
        vol = 3,
        amp = 0.25
    },
    {
        vol = 3,
        amp = 0.25
    },
    {
        vol = 3,
        amp = 0.25
    },
    {
        vol = 3,
        amp = 0.25
    },
    {
        vol = 3,
        amp = 0.25
    },
    {
        vol = 3,
        amp = 0.25
    },
    {
        vol = 3,
        amp = 0.25
    }
}

function music.loadmusic()
    print("Load Music: /audio/level_" .. data.level .. ".xm")
    if player.is_music_playing(data.game_music) then
        player.stop_music(data.game_music)
        player.unload_music(data.game_music)
    end
    data.game_music = player.load_music("/audio/level_" .. data.level .. ".xm")
end

function music.playmusic()
    player.play_music(data.game_music)
    player.xm_volume(data.game_music, volumes[data.level].vol, volumes[data.level].amp)
end

return music
