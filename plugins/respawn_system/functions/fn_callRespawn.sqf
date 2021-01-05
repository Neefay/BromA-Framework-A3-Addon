#include "component.hpp"
/*
================================================================================

NAME:
    BRM_FMK_RespawnSystem_fnc_callRespawn

AUTHOR(s):
    Nife

DESCRIPTION:
    Revives either a player who was previously dead, or any number of
    units.

PARAMETERS:
    0 - Who to revive - maybe either a STRING with a player's in-game name,
    or the amount of players who will be revived.
    1 - (OPTIONAL) How many lives they will get. If left blank
    default parameter number will be used. (NUMBER)

USAGE:
    ["Nife",2"] spawn BRM_FMK_RespawnSystem_fnc_callRespawn;

    [4] spawn BRM_FMK_RespawnSystem_fnc_callRespawn;

RETURNS:
    Nothing.

================================================================================
*/
params["_target", ["_lives", mission_player_lives]];

switch (typeName _target) do {
    case "STRING": {
        if (!(isNull ([_target] call BRM_FMK_fnc_unitFromName))) then {
            _index = [_target, _lives] call BRM_FMK_RespawnSystem_fnc_setLives;
            mission_dead_players deleteAt _index;

            publicVariable "mission_dead_players";
        };
    };
    case "SCALAR": {
        private _amount = 0;

        for "_i" from 0 to ((_target min (count mission_dead_players)) - 1) do {
            [((mission_dead_players select _i) select 1), _lives] call BRM_FMK_RespawnSystem_fnc_setLives;
            _amount = (_amount + 1);
        };
        mission_dead_players deleteRange [0, _target];

        if (_amount > 0) then {
            ["Alert", [format ["%1 units have respawned.", _amount]]] remoteExec ["BIS_fnc_showNotification", -2];
        };

        [{ publicVariable "mission_dead_players" },[], 5] call CBA_fnc_waitAndExecute;
    };
};
