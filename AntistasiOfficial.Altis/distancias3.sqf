/*
*	REWORK of the spawn system to integrate airplanes and helis
*	The code is basically for WotP with adjustments, so all the credits go (as always) to Barbolani
*
*	Now featuring status flags of the current spawn state
*	0 = Place is fully spawned in and active
*	1 = Place has the minimal AA active, the rest is inactive
*	2 = Place is completly not active
*	3 = Place is not spawned in yet
*/

if !(isServer) exitWith {};

debugperf = false;

private _currentTime = time;
private _hills = colinas - colinasAA;

while {true} do {
	sleep 1;
	if (debugperf) then {hint format ["Tiempo transcurrido: %1 para %2 markers", time - _currentTime, count markers]};
	_currentTime = time;

	waitUntil {!isNil "Slowhand"};

	//Ally that can spawn in enemy
	private _allyUnits = [];

	//Enemy that can spawn in friendly
	private _enemyUnits = [];

	//loop all units
	{
		_unit = _x;
		_veh = vehicle _unit;

		//check if vehicle can spawn in units
		_sideAlly = _veh getVariable "BLUFORSpawn";
		_sideEnemy = _veh getVariable "OPFORSpawn";

		//check unit if vehicle doesnt have variable
		if(isNil "_sideAlly")then{_sideAlly = _x getVariable ["BLUFORSpawn",false]};
		if(isNil "_sideEnemy")then{_sideEnemy = _x getVariable ["OPFORSpawn",false]};

		//pushback units in list
		if (_sideAlly) then {_allyUnits pushBack _x;};
		if (_sideEnemy) then {_enemyUnits pushBack _x;};

	} forEach allUnits;

//Nothing changed till here
	{
		private _marker = _x;
		private _markerPos = getMarkerPos _marker;

		if (_marker in mrkAAF) then 
		{
			if (spawner getVariable _marker == 3) then 
			{
				//check if a units or a plane is near the location or place needs to be forced to spawned in
				if (({_x distance2D _markerPos < distanciaSPWN OR (_x typeOf "Air" AND _x distance2D _markerPos < 4000} count _allyUnits > 0) OR (_marker in forcedSpawn)) then 
				{
					spawner setVariable [_marker,2,true]; //Spawn the place
					call 
					{
					//TODO spawn them in with simulation off!
						if (_marker in _hills) exitWith {[_marker] remoteExec ["createWatchpost", call AS_fnc_getNextWorker]};
						if (_marker in colinasAA) exitWith {[_marker] remoteExec ["createAAsite", call AS_fnc_getNextWorker]};
						if (_marker in ciudades) exitWith {[_marker] remoteExec ["createCIV", call AS_fnc_getNextWorker]; [_marker] remoteExec ["createCity", call AS_fnc_getNextWorker]};
						if (_marker in power) exitWith {[_marker] remoteExec ["createPower", call AS_fnc_getNextWorker]};
						if (_marker in bases) exitWith {[_marker] remoteExec ["createBase", call AS_fnc_getNextWorker]};
						//if (_marker in controles) exitWith {[_marker] remoteExec ["createRoadblock", call AS_fnc_getNextWorker]};
						if (_marker in controles) exitWith {[_marker] remoteExec ["createRoadblock2", call AS_fnc_getNextWorker]};
						if (_marker in aeropuertos) exitWith {[_marker] remoteExec ["createAirbase", call AS_fnc_getNextWorker]};
						if ((_marker in recursos) OR (_marker in fabricas)) exitWith {[_marker] remoteExec ["createResources", call AS_fnc_getNextWorker]};
						if ((_marker in puestos) OR (_marker in puertos)) exitWith {[_marker] remoteExec ["createOutpost", call AS_fnc_getNextWorker]};
						//if ((_marker in artyEmplacements) AND (_marker in forcedSpawn)) exitWith {[_marker] remoteExec ["createArtillery", call AS_fnc_getNextWorker]};
					};
				};

			}
			else //If place was spawned in already
			{ 
				if (({_x distance _markerPos < (distanciaSPWN+50)} count _allyUnits == 0) AND !(_marker in forcedSpawn)) then
				{
					//Neither air nor infantry enemies in radius, deactivate marker
					spawner setVariable [_marker,2,true];
					if (isMUltiplayer) then
					{
						{if (_x getVariable ["marcador",""] == _marcador) then {if (vehicle _x == _x) then {_x enableSimulationGlobal false}}} forEach allUnits;
					}
					else
					{
						{if (_x getVariable ["marcador",""] == _marcador) then {if (vehicle _x == _x) then {_x enableSimulation false}}} forEach allUnits;
					};
				}
				else
				{
					if({_x typeOf "Air" AND _distance2D _markerPos < 4000} count _allyUnits == 0) then
					{
						//Non Air Enemies nearby activate place
						spawner setVariable [_marker, 0,true];
						if (isMUltiplayer) then
						{
							{if (_x getVariable ["marcador",""] == _marcador) then {if (vehicle _x == _x) then {_x enableSimulationGlobal true}}} forEach allUnits;
						}
						else
						{
							{if (_x getVariable ["marcador",""] == _marcador) then {if (vehicle _x == _x) then {_x enableSimulation true}}} forEach allUnits;
						};
					}
					else
					{
						//Enemy aircraft nearby spawn in AA troops
						_spawner setVariable [_marker, 1, true];
						if (isMUltiplayer) then
						{
							{if (_x getVariable ["marcador",""] == _marcador) then {if (vehicle _x == _x AND _x secondaryWeapon in genAALaunchers) then {_x enableSimulationGlobal true}}} forEach allUnits;
						}
						else
						{
							{if (_x getVariable ["marcador",""] == _marcador) then {if (vehicle _x == _x AND _x secondaryWeapon in genAALaunchers) then {_x enableSimulation true}}} forEach allUnits;
						};
					};
				};
			};
		}else{
			if (spawner getVariable _marker == 3) then {
				if (({_x distance _markerPos < distanciaSPWN} count _enemyUnits > 0) OR ({((_x getVariable ["owner",objNull]) == _x) AND (_x distance _markerPos < distanciaSPWN)} count _allyUnits > 0) OR (_marker in forcedSpawn)) then {
					spawner setVariable [_marker,true,true];
					if (_marker in ciudades) then {
						if (({((_x getVariable ["owner",objNull]) == _x) AND (_x distance _markerPos < distanciaSPWN)} count _allyUnits > 0) OR (_marker in forcedSpawn)) then {[_marker] remoteExec ["createCIV",call AS_fnc_getNextWorker]};
						[_marker] remoteExec ["createCity", call AS_fnc_getNextWorker]
					} else {
						call {
							if ((_marker in recursos) OR (_marker in fabricas)) exitWith {[_marker] remoteExec ["createFIAresources", call AS_fnc_getNextWorker]};
							if ((_marker in power) OR (_marker == "FIA_HQ")) exitWith {[_marker] remoteExec ["createFIApower", call AS_fnc_getNextWorker]};
							if (_marker in aeropuertos) exitWith {[_marker] remoteExec ["createNATOaerop", call AS_fnc_getNextWorker]};
							if (_marker in bases) exitWith {[_marker] remoteExec ["createNATObases", call AS_fnc_getNextWorker]};
							if (_marker in puestosFIA) exitWith {[_marker] remoteExec ["createFIAEmplacement", call AS_fnc_getNextWorker]};
							if ((_marker in puestos) OR (_marker in puertos)) exitWith {[_marker] remoteExec ["createFIAOutpost", call AS_fnc_getNextWorker]};
							if (_marker in campsFIA) exitWith {[_marker] remoteExec ["createCampFIA", call AS_fnc_getNextWorker]};
							if (_marker in puestosNATO) exitWith {[_marker] remoteExec ["createNATOpuesto", call AS_fnc_getNextWorker]};
						};
					};
				};
			} else {
				if ((({_x distance _markerPos < (distanciaSPWN+50)} count _enemyUnits == 0) AND ({((_x getVariable ["owner",objNull]) == _x) AND (_x distance _markerPos < distanciaSPWN)} count _allyUnits == 0)) AND !(_marker in forcedSpawn)) then {
					spawner setVariable [_marker,2,true];
					if (isMUltiplayer) then
					{
						{if (_x getVariable ["marcador",""] == _marcador) then {if (vehicle _x == _x) then {_x enableSimulationGlobal false}}} forEach allUnits;
					}
					else
					{
						{if (_x getVariable ["marcador",""] == _marcador) then {if (vehicle _x == _x) then {_x enableSimulation false}}} forEach allUnits;
					};
				}
				else
				{
					spawner setVariable [_marker,0,true]
					if (isMUltiplayer) then
					{
						{if (_x getVariable ["marcador",""] == _marcador) then {if (vehicle _x == _x) then {_x enableSimulationGlobal true}}} forEach allUnits;
					}
					else
					{
						{if (_x getVariable ["marcador",""] == _marcador) then {if (vehicle _x == _x) then {_x enableSimulation true}}} forEach allUnits;
					};
				}
				
			};
		};

	} forEach markers;

};
