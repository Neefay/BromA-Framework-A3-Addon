_name = _this select 0;
_id = _this select 1;
_status = _this select 2;
_faction = _this select 3;
_respawns = _this select 4;
_units = _this select 5;
_reinforce = _this select 6;

_side = _this select 7;

_skill = _this select 8;

_area  = _this select 9;
_ax = _area select 0;
_ay = _area select 1;
_aa = _area select 2;
_as = _area select 3;

_pos = _this select 10;

call compile format ["
%1 = createTrigger ['EmptyDetector', %14];
%1 setTriggerArea [%10, %11, %12, %13];
%1 setTriggerActivation ['NONE', 'NOT PRESENT', false];
_statement = ""null=['%1',[%2,0,%4],[],[],[],[%3,3,50,%6,100,%5,[%7]],[%8,%8,%9,%8]] call BRM_FMK_DAC_fnc_DACZone"";
%1 setTriggerStatements ['(true)', _statement, ''];", _name, _id, _status, _faction, _respawns, _units, _reinforce, _side, _skill, _ax, _ay, _aa, _as, _pos];

mission_dac_camps pushBack [_name, _id];

publicVariable "mission_dac_camps";
