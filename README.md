minetest-mod-anticheat
======================

ANTI mod for detecting fly and noclip, with spectator features

Information
-----------

It improves the already included weak anti cheat system and improves. It adds 
few commands with minimal simple reports and watcher featured to spectate players.

## Technical info
-----------------

features:

0. what it does:
	- succesffuly detect noclip/fly. Its just a matter of time when someone noclipping/flying is detected.
	- players cant know when they are being watch since intervals are randomized
	- lag resistant (see CHECK_AGAIN in settings)

1. moderators can:
	-see full reports with coordinates of location as cheats occur
	-use /cstats to see latest detected cheater
	-use /cdebug to see even suspected cheats to be verified later
	-use /watch NAME to spectate suspect/detected cheater, /unwatch to return to normal

2. this mod works well with:
	- basic_vote mod, use /vote to kick, remove interact or kill cheater anonymously
	- This mod works only in minetest 0.4.16/0.4.17/4.0.X

#### Depends

* default
* boneworld (optional)

This mod only works with minetest 0.4.15/0.4.16/0.4.17 and some pre 5.0.0 engine releases.

#### Configuration

| config name          | type   | default/min/max    | Description                               |
| -------------------- | ------ | ------------------ | ----------------------------------------- |
| anticheat.timestep   | int    | 15 /  10 /  300    | How many time will run checks in seconds  |
| anticheat.timeagain  | int    | 15 /  10 /  300    | How many seconds checks again to compare if it is cheating the suspected player |
| anticheat.moderators | string | admin,singleplayer | Comma separated list of name players that will be not checked, without spaces   |

## LICENSE

* ANTI CHEAT by rnd
* Copyright 2016-2017 rnd  LGPL v3
* Copyright 2017-2018 includes spectator mod by jp, modified/bugfixed by rnd LGPL v3
* Copyright 2020-2023 improvements and few fixes, mckaygerhard CC-BY-SA-NC 4.0

Check file [LICENSE](LICENSE)
