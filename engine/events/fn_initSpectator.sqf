#include "component.hpp"
/*

    Initializes spectator units.

*/

(_this select 0) spawn {
	if (isNil "Headless_Client") then {
            _this setPosATL [0, 0, 200];
	} else {
            _this attachTo [Headless_Client, [0, 0, 50]];
	};

	if (mission_TFAR_enabled) then {
            _this setVariable ["tf_unable_to_use_radio", true];
	};

	_this enableSimulation false;
	_this allowDamage false;

	sleep 1;

	[_this] joinSilent grpNull;

	if !(["IsSpectating"] call BIS_fnc_EGSpectator) then {
		switch (true) do {
			case ("ace3_spectator" in usedPlugins): {
				[true] call ace_spectator_fnc_setSpectator;
			};
			case ("vanilla_spectator" in usedPlugins): {
				["Initialize", [] call BRM_FMK_VanillaSpectator_fnc_getSettings] call BIS_fnc_EGSpectator;
				[] call BRM_FMK_VanillaSpectator_fnc_centerOnTarget;
			};
			default { _this setDamage 1; };
		};
	};

	sleep 5;

	_this unlinkItem "ItemRadio";
	_this removeItem "ItemRadio";
};
