-- ANTI CHEAT by rnd
-- Copyright 2016 rnd
-- includes modified/bugfixed spectator mod by jp

-------------------------------------------------------------------------
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.

-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.

-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.
-------------------------------------------------------------------------


-- SETTINGS --------------------------------------------------------------
anticheatsettings.CHEAT_TIMESTEP = tonumber(minetest.settings:get("anticheat.timestep")) or 15; -- check timestep all players 
anticheatsettings.CHECK_AGAIN = tonumber(minetest.settings:get("anticheat.timeagain")) or 15; -- after player found in bad position check again after this to make sure its not lag, this should be larger than expected lag in seconds
anticheatsettings.STRING_MODERA = minetest.settings:get("anticheat.moderators") or "admin,singleplayer";

-- moderators list, those players can use cheat debug and will see full cheat message
anticheatsettings.moderators = {}

for str in string.gmatch(anticheatsettings.STRING_MODERA, "([^,]+)") do table.insert(anticheatsettings.moderators, str) end

-- END OF SETTINGS --------------------------------------------------------

