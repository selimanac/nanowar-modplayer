local M = {}

M.STATE_MENU = 1
M.STATE_CONTROLS = 2
M.STATE_GETREADY = 3
M.STATE_PLAYING = 4
M.STATE_LEVELCLEAR = 5
M.STATE_GAMEOVER = 6

M.state = M.STATE_MENU

M.SCREEN_W = 568
M.SCREEN_H = 320

M.TILE_SIZE = 16
M.PIXEL_SIZE = 2

M.score = 0
M.bestscore = 0
M.energy = 100
M.level = 1
M.maxlevel = 1
M.total = 0
M.speedup = 0
M.laser = true

-- MOD PLAYER
M.is_dev = true -- If you are building on Defold Editor then set it true. If you are bundling set it false
M.build_path = "" -- Full path for building on Defold Editor when developing: "<FULL_PATH>/res/common/assets/"
M.game_music = 0
M.menu_music = 0

M.playerpos = vmath.vector3()

function M.tile2world(p)
	return vmath.vector3((p.x * M.TILE_SIZE) - (M.TILE_SIZE / 2) - 120, (p.y * M.TILE_SIZE) - (M.TILE_SIZE / 2) - 130, p.z)
end

function M.onscreen(p, m)
	if p.x > M.SCREEN_W + m or p.x < 0 - m or p.y > M.SCREEN_H + m or p.y < 0 - m then
		return false
	else
		return true
	end
end

function M.incircle(pos)
	local r = (pos.x * pos.x) + (pos.y * pos.y)

	if r > 25000 then
		return false
	else
		return true
	end
end

return M
