#include "component.hpp"

#define CLIENT_FPS_METRIC 10
#define CLIENT_TIMEOUT 5
#define CLIENT_SERVER_TIMEOUT 10

loading_screen_finished = false;

if !(hasInterface && isMultiplayer) exitWith { loading_screen_finished = true; };

0 spawn {
	sleep 1; // After briefing

	if (dialog) then { closeDialog 0; };
	if (visibleMap) then { openMap false; };

	disableUserInput true;

	[[
		{ diag_fpsMin >= CLIENT_FPS_METRIC }
	], CLIENT_TIMEOUT] call BRM_FMK_LoadingScreen_fnc_load;

	if (isNil "BrmFmk_LoadingScreen_loaded" || {!BrmFmk_LoadingScreen_loaded}) then {
		call BRM_FMK_LoadingScreen_fnc_clientLoaded;

		[[
			{ !isNil "BrmFmk_LoadingScreen_loaded" && {BrmFmk_LoadingScreen_loaded} }
		], CLIENT_SERVER_TIMEOUT] call BRM_FMK_LoadingScreen_fnc_load;
	};

	disableUserInput false;
	titleFadeOut 0.1;

	loading_screen_finished = true;
};
